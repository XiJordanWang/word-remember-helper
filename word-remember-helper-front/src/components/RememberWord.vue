<template>
  <div class="container">
    <a-button class="first-button" :type="butonType" @click="randomReview">
      Random review
    </a-button>
    <a-button class="second-button" :type="checkType" @click="randomCheck">
      Random check
    </a-button>
    <div class="word-card">Total:{{ data.length }}</div>
    <div :key="item.id" class="word-card" v-for="item in data">
      <a-card :title="item.wordEn">
        <a slot="extra" @click="showDescription(item.id)">show description</a>
        <p v-show="item.isShow">{{ item.wordDescription }}</p>
        <a-input-search
          :disabled="item.isDisabled"
          v-model="item.inputValue"
          placeholder="input description"
          @search="onSearch(item.id)"
        />
      </a-card>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return { data: [], butonType: "primary", checkType: "default" };
  },
  created() {
    this.getReviewData();
  },
  methods: {
    getReviewData() {
      this.$http.get("/api/word/review").then((response) => {
        if (response.data.code === 200) {
          let data = response.data.data;
          data.forEach((item) => {
            item.isShow = false;
            item.isDisabled = false;
            item.inputValue = "";
          });
          this.data = data;
        }
      });
    },
    showDescription(id) {
      let item = this.data.find((item) => item.id === id);
      item.isShow = true;
      item.isDisabled = true;
      this.$set(this.data, item);
      this.forget(id);
    },
    onSearch(id) {
      let item = this.data.find((item) => item.id === id);
      let wordDescription = item.wordDescription
        .trim()
        .replaceAll("a", "")
        .replaceAll("v", "")
        .replaceAll(";", "")
        .replaceAll("；", "")
        .replaceAll(",", "")
        .replaceAll("，", "")
        .replaceAll("n", "")
        .replaceAll(".", "");
      let inputValue = item.inputValue.trim();
      let validate = wordDescription.includes(inputValue);
      if (validate) {
        this.data.splice(this.data.indexOf(item), 1);
        alert("答对了！");
        this.$http.patch("/api/word/remember/" + id).then((response) => {
          console.log(response.data);
        });
      } else {
        alert("答错了！");
        this.forget(id);
        this.showDescription(id);
      }
    },
    forget(id) {
      this.$http.patch("/api/word/forget/" + id).then((response) => {
        console.log(response.data);
      });
    },
    randomReview() {
      this.butonType = "primary";
      this.checkType = "default";
      this.getReviewData();
    },
    randomCheck() {
      this.butonType = "default";
      this.checkType = "primary";
      this.$http.get("/api/word/random-review/100").then((response) => {
        if (response.data.code === 200) {
          let data = response.data.data;
          data.forEach((item) => {
            item.isShow = false;
            item.isDisabled = false;
            item.inputValue = "";
          });
          this.data = data;
        }
      });
    },
  },
};
</script>

<style scoped>
.container {
  padding-left: 20px;
}
.search {
  margin-top: 20px;
}
.header-button {
  padding-top: 20px;
}
.first-button {
  margin-left: 30px;
  margin-top: 20px;
  margin-right: 10px;
}
.second-button {
  margin-top: 20px;
}
.word-card {
  margin: 20px;
}
</style>
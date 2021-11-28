<template>
  <div class="container">
    <div class="search">
      <a-select v-model="total" style="width: 120px">
        <a-select-option value="10"> 10 </a-select-option>
        <a-select-option value="20"> 20 </a-select-option>
        <a-select-option value="50"> 50 </a-select-option>
        <a-select-option value="100"> 100 </a-select-option>
      </a-select>
      <a-range-picker @change="onChange" />
    </div>
    <div class="header-button">
      <a-button class="button" type="primary"> 乱序背诵 </a-button>
      <a-button class="button"> 顺序背诵 </a-button>
    </div>
    <div class="word-card">
      <a-card title="Default size card" style="width: 300px">
        <a slot="extra" @click="showDescription(1)">show description</a>
        <p>card content</p>
        <p>card content</p>
        <p>card content</p>
      </a-card>
      <a-card title="Default size card" style="width: 300px">
        <a slot="extra" @click="showDescription(1)">show description</a>
        <p>card content</p>
        <p>card content</p>
        <p>card content</p>
      </a-card>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      total: 10,
      startDate: "",
      endDate: "",
    };
  },
  methods: {
    onChange(date, dateString) {
      console.log(date);
      this.startDate = dateString[0];
      this.endDate = dateString[1];
    },
    showDescription(id) {
      console.log(id);
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
.button {
  margin-right: 10px;
}
.word-card {
  margin-top: 20px;
}
</style>
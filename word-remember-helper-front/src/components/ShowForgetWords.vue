<template>
  <div>
    <div style="margin: 20px">Total:{{ data.length }}</div>
    <div :key="item.id" class="word-card" v-for="item in data">
      <a-card :title="item.wordEn">
        <p>Description:{{ item.wordDescription }}</p>
        <p>Forget Times:{{ item.unRememberTimes }}</p>
      </a-card>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return { data: [] };
  },
  created() {
    this.getReviewData();
  },
  methods: {
    getReviewData() {
      this.$http.get("/api/word/show-forgets").then((response) => {
        if (response.data.code === 200) {
          let data = response.data.data;
          this.data = data;
        }
      });
    },
  },
};
</script>

<style>
.word-card {
  margin: 20px;
}
</style>
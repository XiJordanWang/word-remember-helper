<template>
  <div>
    <a-menu v-model="current" mode="horizontal">
      <a-menu-item key="word">
        <a-icon type="bell" />Remember Words
      </a-menu-item>
      <a-menu-item key="manage">
        <a-icon type="appstore" />Words Management
      </a-menu-item>
    </a-menu>
    <RememberWord v-if="showWord" />
    <WordManagement v-if="showManage" />
  </div>
</template>

<script>
import RememberWord from "./components/RememberWord.vue";
import WordManagement from "./components/WordManagement.vue";

export default {
  components: { RememberWord, WordManagement },
  data() {
    return {
      current: ["word"],
      showWord: true,
      showManage: false,
    };
  },
  watch: {
    current: function (newVal) {
      if (newVal[0] === "word") {
        this.showWord = true;
        this.showManage = false;
      }
      if (newVal[0] === "manage") {
        this.showWord = false;
        this.showManage = true;
      }
    },
  },
};
</script>

<style>
</style>

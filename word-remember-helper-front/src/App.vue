<template>
  <div>
    <a-menu v-model="current" mode="horizontal">
      <a-menu-item key="word">
        <a-icon type="bell" />Remember Words
      </a-menu-item>
      <a-menu-item key="brushUp">
        <a-icon type="bulb" />Show forget words
      </a-menu-item>
      <a-menu-item key="manage">
        <a-icon type="appstore" />Words Management
      </a-menu-item>
    </a-menu>
    <RememberWord v-if="showWord" />
    <ShowForgetWords v-if="showForgetWords" />
    <WordManagement v-if="showManage" />
  </div>
</template>

<script>
import RememberWord from "./components/RememberWord.vue";
import ShowForgetWords from "./components/ShowForgetWords.vue";
import WordManagement from "./components/WordManagement.vue";

export default {
  components: { RememberWord, ShowForgetWords, WordManagement },
  data() {
    return {
      current: ["word"],
      showWord: true,
      showManage: false,
      showForgetWords: false,
    };
  },
  watch: {
    current: function (newVal) {
      if (newVal[0] === "word") {
        this.showWord = true;
        this.showForgetWords = false;
        this.showManage = false;
      }
      if (newVal[0] === "brushUp") {
        this.showWord = false;
        this.showForgetWords = true;
        this.showManage = false;
      }
      if (newVal[0] === "manage") {
        this.showWord = false;
        this.showForgetWords = false;
        this.showManage = true;
      }
    },
  },
};
</script>

<style>
</style>

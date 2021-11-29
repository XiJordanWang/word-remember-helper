<template>
  <div>
    <a-modal
      v-model="visible"
      width="70%"
      title="Add Word"
      @ok="handleOk"
      @cancel="handleCancel"
    >
      <a-form-model
        v-bind="layout"
        ref="ruleForm"
        :model="ruleForm"
        :rules="rules"
        labelAlign="right"
        layout="horizontal"
      >
        <a-form-model-item label="Word English" prop="wordEn">
          <a-input v-model="ruleForm.wordEn" />
        </a-form-model-item>
        <a-form-model-item label="Word Description" prop="wordDescription">
          <a-input v-model="ruleForm.wordDescription" />
        </a-form-model-item>
      </a-form-model>
    </a-modal>
  </div>
</template>

<script>
export default {
  data() {
    return {
      visible: false,
      ruleForm: { wordEn: "", wordDescription: "" },
      rules: {
        wordEn: [{ required: true, trigger: "blur" }],
        wordDescription: [{ required: true, trigger: "blur" }],
      },
      layout: {
        labelCol: { span: 8 },
        wrapperCol: { span: 12 },
      },
    };
  },
  methods: {
    show() {
      this.visible = true;
    },
    handleOk() {
      this.$refs.ruleForm.validate((valid) => {
        if (valid) {
          let data = {
            wordEn: this.ruleForm.wordEn,
            wordDescription: this.ruleForm.wordDescription,
          };
          this.$http.post("/api/word", data).then((response) => {
            if (response.data.code === 200) {
              this.visible = false;
              this.$parent.getData();
              this.ruleForm = { wordEn: "", wordDescription: "" };
              return;
            }
            alert("添加失败！");
          });
        }
      });
    },
    handleCancel() {
      this.ruleForm = { wordEn: "", wordDescription: "" };
    },
  },
};
</script>

<style>
</style>
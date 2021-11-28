<template>
  <div id="components-form-demo-advanced-search">
    <a-form
      class="ant-advanced-search-form"
      :form="form"
      @submit="handleSearch"
    >
      <a-row :gutter="24">
        <a-col
          v-for="i in 10"
          :key="i"
          :span="8"
          :style="{ display: i < count ? 'block' : 'none' }"
        >
          <a-form-item :label="`Field ${i}`">
            <a-input
              v-decorator="[
                `field-${i}`,
                {
                  rules: [
                    {
                      required: true,
                      message: 'Input something!',
                    },
                  ],
                },
              ]"
              placeholder="placeholder"
            />
          </a-form-item>
        </a-col>
      </a-row>
      <a-row>
        <a-col :span="24" :style="{ textAlign: 'right' }">
          <a-button type="primary" html-type="submit"> Search </a-button>
          <a-button :style="{ marginLeft: '8px' }" @click="handleReset">
            Clear
          </a-button>
          <a :style="{ marginLeft: '8px', fontSize: '12px' }" @click="toggle">
            Collapse <a-icon :type="expand ? 'up' : 'down'" />
          </a>
        </a-col>
      </a-row>
    </a-form>
    <a-button class="add-button" @click="addWord">Add</a-button>
    <div class="search-result-list">
      <a-table
        :columns="columns"
        :data-source="data"
        :pagination="pagination"
      ></a-table>
    </div>
    <AddWordModal ref="add" />
  </div>
</template>
<script>
import AddWordModal from "./AddWordModel.vue";
export default {
  components: { AddWordModal },
  data() {
    return {
      expand: false,
      form: this.$form.createForm(this, { name: "advanced_search" }),
      pagination: {
        showSizeChanger: true,
        pageSizeOptions: ["10", "20", "30", "40"],
      },
      data: [],
      columns: [
        {
          title: "id",
          dataIndex: "id",
        },
        {
          title: "word",
          dataIndex: "wordEn",
        },
        {
          title: "word description",
          dataIndex: "wordDescription",
        },
        {
          title: "did not remember times",
          dataIndex: "unRememberTimes",
        },
        {
          title: "remember date",
          dataIndex: "rememberDate",
        },
      ],
    };
  },
  created() {
    this.getData();
  },
  computed: {
    count() {
      return this.expand ? 11 : 7;
    },
  },
  updated() {
    console.log("updated");
  },
  methods: {
    getData() {
      this.$http({
        url: "/word/words",
        method: "GET",
        params: {
          current: 0,
          pageSize: 10,
        },
      }).then((response) => {
        this.data = response.data.data.content;
        console.log(response.data);
      });
    },
    addWord() {
      this.$refs.add.show();
    },
    handleSearch(e) {
      e.preventDefault();
      this.form.validateFields((error, values) => {
        console.log("error", error);
        console.log("Received values of form: ", values);
      });
    },

    handleReset() {
      this.form.resetFields();
    },

    toggle() {
      this.expand = !this.expand;
    },
  },
};
</script>
<style scoped>
.ant-advanced-search-form {
  padding: 24px;
  background: #fbfbfb;
  border: 1px solid #d9d9d9;
  border-radius: 6px;
}

.ant-advanced-search-form .ant-form-item {
  display: flex;
}

.ant-advanced-search-form .ant-form-item-control-wrapper {
  flex: 1;
}

.add-button {
  margin-top: 10px;
  margin-left: 10px;
}

#components-form-demo-advanced-search {
  padding: 20px;
}

#components-form-demo-advanced-search .ant-form {
  max-width: none;
}
#components-form-demo-advanced-search .search-result-list {
  margin-top: 16px;
  border: 1px dashed #e9e9e9;
  border-radius: 6px;
  background-color: #fafafa;
  min-height: 200px;
  text-align: center;
  padding-top: 80px;
}
</style>
<template>
    <div>
      <el-input
        type="textarea"
        v-model="jsonInput"
        placeholder="请输入JSON字符串"
        :rows="10">
      </el-input>
      <el-button @click="formatJson">格式化</el-button>
      <el-input
        type="textarea"
        v-model="jsonOutput"
        :rows="10"
        placeholder="格式化结果"
        :readonly="true">
      </el-input>
    </div>
  </template>
  
  <script>
  export default {
    data() {
      return {
        jsonInput: '',
        jsonOutput: ''
      }
    },
    methods: {
      formatJson() {
        try {
          const jsonObj = JSON.parse(this.jsonInput);
          this.jsonOutput = JSON.stringify(jsonObj, null, 2);
        } catch (e) {
          this.jsonOutput = '无效的JSON字符串！';
        }
      }
    }
  }
  </script>
  
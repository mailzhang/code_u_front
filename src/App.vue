<script setup>
import { RouterLink, RouterView } from 'vue-router'
import JsonFormatter from './components/JsonFormatter.vue'
import HelloWorld from './components/HelloWorld.vue'
</script>

<template>
  <el-container>
    <el-header>
      <el-menu mode="horizontal">
        <el-menu-item index="1"><router-link to="/">Home</router-link></el-menu-item>
        <el-menu-item index="2"><router-link to="/json_format">JSON Format</router-link></el-menu-item>
        <el-menu-item index="3"><router-link to="/about">About</router-link></el-menu-item>
      </el-menu>
    </el-header>
    <el-main>
      <router-view/>
    </el-main>
  </el-container>
</template>

<style>
</style>


<style scoped>
header {
  background-color: #f0f0f0; /* 设置背景颜色以区分导航栏 */
  padding: 1rem; /* 增加内边距使链接易于点击 */
  box-shadow: 0 2px 4px rgba(0,0,0,0.05); /* 下方阴影提升层次感 */
}

nav a {
  margin-right: 1rem; /* 增加链接之间的间隔 */
  text-decoration: none; /* 去除下划线 */
  color: #333; /* 设置深色字体以增强可读性 */
  font-weight: 500; /* 字体加粗 */
}

nav a.router-link-exact-active {
  color: #0056b3; /* 激活链接使用不同颜色 */
  text-decoration: underline; /* 激活链接增加下划线以区分 */
}

RouterView {
  padding: 20px; /* 增加内边距 */
}
</style>


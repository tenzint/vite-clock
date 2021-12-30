<script setup lang="ts">
import { ref, watch, onBeforeMount, onBeforeUnmount } from "vue";
let time: Date = new Date();
const timeString = ref<string>(time.toLocaleTimeString());
const date = ref<string>(time.toDateString());
var timerVar: number;
onBeforeMount(() => {
  timerVar = setInterval(() => {
    time = new Date();
    timeString.value = time.toLocaleTimeString();
    date.value = time.toDateString();
  }, 1000);
});
onBeforeUnmount(() => {
  clearInterval(timerVar);
});
</script>

<template>
  <div class="center">
    <h1>{{ timeString }}</h1>
    <h4>{{ date }}</h4>
  </div>
</template>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
body {
  background-color: #d3d3d3;
}
.container {
  position: relative;
  border: 3px solid green;
}
.center {
  margin: 0;
  position: absolute;
  top: 50%;
  left: 50%;
  -ms-transform: translate(-50%, -50%);
  transform: translate(-50%, -50%);
}
h1,
h2,
h4 {
  display: flex;
  color: #1a3d24;
  line-height: 25rem;
  margin-bottom: 125px;
  font-size: 4em !important;
}
</style>

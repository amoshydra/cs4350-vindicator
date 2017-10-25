<template>
  <div class="bv-wrapper">
    <video class="bv-video"
           autoplay
           loop
           :src="link"></video>
    <div class="bv-overlay"></div>
    <div style="z-index: 2; margin: auto; align-self: center;">
      <slot></slot>
    </div>
  </div>
</template>

<script>
export default {
  props: ['link'],
};
</script>

<style scoped>
.bv-wrapper {
  position: relative;
  width: 100%;
  height: 100%;
  display: flex;
  text-align: center;
  overflow: hidden;
}
.bv-video {
  width: 100%;
  height: 100%;
  object-fit: cover;
  z-index: 0;
  position: absolute;
}
.bv-overlay {
  z-index: 1;
  background: black;
  position: absolute;
  width: 100%;
  height: 100%;
  opacity: 0.6;
}
</style>

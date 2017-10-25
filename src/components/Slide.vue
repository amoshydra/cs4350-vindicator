<template>
  <div class="vd-slide">
    <video class="vd-slide-media"
           v-if="video"
           autoplay loop
           :src='video'></video>
    <img class="vd-slide-media"
         v-if="image"
         :src="image">
    <div class="vd-slide-content">
      <slot></slot>
    </div>
  </div>
</template>

<script>
export default {
  props: ['video', 'image'],
};
</script>

<style lang="scss">
.vd-slide {
  text-align: center;
  height: 100vh;
  position: relative;

  &::after {
    content: '';
    display: block;
    height: 35%;
    width: 100%;
    top: 0;
    position: absolute;
    background: rgba(0,0,0,0.1);
    background: linear-gradient(to top, rgba(0,0,0,0) 0%, rgba(0,0,0,0.28) 51%, rgba(0,0,0,0.36) 76%, rgba(0,0,0,0.41) 100%);
  }
}

.vd-slide.agile__slide {
  z-index: 1;
}
.vd-slide.agile__slide--active {
  z-index: 2;
}

.vd-slide-media {
  width: 100%;
  height: 100%;
  object-fit: cover;
}
.vd-slide-content {
  z-index: 3;
  position: absolute;
  color: white;
  top: 0;
  width: 100%;
  margin-top: 2.5em;
  font-family: DragonSlapper;
  font-size: 1.5em;
}

</style>

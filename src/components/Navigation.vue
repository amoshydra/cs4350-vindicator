<template>
  <scrollactive
    ref="scrollactive"
    class="nav--list d-none d-md-block"
    :style="'background-color: rgba(0,0,0,' + navOpacity + ');'"
    :offset="offset"
    :duration="800">  
    <a class="scrollactive-item" :style="'opacity:' + (navOpacity + 0.3) + ';'" href="#introduction">VindicatoR</a>
    <div style="float: right;">
      <a class="scrollactive-item" href="#story">Story</a>
      <a class="scrollactive-item" href="#features">Features</a>
      <a class="scrollactive-item" href="#download">Download</a>
      <a class="scrollactive-item" href="#about-us">About</a>
      <a target="_blank" href="https://flat8studios.wordpress.com/">Dev Blog</a>
    </div>
    <span style="clear: both"></span>
  </scrollactive>
</template>

<script>
import Vue from 'vue';
import Scrollactive from 'vue-scrollactive';
import _ from 'lodash';

Vue.use(Scrollactive);

export default {
  data() {
    return {
      scrollTop: 0,
      offset: 0,
    };
  },
  computed: {
    navOpacity() {
      const opaqueCeiling = window.innerHeight / 2;
      const scrollFactor = Math.min(this.scrollTop, opaqueCeiling) / opaqueCeiling;
      return scrollFactor;
    },
  },
  mounted() {
    window.addEventListener('scroll', _.throttle(() => {
      this.scrollTop = window.scrollY;
    }), 100);
    this.offset = this.$el.clientHeight;
  },
  beforeDestroy() {
  },
};
</script>

<style scoped lang="scss">
nav {
  background: rgba(0,0,0,0);
  position: fixed;
  width: 100%;
  z-index: 10;
}

.nav--list {
  $default-opacity: 0.3;

  a, a:visited {
    font-family: DragonSlapper;
    color: white;
    text-decoration: none;
    display: inline-block;
    padding: 0.9em;
    font-size: 0.9em;
    opacity: $default-opacity;

    transition: opacity 0.5s;
  }
  a:hover {
    opacity: 0.7;
  }
  a.is-active {
    opacity: 1;
  }
}

</style>

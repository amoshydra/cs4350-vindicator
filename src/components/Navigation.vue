<template>
  <nav>
    <scrollactive ref="scrollactive" class="nav--list">
      <a class="scrollactive-item" href="#introduction">VindicatoR</a>
      <a class="scrollactive-item" href="#story">Story</a>
      <a class="scrollactive-item" href="#feature">Feature</a>
      <a class="scrollactive-item" href="#downloads">Download</a>
      <a class="scrollactive-item" href="#about-us">About</a>
      <a href="https://flat8studios.wordpress.com/">Dev Blog</a>
    </scrollactive>
  </nav>
</template>

<script>
import Vue from 'vue';
import Scrollactive from 'vue-scrollactive';

Vue.use(Scrollactive);

export default {
  computed: {

  },
  mounted() {

  },
};
</script>

<style scoped lang="scss">
nav {
  background: none;
  position: fixed;
  width: 100%;
  z-index: 10;

  &::before {
    z-index: 0;
    content: '';
    display: block;
    height: 100%;
    width: 100%;
    top: 0;
    left: 0;
    position: absolute;
    background: rgba(0,0,0,0.1);
    background: linear-gradient(to top, rgba(0,0,0,0) 0%, rgba(0,0,0,0.28) 51%, rgba(0,0,0,0.36) 76%, rgba(0,0,0,0.41) 100%);
    background: rgba(0,0,0,1);
    pointer-events: none;
  }
}

.nav--list {
  padding-left: 2em;

a {
    font-family: DragonSlapper;
    color: white;
    text-decoration: none;
    display: inline-block;
    padding: 1em;
    font-size: 0.8em;
    opacity: 0.5;
  }
  a.is-active {
    opacity: 0.9999;
    z-index: 10;    
  }
} 
</style>

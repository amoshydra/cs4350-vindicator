<template>
  <div id="app">
    <Page/>
  </div>
</template>

<script>
import Page from './components/page';

export default {
  name: 'app',
  components: {
    Page,
  },
};
</script>

<style lang="scss">
@import '~bootstrap/scss/bootstrap';

body {
  margin: 0;
}
#app {
  @import url('https://fonts.googleapis.com/css?family=Slabo+27px');

  font-family: 'Slabo 27px', serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}
</style>

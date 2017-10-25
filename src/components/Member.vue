<template>
  <div class="member">
    <div class="member--wrapper">
      <img :src="'/images/head/' + member.initial + '.jpg'">
      <div class="member--info">
        <div class="member--name"> {{ member.name }} </div>
        <div class="member--role"> {{ member.role }} </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: 'Member',
  props: ['member'],
};
</script>

<style lang="scss">
$number-of-member: 6;

.members {
  display: flex;
  flex-wrap: wrap;
  justify-content: center;
  max-width: 480px;
  margin: auto;
}

.member {
  $margin: 1px;

  width: calc((100% / #{$number-of-member / 3}) - #{$margin * 2});
  @media only screen and (min-width: 480px) {
    width: calc((100% / #{$number-of-member / 2}) - #{$margin * 2});
  }

  text-align: center;
  font-size: 1em;
  margin: $margin;

  .member--wrapper {
    position: relative;
    padding-top: calc(140%); // Ratio 5 : 7
    height: 100%;
    width: 100%;

    &::after {
      content: '';
      display: block;
      height: 25%;
      width: 100%;
      bottom: 0;
      position: absolute;
      background: rgba(0,0,0,0.1);
      background: linear-gradient(to bottom, rgba(0,0,0,0) 0%, rgba(0,0,0,0.28) 51%, rgba(0,0,0,0.46) 76%, rgba(0,0,0,0.71) 100%);
      transition: height 0.5s;
    }
  }

  .member--wrapper:hover::after {
    height: 100%;
  }

  img {
    top: 0;bottom: 0; left: 0; right: 0;
    position: absolute;
    height: 100%;
    width: 100%;
    object-fit: cover;
  }
}

.member--info {
  z-index: 1;
  position: absolute;
  bottom: 0px;
  width: 100%;
  margin-bottom: 0.5em;
}
.member--name {
  font-size: 1em;
  font-weight: 900;
}
.member--role {
  font-size: 0.9em;
}
</style>

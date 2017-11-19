<template>
  <div class="member">
    <div class="member--wrapper">
      <img :src="member.url">
      <div class="member--info">
        <div class="attach-bottom">
          <div class="member--name"> {{ member.name }} </div>
          <div class="member--role"> {{ member.role }} </div>
        </div>
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
$border-radius : 0.125em;

.members {
  display: flex;
  flex-wrap: wrap;
  justify-content: center;
  max-width: 480px;
  margin: auto;
}

.member {
  $margin: 8px;
  width: calc((100% / #{$number-of-member / 3}) - #{$margin * 2});
  @media only screen and (min-width: 480px) {
    width: calc((100% / #{$number-of-member / 2}) - #{$margin * 2});
  }

  text-align: center;
  font-size: 1em;
  margin: 8px $margin;
  border-radius: $border-radius;

  .member--wrapper {
    position: relative;
    padding-top: 140%;
    width: 100%;
  }

  img {
    height: 100%;
    width: 100%;
    object-fit: cover;
    position: absolute;
    left: 0;
    right: 0;
    top: 0;
    bottom: 0;
    border-radius: $border-radius;
  }
}

.member--info {
  z-index: 1;
  font-size: 0.9em;

  display: block;
  height: 20%;
  width: 100%;
  
  bottom: 0;
  left: 0;
  right: 0;

  position: absolute;
  background: linear-gradient(to bottom, rgba(0,0,0,0) 0%, rgba(0,0,0,0.28) 31%, rgba(0,0,0,0.46) 76%, rgba(0,0,0,0.71) 100%);
  // background-color: rgba(0,0,0,0.3);
  transition: height 0.5s cubic-bezier(0.645, 0.045, 0.355, 1),
              background-color 0.5s cubic-bezier(0.645, 0.045, 0.355, 1);
  border-bottom-left-radius: $border-radius;
  border-bottom-right-radius: $border-radius;
}
.member:hover .member--info {
  height: 100%;
}

.attach-bottom {
  bottom: 0;
  position: absolute;
  padding-top: 0.25em;
  padding-bottom: 0.25em;
  width: 100%;
}

.member--name {
  font-size: 1em;
}
.member--role {
  font-size: 0.9em;
}
</style>

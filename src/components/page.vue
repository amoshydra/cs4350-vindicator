<template>
<div>
  <article name="introduction" style="width: 100%; height: 100vh; padding: 0;">
    <BackgroundVideo :link="'https://giant.gfycat.com/RepulsiveTidyAmericanlobster.mp4'">
      <DragonTitle style="transform: scale(1)">
        <div style="text-decoration: underline;">VindicatoR</div>
        <div style="font-size: 0.3em; margin-top: -0.3em;">
          <em>Ultimate VR Wizardry</em>
        </div>
      </DragonTitle>
    </BackgroundVideo>
  </article>
  
  <article name="story">
    <div class="container">
      <div class="row">
        <div class="col">
          <DragonTitle>Story</DragonTitle>
          
          <div class="columns-2">
            <p>
              Ever since the Great Mages' Battle six centuries ago, which devastated the lands and the non-magicals,
              the sacred art of magic was banned throughout the Kingdom of Drotis by the Elders, a council comprising
              of the last High Archmages and intelligent non-magicals. 
            </p>
            <p>
              A few decades later, the evil magical creatures slowly began venturing into the Kingdom's lands. Initially
              only killing livestocks, they soon began destroying people's homes, before it worsened into destruction of
              several outpost and killing of the Kingdom's scouts. The kingdom decided enough was enough and sent out a
              majority of its army to drive these creature back into the Unknown.
              Days past but no news returned from any of the Kingdom's units. 
            </p>
            <p>
              The Elders feared something wrong must have happened. This fear finally materialised when a severely wounded
              scout returned with a message. The message reported a horde of these evil creatures gathering on the border
              of The Unknowns, with the Kingdom's armies that was sent out there, barely surviving and just managing to
              prevent the initial wave of invasion. The message predicted 3 to 5 days before the Kingdom's force would be
              overrun and the horde will arrive at the gates of the Kingdom. A full-scale invasion was undeniably imminent.
              With not much units left to defend the Kingdom, the Elders decided it was time to lift the ban on magic and
              gather any abled-body mage to help with protecting the kingdo      
            </p>
          </div>
        </div>
      </div>
    </div>
  </article>
  
  <article name="feature"
           style="width: 100%;
                  background: black;
                  display: block;
                  padding: 0;
                  min-height: initial;">
    <DragonTitle style="display: none;">Feature</DragonTitle>
    <agile :arrows="false"
           :dots="false"
           :autoplay="true"
           :pauseOnHover="false"
           :autoplaySpeed="4000"
           :timing="'linear'"
           :fade="true"
    >
      <Slide video="https://giant.gfycat.com/RepulsiveTidyAmericanlobster.mp4">
        Crisp Graphics
      </Slide>
      <Slide video="https://giant.gfycat.com/HarmoniousJampackedIlsamochadegu.mp4">
        Immersive Spell Combinations
      </Slide>
      <Slide image="https://user-images.githubusercontent.com/8733840/31319182-43dd5efe-ac91-11e7-8cfc-2a1f08747362.gif">
        Intuitive Spell Casting
      </Slide>
    </agile>
  </article>
  
  
  <article class="text-center" name="downloads">
    <div class="container">
      <div class="row">
        <div class="col">
          <DragonTitle>Downloads</DragonTitle>
          <a class="btn btn-primary" href="#">
            Coming soon at itch.io
          </a>
        </div>
      </div>
    </div>
  </article>
  
  <article name="user-guide">
    <div class="container">
      <div class="row">
        <div class="col">
          <DragonTitle>User Guide</DragonTitle>
        </div>
      </div>
    </div>
  </article>
  
  <article name="about-us">
    <div class="container">
    <div class="row">
      <div class="col">
        <DragonTitle>About us</DragonTitle>
        <div class="members">
          <Member v-for="member in human" :key="member.initial" :member="member"></Member>
        </div>
      </div>
    </div>
    </div>
  </article>
</div>
</template>

<script>
import Vue from 'vue';
import VueAgile from 'vue-agile';
import BackgroundVideo from './BackgroundVideo';
import DragonTitle from './DragonTitle';
import Member from './Member';
import Slide from './Slide';

Vue.use(VueAgile);

export default {
  name: 'Page',
  components: {
    BackgroundVideo,
    DragonTitle,
    Member,
    Slide,
  },
  data() {
    return {
      human: [
        { name: 'Tay Jie Hao', role: 'Programmer', initial: 'tjh' },
        { name: 'Amos Wong', role: 'Programmer', initial: 'amos' },
        { name: 'Ken Lim', role: 'Programmer', initial: 'ken' },
        { name: 'Chua Jia Xuan', role: 'Programmer', initial: 'cjx' },
        { name: 'Lek Jia Ying', role: 'Programmer', initial: 'ljy' },
        { name: 'Tan Jun Kiat', role: 'Programmer', initial: 'tjk' },
      ],
    };
  },
};
</script>

<style lang="scss">
body {
  background: url('../assets/images/bg-grassland.jpg');
  background-position: top;
  background-attachment: fixed;
  background-color: black;
  background-size: cover;
  color: white;
}

#app {
  background: rgba(0,0,0,0.75);
}

article {
  padding-top: 60px;
  padding-bottom: 60px;
  display: flex;
  justify-content: center;
  min-height: 100vh;
  border-bottom: 12px solid black;
  border-top: 12px solid black;

  > .container {
    margin-top: auto;
    margin-bottom: auto;
  }
}

h1 {
  text-align: center;
  font-family: serif;
}

video, img {
  max-width: 100%;
}

.members {
  display: flex;
  flex-wrap: wrap;
  justify-content: center;
}

.member {
  border: 1px solid black;
  min-width: 240px;
  width: 33%;
  height: auto;
}
.member .img {
  width: 100%;
  object-fit: cover;
}

.member .img img {
  width: 100%;
}
</style>

<style lang="scss">
body {
  font-size: 1em;
  @media only screen and (min-width: 480px) { font-size: 1.2em; }
  @media only screen and (min-width: 786px) { font-size: 1.4em; }
}
.columns-2 {
  column-count: 1; 
  @media only screen and (min-width: 786px) { column-count: 2; }
}

article[name="introduction"] .dt-text {
  font-size: 1.3em;
  @media only screen and (min-width: 480px) { font-size: 1.8em; }
  @media only screen and (min-width: 786px) { font-size: 3em; }
}
</style>
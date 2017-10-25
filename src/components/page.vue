<template>
<div>
  <article id="introduction" name="introduction" style="width: 100%; height: 100vh; padding: 0;">
    <BackgroundVideo :link="'https://giant.gfycat.com/RepulsiveTidyAmericanlobster.mp4'">
      <DragonTitle style="transform: scale(1)">
        <div style="text-decoration: underline;">VindicatoR</div>
        <div style="font-size: 0.3em; margin-top: -0.3em;">
          <em>Ultimate VR Wizardry</em>
        </div>
      </DragonTitle>
    </BackgroundVideo>
  </article>
  
  <article id="story" name="story">
    <div class="container">
      <div class="row">
        <div class="col">
          <DragonTitle>VR Action Fantasy</DragonTitle>
          
          <div style="max-width: 480px; margin: auto;">
            <p>
              VindicatoR​ is a VR action fantasy game set in the medieval times. Dive straight into fast-paced action as you take on the role of a wizard out for vengeance against waves of monsters hell-bent on destroying your Kingdom. 
              Quick reflexes and a mastery of the elemental arts are crucial to survive the relentless waves of enemies across a multitude of levels and environments.
              In VindicatoR, there would be four elements to choose from: Fire, Wind, Lightning &amp; Ice. Not only cast you cast them, as a master of the elemental arts, you can also merge spells of the same or different elements together to create more powerful combinations in a fun and immersive way!
            </p>
          </div>
        </div>
      </div>
    </div>
  </article>
  
  <article id="features" name="features"
           style="width: 100%;
                  background: black;
                  display: block;
                  min-height: initial;">
    <div class="container">
    
      <DragonTitle>Features</DragonTitle>

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
    </div>
  </article>
  
  
  <article id="download" class="text-center" name="download">
    <div class="container">
      <div class="row">
        <div class="col">
          <DragonTitle>Downloads</DragonTitle>
          <a class="btn--portal" style="display: none;" href="#download">
            <p>Coming soon to itch.io</p>
          </a>
          <a class="btn--download not-ready" href="#download">
            Coming soon to itch.io
          </a>
        </div>
      </div>
    </div>
  </article>
  
  <article id="about-us" name="about-us" style="background: black;">
    <div class="container">
    <div class="row">
      <div class="col">
        <DragonTitle>About us</DragonTitle>
        <div class="members">
          <Member v-for="member in human" :key="member.initial" :member="member"></Member>
        </div>

        <p class="text-center" style="margin-top: 3em;">
          Visit out Development Blog <a href="https://flat8studios.wordpress.com/">here</a>
        </p>
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
        { name: 'Tan Jun Kiat', role: '', initial: 'tjk' },
        { name: 'Tay Jie Hao', role: '', initial: 'tjh' },
        { name: 'Ken Lim', role: '', initial: 'ken' },
        { name: 'Chua Jia Xuan', role: '', initial: 'cjx' },
        { name: 'Amos Wong', role: '', initial: 'amos' },
        { name: 'Lek Jia Ying', role: '', initial: 'ljy' },
      ],
    };
  },
};
</script>

<style lang="scss">
body {
  background: url('../assets/images/bg-grassland-small.jpg');
  background-repeat: no-repeat;
  background-position: top;
  background-attachment: fixed;
  background-size: cover;
  max-height: 100vh;
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
  border-bottom: 4px solid black;

  &:last-of-type {
    border-bottom: none;
  }

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

.btn--download,
.btn--download:hover,
.btn--download:active,
.btn--download:visited {
  border: 1.5px solid white;
  padding: 0.8em;
  color: white;
  margin-top: 40px;
  display: inline-block;
}
.btn--download.not-ready {
  border: 1.5px dashed white;
}

.btn--portal {
  background-image: url(../assets/images/portal.png);
  background-size: contain;
  background-repeat: no-repeat;
  background-position: center;
  
  // Set size
  height: 17em;
  width: 15em;
  max-width: 100%;

  // Centralise object
  margin: auto;
  margin-top: 4em;
  display: flex;
  justify-content: center;

  // Set effect
  opacity: 0.8;
  transition: opacity 0.5s;
  text-decoration: none;
  color: white;
  font-family: DragonSlapper;

  &:hover {
    text-decoration: none;
    color: white;
    opacity: 1;
  }

  > * {
    margin: auto;
    padding-left: 7em;
    padding-right: 7em;
  }
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
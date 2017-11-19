<template>
<div>
  <article id="introduction" name="introduction" style="width: 100%; height: 100vh; padding: 0;">
    <BackgroundVideo :link="responseData.background">
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
              {{ responseData.story }}
            </p>
          </div>
        </div>
      </div>
    </div>
  </article>
  
  <article id="features" name="features"
           style="width: 100%;
                  background: rgba(0,0,0,0.8);
                  display: block;
                  min-height: initial;">
    <div class="container">
    
      <DragonTitle>Features</DragonTitle>

      <agile
        v-if="responseData.slides.length > 0"
        :arrows="false"
        :dots="false"
        :autoplay="true"
        :pauseOnHover="false"
        :autoplaySpeed="4000"
        :timing="'linear'"
        :fade="true"
      >
        <Slide
          v-for="(slide, key) in responseData.slides"
          :key="key"
          :video="slide.video"
          :image="slide.image"
        >
          {{ slide.text }}
        </Slide>
      </agile>
    </div>
  </article>
  
  
  <article id="download" class="text-center" name="download">
    <div class="container">
      <div class="row">
        <div class="col">
          <DragonTitle>Downloads</DragonTitle>

          <div style="margin: 8em auto;">
            <a class="btn--portal" style="display: none;" href="https://flat8studios.itch.io/vindicator#download">
              <p>Visit itch.io</p>
            </a>
            <a class="btn--download not-ready" style="display: none;" href="#download">
              Coming soon to itch.io
            </a>

            <p style="margin: 0 auto;">Download now at</p>
            <a class="btn--download--image" href="https://flat8studios.itch.io/vindicator#download">
              <img src="../assets/images/itch-io.svg">
            </a>
          </div>
        </div>
      </div>
    </div>
  </article>
  
  <article id="about-us" name="about-us">
    <div class="container">
    <div class="row">
      <div class="col">
        <DragonTitle>About us</DragonTitle>

        <p style="max-width: 480px; margin: 1em auto;">
          {{ responseData.about }}
        </p>

        <div class="members">
          <Member v-for="member in responseData.human" :key="member.initial" :member="member"></Member>
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
      responseData: {
        slides: [],
        background: '',
        story: '',
        about: '',
        human: [],
      },
    };
  },
  mounted() {
    function getCORS(url, success) {
      let xhr = new XMLHttpRequest();
      if (!('withCredentials' in xhr)) xhr = new XDomainRequest(); // fix IE8/9
      xhr.open('GET', url);
      xhr.onload = success;
      xhr.send();
      return xhr;
    }

    getCORS('https://amoshydra.github.io/cs4350-vindicator/data/slides.json', (request) => {
      const response = request.currentTarget.response || request.target.responseText;
      this.responseData = JSON.parse(response);
    });
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
  text-shadow: 1px 1px 1px rgba(0,0,0,0.5);
}
.btn--download.not-ready {
  border: 1.5px dashed white;
}
.btn--download--image {
  display: inline-block;
  width: 260px;
  border: 1px solid white;
  padding: 1em;
  background-color: rgba(0,0,0,0.4);
  transition: box-shadow 0.3s,
              transform 0.1s;

  img {
    max-width: 100%;
  }

  &:hover {
    box-shadow: 0 0 160px 0 rgba(255, 250, 236, 0.5);
  }
  &:active {
    transform: scale(0.99);
    box-shadow: 0 0 160px 0 rgba(255, 250, 236, 0.8);
  }
}

.btn--portal {
  background-image: url(../assets/images/portal.png);
  background-size: contain;
  background-repeat: no-repeat;
  background-position: center;
  
  // Set size
  height: 20em;
  width: 20em;
  max-width: 100%;

  // Centralise object
  margin: auto;
  margin-top: 1em;
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
article[name="download"] {
  background: url('../assets/images/bg-door.png');
  background-position: center;
}
article[name="about-us"] {
  // background: url('../assets/images/bg-iceland.png');
  background-position: center;
}
</style>
<template>
  <div class="home">
    <h1>
      <img
        src="https://i.ibb.co/rbyMTpM/Image-from-i-OS-8.png"
        alt="shelter logo"
        id="logo"
      />
    </h1>
    <!--home is a placeholder for logo-->
    <img
      src="https://i.ibb.co/PGMJcjz/dog-and-cat-banner-23.png"
      alt="shelter banner"
      border="0"
      id="banner"
    />

    <div class="well-display">
      <div class="well">
        <router-link v-bind:to="{ name: 'dogs' }">
          <img
            src="https://www.montgomerycountymd.gov/animalservices/Resources/Images/dogicon.png"
            alt="dog icon"
          />
          <div class="well-text">VIEW DOGS</div>
        </router-link>
      </div>
      <div class="well">
        <router-link v-bind:to="{ name: 'cats' }">
          <img
            src="https://www.montgomerycountymd.gov/animalservices/Resources/Images/caticon.png"
            alt="cat icon"
          />
          <div class="well-text">VIEW CATS</div>
        </router-link>
      </div>
      <div class="well">
        <router-link v-bind:to="{ name: 'others' }">
          <img
            src="https://www.montgomerycountymd.gov/animalservices/Resources/Images/othericon.png"
            alt="other pets icon"
          />
          <div class="well-text">VIEW OTHERS</div>
        </router-link>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: "home",
};
</script>

<style>
h1 {
  text-align: center;
  margin-inline-start: 0px;
  margin-inline-end: 0px;
}
#logo {
  width: 12%;
  height: auto;
}
div.well-display {
  display: flex;
  justify-content: center;
  width: 100%;
  text-align: center;
  margin: 0.75rem;
  font-weight: bold;
  font-family: "Nunito Sans", sans-serif;
}
div.well {
  margin: 20px;
  margin-top: 2px;
}
.well-text {
  text-decoration: none;
  color: #795621;
}
#banner {
  width: 100%;
  height: auto;
  display: flex;
  justify-content: center;
}
</style>
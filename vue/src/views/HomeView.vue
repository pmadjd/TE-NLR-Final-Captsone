<template>
  <div class="home">
    <h1>
      <img
        src="https://i.ibb.co/LP8ZpR2/Image-from-i-OS-10.png"
        alt="shelter logo"
        id="logo"
      />
    </h1>

    <div class="well-display">
      <div class="well">
        <router-link v-bind:to="{ name: 'Dogs' }">
          <img
            src="https://www.montgomerycountymd.gov/animalservices/Resources/Images/dogicon.png"
            alt="dog icon"
          />
          <div class="well-text">VIEW DOGS</div>
        </router-link>
      </div>
      <div class="well">
        <router-link v-bind:to="{ name: 'Cats' }">
          <img
            src="https://www.montgomerycountymd.gov/animalservices/Resources/Images/caticon.png"
            alt="cat icon"
          />
          <div class="well-text">VIEW CATS</div>
        </router-link>
      </div>
      <div class="well">
        <router-link v-bind:to="{ name: 'Others' }">
          <img
            src="https://www.montgomerycountymd.gov/animalservices/Resources/Images/othericon.png"
            alt="other pets icon"
          />
          <div class="well-text">VIEW OTHERS</div>
        </router-link>
      </div>
    </div>

    <img
      src="https://i.ibb.co/PGMJcjz/dog-and-cat-banner-23.png"
      alt="shelter banner"
      border="0"
      id="banner"
    />
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
  margin-top: 5px;
  margin-bottom: 2px;
  display: flex;
  justify-content: center;
}
#logo {
  width: 20%;
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
  margin: 40px;
  margin-top: 10px;
  margin-bottom: 10px;
}
.well-text {
  text-decoration: none;
  color: #7e6037;
}
#banner {
  width: 100%;
  height: auto;
  display: flex;
  justify-content: center;
}
</style>
<template>
  <div class="home">
    <h1>Home</h1>
    <!--home is a placeholder for logo-->
    <img
      id="banner"
      src = "https://animalhaven.org/wp-content/uploads/2015/12/dog-and-cat-banner-2.png"
      alt="cat dog banner"
    />

    <div class="well-display">
      <div class="well">
        <img
          src="https://www.montgomerycountymd.gov/animalservices/Resources/Images/dogicon.png"
          alt="dog icon"
        />
        <router-link v-bind:to="{name: 'dogs'}">
        <div class="well-text">VIEW DOGS</div>
        </router-link>
      </div>
      <div class="well">
        <img
          src="https://www.montgomerycountymd.gov/animalservices/Resources/Images/caticon.png"
          alt="cat icon"
        />
         <router-link v-bind:to="{name: 'cats'}">
        <div class="well-text">VIEW CATS</div>
         </router-link>
      </div>
      <div class="well">
        <img
          src="https://www.montgomerycountymd.gov/animalservices/Resources/Images/othericon.png"
          alt="other pets icon"
        />
        <router-link v-bind:to="{name: 'others'}">
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
div.well{
  margin: 20px;
  margin-top: 2px;
}
.well-text{
  text-decoration: none;
}
#banner {
  width: 100%;
  height: auto;
}
</style>
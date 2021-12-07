<template>
  <div class="home">
    <h1>Home</h1>
    <!--home is a placeholder for logo-->
    <img
      id="banner"
      src="https://animalhaven.org/wp-content/uploads/2015/12/dog-and-cat-banner-2.png"
      alt="cat dog banner"
    />

    <div class="well-display">
      <div class="well">
        <img
          src="https://www.montgomerycountymd.gov/animalservices/Resources/Images/dogicon.png"
          alt="dog icon"
        />
        <div class="well-text">VIEW DOGS</div>
      </div>
      <div class="well">
        <img
          src="https://www.montgomerycountymd.gov/animalservices/Resources/Images/caticon.png"
          alt="cat icon"
        />
        <div class="well-text">VIEW CATS</div>
      </div>
      <div class="well">
        <img
          src="https://www.montgomerycountymd.gov/animalservices/Resources/Images/othericon.png"
          alt="other pets icon"
        />
        <div class="well-text">VIEW OTHERS</div>
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
#banner {
  width: 100%;
  height: auto;
}
</style>
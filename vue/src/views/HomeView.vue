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

    <body>
      <img
        src="https://i.ibb.co/PGMJcjz/dog-and-cat-banner-23.png"
        alt="shelter banner"
        border="0"
        id="banner"
      />
      <div>
        <h4>
          With hundreds of animals coming through our doors each year, Green
          Animal Shelter provides a safe place for dogs, cats, and small animals
          to stay while they wait for their forever families. We have a live
          release rate of over 90% and are very proud of our excellent volunteer
          program and the wonderful animal-loving community we're a part of!
          Thanks to the support provided by the valuable time of our volunteers
          and generous donations from the community, we have helped give happy
          homes to over 2,000 pets to date.
        </h4>
      </div>
      <div>
        <p>
          Want to get involved?
          <a href="/register" class="linkedin">Join our volunteer program!</a>
          <br />
          Interested in adopting a new furr-ever friend? Visit us in person or
          browse our list of available pets online and contact us to learn more!
        </p>
      </div>
      <div>
        <h4>CONTACT US</h4>
        <p>
          (200) 867-5309 <br />
          greenanimalshelter@adopt.com <br />
          2901 Osceola Pkwy <br />
          Bay Lake, FL 34747
        </p>
        <h4>HOURS</h4>
        <p>
          Mon - Sat: 9AM - 7PM <br />
          Sun: 10AM - 5PM <br />
        </p>
      </div>
    </body>
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
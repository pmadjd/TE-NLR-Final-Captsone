<template>
  <div class="cat-card">
    <h1>
      <img
        src="https://i.ibb.co/rbyMTpM/Image-from-i-OS-8.png"
        alt="shelter logo"
        id="logo"
      />
    </h1>
    <div class="cat" v-for="cat in cats" v-bind:key="cat.petId">
      <h2 class="pet-name">{{ cat.pet_name }}</h2>
      <h3 class="pet-id">Pet ID: {{ cat.petId }}</h3>
      <img v-bind:src="cat.petPhoto" alt="cat photo" id="pet-photo" />
      <h3 class="pet-gender">Gender: {{ cat.petGender }}</h3>
      <h3 class="pet-breed">Breed: {{ cat.petBreed }}</h3>
      <h3 class="pet-birthdate">Birthdate: {{ cat.petBirthdate }}</h3>
      <h3 class="arrival-date">Arrival Date: {{cat.arrivalDate}}</h3>
      <h4 class="pet-description">{{ cat.petDescription }}</h4>
    </div>
  </div>
</template>

<script>
import petService from "@/services/PetService";

export default {
  name: "cats-list",
  data() {
    return {
      cats: [],
    };
  },
  created() {
    petService.getCatList().then((response) => {
      this.cats = response.data;
    });
  },
};
</script>

<style>
#pet-photo {
  width: 75%;
  height: auto;
  border-radius: 15px;
}
.cat {
  border: 2px solid rgb(112, 85, 28);
  border-radius: 15px;
  border-width: 2px;
  width: 250px;
  height: 700px;
  margin: 20px;
  text-align: center;
  background-color: rgb(221, 240, 247);
  color: rgb(38, 47, 121);
}

.pet-description {
  margin: 20px;
}
.cat-card {
  display: flex;
  justify-content: space-evenly;
  flex-wrap: wrap;
}

.cat-card .pet-name {
  font-size: 1.5rem;
}

.cat-card .pet-id {
  font-size: 1rem;
}
</style>
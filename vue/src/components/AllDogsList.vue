<template>
  <div class="dog-card">
    <h1>
      <img
        src="https://i.ibb.co/rbyMTpM/Image-from-i-OS-8.png"
        alt="shelter logo"
        id="logo"
      />
    </h1>
    <div class="dog" v-for="dog in dogs" v-bind:key="dog.petId">
      <h2 class="pet-name">{{ dog.petName }}</h2>
      <h3 class="pet-id">Pet ID: {{ dog.petId }}</h3>
      <img v-bind:src="dog.petPhoto" alt="dog photo" id="pet-photo" />
      <!-- ??????? -->
      <h3 class="pet-gender">Gender: {{ dog.petGender }}</h3>
      <h3 class="pet-breed">Breed: {{ dog.petBreed }}</h3>
      <h3 class="pet-birthdate">Birthdate: {{ dog.petBirthdate }}</h3>
      <h4 class="pet-description">{{ dog.petDescription }}</h4>
    </div>
  </div>
</template>

<script>
import petService from "@/services/PetService";

export default {
  name: "dogs-list",
  // ????????????????????/
  data() {
    return {
      dogs: [],
    };
  },
  created() {
    petService.getDogList().then((response) => {
      console.log(response.data);
      this.dogs = response.data;
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
.dog {
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
.dog-card {
  display: flex;
  justify-content: space-evenly;
  flex-wrap: wrap;
}

.dog-card .pet-name {
  font-size: 1.5rem;
}

.dog-card .pet-id {
  font-size: 1rem;
}
</style>
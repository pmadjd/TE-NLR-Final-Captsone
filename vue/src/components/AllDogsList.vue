<template>
  <div class="dog-card">
    <div class="dog" v-for="dog in dogs" v-bind:key="dog.pet-id">
    <h2 class="pet-name">{{ dog.pet-name }}</h2>
    <h3 class="pet-id">{{ dog.pet-id }}</h3>
    {{ dog.pet-photo }}
    <!-- ??????? -->
    <h3 class="pet-gender">{{ dog.pet-gender }}</h3>
    <h3 class="pet-breed">{{ dog.pet-breed }}</h3>
    <h3 class="pet-birthdate">{{ dog.pet-birthdate }}</h3>
    <h4 class="pet-description">{{ dog.pet-description }}</h4>
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
      this.dogs = response.data;
    });
  },
};
</script>

<style>
.dog-card {
  border: 2px solid black;
  border-radius: 10px;
  width: 250px;
  height: 550px;
  margin: 20px;
}

.dog-card .pet-name {
  font-size: 1.5rem;
}

.dog-card .pet-id {
  font-size: 1rem;
}
</style>
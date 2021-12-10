<template>
  <div>
    <h1>Hello</h1>
    <input type="text" v-model="pet.petName" />
  </div>
</template>

<script>
import petService from "@/services/PetService";
export default {
  data() {
    return {
      pet: {
        petName: "",
        petType: "",
        petGender: "",
        petBreed: "",
        petBirthdate: "",
        petDescription: "",
        petPhoto: "",
      },
    };
  },
  created() {
    petService.getPetById(this.$route.params.id).then((response) => {
      this.pet.petName = response.petName;
    });
  },
};
</script>

<style>
</style>
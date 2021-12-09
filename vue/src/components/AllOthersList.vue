<template>
  <div class="other-card">
    <h1>
      <img
        src="https://i.ibb.co/LP8ZpR2/Image-from-i-OS-10.png"
        alt="shelter logo"
        id="logo"
      />
    </h1>
    <div class="other" v-for="other in others" v-bind:key="other.petId">
      <h2 class="pet-name">{{ other.pet_name }}</h2>
      <h3 class="pet-id">Pet ID: {{ other.petId }}</h3>
      <img v-bind:src="other.petPhoto" alt="other photo" id="pet-photo" />
      <h3 class="pet-gender">Gender: {{ other.petGender }}</h3>
      <h3 class="pet-breed">Breed: {{ other.petBreed }}</h3>
      <h3 class="pet-birthdate">Birthdate: {{ other.petBirthdate }}</h3>
      <h3 class="arrival-date">Arrival Date: {{other.arrivalDate}}</h3>
      <h4 class="pet-description">{{ other.petDescription }}</h4>
    </div>
  </div>
</template>

<script>
import petService from "@/services/PetService";

export default {
  name: "others-list",
  data() {
    return {
      others: [],
    };
  },
  created() {
    petService.getOthersList().then((response) => {
      // console.log(response.data);
      this.others = response.data;
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
.other {
  border: 2px solid rgb(112, 85, 28);
  border-radius: 15px;
  border-width: 2px;
  width: 250px;
  height: 800px;
  margin: 20px;
  text-align: center;
  background-color: rgb(221, 240, 247);
  color: rgb(49, 63, 165);
}

.pet-description {
  margin: 20px;
}
.other-card {
  display: flex;
  justify-content: space-evenly;
  flex-wrap: wrap;
}

.other-card .pet-name {
  font-size: 1.5rem;
}

.other-card .pet-id {
  font-size: 1rem;
}
</style>
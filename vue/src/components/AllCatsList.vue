<template>
  <div class="cat-card">
    <h1>
      <img
        src="https://i.ibb.co/LP8ZpR2/Image-from-i-OS-10.png"
        alt="shelter logo"
        id="logo"
      />
    </h1>
    <div class="pet-card" v-for="cat in cats" v-bind:key="cat.petId">
      <h2 class="pet-name">{{ cat.petName }}</h2>
      <h3 class="pet-id">Pet ID: {{ cat.petId }}</h3>
      <img v-bind:src="'/assets/' + cat.petPhoto" alt="cat photo" id="pet-photo" />
      <h3 class="pet-gender">Sex: {{ cat.petGender }}</h3>
      <h3 class="pet-breed">Breed: {{ cat.petBreed }}</h3>
      <h3 class="pet-birthdate">Birthdate: {{ cat.petBirthdate }}</h3>
      <h3 class="arrival-date">Arrival Date: {{cat.petArrivalDate}}</h3>
      <h3 class="length-of-stay">Length of Stay: <span>{{ cat.petArrivalDate | moment("from", true) }}</span> </h3>
      <h4 class="pet-description">{{ cat.petDescription }}</h4>
      <button v-if="$store.state.user.authorities" v-on:click= "onUpdate(cat.petId)">Update </button> 
      <!-- <button v-if="$store.state.user.authorities"> Mark Adopted</button> -->
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
  methods: {
    onUpdate(petId) {
      this.$router.push({name:'editListing', params: {id: petId}})
    }
  }
};
</script>

<style>
#pet-photo {
  width: 75%;
  height: auto;
  border-radius: 15px;
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
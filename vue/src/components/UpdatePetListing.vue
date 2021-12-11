<!----<template>
  <div>
    <h1>Hello</h1>
    <input type="text" v-model="pet.petName" />
  </div>
</template> -->

<template>
  <form v-on:submit.prevent>
    <div class="field">
      <label for="petName">Name: </label>
      <input name="Name" type="text" v-model="pet.petName" />
    </div>
    <div class="field">
      <label for="petPhoto">Photo: </label>
      <input name="Photo" type="text" v-model="pet.petPhoto" />
    </div>
     <div class="field">
      <label for="petGender">Gender: </label>
      <input name="Gender" type="text" v-model="pet.petGender" />
    </div>
     <div class="field">
      <label for="petBreed">Breed:   </label>
      <input name="Breed" type="text" v-model="pet.petBreed" />
    </div>
     <div class="field">
      <label for="petBirthdate">Birthdate: </label>
      <input name="Birthdate" type="text" v-model="pet.petBirthdate" />
    </div>
     <div class="field">
      <label for="petArrivalDate">Arrival Date: </label>
      <input name="Arrival Date" type="text" v-model="pet.petArrivalDate" />
    </div>
     <div class="field">
      <label for="petDescription">Description: </label>
      <input name="Description" type="text" v-model="pet.petDescription" />
    </div>
     <div class="field">
      <label for="AdopterInfo">Adopter: </label>
      <input name="Adopter" type="text" v-model="pet.petAdopterInfo" />
    </div>
    <div class="actions">
      <!-- need to edit the below method to update pet information -->
      <button type="submit" v-on:click="updatePetListing">Submit</button>
    </div>
  </form>
</template>

<script>
import petService from "@/services/PetService";
export default {
  name: "update-listing",
  // props: ["petId"]
  data() {
    return {
      pet: {
        petName: "",
        petPhoto: "",
        petGender: "",
        petBreed: "",
        petBirthdate: "",
        petArrivalDate: "",
        petDescription: "",
        petAdopterInfo: ""
      },
    };
  },
  created() {
    petService.getPetById(this.$route.params.id).then((response) => {
      this.pet.petName = response.petName;
      this.petPhoto = response.petPhoto;
      this.petGender = response.petGender;
      this.petBreed = response.petBreed;
      this.petBirthdate = response.petBirthdate;
      this.petArrivalDate = response.petArrivalDate;
      this.petDescription = response.petDescription;
      this.petAdopterInfo = response.petAdopterInfo;
    });
  },
  methods: {
    updatePetListing() {
      petService
      .updatePet(this.pet)
      .then(response => {
        if(response.status === 200) {
          this.$router.push({name: `${this.pet.petType}s`});
          //or route to homepage??
        }
      })
       .catch((error) => {
          //if it fails then we should set the error message
          if (error.response){
            this.errorMsg = "Error updating pet. Response was: "+error.response.statusText;
          } else if (error.request){
            this.errorMsg= "Error updating pet. Server could not be reached.";
          } else {
            this.errorMsg = "Error updating pet. Could not create request";
          }
        });  
    }
  }
};
</script>

<style>
</style>
<template>
  <form v-on:submit.prevent="addNewPet" class="new-pet-form">
    <h1>
      <img
        src="https://i.ibb.co/LP8ZpR2/Image-from-i-OS-10.png"
        alt="shelter logo"
        id="logo"
      />
    </h1>
    <h1>Add Pet Listing</h1>
    <div class="name-input">
      <label for="name">Name: </label>
      <input type="text" name="petName" v-model="pet.petName" />
    </div>
    <div class="species-input">
      <label for="species">Species: </label>
      <select name="petType" id="species-select" v-model="pet.petType">
        <option value="dog">Dog</option>
        <option value="cat">Cat</option>
        <option value="other">Other</option>
      </select>
    </div>
    <div class="gender-input">
      <label for="gender">Gender: </label>
      <input
        type="radio"
        name="petGender"
        v-model="pet.petGender"
        value="Male"
      /><label for="male">Male</label>
      <input
        type="radio"
        name="petGender"
        v-model="pet.petGender"
        value="Female"
      />
      <label for="female">Female</label>
    </div>
    <div class="breed-input">
      <label for="breed">Breed: </label>
      <input type="text" name="petBreed" v-model="pet.petBreed" />
    </div>
    <div class="birthdate-input">
      <label for="birthdate">Birthdate: </label>
      <input type="date" name="petBirthdate" v-model="pet.petBirthdate" />
    </div>
    <div class="description-input">
      <label for="description">Description: </label>
      <input type="text" name="petDescription" v-model="pet.petDescription" />
    </div>
    <div class="photo-input">
      <label for="photo">Photo URL: </label>
      <input type="text" name="petPhoto" v-model="pet.petPhoto" />
    </div>
    <button type="submit">Add Pet</button>
  </form>
</template>

<script>
import petService from "@/services/PetService";
export default {
  name: "add-pet",
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
  methods: {
    addNewPet() {
      petService.addNewPet(this.pet).then((response) => {
        if (response.status === 201) {
          this.$router.push("/" + this.pet.petType);
        }
      });
    },
  },
};
</script>

<style>
.new-pet-form {
  padding: 20px 20px;
  margin: 0 auto;
  max-width: 60vw;
  text-align: center;
  font-size: 120%;
  font-family: Asap;
  /* font-family: 'Nunito Sans', sans-serif; */
  box-sizing: border-box;
  width: auto;
  position: relative;
  clear: both;
  /* background: #accdf8;
  background-image: -webkit-gradient(linear, left bottom, left top, color-stop(0.15, #BEE2FF), color-stop(1, #95C2FD));
  background-image: -webkit-linear-gradient(bottom, #BEE2FF 15%, #95C2FD 100%);
  background-image: -moz-linear-gradient(bottom, #BEE2FF 15%, #95C2FD 100%);
  background-image: -ms-linear-gradient(bottom, #BEE2FF 15%, #95C2FD 100%);
  background-image: -o-linear-gradient(bottom, #BEE2FF 15%, #95C2FD 100%);
  background-image: linear-gradient(to top, #BEE2FF 15%, #95C2FD 100%); */
  background: white;
  background-image: -webkit-gradient(
    linear,
    left bottom,
    left top,
    color-stop(0.15, white),
    color-stop(1, #95c2fd)
  );
  background-image: -webkit-linear-gradient(bottom, #bee2ff 15%, white 100%);
  background-image: -moz-linear-gradient(bottom, #bee2ff 15%, white 100%);
  background-image: -ms-linear-gradient(bottom, #bee2ff 15%, white 100%);
  background-image: -o-linear-gradient(bottom, #bee2ff 15%, white 100%);
  background-image: linear-gradient(to top, #bee2ff 15%, white 100%);
  filter: progid:DXImageTransform.Microsoft.gradient(GradientType=0,startColorstr='#95C2FD', endColorstr='#BEE2FF');
  /* border: solid 1px rgba(0,0,0,0.5); */
  border: white;
  -webkit-border-radius: 20px;
  -moz-border-radius: 20px;
  border-radius: 20px;
  -webkit-box-shadow: inset 0 8px 5px rgba(255, 255, 255, 0.65),
    0 1px 2px rgba(0, 0, 0, 0.2);
  -moz-box-shadow: inset 0 8px 5px rgba(255, 255, 255, 0.65),
    0 1px 2px rgba(0, 0, 0, 0.2);
  box-shadow: inset 0 8px 5px rgba(255, 255, 255, 0.65),
    0 1px 2px rgba(0, 0, 0, 0.2);
  margin-bottom: 20px;
  margin-top: 20px;
  padding: 6px 20px;
  color: #000;
  text-shadow: 0 1px 1px rgba(255, 255, 255, 0.8);
  word-wrap: break-word;
}
</style>
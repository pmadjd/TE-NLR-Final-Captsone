import axios from 'axios';

// const axios =axios.create({
//     baseURL: "http://localhost:8080"
// });

export default {

    getDogList() {
        return axios.get('/dogs');
    },

    getCatList() {
        return axios.get('/cats');
    },

    getOthersList() {
        return axios.get('/others');
    },
 
    addNewPet(pet){
        return axios.post('/addPet', pet);
    },

    // // ???????????????????????
    // // updatePet(pet, petId){
    // updatePet(pet, petId){
    //     pet.petId = petId;
    //     return http.put('/updatePet', pet);
    // },

    updatePet(pet){
        // pet.petId = petId;
        return axios.put(`/updatePet/${pet.petId}`, pet);
    },

    updateAdopted(pet) {
        return axios.put(`/updateIsAdopted/${pet.petId}`, pet);
    },

    getPetById(petId) {
        // return Promise.resolve({petName:"Clifford2", petId: id});
        return axios.get(`/pets/${petId}`);
    }

}
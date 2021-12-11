import axios from 'axios';

const http =axios.create({
    baseURL: "http://localhost:8080"
});

export default {

    getDogList() {
        return http.get('/dogs');
    },

    getCatList() {
        return http.get('/cats');
    },

    getOthersList() {
        return http.get('/others');
    },
 
    addNewPet(pet){
        return http.post('/addPet', pet);
    },

    // ???????????????????????
    // updatePet(pet, petId){
    updatePet(pet){
        // pet.petId = petId;
        return http.put('/updatePet', pet);
    },

    getPetById(id) {
        // return Promise.resolve({petName:"Clifford2", petId: id});
        return http.get(`/pets/${id}`);
    }

}
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
    }
}
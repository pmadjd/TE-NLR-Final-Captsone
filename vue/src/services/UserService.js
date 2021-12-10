import axios from 'axios';

const http = axios.create({
    baseURL: "http://localhost:8080"
});

export default {

//for registerview where the apply/register button adds a user to the usertable
//WILL NEED TO CHANGE ALL PATHS HERE WHEN THE BACK END IS CREATED
addUser(user) {
    return http.post('/users', user);
},

getUsersList() {
    return http.get('/users');
},

updateApproved(user, userId){
    return http.put('/approveUser', user, userId)
},

rejectPending(user, userId){
    return http.put('/rejectuser', user, userId)
}

}
import axios from 'axios';

const http = axios.create({
    baseURL: "http://localhost:8080"
});

export default {

//?????????? check put methods

getAllUsers(){
    return http.get('/listOfUsers')
},

getApprovedUsers(){
    return http.get('/approved')
},

getPendingUsers(){
    return http.get('/pending')
},

approvePending(user){
    return http.put(`/approveUser/${user.id}`, user)
},

rejectPending(user){
    return http.put(`/rejectUser/${user.id}`, user)
},

getUserById(id) {
    return http.get(`/users/${id}`);
}

}
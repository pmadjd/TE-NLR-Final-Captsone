import axios from 'axios';

// const http = axios.create({
//     baseURL: "http://localhost:8080"
// });

export default {

//?????????? check put methods

getAllUsers(){
    return axios.get('/listOfUsers')
},

getApprovedUsers(){
    return axios.get('/approved')
},

getPendingUsers(){
    return axios.get('/pending')
},

approvePending(user){
    return axios.put(`/approveUser/${user.id}`, user)
},

rejectPending(user){
    return axios.put(`/rejectUser/${user.id}`, user)
},

getUserById(id) {
    return axios.get(`/users/${id}`);
}

}
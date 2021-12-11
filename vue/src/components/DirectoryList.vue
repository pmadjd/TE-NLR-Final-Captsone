<template>
  <div class="user-list">
    <table>
      <thead>
        <tr>
          <th>First Name</th>
          <th>Last Name</th>
          <th>Phone Number</th>
          <th>Email Address</th>
        </tr>
      </thead>
      <tbody>
        <tr v-for="user in approvedUsers" v-bind:key="user.id">
        <td>{{user.firstname}}</td>
        <td>{{user.lastname}}</td>
        </tr>
        <!-- <tr v-for="user in approvedUsers" v-bind:key="user.role">
          <td>{{ user.firstName }}</td> -->
          <!-- <td>{{ user.lastName }}</td>
        <td>{{ user.phone }}</td>
        <td>{{ user.email }}</td> -->
        <!-- </tr> -->
      </tbody>
    </table>
  </div>
</template>

<script>
import userService from "@/services/UserService.js";

export default {
  name: "approved-users-list",
  data() {
    return {
      approvedUsers: [
          {
        firstname: "",
        lastname: "",
        phone: "",
        email: "",
       },
      ],
    };
  },
  created() {
    userService.getApprovedUsers().then((response) => {
      this.approvedUsers = response.data;
    });
  },
  methods: {},
};
</script>

<style>
</style>
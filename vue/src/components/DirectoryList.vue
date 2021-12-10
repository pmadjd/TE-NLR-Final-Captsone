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
          <!-- user listing goes here -->
          <td>{{ user.firstname }}</td>
          <td>{{ user.lastname }}</td>
          <td>{{ user.phonenum }}</td>
          <td>{{ user.email }}</td>
        </tr>
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
      approvedUsers: [],
    };
  },
  created() {
    userService.getApprovedUsers().then((response) => {
      this.approvedUsers = response.data;
    });
  },
  methods: {
  
  },
};
</script>

<style>
</style>
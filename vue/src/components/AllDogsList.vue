<template>
  <div class="dog-card">
      <h2 class= "pet-name">{{pet.name}}</h2>
      <h3 class= "pet-id">{{pet.id}}</h3>
       {{pet.photo}} <!-- ??????? -->
      <h3 class= "pet-gender">{{pet.gender}}</h3>
      <h3 class = "pet-breed">{{pet.breed}}</h3>
      <h3 class = "pet-birthdate">{{pet.birthdate}}</h3>
      <h4 class = "pet-description">{{pet.description}}</h4>

  </div>
</template>

<script>
export default {
    name: 'dogs-list',
    props: ["pet"],
    // ??????????????????????????????

}
</script>

<style>
.dog-card {
    border: 2px solid black;
    border-radius: 10px;
    width: 250px;
    height: 550px;
    margin: 20px;
}

.dog-card .pet-name {
    font-size: 1.5rem;
}

.dog-card .pet-id {
    font-size: 1rem;
}
</style>
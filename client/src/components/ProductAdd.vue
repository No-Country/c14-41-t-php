<template>
  <div class="card mb-3" style="max-width: 326px;" >

    <div class="row g-0">
      <div class="col-4">
        <!-- <img src="..." class="img-fluid rounded-start" alt="..."> -->
        imagen
      </div>

      <div class="col-8">
        <div class="card-body">
          <h5 class="card-title fw-bold">Card title</h5>
          <p class="card-text fw-semibold text-wrap">este producto se vaasasasdasdasdasdasdasdasdasdasdasdadda</p>
          <p class="card-text"><small class="text-muted fst-italic">$ 2000</small></p>
          <div class="card-footer">
            <button class="btn btn-outline-dark">+</button>
            <p>1</p>
            <button class="btn btn-outline-dark">-</button>
          </div>
        </div>
      </div>

    </div>
  </div>
</template>

<script setup>
</script>

<style scoped>

.card-footer {
  display: flex;
  flex-direction: row;
  justify-content: space-around;
  align-items: baseline;
}

</style>
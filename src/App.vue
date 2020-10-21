<template>
    <h1>{{ message }}</h1>
</template>

<script>
export default {
    data() {
        return {
            message: 'Hello World!'
        }
    }
}
</script>

<style scoped>
h1 {
    color: blueviolet;
    text-align: center;
    margin: 0;
    width: auto;
}
</style>
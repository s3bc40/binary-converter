<template>
    <h1>{{ message }}</h1>
    <BinaryConverter></BinaryConverter>
</template>

<script>
// Import components
import BinaryConverter from './components/BinaryConverter'

// Init applications
export default {
    name: 'App',
    components: {
        BinaryConverter
    },
    data() {
        return {
            message: 'Welcome to my binary converter!'
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
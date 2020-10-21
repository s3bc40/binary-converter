<template>
    <div class="app-container">
        <h1 id="app-title">{{ message }}</h1>
        <BinaryConverter></BinaryConverter>
    </div>
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
            message: 'Binary converter'
        }
    }
}
</script>

<style>
body {
    background-color: lightgray;
}

.app-container {
    position: absolute;
    left: 0;
    right: 0;
    margin-left: auto;
    margin-right: auto;
    width: 50%;
}
h1#app-title {
    font-family: Ubuntu;
    text-align: center;
    width: auto;
    margin-top: 50%;
}
</style>
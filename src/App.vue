<template>
    <Convert></Convert>
</template>

<script>
// Import components
import Convert from './components/Convert'

// Init applications
export default {
    name: 'App',
    components: {
        Convert
    },
}
</script>

<style>
html, body {
    margin: 0;
    height: 100%;
    width: 100%;
    background-color: lightgray;
    font-family: Ubuntu;
}
</style>
<template>
    <div id="binary-converter">
        <input v-model="binary" placeholder="Enter your binary" />
        <p v-show="binary.length > 0">{{ binaryToNumber }}</p>
    </div>
</template>

<script>
export default {
    name: 'BinaryConverter',
    data() {
        return {
            binary: ''
        }
    },
    computed: {
        binaryToNumber() {
            return /^(0|1)+$/.test(this.binary) ? parseInt(this.binary, 2) : 'Enter a binary!'
        }
    }
}
</script>

<style scoped>

</style>
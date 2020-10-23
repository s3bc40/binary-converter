<template>
    <h2 class="app-convert-title">{{ title }}</h2>
    <input class="app-convert-input" v-model="binary" placeholder="Enter your binary" />
    <div class="app-convert-converted" v-show="binary.length > 0">
        <p>{{ binaryToNumber }}</p>
    </div>
</template>

<script>
// Export component to Convert
export default {
    name: 'ConvertBinaryToNum',
    data() {
        return {
            title: 'Binary to Number',
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

<style scoped></style>
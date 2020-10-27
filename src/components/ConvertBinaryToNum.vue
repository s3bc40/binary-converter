<template>
    <h3 class="app-convert-title">{{ title }}</h3>
    <textarea class="app-convert-input" v-model="binary" placeholder="Enter your binary"></textarea>
    <div class="app-convert-converted">
        <p v-show="binary.length > 0">{{ binaryToNumber }}</p>
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
            const binaryConverted = this.binary.replace(/\n/g,'')
            return /[^01]+/.test(binaryConverted) ? 'Enter a binary!' : parseInt(binaryConverted, 2)
        }
    }
}
</script>

<style scoped></style>
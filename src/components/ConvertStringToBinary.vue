<template>
    <h3 class="app-convert-title">{{ title }}</h3>
    <textarea class="app-convert-input" v-model="stringWords" placeholder="Enter your word or sentence"></textarea>
    <div class="app-convert-converted">
        <p v-show="stringWords.length > 0">{{ stringToBinary }}</p>
    </div>
</template>

<script>
// Export component to Convert
export default {
    name: 'ConvertStringToBinary',
    data() {
        return {
            title: 'Words to Binary',
            stringWords: ''
        }
    },
    computed: {
        stringToBinary() {
            const stringToConvert = this.stringWords.replace(/\n/g,'')
            let output = ""
            for (let i = 0; i < stringToConvert.length; i++) {
                output += stringToConvert[i].charCodeAt(0).toString(2)
            }
            return output
        }
    }
}
</script>

<style scoped></style>
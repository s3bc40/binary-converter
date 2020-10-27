<template>
    <h3 class="app-convert-title">{{ title }}</h3>
    <input class="app-convert-input" v-model="number" placeholder="Enter your number"/>
    <div class="app-convert-converted">
        <p v-show="number.length > 0">{{ numberToBinary }}</p>
    </div>
</template>

<script>
// Export component to Convert
export default {
    name: 'ConvertNumToBinary',
    data() {
        return {
            title: 'Number to Binary',
            number: ''
        }
    },
    computed: {
        numberToBinary() {
            return /[a-zA-Z,.]+/g.test(this.number) ? 
                'Enter a integer!' : 
                parseInt(this.number, 10).toString(2)
        }
    }
}
</script>

<style scoped></style>
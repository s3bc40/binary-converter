<template>
    <div id="binary-converter">
        <input class="binary-input" v-model="binary" placeholder="Enter your binary" />
        <p class="binary-converted" v-show="binary.length > 0">{{ binaryToNumber }}</p>
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
div#binary-converter {
    margin: auto;
    width: 50%;
}

.binary-input {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  box-sizing: border-box;
}

.binary-converted {
    font-family: Ubuntu;
    text-align: center;
    background-color: white;
    padding: 12px 20px;
    margin: 8px 0;
    border: double 2px magenta;
}
</style>
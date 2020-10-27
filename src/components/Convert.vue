<template>
    <div class="grid-container">
        <div class="app-description">
            <h1>Welcome to my binary converter application</h1>
            <p>
                This is my first Vue.js application. You can convert your binary to 
                a number, a number to a binary and also, a text to a binary. I have 
                used Vue.js V3, with Vue CLI.<br><br><b>Have a nice conversion experience!</b>
            </p>
            <footer>Author: G.CLARO Sebastien</footer>
        </div>
        <ConvertBinaryToNum></ConvertBinaryToNum>
        <ConvertNumToBinary></ConvertNumToBinary>
    </div>
</template>

<script>
// Import components
import ConvertBinaryToNum from './ConvertBinaryToNum'
import ConvertNumToBinary from './ConvertNumToBinary'

// Export component to App
export default {
    name: 'BinaryConv',
    components: {
        ConvertBinaryToNum,
        ConvertNumToBinary
    },
}
</script>

<style>
/* CSS for Convert application */
.grid-container {
    display: grid;
    grid-template-columns: auto 37.5% 37.5%;
    grid-template-areas: 
        'title title title'
        'title title title'
        'title title title';
    grid-gap: 2vw 2vh;
    margin-left: auto;
    margin-right: auto;
}
.app-description {
    grid-area: title;
    text-align: center;
    background-color: mediumpurple;
    color: white;
}
.app-description > p {
    margin: auto;
    width: 50%;
    font-size: 1vw;
}
.app-description > footer {
    color: lightgrey;
    text-align: right;
    font-style: italic;
    font-size: 0.75vw;
}
.app-convert-title {
    text-align: center;
}
.app-convert-input {
    width: 80%;
    height: 60px;
    margin: auto;
    padding: 0.5em 1em;
    resize: none;
    box-sizing: border-box;
    border-radius: 2px;
    border: solid slategrey 2px;
}
.app-convert-converted {
    text-align: center;
    background-color: white;
    width: 80%;
    height: 60px;
    margin: auto;
    box-sizing: border-box;
    border-radius: 2px;
    border: dotted 2px magenta;
}
</style>
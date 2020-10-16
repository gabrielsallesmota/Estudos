// par nome/valor
const saudacao = 'Opa' // contexto léxico 1 (um contexto no qual a variavel foi definida fisicamente no código)

function exec () {
    const saudacao = 'Falaaa' //contexto léxico 2
    return saudacao //procura no conxtexto mais restrito, e se não acha ele procura no contexto maior
}

//Objetos são grupo alinhados de pares nome/valor
const cliente = {
    nome: 'Pedro',
    idade: 32,
    peso: 90,
    endereço: {
        logradouro: 'Rua Muito Legeal',
        numero: 123
    }
}

console.log(saudacao)
console.log(exec())
console.log(cliente)
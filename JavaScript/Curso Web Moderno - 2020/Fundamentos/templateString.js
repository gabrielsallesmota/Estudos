const nome = 'Rebeca'
const concatenacao = 'Olá' + nome + '!'
const template = `  
    Olá
    ${nome}!` //abrir e fechar com crase e não aspas simples
console.log (concatenacao, template)

//expressores...

console.log (`1+1 = ${1 + 1}`) //ele interpreta o que está dentro das chaves (interpolado)

const up = texto => texto.toUpperCase () //função que converte para letra maiuscula 
console.log(`Ei.... ${up('cuidado')}! `) 
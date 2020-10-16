const peso1 = 1.0
const peso2 = Number('2.0')

console.log(peso1, peso2)
console.log (Number.isInteger(peso1)) //isInteger para confirmar se é inteiro
console.log (Number.isInteger(peso2)) 

const avaliacao1 = 9.871
const avaliacao2 = 6.871

const total = avaliacao1 * peso1 + avaliacao2 * peso2
const media = total / (peso1 + peso2)

console.log (media.toFixed(2)) //toFixed = Controle sobre as casas decimais (não altera valor da variável)
console.log (media.toString()) //toString = Retorna valor como String
console.log (media.toString(2)) //toString = Retorna valor como String como números binários
console.log (typeof media)

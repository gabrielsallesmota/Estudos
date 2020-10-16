const valores = [7.7, 8.9, 6.3, 9.2]
console.log(valores [0], valores[3])
console.log(valores[4])

valores [4] = 10
console.log(valores)
console.log(valores.length) //dizer quantos elementos tem no array

valores.push({id: 3}, false, null, 'teste') //push serve para adicionar valores ao array
console.log (valores)

console.log (valores.pop())  //função pop serve para mostrar e retirar o ultimo valor do array
delete valores [0] //retira o valor 0
console.log (valores)

console.log (typeof valores)

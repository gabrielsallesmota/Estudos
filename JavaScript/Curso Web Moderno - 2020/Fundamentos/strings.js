const escola = "Cod3r"

console.log (escola.charAt(4)) //retorna o caractere 4 da variável 
console.log (escola.charAt (5))
console.log (escola.charCodeAt (3)) //codigo relacionado a UniCode
console.log (escola.indexOf('3')) //apresenta o 3 dentro da variavel escola

console.log (escola.substring(1)) //mostra do indice 1 para frente
console.log (escola.substring(0, 3)) //mostra do indice 0 até o 3 mas sem monstrar o 3

console.log ('Escola'.concat(escola).concat("!")) //concatenar
console.log (escola.replace(3, 'e')) //substitui o numero 3 pela letra e

console.log ('Ana, Maria, Pedro'.split(',')) //cria um array 
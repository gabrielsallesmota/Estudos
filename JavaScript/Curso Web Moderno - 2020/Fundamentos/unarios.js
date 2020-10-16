let num1 = 1
let num2 = 2

num1++   //pós fixada, acrescenta uma unidade ao valor da variável
console.log(num1)

--num1 //pre fixada, decrementa uma unidade ao valor da variavel
console.log(num1)


console.log(++num1 === num2--) //da verdadeira pois o ++ foi executado antes da comparação.
console.log(num1 === num2)
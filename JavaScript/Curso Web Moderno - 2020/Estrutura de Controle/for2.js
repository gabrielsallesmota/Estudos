const notas = [6.7, 7.4, 9.8, 8.1, 7.7] 

for (let i in notas) {  //com o in, recebe-se o indice e não o valor em si da nota
    console.log(i, notas[i])
}


//pegar atributos de um objeto
const pessoa = {
    nome: 'Ana',
    sobrenome: 'Silva',
    idade: 29,
    peso: 64
}

for(let atributo in pessoa){
    console.log (`${atributo} = ${pessoa[atributo]}`)
}
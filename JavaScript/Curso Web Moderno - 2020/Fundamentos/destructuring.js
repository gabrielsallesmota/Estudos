function rand([min=0, max=1000]) {
    if (min > max) [min, max] = [max, min]
    const valor = Math.random() * (max-min) + min
    return Math.floor(valor)
}

console.log(rand([50,40]))
console.log(rand([992]))   //minimo 992, e ele assumo máximo como 1000
console.log(rand([,10]))   //minimo 0
console.log(rand([]))      //minimo 0, máximo 1000
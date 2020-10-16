function rand ({min = 0, max = 1000}) {
    const valor = Math.random () * (max - min) + min
    return Math.floor(valor) //floor = para retornar um numero inteiro
}

const obj = {max: 50, min:40}
console.log (rand(obj))
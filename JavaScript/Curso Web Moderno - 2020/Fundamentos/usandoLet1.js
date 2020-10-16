//primeiro ele procura dentro do escopo menor, e se nao achar ele procura no escopo mais abrangente

var numero = 1
{
    let numero2 = 2
    console.log('dentro=', numero)
}
console.log('fora=', numero)


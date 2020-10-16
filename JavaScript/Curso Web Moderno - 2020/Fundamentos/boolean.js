let isAtivo = false 
console.log (isAtivo)

isAtivo = true
console.log(isAtivo)

isAtivo = 
console.log(!isAtivo) // ! significa o contrario do resultado. !!true é true !true é falso.

console.log ('Os verdadeiros...') //todos inteiros são verdadeiros com excessão do 0
console.log (!!3)
console.log (!!-1)
console.log (!!' ')
console.log (!!'text')
console.log (!![])
console.log (!!{})
console.log (!!Infinity)
console.log (!!(isAtivo = true))

console.log ('Os Falsos...')
console.log (!!0)
console.log (!!'')
console.log (!!null)
console.log (!!NaN)
console.log (!!undefined)
console.log (!!(isAtivo = false)) //ele olha o final (direita)

console.log ('pra finalizar.....')
console.log (!!('' || null || 0 || ' ' )) //ele sempre retorna o primeiro valor verdadeiro

let nome = 'Lucas'
console.log(nome||'Desconhecido')

let nome2 = ''
console.log(nome2||'Desconhecido')
/* 
v e v -> v
v e f -> f
f e ? -> f

v ou ? -> v
f ou v -> v
f ou f -> f

v xor v -> f  //xor = Exclusivo
v xor f -> v
f xor v -> v
f xor f -> f

!v -> f // ! é negação logica 
!f -> v    */

function compras(trabalho1, trabalho2) {
    const comprarSorvete = trabalho1 || trabalho2  // || = expressão OU
    const comprarTv50 = trabalho1 && trabalho2 // $$ = expressão E
    // const comprarTv32 =  !!(trabalho1 ^ trabalho2) // bitwise xor
    const comprarTv32 = trabalho1 != trabalho2 // != também simula OU EXCLUSIVO
    const manterSaudavel = !comprarSorvete // operador unário

    return { comprarSorvete, comprarTv32, comprarTv50, manterSaudavel }
}

console.log(compras(true, true))
console.log(compras(true, false))
console.log(compras(false, true))
console.log(compras(false, false))

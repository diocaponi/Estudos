// Variavel number e suas variações. 

// Demonstração calculo de media entre duas avaliações.
const peso1 = 1.0
const peso2 = Number('2.0')

console.log(peso1, peso2)

console.log(Number.isInteger(peso1)) // testa se o valor é inteiro

const avaliacao1 = 9.871
const avaliacao2 = 6.871

const total = avaliacao1 * peso1 + avaliacao2 * peso2
const media = total / (peso1 + peso2)

console.log(media.toFixed(2)) // toFixed = precisão de casas decimais
console.log(media.toString()) // toString = valor original da variavel

// Alguns cuidados e curiosidades ao usar tipo number
console.log(7 / 0) // imprime 'infinity' tipo infinito
console.log("10" / 2) // imprime 5, não considera "10" como string
console.log("Show!" * 2 ) // imprime NaN (not a number), não repete 2x Show
console.log(0.1 + 0.7) // atentar a precisão de ponto flutuante
console.log((10.345).toFixed(2)) // limitando 2 casas decimais




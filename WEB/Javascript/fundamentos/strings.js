// Funcionalidades de STRING 

const escola = "Cod3r"

console.log(escola.charAt(4)) // retornar indice 4 de escola
console.log(escola.charCodeAt(3)) // retornar posição 3 na tabela ASCII
console.log(escola.indexOf('3')) // retorna indice do 3 da variavel

console.log(escola.substring(1)) // retorna todo conteúdo a partir do indice 1
console.log(escola.substring(0, 3)) // retornar do indice 0 ao 3, sem incluir o 3

console.log('Escola '.concat(escola).concat("!")) // concatenando strings
console.log(escola.replace(3, 'e')) // substituir string 3 por e

console.log('Ana,Maria,Pedro'.split(',')) // gerando array a partir de string, usando separador ','


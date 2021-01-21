// Demonstração de array

// No JS o array não tem tamanho fixo como em outras linguagens

// imprimindo posição(índice) do array
const valores = [7.7, 8.9, 6.3, 9.2]
console.log(valores[0], valores[3])
console.log(valores[4]) // índice 4 não existe, retorna undefined

valores[4] = 10 // adicionando novo índice no array
console.log(valores)
console.log(valores.length) // exibindo tamanho do array

// PUSH - adicionar novos elementos no array
valores.push({id: 3}, false, null, 'teste') // é possível inserir vários tipos de dados no array (não aconselhável)
console.log(valores) 

// POP - tira último valor do array
console.log(valores.pop())

// DELETE - tira valor do array
delete valores[0] // tira primeira valor do array
console.log(valores)

console.log(typeof valores) // o vetor é do tipo object

// Utilização template string

const nome = 'Diovanni'
const concatenacao = 'Olá ' + nome + '!'
const template = `
    Olá
    ${nome}!`
console.log(concatenacao, template)

// expressoes
console.log(`1 + 1 = ${1 + 1}`)

// demonstração de uso em função
const up = texto => texto.toUpperCase() 
console.log(`Ei... ${up('cuidado')}!`) 
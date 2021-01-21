// Demonstração de uso/comportamento de booleanos

let isAtivo = false
console.log(isAtivo)

isAtivo = true
console.log(isAtivo)

isAtivo = 1
console.log(!!isAtivo)

// Exemplos de valores que resolvem como true
console.log('os verdadeiros...')
console.log(!!3)
console.log(!!-1)
console.log(!!' ')
console.log(!!'texto')
console.log(!![])
console.log(!!{})
console.log(!!Infinity)
console.log(!!(isAtivo = true))

// Exemplos de valores que resolvem como false
console.log('os falsos...')
console.log(!!0)
console.log(!!'') // util para testar strings vazias
console.log(!!null)
console.log(!!NaN) 
console.log(!!undefined)
console.log(!!(isAtivo = false))


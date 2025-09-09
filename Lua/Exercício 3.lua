local listaNumeros = {}
local entrada
local pares = {}

print("Digite números (digite 0 para parar): ")

while true do
    entrada = tonumber(io.read())
    if entrada == 0 then
        break
    end
    table.insert(listaNumeros, entrada)
end

for indice = 1, #listaNumeros do -- # pega o tamanho da lista
    if listaNumeros[indice] % 2 == 0 then
        table.insert(pares, listaNumeros[indice])
    end
end

print("Lista apenas com números pares:")
for _, valor in ipairs(pares) do
    print(valor)
end

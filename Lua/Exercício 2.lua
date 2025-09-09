local lista = {}
local entrada
local quantidade = 0

print("Digite números (digite 0 para parar): ")

while true do
    entrada = tonumber(io.read())
    if entrada == 0 then -- condição de parada
        break
    end
    table.insert(lista, entrada)
    quantidade = quantidade + 1
end

local maximo = lista[1] -- assume que o primeiro é o maior
for indice = 2, quantidade do
    if lista[indice] > maximo then
        maximo = lista[indice]
    end
end

print("O maior número é: " .. maximo)

print("Digite o valor inicial: ")
local inicio = tonumber(io.read())

print("Digite o valor final: ")
local fim = tonumber(io.read())

print("Digite o número para verificar os múltiplos: ")
local divisor = tonumber(io.read())

for numero = inicio, fim, 1 do --start, end, step
  if numero % divisor == 0 then
    print(numero)
  end
end

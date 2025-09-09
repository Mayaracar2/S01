print("Digite o primeiro número: ")
local valor1 = tonumber(io.read())
print("Digite o segundo número: ")
local valor2 = tonumber(io.read())

print("Digite um operador matemático (+, -, *, /): ")
local operador = io.read()

function calcular(numA, numB, simbolo)
    if simbolo == "+" then
        print(numA + numB)
    elseif simbolo == "-" then
        print(numA - numB)
    elseif simbolo == "*" then
        print(numA * numB)
    elseif simbolo == "/" then
        print(numA / numB)
    end
end

calcular(valor1, valor2, operador)

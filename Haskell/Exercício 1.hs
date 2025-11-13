
data Bebida = Bebida { nome :: String, tipo :: String, preco :: Double }
  deriving(Show)

data StatusPedido = Aberto | Entregue | Cancelado
  deriving(Show, Eq)

data Pedido = Pedido { listaBebidas :: [Bebida], status :: StatusPedido }
  deriving(Show)

valorTotalPedido :: Pedido -> Double
valorTotalPedido (Pedido lB stats)
  | stats /= Cancelado = sum(map preco lB) + 5.0
  | otherwise = 0.0

primeiraBebida :: Pedido -> String
primeiraBebida pedido = 
  case listaBebidas pedido of
    [] -> "Nenhuma bebida no pedido"
    (bebida:_) -> nome bebida

-- Exemplo de uso --

bebidaA = Bebida "Mocha" "Café" 10.0
bebidaB = Bebida "Hortelã" "Chá" 8.0
bebidaC = Bebida "Laranja" "Suco" 12.0

compra1 = Pedido [bebidaA, bebidaC] Entregue
compra2 = Pedido [bebidaB] Cancelado
compra3 = Pedido [bebidaA, bebidaB, bebidaC] Aberto
compra4 = Pedido [] Cancelado

main :: IO ()
main = do 
  putStrLn "\n --- Simulação de Pedidos --- "

  putStr "Compra 1: Valor total = R$"
  print (valorTotalPedido compra1)

  putStr "Compra 2: Valor total = R$"
  print (valorTotalPedido compra2)

  putStr "Compra 3: Valor total = R$"
  print (valorTotalPedido compra3)

  putStr "Compra 4: Valor total = R$"
  print (valorTotalPedido compra4)

  putStrLn "\nPrimeira bebida da compra 1: "
  putStrLn (primeiraBebida compra1)

  putStrLn "\nPrimeira bebida da compra 4: "
  putStrLn (primeiraBebida compra4)

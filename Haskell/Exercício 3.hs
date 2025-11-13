data Banda = Banda { nome :: String, genero :: String, cache :: Double}
  deriving(Show)

data StatusEvento = Ativo | Encerrado |  Cancelado
  deriving(Show, Eq)

data Evento = Evento { listaDeBandas :: [Banda], status :: StatusEvento }
  deriving(Show)

custoTotalEvento :: Evento -> Double
custoTotalEvento evento
  | status evento == Cancelado = 0
  | otherwise = sum(map cache (listaDeBandas evento)) + taxaDeProducao
  where 
    taxaDeProducao = sum(map cache (listaDeBandas evento)) * 0.2

bandaAbertura :: Evento -> String
bandaAbertura (Evento bandas _)
  | null bandas = "Sem banda de abertura"
  | otherwise = nome (head bandas)

bandaFechamento :: Evento -> String
bandaFechamento (Evento bandas _)
  | null bandas = "Sem banda de fechamento"
  | otherwise = nome (last bandas)

eventoA = Evento [Banda "The Beatles" "Rock" 10000, Banda "Spice Girls" "Pop" 15000] Encerrado
eventoB = Evento [Banda "Iron Maiden" "Metal" 20000, Banda "Titãs" "Rock" 25000] Ativo
eventoC = Evento [Banda "Legião Urbana" "Rock" 30000, Banda "Slayer" "Metal" 35000] Cancelado

main :: IO ()
main = do
  putStrLn "\n --- Simulando Eventos --- "

  putStr "\nCusto total do evento A: R$"
  print (custoTotalEvento eventoA)
  putStrLn "Banda de abertura do evento A:"
  print (bandaAbertura eventoA)
  putStrLn "Banda de fechamento do evento A:"
  print (bandaFechamento eventoA)

  putStr "\nCusto total do evento B: R$"
  print (custoTotalEvento eventoB)
  putStrLn "Banda de abertura do evento B:"
  print (bandaAbertura eventoB)
  putStrLn "Banda de fechamento do evento B:"
  print (bandaFechamento eventoB)

  putStr "\nCusto total do evento C: R$"
  print (custoTotalEvento eventoC)
  putStrLn "Banda de abertura do evento C:"
  print (bandaAbertura eventoC)
  putStrLn "Banda de fechamento do evento C:"
  print (bandaFechamento eventoC)

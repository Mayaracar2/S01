data Servico = Servico {nome :: String, tipo :: String, precoBase :: Double}
  deriving(Show)

data StatusServiso = EmAndamento | Concluido | Cancelado
  deriving(Show, Eq)

data Atendimento = Atendimento { servicos :: [Servico], status :: StatusServiso }
  deriving(Show)

bonusEspiritual :: [Servico] -> Double
bonusEspiritual  servs 
 | length servs > 3 = total + bonus
 | total > 500 = total - desconto
 | otherwise = total
 where
  total = sum (map precoBase servs)
  bonus = 0.25 * total
  desconto = 0.1 * total

valorFinalAtendimento :: Atendimento -> Double
valorFinalAtendimento (Atendimento servs stats)
 | stats == Cancelado = 0.0
 | otherwise = bonusEspiritual servs

descricaoPrimeiroServico :: Atendimento -> String
descricaoPrimeiroServico (Atendimento servs _) =  nome (head servs)  ++ " - " ++ tipo (head servs)

at1 = Atendimento [Servico "Reflexologia" "Fisica" 100, Servico "Shiatsu" "Fisica" 150, Servico "Cristaloterapia" "Espiritual" 200] EmAndamento
at2 = Atendimento [Servico "Cristaloterapia" "Espiritual" 200, Servico "Shiatsu" "Fisica" 150, Servico "Cristaloterapia" "Espiritual" 200, Servico "Reflexologia" "Fisica" 100] Concluido
at3 = Atendimento [Servico "Shiatsu" "Fisica" 150, Servico "Reflexologia" "Fisica" 100, Servico "Cristaloterapia" "Espiritual" 200, Servico "Cristaloterapia" "Espiritual" 200] Cancelado

main :: IO ()
main = do
  putStrLn "\n --- Simulando Atendimentos --- "

  putStrLn "\nAtendimento 1: "
  putStr "Descrição do primeiro serviço: "
  print (descricaoPrimeiroServico at1)
  putStr "Valor final do atendimento: R$"
  print (valorFinalAtendimento at1)

  putStrLn "\nAtendimento 2: "
  putStr "Descrição do primeiro serviço: "
  print (descricaoPrimeiroServico at2)
  putStr "Valor final do atendimento: R$"
  print (valorFinalAtendimento at2)

  putStrLn "\nAtendimento 3: "
  putStr "Descrição do primeiro serviço: "
  print (descricaoPrimeiroServico at3)
  putStr "Valor final do atendimento: R$"
  print (valorFinalAtendimento at3)

module Main where
import Tipos
import Logica

-- Dados de teste iniciais
frotaInicial :: [Trotinete]
frotaInicial = [
    Trotinete 1 Disponivel 85.5,
    Trotinete 2 Manutencao 12.0,
    Trotinete 3 Disponivel 5.0,  -- Bateria baixa, não deve dar para alugar
    Trotinete 4 EmUso 45.0
    ]

main :: IO ()
main = do
    putStrLn "--- Frota Inicial ---"
    print frotaInicial

    putStrLn "\n--- Filtrar Trotinetes Disponiveis (Recursao) ---"
    print (trotinetesDisponiveis frotaInicial)

    putStrLn "\n--- Simular Aluguer da Trotinete 1 ---"
    print (alugarTrotinete (head frotaInicial))
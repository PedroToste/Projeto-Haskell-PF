module Logica where
import Tipos

-- Função essencial pura: tenta alugar uma trotinete se cumprir as regras
alugarTrotinete :: Trotinete -> Trotinete
alugarTrotinete t
    | estado t == Disponivel && bateria t > 15.0 = t { estado = EmUso }
    | otherwise = t

-- Recursão: filtra de uma lista apenas as trotinetes que estão prontas a usar
trotinetesDisponiveis :: [Trotinete] -> [Trotinete]
trotinetesDisponiveis [] = []
trotinetesDisponiveis (t:ts)
    | estado t == Disponivel = t : trotinetesDisponiveis ts
    | otherwise = trotinetesDisponiveis ts
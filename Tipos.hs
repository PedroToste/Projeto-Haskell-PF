module Tipos where

-- Tipos básicos para clarificar assinaturas
type Identificador = Int
type NivelBateria = Float

-- Data type simples para o estado
data Estado = Disponivel | EmUso | Manutencao
    deriving (Show, Eq)

-- Record principal
data Trotinete = Trotinete {
    idTrotinete :: Identificador,
    estado :: Estado,
    bateria :: NivelBateria
} deriving (Show, Eq)
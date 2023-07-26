class Banda < ApplicationRecord
  has_many :musicos
  has_many :musicas
  has_many :albuns
end

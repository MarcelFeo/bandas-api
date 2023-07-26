class Banda < ApplicationRecord
  has_many :musicos
  has_many :musicas
  has_many :albums
  accepts_nested_attributes_for :musicos, :musicas, :albums, allow_destroy: true
end

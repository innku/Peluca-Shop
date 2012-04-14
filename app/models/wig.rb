class Wig < ActiveRecord::Base
  SIZE = ['Large', 'Medium', 'Small']
  COLOR = ['Negra', 'Naranja', 'Roja', 'Rubia', 'Azul']
  
  validates_inclusion_of    :color, :in => COLOR, :message => 'no es valido'
  validates_inclusion_of    :size,  :in => SIZE, :message => 'no es valido'
  validates_numericality_of :price, :message => 'no es un numero'
end

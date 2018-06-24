class Livro < ApplicationRecord
  has_many :exemplars
  has_many :resenhas

  validates :titulo, presence: true, uniqueness: true, length: { maximum: 20 }
  validates :nome, presence: true
  validates :data_de_publicacao, presence: true
  validates :codigo, presence: true, length: { maximum: 9 }, format: { with: /\A\d+\z/, message: "Integer only. No sign allowed." }
  validates :genero_literario, presence: true, inclusion: { in: %w(EPOPEIA NOVELA CONTO ENSAIO ROMANCE) }

end

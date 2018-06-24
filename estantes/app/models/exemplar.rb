class Exemplar < ApplicationRecord
  validates :nome, presence: true
  validates :book_id, presence: true
  validates :estante_id, presence: true
end

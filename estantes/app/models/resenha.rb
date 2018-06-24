class Resenha < ApplicationRecord
  belongs_to :user
  belongs_to :livro


  validates :descricao, presence: true, length: { maximum: 40 }
  validates :user_id, presence: true
  validates :livro_id, presence: true

end

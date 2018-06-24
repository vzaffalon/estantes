class User < ApplicationRecord
  validates :nome, presence: true, length: { maximum: 15 }
  validates :apelido, presence: true, length: { maximum: 5 }
  validates :telefone, presence: true
  validates :senha, presence: true, length: { maximum: 4 }
end

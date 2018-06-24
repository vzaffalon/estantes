class Estante < ApplicationRecord
  has_many :exemplars
  belongs_to :user


  validates :nome, presence: true
  validates :exemplar_id, presence: true
  validates :user_id, presence: true

end

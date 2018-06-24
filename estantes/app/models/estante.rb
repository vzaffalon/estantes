class Estante < ApplicationRecord
  has_many :exemplars
  belongs_to :user

end

class Serie < ApplicationRecord
  has_many :characters, dependent: :destroy
end

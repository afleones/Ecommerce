class TypeDocument < ApplicationRecord
  has_many :users, dependent: :destroy
end

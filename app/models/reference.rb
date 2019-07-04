class Reference < ApplicationRecord
  has_many :thoughts, dependent: :destroy
end

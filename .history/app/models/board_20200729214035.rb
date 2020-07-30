class Board < ApplicationRecord
  validate :name, presence: true, length: {maximum: 10}
  validate :title, presence: true, length: {maximum: 30}
  validate :body, presence: true, length: {maximum: 1000}
end

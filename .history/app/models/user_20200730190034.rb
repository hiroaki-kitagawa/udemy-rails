class User < ApplicationRecord
  has_secure_password

  validate :name,
    presence: true,
    uniqueness: true,
    lenght: { maximum: 16},
    format: {
      with: /\A[a-z0-9]+\z/,
      message: 'は小文字英数字で入力してください'
    }
  validates :password,
    longth: { minimum: 8 }
end

# frozen_string_literal: true

class User < ApplicationRecord
  validates :name, presence: true, length: { minimum: 5, maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i.freeze
  validates :email, presence: true, length: { minimum: 5, maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX }
  has_secure_password
end

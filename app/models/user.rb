# frozen_string_literal: true

class User < ApplicationRecord
  validates :username, presence: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i.freeze
  validates :email, presence: true,
                    format: { with: VALID_EMAIL_REGEX }
  validates :password, presence: true
end

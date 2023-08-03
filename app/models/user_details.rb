class UserDetails < ApplicationRecord
    validates :phone_no, format: {
      with: /\A\+\d{2}\s\d{4}\s\d{3}\s\(\d{3}\)\z/,
      message: 'Contact number should match +dd dddd ddd (ddd)'
    }
    validates :firstname, presence: true, uniqueness: true
end
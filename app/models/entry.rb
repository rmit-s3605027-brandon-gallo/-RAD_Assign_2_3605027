class Entry < ApplicationRecord

    validates :name, presence: true
    validates :name, length: { minimum: 4 }
    validates :email, presence: true

    validates :email, length: { minimum: 4 }
    validates :email, length: { minimum: 4 },format: { with: /\@rmit.edu.au/, on: :create, :message => "Registration only open to RMIT staff."}

    validates :password, presence: true
    validates :password, length: { minimum: 8 }
    
    validates :password,  format: { with: /[A-Z]/, on: :create, :message => "must contain at least a lowercase letter, an uppercase letter, a digit and a special character."}
end

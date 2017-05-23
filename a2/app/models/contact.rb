class Contact < ApplicationRecord
      attr_accessor :name, :email, :message

    validates :name, presence: true
    validates :email, presence: true

    validates :email, length: { minimum: 4 }
    validates :email, length: { minimum: 4 },format: { with: /\@rmit.edu.au/, on: :create, :message => "Registration only open to RMIT staff."}

    validates :message, presence: true

end

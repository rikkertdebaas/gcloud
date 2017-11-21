class Message
  include ActiveModel::Model
   attr_accessor :voornaam, :achternaam, :email, :telefoon, :bericht
   validates :voornaam, :achternaam, :email, :telefoon, :bericht, presence: true
end

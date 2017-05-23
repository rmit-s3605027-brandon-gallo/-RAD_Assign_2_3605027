class ContactController < ApplicationController
  include ActiveModel::Validations
  attr_accessor :name, :email, :message
validates :name, presence: true
validates :email, presence: true
validates :message, presence: true
 def form
 @name = params[:contact_name]
 @email = params[:contact_email]
 @message = params[:contact_message]
 @contact = Contact.create({:name => @name,:email => @email,:message => @message})
 unless @name.blank? || @email.blank? || @password.blank?
 @contact = Contact.create({:name => @name,:email => @email,:message => @message})
 end
 @contacts = Contact.all
 end
 
end
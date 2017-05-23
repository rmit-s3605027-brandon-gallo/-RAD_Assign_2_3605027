class EntriesController < ApplicationController
  def sign_in
unless @name.blank?
 @entry = Entry.create({:name => @name})
 end
 @entries = Entry.all
end
end


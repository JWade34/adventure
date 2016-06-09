class User < ActiveRecord::Base

  validates_presence_of :email, :phone, :message

  validates_presence_of :name, message: "^We need to know who is filling in this form (your name)"
end

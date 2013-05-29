class EmailValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    unless value =~ /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
      record.errors[attribute] << (options[:message] || "is not an email")
    end
  end
end

class User < ActiveRecord::Base
  # TODO implement association for User model. See user_spec.rb for specification.

  attr_accessible :name
  validates :name, :presence => true
  attr_accessible :email
  validates :email, :uniqueness => true, :email => true
  has_many :posts, :dependent => :destroy

  # TODO Implement validation for User model. See user_spec.rb for specification.
  

  # TODO Implement an after_create callback -- welcome_status
  

  def welcome_status
    # TODO Should create a new Status after a user is created.  See user_spec.rb for more tips 
  end
end

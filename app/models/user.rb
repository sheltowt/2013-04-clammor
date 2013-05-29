class User < ActiveRecord::Base
  # TODO implement association for User model. See user_spec.rb for specification.
  validates :name, :presence => true
  validates :email, :uniqueness => true

  # TODO Implement validation for User model. See user_spec.rb for specification.
  

  # TODO Implement an after_create callback -- welcome_status
  

  def welcome_status
    # TODO Should create a new Status after a user is created.  See user_spec.rb for more tips 
  end
end

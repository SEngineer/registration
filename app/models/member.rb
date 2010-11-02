class Member < ActiveRecord::Base
  validates_presence_of :name, :affiliation, :email => " - mandatory field"
  validates_format_of :email, :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i
end

# == Schema Information
#
# Table name: polls
#
#  id      :bigint           not null, primary key
#  user_id :integer          not null
#  title   :string           not null
#

class Poll < ApplicationRecord 
  belongs_to :author,
  class_name: :User,
  primary_key: :id, 
  foreign_key: :user_id

  has_many :questions,
  class_name: :Poll,
  foreign_key: :poll_id,
  primary_key: :id  
end 

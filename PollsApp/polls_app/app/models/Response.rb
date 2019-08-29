# == Schema Information
#
# Table name: responses
#
#  id        :bigint           not null, primary key
#  user_id   :integer          not null
#  answer_id :integer          not null
#

class Response < ApplicationRecord 
  belongs_to :answer_choice,
  class_name: :AnswerChoice,
  primary_key: :id,
  foreign_key: :answer_id

  belongs_to :respondent,
  class_name: :user,
  primary_key: :id,
  foreign_key: :respondent_id
end 

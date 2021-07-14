class Question < ApplicationRecord
  has_many :options, foreign_key: "parent_question_id"

end

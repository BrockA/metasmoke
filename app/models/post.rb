class Post < ActiveRecord::Base
  has_and_belongs_to_many :reasons
  has_many :feedbacks
  belongs_to :site
end

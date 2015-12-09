class Feedback < ActiveRecord::Base
  belongs_to :post

  def is_positive?
    self.feedback_type.include? "tp"
  end
  def is_negative?
    self.feedback_type.include? "fp"
  end
  def is_ignored?
    self.feedback_type.include? "ignore"
  end
end

class Score < ActiveRecord::Base
  belongs_to :page

  def percent_correct
    correct = self.correct.to_f
    total = self.total
    percent_correct = (correct/total)*100
    percent_correct.to_i
  end

end

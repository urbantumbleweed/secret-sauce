class Score < ActiveRecord::Base
  belongs_to :page

  def percent_correct
    correct = self.correct.to_f
    total = self.total
    percent_correct = (correct/total)*100
    percent_correct.to_i
  end

  def quiz_name
    self.page_shortname.gsub("-"," ").capitalize
  end

  def quiz_page
    Page.find_by_shortname(self.page_shortname)
  end

end

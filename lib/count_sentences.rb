require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    if self.scan(/[[:punct:]]/).count > 4
   self.scan(/[[:punct:]]/).uniq.count
  else 
   self.scan(/[[:punct:]]/).count
 end
  end
end
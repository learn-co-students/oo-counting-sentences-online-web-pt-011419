require 'pry'

class String

  def sentence?
    if self.end_with?(".") 
      return true 
    else 
      false
    end 
  end

  def question?
     if self.end_with?("?") 
      return true 
    else 
      false
    end 
  end

  def exclamation?
    if self.end_with?("!") 
      return true 
    else 
      false
    end
  end

  def count_sentences
    #split at punctuation marks
    #self.split(".?!")
    #count all sentences
    self.squeeze(".?!").split(/[.?!]/).count

  end 
end
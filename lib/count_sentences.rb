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
    self.scan(/[^\.!?]+[\.!?]/).map(&:strip).count
#the first [^\.!?] - ^ is looking for all characters that are not #listed
# + is checking unlimited amount of times (therefore taking out ... or !!) until we get the 2nd set of [\.!?]
# scan has regex to split string and strip will remove trailing #spaces.

  end
end

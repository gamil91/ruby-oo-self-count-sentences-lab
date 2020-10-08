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
    # 0 = looking for punctuation, 1 = looking for space
    switch = 0
    sentence_count = 0
    self.split("").each do |i|
      if switch == 0
        if i == "!" || i == "?" || i == "."
          sentence_count += 1
          switch = 1
        end
      else
        switch = 0 if switch == 1 && i == " "
      end
    end
    sentence_count
  end
  

end
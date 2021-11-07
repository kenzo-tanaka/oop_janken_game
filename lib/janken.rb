class Janken
  def play(left, right, lang)
    result = judge(left, right)
    show_result(result, lang)
  end

  private

  def judge(left, right)
    case left
    when 0
      case right
      when 0
        0
      when 1
        1
      else
        -1
      end
    when 1
      case right
      when 0
        -1
      when 1
        0
      else
        1
      end
    else
      case right
      when 2
        1
      when 1
        -1
      else
        0
      end
    end
  end

  def show_result(result, lang)
    case lang
    when 'en'
      EnglishDisplay.new.show(result)
    when 'ja'
      JapaneseDisplay.new.show(result)
    end
  end
end

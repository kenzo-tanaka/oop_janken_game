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
    display = get_display(lang)
    display.show(result)
  end

  def get_display(lang)
    case lang
    when 'ja'
      JapaneseDisplay.new
    else
      EnglishDisplay.new
    end
  end
end

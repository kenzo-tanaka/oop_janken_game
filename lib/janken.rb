class Janken
  def play(left, right)
    result = judge(left, right)
    show_result(result)
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

  def show_result(result)
    case result
    when 1
      '勝利'
    when 0
      '引き分け'
    else
      '敗北'
    end
  end
end

class Janken
  def play(left, right)
    result = judge(left, right)
    show_result(result)
  end

  private

  def judge(left, right)
    if left == 0
      if right == 0
        return 0
      elsif right == 1
        return 1
      else
        return -1
      end
    elsif left == 1
      if right == 0
        return -1
      elsif right ==1
        return 0
      else
        return 1
      end
    else
      if right == 2
        return 1
      elsif right == 1
        return -1
      else
        return 0
      end
    end
  end

  def show_result(result)
    if result == 1
      '勝利'
    elsif result == 0
      '引き分け'
    else
      '敗北'
    end
  end
end

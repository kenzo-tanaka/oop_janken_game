class JapaneseDisplay < Display
  def show(result)
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

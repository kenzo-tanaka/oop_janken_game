class EnglishDisplay < Display
  def show(result)
    case result
    when 1
      'Win'
    when 0
      'Draw'
    else
      'Lose'
    end
  end
end

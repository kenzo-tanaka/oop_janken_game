class Janken
  attr_reader :display

  def initialize(display)
    @display = display
  end

  def play(left, right)
    result = judge(left, right)
    show_result(result)
  end

  private

  def judge(left, right)
    return 0 if left == right

    case left
    when 0
      case right
      when 1
        1
      else
        -1
      end
    when 1
      case right
      when 0
        -1
      else
        1
      end
    when 2
      case right
      when 0
        1
      when 1
        -1
      end
    end
  end

  def show_result(result)
    display.show(result)
  end
end

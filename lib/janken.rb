class Janken
  def play(left, right)
    return '引き分け' if left == right
    return '敗北' if left == 0 && right == 2

    '勝利'
  end
end

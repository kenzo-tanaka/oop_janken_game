require 'minitest/autorun'
require_relative '../lib/janken'

class JankenTest < Minitest::Test
  # 0: グー, 1: チョキ, 2: パー
  def test_win
    janken = Janken.new
    assert_equal('勝利', janken.play(0, 1))
  end

  def test_draw
    janken = Janken.new
    assert_equal('引き分け', janken.play(0, 0))
  end

  def test_lose
    janken = Janken.new
    assert_equal('敗北', janken.play(0, 2))
  end
end

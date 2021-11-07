require 'minitest/autorun'
require_relative '../lib/janken'

class JankenTest < Minitest::Test
  # 0: グー, 1: チョキ, 2: パー
  def test_win
    janken = Janken.new
    assert_equal('勝利', janken.play(0, 1))
  end
end

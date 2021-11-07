require 'minitest/autorun'
require_relative '../lib/janken'

class JankenTest < Minitest::Test
  # 0: グー, 1: チョキ, 2: パー

  class JapaneseJanken < self
    def test_win
      janken = Janken.new
      assert_equal('勝利', janken.play(0, 1, 'ja'))
    end

    def test_draw
      janken = Janken.new
      assert_equal('引き分け', janken.play(0, 0, 'ja'))
    end

    def test_lose
      janken = Janken.new
      assert_equal('敗北', janken.play(0, 2, 'ja'))
    end
  end

  class EnglishJanken < self
    def test_win
      janken = Janken.new
      assert_equal('Win', janken.play(0, 1, 'en'))
    end

    def test_draw
      janken = Janken.new
      assert_equal('Draw', janken.play(1, 1, 'en'))
    end

    def test_lose
      janken = Janken.new
      assert_equal('Lose', janken.play(0, 2, 'en'))
    end
  end
end

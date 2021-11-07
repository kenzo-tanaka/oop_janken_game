require 'minitest/autorun'
require_relative '../lib/display'
require_relative '../lib/english_display'
require_relative '../lib/japanese_display'
require_relative '../lib/janken'

class JankenTest < Minitest::Test
  # 0: グー, 1: チョキ, 2: パー

  class JapaneseJanken < self
    def setup
      display = JapaneseDisplay.new
      @janken = Janken.new(display)
    end

    def test_win
      assert_equal('勝利', @janken.play(0, 1))
    end

    def test_draw
      assert_equal('引き分け', @janken.play(0, 0))
    end

    def test_lose
      assert_equal('敗北', @janken.play(0, 2))
    end

    def test_win_2
      assert_equal('勝利', @janken.play(2, 0))
    end

    def test_draw_2
      assert_equal('引き分け', @janken.play(2, 2))
    end

    def test_lose_2
      assert_equal('敗北', @janken.play(2, 1))
    end
  end

  class EnglishJanken < self
    def setup
      display = EnglishDisplay.new
      @janken = Janken.new(display)
    end

    def test_win
      assert_equal('Win', @janken.play(0, 1))
    end

    def test_draw
      assert_equal('Draw', @janken.play(1, 1))
    end

    def test_lose
      assert_equal('Lose', @janken.play(0, 2))
    end
  end
end

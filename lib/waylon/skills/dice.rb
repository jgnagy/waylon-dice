# frozen_string_literal: true

module Waylon
  module Skills
    # A Waylon Skill for rolling some dice
    class Dice < Waylon::Skill
      route(
        /(dice me|roll some dice|roll( a)? d([1-9][0-9]*))/i,
        :roll_dice,
        help: {
          usage: "roll some dice|roll a dN",
          description: "Roll a pair of d6 or roll a single dN"
        }
      )

      def roll_dice
        react :game_die

        dice_size = tokens.last

        if dice_size
          reply "You rolled a #{(1..dice_size.to_i).to_a.sample}"
        else
          results = 2.times.map { (1..6).to_a.sample }
          reply "You rolled a #{results.first} and a #{results.last}"
        end
      end
    end
  end
end

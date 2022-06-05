# frozen_string_literal: true

require "waylon/core"
require_relative "dice/version"

module Waylon
  module Dice
    class Error < StandardError; end
    # Your code goes here...
  end
end

require_relative "skills/dice"

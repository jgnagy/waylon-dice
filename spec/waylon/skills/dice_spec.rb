# frozen_string_literal: true

RSpec.describe Waylon::Skills::Dice do
  it "rolls some dice" do
    send_message("roll some dice")
    expect(replies.last).to match(/You rolled a [1-6] and a [1-6]/)
  end

  it "rolls a specific size die" do
    send_message("roll a d10")
    expect(replies.last).to match(/You rolled a [1-9]+/)
  end
end

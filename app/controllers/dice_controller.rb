class DiceController < ApplicationController
  def home
    render({ :template => "dice_templates/home" })
  end

  def process_roll
    @num_dice = params.fetch("dice").to_i
    @num_sides = params.fetch("sides").to_i

    @rolls = []

    @num_dice.times do 
      @dice = rand(1..@num_sides)
      @rolls.push(@dice)
    end

    render({ :template => "dice_templates/process_roll"})
  end
end

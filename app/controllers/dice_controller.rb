class DiceController < ApplicationController
  def two_six
    @dice_rolls = []

    2.times do
      new_roll = rand(1..6)

      @dice_rolls.push(new_roll)
    end
    render({ :template => "dice_templates/2d6"})
  end

  def two_ten
    @dice_rolls = []

    2.times do
      new_roll = rand(1..10)

      @dice_rolls.push(new_roll)
    end
    render({ :template => "dice_templates/2d10"})
  end

  def one_twenty
    @dice_rolls = []

    1.times do
      new_roll = rand(1..20)

      @dice_rolls.push(new_roll)
    end
    render({ :template => "dice_templates/1d20"})
  end

  def five_four
    @dice_rolls = []

    5.times do
      new_roll = rand(1..4)

      @dice_rolls.push(new_roll)
    end
    render({ :template => "dice_templates/5d4"})
  end

  def roll
    @num_die = params[:num_die].to_i
    @num_sides = params[:num_sides].to_i

    @dice_results = Array.new(@num_die) { rand(1..@num_sides) }
    render({ :template => "dice_templates/roll" })
  end

  def home
    render({ :template => "dice_templates/home"})
  end
end

# frozen_string_literal: true

class Bottles
  def verse(n)
    no_milk = "No more bottles of milk on the wall, no more bottles of milk.\n"
    buy_milk = "Go to the store and buy some more, 99 bottles of milk on the wall.\n"
    bottles_of_milk = "#{n} #{n > 1 ? 'bottles' : 'bottle'} of milk"
    wall = ' on the wall, '
    pass_around = 'Take one down and pass it around, '
    bottles_of_milk_minus_one = "#{n - 1} #{n - 1 > 1 ? 'bottles' : 'bottle'} of milk on the wall.\n"
    no_bottles = "Take it down and pass it around, no more bottles of milk on the wall.\n"
    verse = "#{bottles_of_milk}#{wall}#{bottles_of_milk}.\n"
    if n.zero?
      no_milk + buy_milk
    elsif n == 1
      verse + no_bottles
    else
      verse + pass_around + bottles_of_milk_minus_one
    end
  end

  def verses(x, y)
    sing = ''
    sing += "#{verse(x)}\n"
    while x > y
      x -= 1
      sing += if x != y
                "#{verse(x)}\n"
              else
                verse(x)
              end
    end

    sing
  end

  def song
    verses(99, 0)
  end

end

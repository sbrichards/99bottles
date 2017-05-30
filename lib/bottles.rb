class Bottles

  def song
    verses(99, 0)
  end

  def verses(first, last)
    total = verse(first)
    while first > last
      first -= 1
      total += "\n" + verse(first)
    end
    return total
  end

  def verse(num)
    initial = "#{num} bottles"
    last_phrase = "Take one down and pass it around"
    if num == 2
      remaining = "1 bottle"
    elsif num == 1
      initial = "1 bottle"
      remaining = "no more bottles"
      last_phrase = "Take it down and pass it around"
    elsif num == 0
      initial = "No more bottles"
      remaining = "99 bottles"
      last_phrase = "Go to the store and buy some more"
    else
      remaining = "#{num - 1} bottles"
    end
    first_line = "#{initial} of beer on the wall, #{initial.downcase} of beer.\n"
    last_line = "#{last_phrase}, #{remaining} of beer on the wall.\n"
    return first_line + last_line
  end
end

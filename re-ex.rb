ballots = [{1 => 'Smudge', 2 => 'Tigger', 3 => 'Simba'},
           {1 => 'Bella', 2 => 'Lucky', 3 => 'Tigger'},
           {1 => 'Bella', 2 => 'Boots', 3 => 'Smudge'},
           {1 =>'Boots', 2 => 'Felix', 3 => 'Bella'},
           {1 => 'Lucky', 2 => 'Felix', 3 => 'Bella'},
           {1 => 'Smudge', 2 => 'Simba', 3 => 'Felix'}]

smudge_points=0
tigger_points=0
simba_points=0
bella_points=0
lucky_points=0
boots_points=0
felix_points=0

ballots.each do |ballot|
  ballot.each do |num, name|

    if name == 'Smudge'
      smudge_points += 4-num
    elsif name == 'Tigger'
      tigger_points += 4-num
    elsif name == 'Simba'
      simba_points += 4-num
    elsif name == 'Bella'
      bella_points += 4-num
    elsif name == 'Lucky'
      lucky_points += 4-num
    elsif name == 'Boots'
      boots_points += 4-num
    elsif name == 'Felix'
      felix_points += 4-num
    end

  end
end

total_points = {'Smudge' =>smudge_points, 'Tiger' => tigger_points, 'Simba' => simba_points, 'Bella'=>bella_points, 'Luck'=>lucky_points, 'Boots'=>boots_points, 'Felix'=>felix_points }

max = total_points.values.max

total_points.each do |k,v|
  if v == max
    puts "Winner is #{k} with #{v} points"
  end
end

ballots = [{1 => 'Smudge', 2 => 'Tigger', 3 => 'Simba'},
           {1 => 'Bella', 2 => 'Lucky', 3 => 'Tigger'},
           {1 => 'Bella', 2 => 'Boots', 3 => 'Smudge'},
           {1 =>'Boots', 2 => 'Felix', 3 => 'Bella'},
           {1 => 'Lucky', 2 => 'Felix', 3 => 'Bella'},
           {1 => 'Smudge', 2 => 'Simba', 3 => 'Felix'}]

Smudge_points=0
Tigger_points=0
Simba_points=0
Bella_points=0
Lucky_points=0
Boots_points=0
Felix_points=0

ballots.each do |ballot|
  ballot.each do |num, name|

    if name == 'Smudge'
      Smudge_points += 4-num
    elsif name == 'Tigger'
      Tigger_points += 4-num
    elsif name == 'Simba'
      Simba_points += 4-num
    elsif name == 'Bella'
      Bella_points += 4-num
    elsif name == 'Lucky'
      Lucky_points += 4-num
    elsif name == 'Boots'
      Boots_points += 4-num
    elsif name == 'Felix'
      Felix_points += 4-num
    end

  end
end

total_points = {'Smudge' =>Smudge_points, 'Tiger' => Tigger_points, 'Simba' => Simba_points, 'Bella'=>Bella_points, 'Luck'=>Lucky_points, 'Boots'=>Boots_points, 'Felix'=>Felix_points }

max = total_points.values.max

total_points.each do |k,v|
  if v == max
    puts "Winner is #{k} with #{v} points"
  end
end

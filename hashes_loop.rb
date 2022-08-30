friends=["Milhouse","Ralph","Nelson","Otto"]
family= {"Homer"=>"dad",
  "marge"=>"mom",
  "lisa"=>"sister",
  "Maggie"=>"sister",
  "Abe"=>"grandpa",
  "Santa´s Little Helper"=>"dog"


}

friends.each { |x| puts "#{x}"}
family.each { |x,y| puts "#{x}:#{y}"}

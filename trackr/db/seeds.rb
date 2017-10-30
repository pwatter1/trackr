# Seed the Trackr Weekly Goals DB with a few goals.
more_goals = [
  {:goal => 100}
]

more_goals.each do |goal|
  Goal.create!(goal)
end

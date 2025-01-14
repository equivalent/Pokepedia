puts "Importing Pokemon"
Pokemon.import_from_csv
Pokemon.set_evolves_from

puts "Importing Types"
Type.import_from_csv
PokemonType.import_from_csv

puts "Importing Stats"
Stat.import_from_csv
PokemonStat.import_from_csv

puts "Importing Descriptions"
Pokemon.import_descriptions

# add a total stat to pokemon
# PokemonStat.add_totals

# Background Jobs...
# puts "Attaching sprites"
Pokemon.all.each { |pokemon| Pokemon::AttachSpriteJob.perform_later(pokemon) }


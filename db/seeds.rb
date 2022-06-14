# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

dir = "app/assets/images"
files = Dir.entries(dir)
files.delete(".")
files.delete("..")
files.delete(".keep")
Image.delete_all
files.each do |file|
  dhash = DHashVips::DHash.calculate("#{dir}/#{file}")
  dfingerprint = DHashVips::IDHash.fingerprint("#{dir}/#{file}")
  puts file
  Image.create(dhash: dhash, dfingerprint: dfingerprint, name: file)
end

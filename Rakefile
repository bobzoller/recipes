require 'bundler/setup'
Bundler.require
require './lib/hrecipe'
require './lib/index'

desc "(re)build all recipe HTML files"
task :build do
  links = []
  Dir.glob('*.json').each do |recipe|
    recipe = File.basename(recipe, '.json')
    view = Hrecipe.new(recipe)
    puts "#{recipe}.json => html/#{recipe}.html"
    File.open("html/#{recipe}.html", 'w') {|f| f.write view.render}
    links << {href: "#{recipe}.html", text: view[:title]}
  end

  puts 'writing index => html/index.html'
  view = Index.new(links)
  File.open('html/index.html', 'w') {|f| f.write view.render}
end

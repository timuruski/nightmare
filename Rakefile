task default: [:start]

desc "Start app"
task :start do
  exec "bundle exec rackup"
end

desc "Start console"
task :console do
  require_relative "env"

  require "irb"
  require "irb/completion"
  ARGV.clear

  IRB.start
end

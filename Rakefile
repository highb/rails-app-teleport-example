# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require_relative "config/application"

Rails.application.load_tasks

task :build_container do
  v = ENV['VERSION']
  puts "Building #{v}"
  sh "docker build -t highb/rails-app:#{v} ."
end

task :push_container do
  v = ENV['VERSION']
  puts "Pushing #{v}"
  sh "docker push highb/rails-app:#{v}"
end

task build_and_push: [:build_container, :push_container]

desc "Run unit tests with Minitest"
task :test_minitest do
  puts "Running test:unit:minitest"
  sh "ruby minitest/discount_test.rb"
end

desc "Run mutation tests with Minitest"
task :mutant_minitest do
  puts "Running mutation:test:minitest"
  sh "bundle exec mutant --include lib --require ./discount -I test --use minitest Discount"
end

desc "Run unit tests with RSpec"
task :test_rspec do
  puts "Running test:unit:rspec"
  sh "rspec spec/"
end

desc "Run mutation tests with RSpec"
task :mutant_rspec do
  puts "Running mutation:test:rspec"
  sh "mutant --include lib --require ./discount.rb --use rspec Discount* && false"
  raise "exit 0"
end

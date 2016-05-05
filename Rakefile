task :test_minitest do
  sh "ruby minitest/discount_test.rb"
end
task :mutant_minitest do
  sh "bundle exec mutant --include lib --require ./discount -I test --use minitest Discount"
end
task :test_rspec do
  sh "rspec spec/"
end
task :mutant_rspec do
  sh "mutant --include lib --require ./discount.rb --use rspec Discount*"
  sh "exit 0"
end

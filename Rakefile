task :test do
  sh "ruby discount_test.rb"
end
task :mutant do
  sh "bundle exec mutant --include lib --require ./discount -I test --use minitest Discount"
end

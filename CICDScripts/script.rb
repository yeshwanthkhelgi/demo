# script.rb

# Access environment variables
env_var1 = ENV['ENV_VAR1']
env_var2 = ENV['ENV_VAR2']
custom_env_var1 = ENV['CUSTOM_ENV_VAR1']
custom_env_var2 = ENV['CUSTOM_ENV_VAR2']

# Output the values
puts "ENV_VAR1: #{env_var1}"
puts "ENV_VAR2: #{env_var2}"
puts "CUSTOM_ENV_VAR1: #{custom_env_var1}"
puts "CUSTOM_ENV_VAR2: #{custom_env_var2}"

#hello
# File.open(ENV['GITHUB_ENV'], 'a') do |file|
#   file.puts("link=some_link")
# end
File.open(ENV['GITHUB_ENV'], 'a') { |f| f.puts("link=https://example.com/generated_link") }
File.write('link.txt', 'https://example.com/generated_link')



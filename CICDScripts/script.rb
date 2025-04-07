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
links = ["https://example.com/1", "https://example.com/2", "https://example.com/3"]

File.open(ENV['GITHUB_ENV'], 'a') do |file|
  links.each_with_index do |link, index|
    file.puts("link#{index + 1}=#{link}")
  end
end

# File.open(ENV['GITHUB_ENV'], 'a') { |f| f.puts("link=https://example.com/generated_link") }
# File.write('link.txt', 'https://example.com/generated_link')



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
public_links = {
  "group1" => "https://example.com/group1",
  "group2" => "https://example.com/group2",
  "beta"   => "https://example.com/beta"
}

File.open(ENV['GITHUB_ENV'], 'a') do |file|
  public_links.each do |group, link|
    file.puts("#{group}_PUBLIC_LINK=#{link}")
  end
end


# File.open(ENV['GITHUB_ENV'], 'a') { |f| f.puts("link=https://example.com/generated_link") }
# File.write('link.txt', 'https://example.com/generated_link')



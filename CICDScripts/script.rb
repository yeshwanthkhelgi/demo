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
def release_lead_check
  code_owner_content = File.read(".github/CODEOWNERS")
  code_owner_match = code_owner_content.match(/^\* (.*)$/)
  if code_owner_match
    release_leads = code_owner_match[1].gsub('@',' ').split(' ')
    if release_leads.empty?
      raise "Erros: No release leads"
    else
      puts "found release leads : #{release_leads.join(', ')}"
    end
  else
    raise "Erros: No release leads"
  end
end

release_lead_check

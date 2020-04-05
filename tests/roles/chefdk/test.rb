describe command('chef --version') do
  its('stdout') {should match (/ChefDK/)}
  its('exit_status') { should eq 0 }
end

describe command('knife --version') do
  its('stdout') {should match (/Chef Infra Client/)}
  its('exit_status') { should eq 0 }
end

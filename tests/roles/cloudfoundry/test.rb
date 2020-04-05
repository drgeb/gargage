describe command('cf -v') do
  its('stdout') {should match (/cf/)}
  its('exit_status') {should eq 0}
end

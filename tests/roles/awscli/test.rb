describe command('aws --version') do
  its('stdout') {should match (/aws-cli/)}
  its('exit_status') {should eq 0}
end

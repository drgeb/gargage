describe command('code --version') do
  its('exit_status') { should eq 0 }
end

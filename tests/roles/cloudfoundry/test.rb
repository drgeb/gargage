describe command('cf -v') do
  its('exit_status') { should eq 0 }
end

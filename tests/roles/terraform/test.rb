describe command('~/.local/bin/terraform --version') do
  its('exit_status') { should eq 0 }
end

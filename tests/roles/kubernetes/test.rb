describe command('kubectl version') do
  its('stderr') { should match (/Missing or incomplete configuration info./) }
  its('exit_status') { should_not eq 0 }
end

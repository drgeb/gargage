describe command('google-chrome --version') do
  its('exit_status') { should eq 0 }
end

describe command('libreoffice --version') do
  its('exit_status') { should eq 0 }
end

describe command('gimp --version') do
  its('exit_status') { should eq 0 }
end

describe command('firefox --version') do
  its('exit_status') { should eq 0 }
end


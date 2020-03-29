describe command('R --version') do
  its('exit_status') { should eq 0 }
end

describe package('rstudio') do
  it {should be_installed}
end

describe file('/usr/bin/rstudio') do
  it {should exist}
end

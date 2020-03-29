describe package('code') do
  it {should be_installed}
end

describe command('code --version') do
  its('exit_status') { should eq 0 }
end

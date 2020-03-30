describe file('/home/kitchen/.local/bin/aws') do
  it {should exist}
end

describe command('aws --version') do
  its('exit_status') { should eq 0 }
end

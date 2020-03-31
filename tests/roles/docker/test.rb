describe command('docker') do
  it {should exist}
  its('exit_status') {should eq 0}
end

describe command('docker-compose --version') do
  its('exit_status') {should eq 0}
end

describe group('docker') do
  it {should exist}
  its('members') {should include 'kitchen'}
end



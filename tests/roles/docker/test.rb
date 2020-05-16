user = command('echo $USER').stdout.strip

describe command('docker') do
  it {should exist}
  its('exit_status') {should eq 0}
end

describe service('docker') do
  it {should be_enabled}
  it {should be_running}
end

describe command('docker-compose --version') do
    its('exit_status') {should eq 0}
end

describe group('docker') do
  it {should exist}
  its('members') {should include user}
end



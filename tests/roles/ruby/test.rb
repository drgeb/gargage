home = command('echo $HOME').stdout.strip

# General tests
describe file("#{home}/.rbenv") do
  it {should exist}
end

# Ubuntu tests
if os.name == 'ubuntu'
  describe command('/usr/bin/ruby --version') do
    its('stdout') {should match (/ruby 2.5/)}
    its('exit_status') {should eq 0}
  end

  describe file('/usr/include/ruby-2.5.0/ruby.h') do
    it {should exist}
  end
end

# CentOS tests
if os.name == 'centos'
  describe command('/usr/bin/ruby --version') do
    its('stdout') {should match (/ruby 2.0/)}
    its('exit_status') {should eq 0}
  end

  describe file('/usr/include/ruby.h') do
    it {should exist}
  end
end

# Amazon Linux tests
if os.name == 'amazon' || os.name == 'amazonlinux'
  describe command('/usr/bin/ruby --version') do
    its('stdout') {should match (/ruby 2.6/)}
    its('exit_status') {should eq 0}
  end

  describe file('/usr/include/ruby.h') do
    it {should exist}
  end
end

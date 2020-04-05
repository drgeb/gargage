home = command('echo $HOME').stdout.strip

# Ubuntu tests
if os.name == 'ubuntu'
  describe command('/usr/bin/python --version') do
    its('stderr') {should match (/Python 2.7/)}
    its('exit_status') { should eq 0 }
  end

  describe command('/usr/bin/python3 --version') do
    its('stdout') {should match (/Python 3.6/)}
    its('exit_status') { should eq 0 }
  end

  describe file('/usr/include/python2.7/Python.h') do
    it {should exist}
  end

  describe file('/usr/include/python3.6m/Python.h') do
    it {should exist}
  end

  describe file("#{home}/.pyenv") do
    it {should exist}
  end

  describe file("#{home}/.pyenv/plugins/pyenv-virtualenv") do
    it {should exist}
  end
end

# CentOS Tests
if os.name == 'centos'
  describe command('/usr/bin/python --version') do
    its('stderr') {should match (/Python 2.7/)}
    its('exit_status') { should eq 0 }
  end

  describe command('/usr/bin/python3 --version') do
    its('stdout') {should match (/Python 3.6/)}
    its('exit_status') { should eq 0 }
  end

  describe file('/usr/include/python2.7/Python.h') do
    it {should exist}
  end

  describe file('/usr/include/python3.6m/Python.h') do
    it {should exist}
  end

  describe file("#{home}/.pyenv") do
    it {should exist}
  end

  describe file("#{home}/.pyenv/plugins/pyenv-virtualenv") do
    it {should exist}
  end
end

# Amazon Liunux tests
if os.name == 'amazon' || os.name == 'amazonlinux'
  describe command('/usr/bin/python --version') do
    its('stderr') {should match (/Python 2.7/)}
    its('exit_status') { should eq 0 }
  end

  describe command('/usr/bin/python3 --version') do
    its('stdout') {should match (/Python 3.7/)}
    its('exit_status') { should eq 0 }
  end

  describe file('/usr/include/python2.7/Python.h') do
    it {should exist}
  end

  describe file('/usr/include/python3.7m/Python.h') do
    it {should exist}
  end

  describe file("#{home}/.pyenv") do
    it {should exist}
  end

  describe file("#{home}/.pyenv/plugins/pyenv-virtualenv") do
    it {should exist}
  end
end

unless os.name == 'amazon' || os.name == 'amazonlinux'
  describe command('/usr/bin/VirtualBox') do
    it {should exist}
  end
end

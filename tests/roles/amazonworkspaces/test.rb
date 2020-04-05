
if os.name == 'ubuntu'
  describe directory("/opt/workspacesclient") do
    it {should exist}
  end
end

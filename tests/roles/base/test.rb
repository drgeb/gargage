test_commands = %{gzip --version
tar --version
zip -v
unzip -v
curl --version
wget --version
top -v
htop -v
dig -v
less -V
man -V
locate -V
updatedb -V
ssh -V
which which
sed --version
awk --version
nvim --version
git --version}.split("\n")

test_commands.each do |cmd|
  describe command(cmd) do
    its('exit_status') { should eq 0 }
  end
end

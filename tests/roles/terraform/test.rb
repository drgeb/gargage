home = command('echo $HOME').stdout.strip

describe command("#{home}/.local/bin/terraform --version") do
  its('exit_status') { should eq 0 }
end

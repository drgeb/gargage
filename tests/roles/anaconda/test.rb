home = command('echo $HOME').stdout.strip

describe file("#{home}/anaconda3") do
  it {should exist}
end

describe command("#{home}/anaconda3/bin/conda -V") do
  its('exit_status') {should eq 0}
end

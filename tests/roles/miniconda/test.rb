home = command('echo $HOME').stdout.strip

describe file("#{home}/miniconda3") do
  it {should exist}
end

describe command("#{home}/miniconda3/bin/conda -V") do
  its('stdout') {should match (/conda/)}
  its('exit_status') {should eq 0}
end

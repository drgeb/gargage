describe file('/home/kitchen/anaconda') do
  it {should exist}
end

describe command('/home/kitchen/anaconda/bin/conda -V') do
  its('exit_status') {should eq 0}
end

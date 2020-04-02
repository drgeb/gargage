describe file('~/anaconda3') do
  it {should exist}
end

describe command('~/anaconda3/bin/conda -V') do
  its('exit_status') {should eq 0}
end

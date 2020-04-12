describe package('atom') do
  it {should be_installed}
end

describe file('/usr/bin/atom') do
  it {should exist}
end

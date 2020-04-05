describe package('code') do
  it {should be_installed}
end

describe file('/usr/bin/code') do
  it {should exist}
end

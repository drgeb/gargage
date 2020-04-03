home = command('echo $HOME').stdout.strip

describe file("#{home}/.rbenv") do
  it {should exist}
end

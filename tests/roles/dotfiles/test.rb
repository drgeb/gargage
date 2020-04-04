home = command('echo $HOME').stdout.strip

describe file("#{home}/.vimrc") do
  it {should exist}
end

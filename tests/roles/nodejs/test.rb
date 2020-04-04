home = command('echo $HOME').stdout.strip

describe file("#{home}/.nvm") do
  it {should exist}
end

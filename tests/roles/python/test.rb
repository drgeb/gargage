home = command('echo $HOME').stdout.strip

describe file("#{home}/.pyenv") do
  it {should exist}
end

describe file("#{home}/.pyenv/plugins/pyenv-virtualenv") do
  it {should exist}
end

home = command('echo $HOME').stdout.strip

describe file("#{home}/.sdkman") do
  it {should exist}
end

describe command('java -version') do
  its('exit_status') { should eq 0 }
end

describe command('javac -version') do
  its('exit_status') { should eq 0 }
end

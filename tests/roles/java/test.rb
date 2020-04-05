home = command('echo $HOME').stdout.strip

# Ubuntu tests
if os.name == 'ubuntu'
  describe file('/usr/lib/jvm/java-11-openjdk-amd64') do
    it {should exist}
  end

  describe command('/usr/bin/java -version') do
    its('stderr') {should match (/openjdk.*11/)}
    its('exit_status') {should eq 0}
  end

  describe command('/usr/bin/javac -version') do
    its('stdout') {should match (/javac 11/)}
    its('exit_status') {should eq 0}
  end

  describe file('/usr/lib/jvm/java-8-openjdk-amd64') do
    it {should exist}
  end

  describe command('/usr/lib/jvm/java-8-openjdk-amd64/bin/java -version') do
    its('stderr') {should match (/openjdk.*1\.8/)}
    its('exit_status') {should eq 0}
  end

  describe command('/usr/lib/jvm/java-8-openjdk-amd64/bin/javac -version') do
    its('stderr') {should match (/javac 1\.8/)}
    its('exit_status') {should eq 0}
  end

  describe command('/usr/bin/gradle -version') do
    its('stdout') {should match (/Gradle/)}
    its('exit_status') {should eq 0}
  end

  describe command('/usr/bin/ant -version') do
    its('stdout') {should match (/Apache Ant/)}
    its('exit_status') {should eq 0}
  end

  describe command('/usr/bin/mvn -version') do
    its('stdout') {should match (/Apache Maven/)}
    its('exit_status') {should eq 0}
  end
end

# CentOS tests
if os.name == 'centos'
  describe file('/usr/lib/jvm/java') do
    it {should exist}
  end

  describe command('/usr/bin/java -version') do
    its('stderr') {should match (/openjdk.*1\.8/)}
    its('exit_status') {should eq 0}
  end

  describe command('/usr/bin/javac -version') do
    its('stderr') {should match (/javac 1\.8/)}
    its('exit_status') {should eq 0}
  end

  describe file('/usr/lib/jvm/java-1.8.0') do
    it {should exist}
  end

  describe command('/usr/lib/jvm/java-11-openjdk-11.0.6.10-1.el7_7.x86_64/bin/java -version') do
    its('stderr') {should match (/openjdk.*11/)}
    its('exit_status') {should eq 0}
  end

  describe command('/usr/lib/jvm/java-11-openjdk-11.0.6.10-1.el7_7.x86_64/bin/javac -version') do
    its('stdout') {should match (/javac 11/)}
    its('exit_status') {should eq 0}
  end

  describe command('/opt/gradle/gradle-6.3/bin/gradle -version') do
    its('stdout') {should match (/Gradle/)}
    its('exit_status') {should eq 0}
  end

  describe command('/usr/bin/ant -version') do
    its('stdout') {should match (/Apache Ant/)}
    its('exit_status') {should eq 0}
  end

  describe command('/usr/bin/mvn -version') do
    its('stdout') {should match (/Apache Maven/)}
    its('exit_status') {should eq 0}
  end
end

# Amazon Linux tests
if os.name == 'amazon' || os.name == 'amazonlinux'
  describe file('/usr/lib/jvm/java') do
    it {should exist}
  end

  describe command('/usr/bin/java -version') do
    its('stderr') {should match (/openjdk.*1\.8/)}
    its('exit_status') {should eq 0}
  end

  describe command('/usr/bin/javac -version') do
    its('stderr') {should match (/javac 1\.8/)}
    its('exit_status') {should eq 0}
  end

  describe file('/usr/lib/jvm/java-1.8.0') do
    it {should exist}
  end

  describe command('/usr/lib/jvm/java-11-openjdk-11.0.5.10-0.amzn2.x86_64/bin/java -version') do
    its('stderr') {should match (/openjdk.*11/)}
    its('exit_status') {should eq 0}
  end

  describe command('/usr/lib/jvm/java-11-openjdk-11.0.5.10-0.amzn2.x86_64/bin/javac -version') do
    its('stdout') {should match (/javac 11/)}
    its('exit_status') {should eq 0}
  end

  describe command('/opt/gradle/gradle-6.3/bin/gradle -version') do
    its('stdout') {should match (/Gradle/)}
    its('exit_status') {should eq 0}
  end

  describe command('/usr/bin/ant -version') do
    its('stdout') {should match (/Apache Ant/)}
    its('exit_status') {should eq 0}
  end

  describe command('/usr/bin/mvn -version') do
    its('stdout') {should match (/Apache Maven/)}
    its('exit_status') {should eq 0}
  end
end


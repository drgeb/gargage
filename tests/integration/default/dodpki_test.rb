test_server="cyber.mil:443"

# Verify cert is installed
if os.name == 'ubuntu'
  describe file('/etc/ssl/certs/DoD_Root_CA_2.pem') do
    it {should exist}
  end
elsif os.name == 'amazonlinux' || os.name == 'centos'
  describe file('/etc/pki/ca-trust/extracted/pem/tls-ca-bundle.pem') do
    it {should exist}
    its('content') {should match (/DoD Root CA 2/)}
  end
end

# Test TLS Handshake to DOD Server
describe command("openssl s_client -connect #{test_server} <<< Q") do
  its('stdout') {should match (/Verify return code: 0 \(ok\)/)}
  its('exit_status') {should eq 0}
end

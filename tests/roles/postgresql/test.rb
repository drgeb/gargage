describe command('psql --version') do
  its('stdout') { should match (/psql \(PostgreSQL\)/) }
  its('exit_status') { should eq 0 }
end

unless os.name =~ /amazon/
  describe command('pgadmin4') do
    it { should exist }
  end
end

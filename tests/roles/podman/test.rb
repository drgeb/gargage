describe command('podman --version') do
  its('stdout') {should match (/podman/)}
  its('exit_status') {should eq 0}
end

describe command('buildah --version') do
  its('stdout') {should match (/buildah/)}
  its('exit_status') {should eq 0}
end

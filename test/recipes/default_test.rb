# # encoding: utf-8

# Inspec test for recipe iis::default

# The Inspec reference, with examples and extensive documentation, can be
# found at https://docs.chef.io/inspec_reference.html

describe port(80) do
  it { should be_listening }
end

describe service('w3svc') do
  it { should be_running }
end

describe command('Invoke-WebRequest http://localhost') do
  its(:stdout) { should match /Hello, world!/ }
end

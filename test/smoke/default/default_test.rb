# # encoding: utf-8

# Inspec test for recipe apache::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

unless os.windows?
  # This is an example test, replace with your own test.
  describe user('root') do
    it { should exist }
  end
end

if os.redhat?
  describe service('httpd') do
    it { should be_installed }
    it { should be_enabled }
    it { should be_running }
  end
elsif os.debian?
  describe service('apache2') do
    it { should be_installed }
    it { should be_enabled }
    it { should be_running }
  end
end
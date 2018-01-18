# 2.2 User Rights Assignment


control 'user-rights-assignment-2-2-1' do
    impact 1.0
    title 'Credential Manager access'
    desc 'Ensure Access Credential Manager as a trusted caller is set to No One'
    tag 'user-rights-assignment','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/security_policy/
    describe security_policy do
      its('SeTrustedCredManAccessPrivilege') { should eq ([]) }
    end
end


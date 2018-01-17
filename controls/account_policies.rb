control 'account-policies-1-1-1' do
    impact 1.0
    title 'Password History'
    desc 'Ensure Enforce password history is set to 24 or more password(s)'
    tag 'account-policies','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/security_policy/
    describe security_policy do
      its('Password History') { should eq 24 }
    end
end



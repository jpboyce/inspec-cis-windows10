control 'account-policies-1-1-1' do
    impact 1.0
    title 'Password History'
    desc 'Ensure Enforce password history is set to 24 or more password(s)'
    tag 'account-policies','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/security_policy/
    describe security_policy do
      its('PasswordHistorySize') { should be >= 24 }
    end
end

control 'account-policies-1-1-2' do
    impact 1.0
    title 'Maximum Password Age'
    desc 'Ensure Maximum password age is set to 60 or fewer days, but not 0'
    tag 'account-policies','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/security_policy/
    describe security_policy do
      its('MaximumPasswordAge') { should be <= 60 }
      its('MaximumPasswordAge') { should_not eq 0 }
    end
end

control 'account-policies-1-1-3' do
    impact 1.0
    title 'Minimum Password Age'
    desc 'Ensure Minimum password age is set to 1 or more day(s)'
    tag 'account-policies','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/security_policy/
    describe security_policy do
      its('MinimumPasswordAge') { should be >= 1 }
    end
end

control 'account-policies-1-1-4' do
    impact 1.0
    title 'Minimum Password Length'
    desc 'Ensure Minimum password length is set to 14 or more character(s)'
    tag 'account-policies','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/security_policy/
    describe security_policy do
      its('MinimumPasswordLength') { should be >= 14 }
    end
end

control 'account-policies-1-1-5' do
    impact 1.0
    title 'Password Complexity'
    desc 'Ensure Password must meet complexity requirements is set to Enabled'
    tag 'account-policies','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/security_policy/
    describe security_policy do
      its('PasswordComplexity') { should eq '1' }
    end
end

control 'account-policies-1-1-6' do
    impact 1.0
    title 'Password Reversible Encryption'
    desc 'Ensure Store passwords using reversible encryption is set to Disabled'
    tag 'account-policies','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/security_policy/
    describe security_policy do
      its('ClearTextPassword') { should eq 0 }
    end
end

control 'account-policies-1-2-1' do
    impact 1.0
    title 'Account Lockout Duration'
    desc 'Ensure Account lockout duration is set to 15 or more minute(s)'
    tag 'account-policies','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/security_policy/
    describe security_policy do
      its('LockoutDuration') { should be >= 15 }
    end
end

control 'account-policies-1-2-2' do
    impact 1.0
    title 'Number of Invalid Logon Attempts'
    desc 'Ensure Account lockout threshold is set to 10 or fewer invalid logon attempt(s), but not 0'
    tag 'account-policies','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/security_policy/
    describe security_policy do
      its('LockoutBadCount') { should be <= 10 }
      its('LockoutBadCount') { should_not eq 0 }
    end
end

control 'account-policies-1-2-3' do
    impact 1.0
    title 'Account Lockout Threshold'
    desc 'Ensure Reset account lockout counter after is set to 15 or more minute(s)'
    tag 'account-policies','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/security_policy/
    describe security_policy do
      its('ResetLockoutCount') { should be >= 15 }
    end
end

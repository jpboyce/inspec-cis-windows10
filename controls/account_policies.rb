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


control 'account-policies-1-1-2' do
    impact 1.0
    title 'Maximum Password Age'
    desc 'Ensure Maximum password age is set to 60 or fewer days, but not 0'
    tag 'account-policies','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/security_policy/
    describe security_policy do
      its('Password Age') { should eq 60 }
      its('Password Age') { should_not eq 0 }
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
      its('Password Age') { should eq 1 }
    end
end

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


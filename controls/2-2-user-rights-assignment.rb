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

control 'user-rights-assignment-2-2-2' do
    impact 1.0
    title 'Access computer from network'
    desc 'Ensure Access this computer from the network is set to Administrators, Remote Desktop Users'
    tag 'user-rights-assignment','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/security_policy/
    describe security_policy do
      its('SeNetworkLogonRight') { should eq (["S-1-5-32-544","S-1-5-32-555"]) }
    end
end

control 'user-rights-assignment-2-2-3' do
    impact 1.0
    title 'Act as part of the OS'
    desc 'Ensure Act as part of the operating system is set to No One'
    tag 'user-rights-assignment','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/security_policy/
    describe security_policy do
      its('SeTcbPrivilege') { should eq ([]) }
    end
end

control 'user-rights-assignment-2-2-4' do
    impact 1.0
    title 'Adjust memory quotas'
    desc 'Ensure Adjust memory quotas for a process is set to Administrators, LOCAL SERVICE, NETWORK SERVICE'
    tag 'user-rights-assignment','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/security_policy/
    describe security_policy do
      its('SeIncreaseQuotaPrivilege') { should eq (["S-1-5-32-544","S-1-5-19","S-1-5-20"]) }
    end
end

control 'user-rights-assignment-2-2-5' do
    impact 1.0
    title 'Allow log on locally'
    desc 'Ensure Allow log on locally is set to Administrators, Users'
    tag 'user-rights-assignment','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/security_policy/
    describe security_policy do
      its('SeInteractiveLogonRight') { should eq (["S-1-5-32-544","S-1-5-32-545"]) }
    end
end

control 'user-rights-assignment-2-2-6' do
    impact 1.0
    title 'Allow log on via RDP'
    desc 'Ensure Allow log on through Remote Desktop Services is set to Administrators, Remote Desktop Users'
    tag 'user-rights-assignment','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/security_policy/
    describe security_policy do
      its('SeRemoteInteractiveLogonRight') { should eq (["S-1-5-32-544","S-1-5-32-555"]) }
    end
end

control 'user-rights-assignment-2-2-7' do
    impact 1.0
    title 'Backup files'
    desc 'Ensure Back up files and directories is set to Administrators'
    tag 'user-rights-assignment','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/security_policy/
    describe security_policy do
      its('SeBackupPrivilege') { should eq (["S-1-5-32-544"]) }
    end
end

control 'user-rights-assignment-2-2-8' do
    impact 1.0
    title 'Change the system time'
    desc 'Ensure Change the system time is set to Administrators, LOCAL SERVICE'
    tag 'user-rights-assignment','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/security_policy/
    describe security_policy do
      its('SeSystemtimePrivilege') { should eq (["S-1-5-32-544","S-1-5-19"]) }
    end
end

control 'user-rights-assignment-2-2-9' do
    impact 1.0
    title 'Change the time zone'
    desc 'Ensure Change the time zone is set to Administrators, LOCAL SERVICE, Users'
    tag 'user-rights-assignment','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/security_policy/
    describe security_policy do
      its('SeTimeZonePrivilege') { should eq (["S-1-5-32-544","S-1-5-19","S-1-5-32-545"]) }
    end
end

control 'user-rights-assignment-2-2-10' do
    impact 1.0
    title 'Create a pagefile'
    desc 'Ensure Create a pagefile is set to Administrators'
    tag 'user-rights-assignment','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/security_policy/
    describe security_policy do
      its('SeCreatePagefilePrivilege') { should eq (["S-1-5-32-544"]) }
    end
end

control 'user-rights-assignment-2-2-11' do
    impact 1.0
    title 'Create a token object'
    desc 'Ensure Create a token object is set to No One'
    tag 'user-rights-assignment','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/security_policy/
    describe security_policy do
      its('SeCreateTokenPrivilege') { should eq ([]) }
    end
end

control 'user-rights-assignment-2-2-12' do
    impact 1.0
    title 'Create global objects'
    desc 'Ensure Create global objects is set to Administrators, LOCAL SERVICE, NETWORK SERVICE, SERVICE'
    tag 'user-rights-assignment','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/security_policy/
    describe security_policy do
      its('SeCreateGlobalPrivilege') { should eq (["S-1-5-32-544","S-1-5-19","S-1-5-20","S-1-5-32-544","S-1-5-6"]) }
    end
end

control 'user-rights-assignment-2-2-13' do
    impact 1.0
    title 'Create permanent shared objects'
    desc 'Ensure Create permanent shared objects is set to No One'
    tag 'user-rights-assignment','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/security_policy/
    describe security_policy do
      its('SeCreatePermanentPrivilege') { should eq ([]) }
    end
end

control 'user-rights-assignment-2-2-14' do
    impact 1.0
    title 'Create symbolic links'
    desc 'Configure Create symbolic links'
    tag 'user-rights-assignment','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/security_policy/
    describe security_policy do
      its('SeCreateSymbolicLinkPrivilege') { should eq (["S-1-5-32-544"]) }
    end
end

control 'user-rights-assignment-2-2-15' do
    impact 1.0
    title 'Debug programs'
    desc 'Ensure Debug programs is set to Administrators'
    tag 'user-rights-assignment','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/security_policy/
    describe security_policy do
      its('SeDebugPrivilege') { should eq (["S-1-5-32-544"]) }
    end
end

control 'user-rights-assignment-2-2-16' do
    impact 1.0
    title 'Deny access to this computer from the network'
    desc 'Ensure Deny access to this computer from the network to include Guests, Local account'
    tag 'user-rights-assignment','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/security_policy/
    describe security_policy do
      its('SeDenyNetworkLogonRight') { should eq (["S-1-5-32-546"]) }
    end
end

control 'user-rights-assignment-2-2-17' do
    impact 1.0
    title 'Deny log on as a batch job'
    desc 'Ensure Deny log on as a batch job to include Guests'
    tag 'user-rights-assignment','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/security_policy/
    describe security_policy do
      its('SeDenyBatchLogonRight') { should eq (["S-1-5-32-546"]) }
    end
end

control 'user-rights-assignment-2-2-18' do
    impact 1.0
    title 'Deny log on as a service'
    desc 'Ensure Deny log on as a service to include Guests'
    tag 'user-rights-assignment','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/security_policy/
    describe security_policy do
      its('SeDenyServiceLogonRight') { should eq (["S-1-5-32-546"]) }
    end
end

control 'user-rights-assignment-2-2-19' do
    impact 1.0
    title 'Deny log on locally'
    desc 'Ensure Deny log on locally to include Guests'
    tag 'user-rights-assignment','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/security_policy/
    describe security_policy do
      its('SeDenyInteractiveLogonRight') { should eq (["S-1-5-32-546"]) }
    end
end

control 'user-rights-assignment-2-2-20' do
    impact 1.0
    title 'Deny log on through RDP'
    desc 'Ensure Deny log on through Remote Desktop Services to include Guests, Local account'
    tag 'user-rights-assignment','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/security_policy/
    describe security_policy do
      its('SeDenyRemoteInteractiveLogonRight') { should eq (["S-1-5-32-546"]) }
    end
end

# Pasted rules start here
control 'user-rights-assignment-2-2-21' do
    impact 1.0
    title 'Ensure Enable computer and user accounts to be trusted for delegation is set to No One'
    desc 'Ensure Enable computer and user accounts to be trusted for delegation is set to No One'
    tag 'user-rights-assignment','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/security_policy/
    describe security_policy do
      its('SeEnableDelegationPrivilege') { should eq ([]) }
    end
end

control 'user-rights-assignment-2-2-22' do
    impact 1.0
    title 'Ensure Force shutdown from a remote system is set to Administrators'
    desc 'Ensure Force shutdown from a remote system is set to Administrators'
    tag 'user-rights-assignment','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/security_policy/
    describe security_policy do
      its('SeRemoteShutdownPrivilege') { should eq (["S-1-5-32-544"]) }
    end
end

control 'user-rights-assignment-2-2-23' do
    impact 1.0
    title 'Ensure Generate security audits is set to LOCAL SERVICE, NETWORK SERVICE'
    desc 'Ensure Generate security audits is set to LOCAL SERVICE, NETWORK SERVICE'
    tag 'user-rights-assignment','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/security_policy/
    describe security_policy do
      its('SeAuditPrivilege') { should eq (["S-1-5-19","S-1-5-20"]) }
    end
end

control 'user-rights-assignment-2-2-24' do
    impact 1.0
    title 'Ensure Impersonate a client after authentication is set to Administrators, LOCAL SERVICE, NETWORK SERVICE, SERVICE'
    desc 'Ensure Impersonate a client after authentication is set to Administrators, LOCAL SERVICE, NETWORK SERVICE, SERVICE'
    tag 'user-rights-assignment','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/security_policy/
    describe security_policy do
      its('SeImpersonatePrivilege') { should eq (["S-1-5-32-544","S-1-5-19","S-1-5-20","S-1-5-6"]) }
    end
end

control 'user-rights-assignment-2-2-25' do
    impact 1.0
    title 'Ensure Increase scheduling priority is set to Administrators'
    desc 'Ensure Increase scheduling priority is set to Administrators'
    tag 'user-rights-assignment','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/security_policy/
    describe security_policy do
      its('SeIncreaseBasePriorityPrivilege') { should eq (["S-1-5-32-544"]) }
    end
end

control 'user-rights-assignment-2-2-26' do
    impact 1.0
    title 'Ensure Load and unload device drivers is set to Administrators'
    desc 'Ensure Load and unload device drivers is set to Administrators'
    tag 'user-rights-assignment','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/security_policy/
    describe security_policy do
      its('SeLoadDriverPrivilege') { should eq (["S-1-5-32-544"]) }
    end
end

control 'user-rights-assignment-2-2-27' do
    impact 1.0
    title 'Ensure Lock pages in memory is set to No One'
    desc 'Ensure Lock pages in memory is set to No One'
    tag 'user-rights-assignment','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/security_policy/
    describe security_policy do
      its('SeLockMemoryPrivilege') { should eq ([]) }
    end
end

control 'user-rights-assignment-2-2-28' do
    impact 1.0
    title 'Ensure Log on as a batch job is set to Administrators'
    desc 'Ensure Log on as a batch job is set to Administrators'
    tag 'user-rights-assignment','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/security_policy/
    describe security_policy do
      its('SeBatchLogonRight') { should eq (["S-1-5-32-544"]) }
    end
end

control 'user-rights-assignment-2-2-29,Ensure Log on as a service is set to No One"' do
    impact 1.0
    title 'SeServiceLogonRight'
    desc 'SeServiceLogonRight'
    tag 'user-rights-assignment','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/security_policy/
    describe security_policy do
      its('') { should eq ([]) }
    end
end

control 'user-rights-assignment-2-2-30' do
    impact 1.0
    title 'Ensure Manage auditing and security log is set to Administrators'
    desc 'Ensure Manage auditing and security log is set to Administrators'
    tag 'user-rights-assignment','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/security_policy/
    describe security_policy do
      its('SeSecurityPrivilege') { should eq (["S-1-5-32-544"]) }
    end
end

control 'user-rights-assignment-2-2-31' do
    impact 1.0
    title 'Ensure Modify an object label is set to No One'
    desc 'Ensure Modify an object label is set to No One'
    tag 'user-rights-assignment','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/security_policy/
    describe security_policy do
      its('SeRelabelPrivilege') { should eq ([]) }
    end
end

control 'user-rights-assignment-2-2-32' do
    impact 1.0
    title 'Ensure Modify firmware environment values is set to Administrators'
    desc 'Ensure Modify firmware environment values is set to Administrators'
    tag 'user-rights-assignment','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/security_policy/
    describe security_policy do
      its('SeSystemEnvironmentPrivilege') { should eq (["S-1-5-32-544"]) }
    end
end

control 'user-rights-assignment-2-2-33' do
    impact 1.0
    title 'Ensure Perform volume maintenance tasks is set to Administrators'
    desc 'Ensure Perform volume maintenance tasks is set to Administrators'
    tag 'user-rights-assignment','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/security_policy/
    describe security_policy do
      its('SeManageVolumePrivilege') { should eq (["S-1-5-32-544"]) }
    end
end

control 'user-rights-assignment-2-2-34' do
    impact 1.0
    title 'Ensure Profile single process is set to Administrators'
    desc 'Ensure Profile single process is set to Administrators'
    tag 'user-rights-assignment','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/security_policy/
    describe security_policy do
      its('SeProfileSingleProcessPrivilege') { should eq (["S-1-5-32-544"]) }
    end
end

control 'user-rights-assignment-2-2-35' do
    impact 1.0
    title 'Ensure Profile system performance is set to Administrators, NT SERVICE\WdiServiceHost'
    desc 'Ensure Profile system performance is set to Administrators, NT SERVICE\WdiServiceHost'
    tag 'user-rights-assignment','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/security_policy/
    describe security_policy do
      its('SeSystemProfilePrivilege') { should eq (["S-1-5-32-544"]) }
    end
end

control 'user-rights-assignment-2-2-36' do
    impact 1.0
    title 'Ensure Replace a process level token is set to LOCAL SERVICE, NETWORK SERVICE'
    desc 'Ensure Replace a process level token is set to LOCAL SERVICE, NETWORK SERVICE'
    tag 'user-rights-assignment','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/security_policy/
    describe security_policy do
      its('SeAssignPrimaryTokenPrivilege') { should eq (["S-1-5-19","S-1-5-20"]) }
    end
end

control 'user-rights-assignment-2-2-37' do
    impact 1.0
    title 'Ensure Restore files and directories is set to Administrators'
    desc 'Ensure Restore files and directories is set to Administrators'
    tag 'user-rights-assignment','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/security_policy/
    describe security_policy do
      its('SeRestorePrivilege') { should eq (["S-1-5-32-544"]) }
    end
end

control 'user-rights-assignment-2-2-38' do
    impact 1.0
    title 'Ensure Shut down the system is set to Administrators, Users'
    desc 'Ensure Shut down the system is set to Administrators, Users'
    tag 'user-rights-assignment','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/security_policy/
    describe security_policy do
      its('SeShutdownPrivilege') { should eq (["S-1-5-32-544","S-1-5-32-545"]) }
    end
end

control 'user-rights-assignment-2-2-39' do
    impact 1.0
    title 'Ensure Take ownership of files or other objects is set to Administrators'
    desc 'Ensure Take ownership of files or other objects is set to Administrators'
    tag 'user-rights-assignment','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/security_policy/
    describe security_policy do
      its('SeTakeOwnershipPrivilege') { should eq (["S-1-5-32-544"]) }
    end
end

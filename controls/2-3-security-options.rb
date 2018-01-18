# 2.3 Security Options

control 'security-options-2-3-1-1' do
    impact 1.0
    title 'Ensure Accounts: Administrator account status is set to Disabled'
    desc 'Ensure Accounts: Administrator account status is set to Disabled'
    tag 'security-options','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/security_policy/
    describe security_policy do
      its('EnableAdminAccount') { should eq ([]) }
    end
end

control 'security-options-2-3-1-2' do
    impact 1.0
    title 'Ensure Accounts: Block Microsoft accounts is set to Users cant add or log on with Microsoft accounts'
    desc 'Ensure Accounts: Block Microsoft accounts is set to Users cant add or log on with Microsoft accounts'
    tag 'security-options','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/security_policy/
    describe security_policy do
      its('HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System\NoConnectedUser') { should eq ([]) }
    end
end

control 'security-options-2-3-1-3' do
    impact 1.0
    title 'Ensure Accounts: Guest account status is set to Disabled'
    desc 'Ensure Accounts: Guest account status is set to Disabled'
    tag 'security-options','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/security_policy/
    describe security_policy do
      its('EnableGuestAccount') { should eq ([]) }
    end
end

control 'security-options-2-3-1-4' do
    impact 1.0
    title 'Ensure Accounts: Limit local account use of blank passwords to console logon only is set to Enabled'
    desc 'Ensure Accounts: Limit local account use of blank passwords to console logon only is set to Enabled'
    tag 'security-options','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/security_policy/
    describe security_policy do
      its('LimitBlankPasswordUse') { should eq ([]) }
    end
end

control 'security-options-2-3-1-5' do
    impact 1.0
    title 'Configure Accounts: Rename administrator account'
    desc 'Configure Accounts: Rename administrator account'
    tag 'security-options','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/security_policy/
    describe security_policy do
      its('NewAdministratorName') { should eq ([]) }
    end
end

control 'security-options-2-3-1-6' do
    impact 1.0
    title 'Configure Accounts: Rename guest account'
    desc 'Configure Accounts: Rename guest account'
    tag 'security-options','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/security_policy/
    describe security_policy do
      its('NewGuestName') { should eq ([]) }
    end
end

control 'security-options-2-3-2-1' do
    impact 1.0
    title 'Ensure Audit: Force audit policy subcategory settings (Windows Vista or later) to override audit policy category settings is set to Enabled'
    desc 'Ensure Audit: Force audit policy subcategory settings (Windows Vista or later) to override audit policy category settings is set to Enabled'
    tag 'security-options','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/security_policy/
    describe security_policy do
      its('SCENoApplyLegacyAuditPolicy') { should eq ([]) }
    end
end

control 'security-options-2-3-2-2' do
    impact 1.0
    title 'Ensure Audit: Shut down system immediately if unable to log security audits is set to Disabled'
    desc 'Ensure Audit: Shut down system immediately if unable to log security audits is set to Disabled'
    tag 'security-options','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/security_policy/
    describe security_policy do
      its('HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Lsa:CrashOnAuditFail') { should eq ([]) }
    end
end

control 'security-options-2-3-4-1' do
    impact 1.0
    title 'Ensure Devices: Allowed to format and eject removable media is set to Administrators and Interactive Users'
    desc 'Ensure Devices: Allowed to format and eject removable media is set to Administrators and Interactive Users'
    tag 'security-options','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/security_policy/
    describe security_policy do
      its('HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon:AllocateDASD') { should eq ([]) }
    end
end

control 'security-options-2-3-4-2' do
    impact 1.0
    title 'Ensure Devices: Prevent users from installing printer drivers is set to Enabled'
    desc 'Ensure Devices: Prevent users from installing printer drivers is set to Enabled'
    tag 'security-options','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/security_policy/
    describe security_policy do
      its('HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Print\Providers\LanMan Print Services\Servers:AddPrinterDrivers') { should eq ([]) }
    end
end

control 'security-options-2-3-6-1' do
    impact 1.0
    title 'Ensure Domain member: Digitally encrypt or sign secure channel data (always) is set to Enabled'
    desc 'Ensure Domain member: Digitally encrypt or sign secure channel data (always) is set to Enabled'
    tag 'security-options','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/security_policy/
    describe security_policy do
      its('HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Netlogon\Parameters:RequireSignOrSeal') { should eq ([]) }
    end
end

control 'security-options-2-3-6-2' do
    impact 1.0
    title 'Ensure Domain member: Digitally encrypt secure channel data (when possible) is set to Enabled'
    desc 'Ensure Domain member: Digitally encrypt secure channel data (when possible) is set to Enabled'
    tag 'security-options','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/security_policy/
    describe security_policy do
      its('HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Netlogon\Parameters:SealSecureChannel') { should eq ([]) }
    end
end

control 'security-options-2-3-6-3' do
    impact 1.0
    title 'Ensure Domain member: Digitally sign secure channel data (when possible) is set to Enabled'
    desc 'Ensure Domain member: Digitally sign secure channel data (when possible) is set to Enabled'
    tag 'security-options','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/security_policy/
    describe security_policy do
      its('HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Netlogon\Parameters:SignSecureChannel') { should eq ([]) }
    end
end

control 'security-options-2-3-6-4' do
    impact 1.0
    title 'Ensure Domain member: Disable machine account password changes is set to Disabled'
    desc 'Ensure Domain member: Disable machine account password changes is set to Disabled'
    tag 'security-options','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/security_policy/
    describe security_policy do
      its('HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Netlogon\Parameters:DisablePasswordChange') { should eq ([]) }
    end
end

control 'security-options-2-3-6-5' do
    impact 1.0
    title 'Ensure Domain member: Maximum machine account password age is set to 30 or fewer days, but not 0'
    desc 'Ensure Domain member: Maximum machine account password age is set to 30 or fewer days, but not 0'
    tag 'security-options','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/security_policy/
    describe security_policy do
      its('?') { should eq ([]) }
    end
end

control 'security-options-2-3-6-6' do
    impact 1.0
    title 'Ensure Domain member: Require strong (Windows 2000 or later) session key is set to Enabled'
    desc 'Ensure Domain member: Require strong (Windows 2000 or later) session key is set to Enabled'
    tag 'security-options','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/security_policy/
    describe security_policy do
      its('HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Netlogon\Parameters:RequireStrongKey') { should eq ([]) }
    end
end

control 'security-options-2-3-7-1' do
    impact 1.0
    title 'Ensure Interactive logon: Do not display last user name is set to Enabled'
    desc 'Ensure Interactive logon: Do not display last user name is set to Enabled'
    tag 'security-options','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/security_policy/
    describe security_policy do
      its('HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System:DontDisplayLastUserName') { should eq ([]) }
    end
end

control 'security-options-2-3-7-2' do
    impact 1.0
    title 'Ensure Interactive logon: Do not require CTRL+ALT+DEL is set to Disabled'
    desc 'Ensure Interactive logon: Do not require CTRL+ALT+DEL is set to Disabled'
    tag 'security-options','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/security_policy/
    describe security_policy do
      its('HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System:DisableCAD') { should eq ([]) }
    end
end

control 'security-options-2-3-7-3(BL)' do
    impact 1.0
    title 'Ensure Interactive logon: Machine account lockout threshold is set to 10 or fewer invalid logon attempts, but not 0'
    desc 'Ensure Interactive logon: Machine account lockout threshold is set to 10 or fewer invalid logon attempts, but not 0'
    tag 'security-options','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/security_policy/
    describe security_policy do
      its('HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System:MaxDevicePasswordFailedAttempts') { should eq ([]) }
    end
end

control 'security-options-2-3-7-4' do
    impact 1.0
    title 'Ensure Interactive logon: Machine inactivity limit is set to 900 or fewer second(s), but not 0'
    desc 'Ensure Interactive logon: Machine inactivity limit is set to 900 or fewer second(s), but not 0'
    tag 'security-options','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/security_policy/
    describe security_policy do
      its('HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System:InactivityTimeoutSecs') { should eq ([]) }
    end
end

control 'security-options-2-3-7-5' do
    impact 1.0
    title 'Configure Interactive logon: Message text for users attempting to log on'
    desc 'Configure Interactive logon: Message text for users attempting to log on'
    tag 'security-options','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/security_policy/
    describe security_policy do
      its('HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System:LegalNoticeText') { should eq ([]) }
    end
end

control 'security-options-2-3-7-6' do
    impact 1.0
    title 'Configure Interactive logon: Message title for users attempting to log on'
    desc 'Configure Interactive logon: Message title for users attempting to log on'
    tag 'security-options','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/security_policy/
    describe security_policy do
      its('HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System:LegalNoticeCaption') { should eq ([]) }
    end
end

control 'security-options-2-3-7-7' do
    impact 1.0
    title 'Ensure Interactive logon: Number of previous logons to cache (in case domain controller is not available) is set to 4 or fewer logon(s)'
    desc 'Ensure Interactive logon: Number of previous logons to cache (in case domain controller is not available) is set to 4 or fewer logon(s)'
    tag 'security-options','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/security_policy/
    describe security_policy do
      its('HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon:CachedLogonsCount') { should eq ([]) }
    end
end

control 'security-options-2-3-7-8' do
    impact 1.0
    title 'Ensure Interactive logon: Prompt user to change password before expiration is set to between 5 and 14 days'
    desc 'Ensure Interactive logon: Prompt user to change password before expiration is set to between 5 and 14 days'
    tag 'security-options','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/security_policy/
    describe security_policy do
      its('HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon:PasswordExpiryWarning') { should eq ([]) }
    end
end

control 'security-options-2-3-7-9' do
    impact 1.0
    title 'Ensure Interactive logon: Smart card removal behavior is set to Lock Workstation or higher'
    desc 'Ensure Interactive logon: Smart card removal behavior is set to Lock Workstation or higher'
    tag 'security-options','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/security_policy/
    describe security_policy do
      its('HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon:ScRemoveOption') { should eq ([]) }
    end
end

control 'security-options-2-3-8-1' do
    impact 1.0
    title 'Ensure Microsoft network client: Digitally sign communications (always) is set to Enabled'
    desc 'Ensure Microsoft network client: Digitally sign communications (always) is set to Enabled'
    tag 'security-options','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/security_policy/
    describe security_policy do
      its('HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\LanmanWorkstation\Parameters:RequireSecuritySignature') { should eq ([]) }
    end
end

control 'security-options-2-3-8-2' do
    impact 1.0
    title 'Ensure Microsoft network client: Digitally sign communications (if server agrees) is set to Enabled'
    desc 'Ensure Microsoft network client: Digitally sign communications (if server agrees) is set to Enabled'
    tag 'security-options','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/security_policy/
    describe security_policy do
      its('HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\LanmanWorkstation\Parameters:EnableSecuritySignature') { should eq ([]) }
    end
end

control 'security-options-2-3-8-3' do
    impact 1.0
    title 'Ensure Microsoft network client: Send unencrypted password to third-party SMB servers is set to Disabled'
    desc 'Ensure Microsoft network client: Send unencrypted password to third-party SMB servers is set to Disabled'
    tag 'security-options','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/security_policy/
    describe security_policy do
      its('HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\LanmanWorkstation\Parameters:EnablePlainTextPassword') { should eq ([]) }
    end
end

control 'security-options-2-3-9-1' do
    impact 1.0
    title 'Ensure Microsoft network server: Amount of idle time required before suspending session is set to 15 or fewer minute(s), but not 0'
    desc 'Ensure Microsoft network server: Amount of idle time required before suspending session is set to 15 or fewer minute(s), but not 0'
    tag 'security-options','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/security_policy/
    describe security_policy do
      its('HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\LanManServer\Parameters:AutoDisconnect') { should eq ([]) }
    end
end

control 'security-options-2-3-9-2' do
    impact 1.0
    title 'Ensure Microsoft network server: Digitally sign communications (always) is set to Enabled'
    desc 'Ensure Microsoft network server: Digitally sign communications (always) is set to Enabled'
    tag 'security-options','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/security_policy/
    describe security_policy do
      its('HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\LanManServer\Parameters:RequireSecuritySignature') { should eq ([]) }
    end
end

control 'security-options-2-3-9-3' do
    impact 1.0
    title 'Ensure Microsoft network server: Digitally sign communications (if client agrees) is set to Enabled'
    desc 'Ensure Microsoft network server: Digitally sign communications (if client agrees) is set to Enabled'
    tag 'security-options','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/security_policy/
    describe security_policy do
      its('HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\LanManServer\Parameters:EnableSecuritySignature') { should eq ([]) }
    end
end

control 'security-options-2-3-9-4' do
    impact 1.0
    title 'Ensure Microsoft network server: Disconnect clients when logon hours expire is set to Enabled'
    desc 'Ensure Microsoft network server: Disconnect clients when logon hours expire is set to Enabled'
    tag 'security-options','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/security_policy/
    describe security_policy do
      its('HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\LanManServer\Parameters:ForceLogoffWhenHourExpire') { should eq ([]) }
    end
end

control 'security-options-2-3-9-5' do
    impact 1.0
    title 'Ensure Microsoft network server: Server SPN target name validation level is set to Accept if provided by client or higher'
    desc 'Ensure Microsoft network server: Server SPN target name validation level is set to Accept if provided by client or higher'
    tag 'security-options','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/security_policy/
    describe security_policy do
      its('HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\LanManServer\Parameters:SMBServerNameHardeningLevel') { should eq ([]) }
    end
end

control 'security-options-2-3-10-1' do
    impact 1.0
    title 'Ensure Network access: Allow anonymous SID/Name translation is set to Disabled'
    desc 'Ensure Network access: Allow anonymous SID/Name translation is set to Disabled'
    tag 'security-options','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/security_policy/
    describe security_policy do
      its('?') { should eq ([]) }
    end
end

control 'security-options-2-3-10-2' do
    impact 1.0
    title 'Ensure Network access: Do not allow anonymous enumeration of SAM accounts is set to Enabled'
    desc 'Ensure Network access: Do not allow anonymous enumeration of SAM accounts is set to Enabled'
    tag 'security-options','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/security_policy/
    describe security_policy do
      its('HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Lsa:RestrictAnonymousSAM') { should eq ([]) }
    end
end

control 'security-options-2-3-10-3' do
    impact 1.0
    title 'Ensure Network access: Do not allow anonymous enumeration of SAM accounts and shares is set to Enabled'
    desc 'Ensure Network access: Do not allow anonymous enumeration of SAM accounts and shares is set to Enabled'
    tag 'security-options','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/security_policy/
    describe security_policy do
      its('HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Lsa:RestrictAnonymous') { should eq ([]) }
    end
end

control 'security-options-2-3-10-4' do
    impact 1.0
    title 'Ensure Network access: Do not allow storage of passwords and credentials for network authentication is set to Enabled'
    desc 'Ensure Network access: Do not allow storage of passwords and credentials for network authentication is set to Enabled'
    tag 'security-options','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/security_policy/
    describe security_policy do
      its('HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Lsa:DisableDomainCreds') { should eq ([]) }
    end
end

control 'security-options-2-3-10-5' do
    impact 1.0
    title 'Ensure Network access: Let Everyone permissions apply to anonymous users is set to Disabled'
    desc 'Ensure Network access: Let Everyone permissions apply to anonymous users is set to Disabled'
    tag 'security-options','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/security_policy/
    describe security_policy do
      its('HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Lsa:EveryoneIncludesAnonymous') { should eq ([]) }
    end
end

control 'security-options-2-3-10-6' do
    impact 1.0
    title 'Ensure Network access: Named Pipes that can be accessed anonymously is set to None'
    desc 'Ensure Network access: Named Pipes that can be accessed anonymously is set to None'
    tag 'security-options','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/security_policy/
    describe security_policy do
      its('HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\LanManServer\Parameters:NullSessionPipes') { should eq ([]) }
    end
end

control 'security-options-2-3-10-7' do
    impact 1.0
    title 'Ensure Network access: Remotely accessible registry paths'
    desc 'Ensure Network access: Remotely accessible registry paths'
    tag 'security-options','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/security_policy/
    describe security_policy do
      its('System\CurrentControlSet\Control\ProductOptions System\CurrentControlSet\Control\Server Applications Software\Microsoft\Windows NT\CurrentVersion') { should eq ([]) }
    end
end

control 'security-options-2-3-10-8' do
    impact 1.0
    title 'Ensure Network access: Remotely accessible registry paths and sub-paths'
    desc 'Ensure Network access: Remotely accessible registry paths and sub-paths'
    tag 'security-options','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/security_policy/
    describe security_policy do
      its('HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\SecurePipeServers\Winreg\AllowedPaths:Machine') { should eq ([]) }
    end
end

control 'security-options-2-3-10-9' do
    impact 1.0
    title 'Ensure Network access: Restrict anonymous access to Named Pipes and Shares is set to Enabled'
    desc 'Ensure Network access: Restrict anonymous access to Named Pipes and Shares is set to Enabled'
    tag 'security-options','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/security_policy/
    describe security_policy do
      its('HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\LanManServer\Parameters:RestrictNullSessAccess') { should eq ([]) }
    end
end

control 'security-options-2-3-10-10' do
    impact 1.0
    title 'Ensure Network access: Restrict clients allowed to make remote calls to SAM is set to Administrators: Remote Access: Allow'
    desc 'Ensure Network access: Restrict clients allowed to make remote calls to SAM is set to Administrators: Remote Access: Allow'
    tag 'security-options','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/security_policy/
    describe security_policy do
      its('HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Lsa:restrictremotesam') { should eq ([]) }
    end
end

control 'security-options-2-3-10-11' do
    impact 1.0
    title 'Ensure Network access: Shares that can be accessed anonymously is set to None'
    desc 'Ensure Network access: Shares that can be accessed anonymously is set to None'
    tag 'security-options','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/security_policy/
    describe security_policy do
      its('HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\LanManServer\Parameters:NullSessionShares') { should eq ([]) }
    end
end

control 'security-options-2-3-10-12' do
    impact 1.0
    title 'Ensure Network access: Sharing and security model for local accounts is set to Classic - local users authenticate as themselves'
    desc 'Ensure Network access: Sharing and security model for local accounts is set to Classic - local users authenticate as themselves'
    tag 'security-options','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/security_policy/
    describe security_policy do
      its('HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Lsa:ForceGuest') { should eq ([]) }
    end
end

control 'security-options-2-3-11-1' do
    impact 1.0
    title 'Ensure Network security: Allow Local System to use computer identity for NTLM is set to Enabled'
    desc 'Ensure Network security: Allow Local System to use computer identity for NTLM is set to Enabled'
    tag 'security-options','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/security_policy/
    describe security_policy do
      its('HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Lsa:UseMachineId') { should eq ([]) }
    end
end

control 'security-options-2-3-11-2' do
    impact 1.0
    title 'Ensure Network security: Allow LocalSystem NULL session fallback is set to Disabled'
    desc 'Ensure Network security: Allow LocalSystem NULL session fallback is set to Disabled'
    tag 'security-options','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/security_policy/
    describe security_policy do
      its('HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Lsa\MSV1_0:AllowNullSessionFallback') { should eq ([]) }
    end
end

control 'security-options-2-3-11-3' do
    impact 1.0
    title 'Ensure Network Security: Allow PKU2U authentication requests to this computer to use online identities is set to Disabled'
    desc 'Ensure Network Security: Allow PKU2U authentication requests to this computer to use online identities is set to Disabled'
    tag 'security-options','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/security_policy/
    describe security_policy do
      its('HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Lsa\pku2u:AllowOnlineID') { should eq ([]) }
    end
end

control 'security-options-2-3-11-4' do
    impact 1.0
    title 'Ensure Network security: Configure encryption types allowed for Kerberos is set to AES128_HMAC_SHA1, AES256_HMAC_SHA1, Future encryption types'
    desc 'Ensure Network security: Configure encryption types allowed for Kerberos is set to AES128_HMAC_SHA1, AES256_HMAC_SHA1, Future encryption types'
    tag 'security-options','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/security_policy/
    describe security_policy do
      its('HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System\Kerberos\Parameters:SupportedEncryptionTypes') { should eq ([]) }
    end
end

control 'security-options-2-3-11-5' do
    impact 1.0
    title 'Ensure Network security: Do not store LAN Manager hash value on next password change is set to Enabled'
    desc 'Ensure Network security: Do not store LAN Manager hash value on next password change is set to Enabled'
    tag 'security-options','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/security_policy/
    describe security_policy do
      its('HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Lsa:NoLMHash') { should eq ([]) }
    end
end

control 'security-options-2-3-11-6' do
    impact 1.0
    title 'Ensure Network security: Force logoff when logon hours expire is set to Enabled'
    desc 'Ensure Network security: Force logoff when logon hours expire is set to Enabled'
    tag 'security-options','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/security_policy/
    describe security_policy do
      its('?') { should eq ([]) }
    end
end

control 'security-options-2-3-11-7' do
    impact 1.0
    title 'Ensure Network security: LAN Manager authentication level is set to Send NTLMv2 response only. Refuse LM & NTLM'
    desc 'Ensure Network security: LAN Manager authentication level is set to Send NTLMv2 response only. Refuse LM & NTLM'
    tag 'security-options','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/security_policy/
    describe security_policy do
      its('HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Lsa:LmCompatibilityLevel') { should eq ([]) }
    end
end

control 'security-options-2-3-11-8' do
    impact 1.0
    title 'Ensure Network security: LDAP client signing requirements is set to Negotiate signing or higher'
    desc 'Ensure Network security: LDAP client signing requirements is set to Negotiate signing or higher'
    tag 'security-options','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/security_policy/
    describe security_policy do
      its('HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\LDAP:LDAPClientIntegrity') { should eq ([]) }
    end
end

control 'security-options-2-3-11-9' do
    impact 1.0
    title 'Ensure Network security: Minimum session security for NTLM SSP based (including secure RPC) clients is set to Require NTLMv2 session security, Require 128-bit encryption'
    desc 'Ensure Network security: Minimum session security for NTLM SSP based (including secure RPC) clients is set to Require NTLMv2 session security, Require 128-bit encryption'
    tag 'security-options','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/security_policy/
    describe security_policy do
      its('HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Lsa\MSV1_0:NTLMMinServerSec') { should eq ([]) }
    end
end

control 'security-options-2-3-11-10' do
    impact 1.0
    title 'Ensure Network security: Minimum session security for NTLM SSP based (including secure RPC) servers is set to Require NTLMv2 session security, Require 128-bit encryption'
    desc 'Ensure Network security: Minimum session security for NTLM SSP based (including secure RPC) servers is set to Require NTLMv2 session security, Require 128-bit encryption'
    tag 'security-options','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/security_policy/
    describe security_policy do
      its('HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Lsa:RestrictAnonymous') { should eq ([]) }
    end
end

control 'security-options-2-3-14-1' do
    impact 1.0
    title 'Ensure System cryptography: Force strong key protection for user keys stored on the computer is set to User is prompted when the key is first used or higher'
    desc 'Ensure System cryptography: Force strong key protection for user keys stored on the computer is set to User is prompted when the key is first used or higher'
    tag 'security-options','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/security_policy/
    describe security_policy do
      its('HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Cryptography:ForceKeyProtection') { should eq ([]) }
    end
end

control 'security-options-2-3-15-1' do
    impact 1.0
    title 'Ensure System objects: Require case insensitivity for non-Windows subsystems is set to Enabled'
    desc 'Ensure System objects: Require case insensitivity for non-Windows subsystems is set to Enabled'
    tag 'security-options','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/security_policy/
    describe security_policy do
      its('HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Kernel:ObCaseInsensitive') { should eq ([]) }
    end
end

control 'security-options-2-3-15-2' do
    impact 1.0
    title 'Ensure System objects: Strengthen default permissions of internal system objects (e.g. Symbolic Links) is set to Enabled'
    desc 'Ensure System objects: Strengthen default permissions of internal system objects (e.g. Symbolic Links) is set to Enabled'
    tag 'security-options','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/security_policy/
    describe security_policy do
      its('HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager:ProtectionMode') { should eq ([]) }
    end
end

control 'security-options-2-3-17-1' do
    impact 1.0
    title 'Ensure User Account Control: Admin Approval Mode for the Built-in Administrator account is set to Enabled'
    desc 'Ensure User Account Control: Admin Approval Mode for the Built-in Administrator account is set to Enabled'
    tag 'security-options','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/security_policy/
    describe security_policy do
      its('HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System:FilterAdministratorToken') { should eq ([]) }
    end
end

control 'security-options-2-3-17-2' do
    impact 1.0
    title 'Ensure User Account Control: Allow UIAccess applications to prompt for elevation without using the secure desktop is set to Disabled'
    desc 'Ensure User Account Control: Allow UIAccess applications to prompt for elevation without using the secure desktop is set to Disabled'
    tag 'security-options','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/security_policy/
    describe security_policy do
      its('HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System:EnableUIADesktopToggle') { should eq ([]) }
    end
end

control 'security-options-2-3-17-3' do
    impact 1.0
    title 'Ensure User Account Control: Behavior of the elevation prompt for administrators in Admin Approval Mode is set to Prompt for consent on the secure desktop'
    desc 'Ensure User Account Control: Behavior of the elevation prompt for administrators in Admin Approval Mode is set to Prompt for consent on the secure desktop'
    tag 'security-options','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/security_policy/
    describe security_policy do
      its('HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System:ConsentPromptBehaviorAdmin') { should eq ([]) }
    end
end

control 'security-options-2-3-17-4' do
    impact 1.0
    title 'Ensure User Account Control: Behavior of the elevation prompt for standard users is set to Automatically deny elevation requests'
    desc 'Ensure User Account Control: Behavior of the elevation prompt for standard users is set to Automatically deny elevation requests'
    tag 'security-options','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/security_policy/
    describe security_policy do
      its('HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System:ConsentPromptBehaviorUser') { should eq ([]) }
    end
end

control 'security-options-2-3-17-5' do
    impact 1.0
    title 'Ensure User Account Control: Detect application installations and prompt for elevation is set to Enabled'
    desc 'Ensure User Account Control: Detect application installations and prompt for elevation is set to Enabled'
    tag 'security-options','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/security_policy/
    describe security_policy do
      its('HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System:EnableInstallerDetection') { should eq ([]) }
    end
end

control 'security-options-2-3-17-6' do
    impact 1.0
    title 'Ensure User Account Control: Only elevate UIAccess applications that are installed in secure locations is set to Enabled'
    desc 'Ensure User Account Control: Only elevate UIAccess applications that are installed in secure locations is set to Enabled'
    tag 'security-options','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/security_policy/
    describe security_policy do
      its('HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System:EnableSecureUIAPaths') { should eq ([]) }
    end
end

control 'security-options-2-3-17-7' do
    impact 1.0
    title 'Ensure User Account Control: Run all administrators in Admin Approval Mode is set to Enabled'
    desc 'Ensure User Account Control: Run all administrators in Admin Approval Mode is set to Enabled'
    tag 'security-options','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/security_policy/
    describe security_policy do
      its('HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System:EnableLUA') { should eq ([]) }
    end
end

control 'security-options-2-3-17-8' do
    impact 1.0
    title 'Ensure User Account Control: Switch to the secure desktop when prompting for elevation is set to Enabled'
    desc 'Ensure User Account Control: Switch to the secure desktop when prompting for elevation is set to Enabled'
    tag 'security-options','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/security_policy/
    describe security_policy do
      its('HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System:PromptOnSecureDesktop') { should eq ([]) }
    end
end

control 'security-options-2-3-17-9' do
    impact 1.0
    title 'Ensure User Account Control: Virtualize file and registry write failures to per-user locations is set to Enabled'
    desc 'Ensure User Account Control: Virtualize file and registry write failures to per-user locations is set to Enabled'
    tag 'security-options','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/security_policy/
    describe security_policy do
      its('HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System:EnableVirtualization') { should eq ([]) }
    end
end


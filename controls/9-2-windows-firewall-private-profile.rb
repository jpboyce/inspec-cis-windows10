# 9.2 Windows Firewall - Private Profile

control 'firewall-private-profile-9-2-1' do
    impact 1.0
    title Ensure 'Windows Firewall: Private: Firewall state is set to On (recommended)'
    desc 'Windows Firewall: Private: Firewall state is set to On (recommended)'
    tag 'windows-firewall-private-profile','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    describe registry_key('HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\WindowsFirewall\PrivateProfile') do
        its('EnableFirewall') { should eq 1 }
    end
end

control 'firewall-private-profile-9-2-2' do
    impact 1.0
    title Ensure 'Windows Firewall: Private: Inbound connections is set to Block (default)'
    desc 'Windows Firewall: Private: Inbound connections is set to Block (default)'
    tag 'windows-firewall-private-profile','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    describe registry_key('HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\WindowsFirewall\PrivateProfile') do
        its('DefaultInboundAction') { should eq 1 }
    end
end

control 'firewall-private-profile-9-2-3' do
    impact 1.0
    title Ensure 'Windows Firewall: Private: Outbound connections is set to Block (default)'
    desc 'Windows Firewall: Private: Outbound connections is set to Block (default)'
    tag 'windows-firewall-private-profile','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    describe registry_key('HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\WindowsFirewall\PrivateProfile') do
        its('DefaultOutboundAction') { should eq 1 }
    end
end

control 'firewall-private-profile-9-2-4' do
    impact 1.0
    title Ensure 'Windows Firewall: Private: Display a notification is set to No'
    desc 'Windows Firewall: Private:Display a notification is set to No'
    tag 'windows-firewall-private-profile','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    describe registry_key('HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\WindowsFirewall\PrivateProfile') do
        its('DisableNotifications') { should eq 1 }
    end
end

control 'firewall-private-profile-9-2-5' do
    impact 1.0
    title Ensure 'Windows Firewall: Private: Logging: Name is set to %SYSTEMROOT%\System32\logfiles\firewall\privatefw.log'
    desc 'Windows Firewall: Private: Logging: Name is set to %SYSTEMROOT%\System32\logfiles\firewall\privatefw.log'
    tag 'windows-firewall-private-profile','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    describe registry_key('HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\WindowsFirewall\PrivateProfile\Logging') do
        its('LogFilePath') { should eq 1 }
    end
end

control 'firewall-private-profile-9-2-6' do
    impact 1.0
    title Ensure 'Windows Firewall: Private: Logging: Size limit (KB) is set to 16,384 KB or greater'
    desc 'Windows Firewall: Private: Logging: Size limit (KB) is set to 16,384 KB or greater'
    tag 'windows-firewall-private-profile','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    describe registry_key('HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\WindowsFirewall\PrivateProfile\Logging') do
        its('LogFileSize') { should eq 1 }
    end
end

control 'firewall-private-profile-9-2-7' do
    impact 1.0
    title Ensure 'Windows Firewall: Private: Logging: Log dropped packets is set to Yes'
    desc 'Windows Firewall: Private: Logging: Log dropped packets is set to Yes'
    tag 'windows-firewall-private-profile','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    describe registry_key('HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\WindowsFirewall\PrivateProfile\Logging') do
        its('LogDroppedPackets') { should eq 1 }
    end
end

control 'firewall-private-profile-9-2-8' do
    impact 1.0
    title Ensure 'Windows Firewall: Private: Logging: Log successful packets is set to Yes'
    desc 'Windows Firewall: Private: Logging: Log successful packets is set to Yes'
    tag 'windows-firewall-private-profile','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    describe registry_key('HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\WindowsFirewall\PrivateProfile\Logging') do
        its('LogSuccessfulConnections') { should eq 1 }
    end
end

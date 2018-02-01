# 9.2 Windows Firewall - Private Profile

control 'firewall-public-profile-9-3-1' do
    impact 1.0
    title Ensure 'Windows Firewall: Public: Firewall state is set to On (recommended)'
    desc 'Windows Firewall: Public: Firewall state is set to On (recommended)'
    tag 'windows-firewall-public-profile','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    describe registry_key('HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\WindowsFirewall\PublicProfile') do
        its('EnableFirewall') { should eq 1 }
    end
end

control 'firewall-public-profile-9-3-2' do
    impact 1.0
    title Ensure 'Windows Firewall: Public: Inbound connections is set to Block (default)'
    desc 'Windows Firewall: Public: Inbound connections is set to Block (default)'
    tag 'windows-firewall-public-profile','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    describe registry_key('HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\WindowsFirewall\PublicProfile') do
        its('DefaultInboundAction') { should eq 1 }
    end
end

control 'firewall-public-profile-9-3-3' do
    impact 1.0
    title Ensure 'Windows Firewall: Public: Outbound connections is set to Block (default)'
    desc 'Windows Firewall: Public: Outbound connections is set to Block (default)'
    tag 'windows-firewall-public-profile','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    describe registry_key('HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\WindowsFirewall\PublicProfile') do
        its('DefaultOutboundAction') { should eq 1 }
    end
end

control 'firewall-public-profile-9-3-4' do
    impact 1.0
    title Ensure 'Windows Firewall: Public: Display a notification is set to No'
    desc 'Windows Firewall: Public:Display a notification is set to No'
    tag 'windows-firewall-public-profile','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    describe registry_key('HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\WindowsFirewall\PublicProfile') do
        its('DisableNotifications') { should eq 1 }
    end
end

control 'firewall-public-profile-9-3-5' do
    impact 1.0
    title Ensure 'Windows Firewall: Public: Logging: Name is set to %SYSTEMROOT%\System32\logfiles\firewall\privatefw.log'
    desc 'Windows Firewall: Public: Logging: Name is set to %SYSTEMROOT%\System32\logfiles\firewall\privatefw.log'
    tag 'windows-firewall-public-profile','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    describe registry_key('HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\WindowsFirewall\PublicProfile\Logging') do
        its('LogFilePath') { should eq 1 }
    end
end

control 'firewall-public-profile-9-3-6' do
    impact 1.0
    title Ensure 'Windows Firewall: Public: Logging: Size limit (KB) is set to 16,384 KB or greater'
    desc 'Windows Firewall: Public: Logging: Size limit (KB) is set to 16,384 KB or greater'
    tag 'windows-firewall-public-profile','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    describe registry_key('HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\WindowsFirewall\PublicProfile\Logging') do
        its('LogFileSize') { should eq 1 }
    end
end

control 'firewall-public-profile-9-3-7' do
    impact 1.0
    title Ensure 'Windows Firewall: Public: Logging: Log dropped packets is set to Yes'
    desc 'Windows Firewall: Public: Logging: Log dropped packets is set to Yes'
    tag 'windows-firewall-public-profile','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    describe registry_key('HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\WindowsFirewall\PublicProfile\Logging') do
        its('LogDroppedPackets') { should eq 1 }
    end
end

control 'firewall-public-profile-9-3-8' do
    impact 1.0
    title Ensure 'Windows Firewall: Public: Logging: Log successful packets is set to Yes'
    desc 'Windows Firewall: Public: Logging: Log successful packets is set to Yes'
    tag 'windows-firewall-public-profile','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    describe registry_key('HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\WindowsFirewall\PublicProfile\Logging') do
        its('LogSuccessfulConnections') { should eq 1 }
    end
end

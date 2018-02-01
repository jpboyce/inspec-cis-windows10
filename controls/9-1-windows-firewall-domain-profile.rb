# 9.1 Windows Firewall - Domain Profile

control 'firewall-domain-profile-9-1-1' do
    impact 1.0
    title 'Ensure Windows Firewall: Domain: Firewall state is set to On (recommended)'
    desc 'Windows Firewall: Domain: Firewall state is set to On (recommended)'
    tag 'windows-firewall-domain-profile','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    describe registry_key('HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\WindowsFirewall\DomainProfile') do
        its('EnableFirewall') { should eq 1 }
    end
end

control 'firewall-domain-profile-9-1-2' do
    impact 1.0
    title 'Ensure Windows Firewall: Domain: Inbound connections is set to Block (default)'
    desc 'Windows Firewall: Domain: Inbound connections is set to Block (default)'
    tag 'windows-firewall-domain-profile','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    describe registry_key('HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\WindowsFirewall\DomainProfile') do
        its('DefaultInboundAction') { should eq 1 }
    end
end

control 'firewall-domain-profile-9-1-3' do
    impact 1.0
    title 'Ensure Windows Firewall: Domain: Outbound connections is set to Block (default)'
    desc 'Windows Firewall: Domain: Outbound connections is set to Block (default)'
    tag 'windows-firewall-domain-profile','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    describe registry_key('HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\WindowsFirewall\DomainProfile') do
        its('DefaultOutboundAction') { should eq 1 }
    end
end

control 'firewall-domain-profile-9-1-4' do
    impact 1.0
    title 'Ensure Windows Firewall: Domain: Display a notification is set to No'
    desc 'Windows Firewall: Domain:Display a notification is set to No'
    tag 'windows-firewall-domain-profile','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    describe registry_key('HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\WindowsFirewall\DomainProfile') do
        its('DisableNotifications') { should eq 1 }
    end
end

control 'firewall-domain-profile-9-1-5' do
    impact 1.0
    title 'Ensure Windows Firewall: Domain: Logging: Name is set to %SYSTEMROOT%\System32\logfiles\firewall\domainfw.log'
    desc 'Windows Firewall: Domain: Logging: Name is set to %SYSTEMROOT%\System32\logfiles\firewall\domainfw.log'
    tag 'windows-firewall-domain-profile','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    describe registry_key('HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\WindowsFirewall\DomainProfile\Logging') do
        its('LogFilePath') { should eq 1 }
    end
end

control 'firewall-domain-profile-9-1-6' do
    impact 1.0
    title 'Ensure Windows Firewall: Domain: Logging: Size limit (KB) is set to 16,384 KB or greater'
    desc 'Windows Firewall: Domain: Logging: Size limit (KB) is set to 16,384 KB or greater'
    tag 'windows-firewall-domain-profile','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    describe registry_key('HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\WindowsFirewall\DomainProfile\Logging') do
        its('LogFileSize') { should eq 1 }
    end
end

control 'firewall-domain-profile-9-1-7' do
    impact 1.0
    title 'Ensure Windows Firewall: Domain: Logging: Log dropped packets is set to Yes'
    desc 'Windows Firewall: Domain: Logging: Log dropped packets is set to Yes'
    tag 'windows-firewall-domain-profile','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    describe registry_key('HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\WindowsFirewall\DomainProfile\Logging') do
        its('LogDroppedPackets') { should eq 1 }
    end
end

control 'firewall-domain-profile-9-1-8' do
    impact 1.0
    title 'Ensure Windows Firewall: Domain: Logging: Log successful packets is set to Yes'
    desc 'Windows Firewall: Domain: Logging: Log successful packets is set to Yes'
    tag 'windows-firewall-domain-profile','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    describe registry_key('HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\WindowsFirewall\DomainProfile\Logging') do
        its('LogSuccessfulConnections') { should eq 1 }
    end
end

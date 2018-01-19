# 5. System Services

control 'system-services-5-1' do
    impact 1.0
    title 'Ensure Bluetooth Handsfree Service (BthHFSrv) is set to Disabled'
    desc 'Ensure Bluetooth Handsfree Service (BthHFSrv) is set to Disabled'
    tag 'system-services','l2'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/service/
    describe service('BthHFSrv') do
        it { should_not be_running }
    end
end

control 'system-services-5-2' do
    impact 1.0
    title 'Ensure Bluetooth Support Service (bthserv) is set to Disabled'
    desc 'Ensure Bluetooth Support Service (bthserv) is set to Disabled'
    tag 'system-services','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/service/
    describe service('bthserv') do
        it { should_not be_running }
    end

    describe registry_key('HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\bthserv') do
        its('Start') { should eq 4 }
    end
end

control 'system-services-5-3' do
    impact 1.0
    title 'Ensure Computer Browser (Browser) is set to Disabled or Not Installed'
    desc 'Ensure Computer Browser (Browser) is set to Disabled or Not Installed'
    tag 'system-services','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/service/
    describe service('Browser') do
        it { should_not be_running }
    end

    describe registry_key('HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Browser') do
        its('Start') { should eq 4 }
        end
end

control 'system-services-5-4' do
    impact 1.0
    title 'Ensure Downloaded Maps Manager (MapsBroker) is set to Disabled'
    desc 'Ensure Downloaded Maps Manager (MapsBroker) is set to Disabled'
    tag 'system-services','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/service/
    describe service('MapsBroker') do
        it { should_not be_running }
    end

    describe registry_key('HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\MapsBroker') do
        its('Start') { should eq 4 }
        end
end

control 'system-services-5-5' do
    impact 1.0
    title 'Ensure Geolocation Service (lfsvc) is set to Disabled'
    desc 'Ensure Geolocation Service (lfsvc) is set to Disabled'
    tag 'system-services','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/service/
    describe service('lfsvc') do
        it { should_not be_running }
    end

    describe registry_key('HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\lfsvc') do
        its('Start') { should eq 4 }
        end
end

control 'system-services-5-6' do
    impact 1.0
    title 'Ensure HomeGroup Listener (HomeGroupListener) is set to Disabled'
    desc 'Ensure HomeGroup Listener (HomeGroupListener) is set to Disabled'
    tag 'system-services','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/service/
    describe service('HomeGroupListener') do
        it { should_not be_running }
    end

    describe registry_key('HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\HomeGroupListener') do
        its('Start') { should eq 4 }
        end
end

control 'system-services-5-7' do
    impact 1.0
    title 'Ensure HomeGroup Provider (HomeGroupProvider) is set to Disabled'
    desc 'Ensure HomeGroup Provider (HomeGroupProvider) is set to Disabled'
    tag 'system-services','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/service/
    describe service('HomeGroupProvider') do
        it { should_not be_running }
    end

    describe registry_key('HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\HomeGroupProvider') do
        its('Start') { should eq 4 }
        end
end

control 'system-services-5-8' do
    impact 1.0
    title 'Ensure IIS Admin Service (IISADMIN) is set to Disabled or Not Installed'
    desc 'Ensure IIS Admin Service (IISADMIN) is set to Disabled or Not Installed'
    tag 'system-services','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/service/
    describe service('IISADMIN') do
        it { should_not be_running }
    end

    describe registry_key('HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\IISADMIN') do
        its('Start') { should eq 4 }
        end
end

control 'system-services-5-9' do
    impact 1.0
    title 'Ensure Infrared monitor service (irmon) is set to Disabled'
    desc 'Ensure Infrared monitor service (irmon) is set to Disabled'
    tag 'system-services','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/service/
    describe service('irmon') do
        it { should_not be_running }
    end

    describe registry_key('HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\irmon') do
        its('Start') { should eq 4 }
        end
end

control 'system-services-5-10' do
    impact 1.0
    title 'Ensure Internet Connection Sharing (ICS) (SharedAccess)  is set to Disabled'
    desc 'Ensure Internet Connection Sharing (ICS) (SharedAccess)  is set to Disabled'
    tag 'system-services','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/service/
    describe service('SharedAccess') do
        it { should_not be_running }
    end

    describe registry_key('HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\SharedAccess') do
        its('Start') { should eq 4 }
        end
end

control 'system-services-5-11' do
    impact 1.0
    title 'Ensure Link-Layer Topology Discovery Mapper (lltdsvc) is set to Disabled'
    desc 'Ensure Link-Layer Topology Discovery Mapper (lltdsvc) is set to Disabled'
    tag 'system-services','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/service/
    describe service('lltdsvc') do
        it { should_not be_running }
    end

    describe registry_key('HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\lltdsvc') do
        its('Start') { should eq 4 }
        end
end

control 'system-services-5-12' do
    impact 1.0
    title 'Ensure LxssManager (LxssManager) is set to Disabled or Not Installed'
    desc 'Ensure LxssManager (LxssManager) is set to Disabled or Not Installed'
    tag 'system-services','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/service/
    describe service('LxssManager') do
        it { should_not be_running }
    end

    describe registry_key('HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\LxssManager') do
        its('Start') { should eq 4 }
        end
end

control 'system-services-5-13' do
    impact 1.0
    title 'Ensure Microsoft FTP Service (FTPSVC) is set to Disabled or Not Installed'
    desc 'Ensure Microsoft FTP Service (FTPSVC) is set to Disabled or Not Installed'
    tag 'system-services','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/service/
    describe service('FTPSVC') do
        it { should_not be_running }
    end

    describe registry_key('HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\FTPSVC') do
        its('Start') { should eq 4 }
        end
end

control 'system-services-5-14' do
    impact 1.0
    title 'Ensure Microsoft iSCSI Initiator Service (MSiSCSI) is set to Disabled'
    desc 'Ensure Microsoft iSCSI Initiator Service (MSiSCSI) is set to Disabled'
    tag 'system-services','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/service/
    describe service('MSiSCSI') do
        it { should_not be_running }
    end

    describe registry_key('HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\MSiSCSI') do
        its('Start') { should eq 4 }
        end
end

control 'system-services-5-15' do
    impact 1.0
    title 'Ensure Peer Name Resolution Protocol (PNRPsvc) is set to Disabled'
    desc 'Ensure Peer Name Resolution Protocol (PNRPsvc) is set to Disabled'
    tag 'system-services','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/service/
    describe service('PNRPsvc') do
        it { should_not be_running }
    end

    describe registry_key('HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\PNRPsvc') do
        its('Start') { should eq 4 }
        end
end

control 'system-services-5-16' do
    impact 1.0
    title 'Ensure Peer Networking Grouping (p2psvc) is set to Disabled'
    desc 'Ensure Peer Networking Grouping (p2psvc) is set to Disabled'
    tag 'system-services','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/service/
    describe service('p2psvc') do
        it { should_not be_running }
    end

    describe registry_key('HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\p2psvc') do
        its('Start') { should eq 4 }
        end
end

control 'system-services-5-17' do
    impact 1.0
    title 'Ensure Peer Networking Identity Manager (p2pimsvc) is set to Disabled'
    desc 'Ensure Peer Networking Identity Manager (p2pimsvc) is set to Disabled'
    tag 'system-services','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/service/
    describe service('p2pimsvc') do
        it { should_not be_running }
    end

    describe registry_key('HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\p2pimsvc') do
        its('Start') { should eq 4 }
        end
end

control 'system-services-5-18' do
    impact 1.0
    title 'Ensure PNRP Machine Name Publication Service (PNRPAutoReg) is set to Disabled'
    desc 'Ensure PNRP Machine Name Publication Service (PNRPAutoReg) is set to Disabled'
    tag 'system-services','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/service/
    describe service('PNRPAutoReg') do
        it { should_not be_running }
    end

    describe registry_key('HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\PNRPAutoReg') do
        its('Start') { should eq 4 }
        end
end

control 'system-services-5-19' do
    impact 1.0
    title 'Ensure Problem Reports and Solutions Control Panel Support (wercplsupport) is set to Disabled'
    desc 'Ensure Problem Reports and Solutions Control Panel Support (wercplsupport) is set to Disabled'
    tag 'system-services','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/service/
    describe service('wercplsupport') do
        it { should_not be_running }
    end

    describe registry_key('HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\wercplsupport') do
        its('Start') { should eq 4 }
        end
end

control 'system-services-5-20' do
    impact 1.0
    title 'Ensure Remote Access Auto Connection Manager (RasAuto) is set to Disabled'
    desc 'Ensure Remote Access Auto Connection Manager (RasAuto) is set to Disabled'
    tag 'system-services','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/service/
    describe service('RasAuto') do
        it { should_not be_running }
    end

    describe registry_key('HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\RasAuto') do
        its('Start') { should eq 4 }
        end
end

control 'system-services-5-21' do
    impact 1.0
    title 'Ensure Remote Desktop Configuration (SessionEnv) is set to Disabled'
    desc 'Ensure Remote Desktop Configuration (SessionEnv) is set to Disabled'
    tag 'system-services','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/service/
    describe service('SessionEnv') do
        it { should_not be_running }
    end

    describe registry_key('HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\SessionEnv') do
        its('Start') { should eq 4 }
        end
end

control 'system-services-5-22' do
    impact 1.0
    title 'Ensure Remote Desktop Services (TermService) is set to Disabled'
    desc 'Ensure Remote Desktop Services (TermService) is set to Disabled'
    tag 'system-services','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/service/
    describe service('TermService') do
        it { should_not be_running }
    end

    describe registry_key('HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\TermService') do
        its('Start') { should eq 4 }
        end
end

control 'system-services-5-23' do
    impact 1.0
    title 'Ensure Remote Desktop Services UserMode Port Redirector (UmRdpService) is set to Disabled'
    desc 'Ensure Remote Desktop Services UserMode Port Redirector (UmRdpService) is set to Disabled'
    tag 'system-services','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/service/
    describe service('UmRdpService') do
        it { should_not be_running }
    end

    describe registry_key('HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\UmRdpService') do
        its('Start') { should eq 4 }
        end
end

control 'system-services-5-24' do
    impact 1.0
    title 'Ensure Remote Procedure Call (RPC) Locator (RpcLocator) is set to Disabled'
    desc 'Ensure Remote Procedure Call (RPC) Locator (RpcLocator) is set to Disabled'
    tag 'system-services','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/service/
    describe service('RpcLocator') do
        it { should_not be_running }
    end

    describe registry_key('HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\RpcLocator') do
        its('Start') { should eq 4 }
        end
end

control 'system-services-5-25' do
    impact 1.0
    title 'Ensure Remote Registry (RemoteRegistry) is set to Disabled'
    desc 'Ensure Remote Registry (RemoteRegistry) is set to Disabled'
    tag 'system-services','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/service/
    describe service('RemoteRegistry') do
        it { should_not be_running }
    end

    describe registry_key('HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\RemoteRegistry') do
        its('Start') { should eq 4 }
        end
end

control 'system-services-5-26' do
    impact 1.0
    title 'Ensure Routing and Remote Access (RemoteAccess) is set to Disabled'
    desc 'Ensure Routing and Remote Access (RemoteAccess) is set to Disabled'
    tag 'system-services','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/service/
    describe service('RemoteAccess') do
        it { should_not be_running }
    end

    describe registry_key('HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\RemoteAccess') do
        its('Start') { should eq 4 }
        end
end

control 'system-services-5-27' do
    impact 1.0
    title 'Ensure Server (LanmanServer) is set to Disabled (Scored)'
    desc 'Ensure Server (LanmanServer) is set to Disabled (Scored)'
    tag 'system-services','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/service/
    describe service('LanmanServer') do
        it { should_not be_running }
    end

    describe registry_key('HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\LanmanServer') do
        its('Start') { should eq 4 }
        end
end

control 'system-services-5-28' do
    impact 1.0
    title 'Ensure Simple TCP/IP Services (simptcp) is set to Disabled or Not Installed'
    desc 'Ensure Simple TCP/IP Services (simptcp) is set to Disabled or Not Installed'
    tag 'system-services','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/service/
    describe service('simptcp') do
        it { should_not be_running }
    end

    describe registry_key('HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\simptcp') do
        its('Start') { should eq 4 }
        end
end

control 'system-services-5-29' do
    impact 1.0
    title 'Ensure SNMP Service (SNMP) is set to Disabled or Not Installed'
    desc 'Ensure SNMP Service (SNMP) is set to Disabled or Not Installed'
    tag 'system-services','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/service/
    describe service('SNMP') do
        it { should_not be_running }
    end

    describe registry_key('HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\SNMP') do
        its('Start') { should eq 4 }
        end
end

control 'system-services-5-30' do
    impact 1.0
    title 'Ensure SSDP Discovery (SSDPSRV) is set to Disabled'
    desc 'Ensure SSDP Discovery (SSDPSRV) is set to Disabled'
    tag 'system-services','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/service/
    describe service('SSDPSRV') do
        it { should_not be_running }
    end

    describe registry_key('HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\SSDPSRV') do
        its('Start') { should eq 4 }
        end
end

control 'system-services-5-31' do
    impact 1.0
    title 'Ensure UPnP Device Host (upnphost) is set to Disabled'
    desc 'Ensure UPnP Device Host (upnphost) is set to Disabled'
    tag 'system-services','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/service/
    describe service('upnphost') do
        it { should_not be_running }
    end

    describe registry_key('HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\upnphost') do
        its('Start') { should eq 4 }
        end
end

control 'system-services-5-32' do
    impact 1.0
    title 'Ensure Web Management Service (WMSvc) is set to Disabled or Not Installed'
    desc 'Ensure Web Management Service (WMSvc) is set to Disabled or Not Installed'
    tag 'system-services','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/service/
    describe service('WMSvc') do
        it { should_not be_running }
    end

    describe registry_key('HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\WMSvc') do
        its('Start') { should eq 4 }
        end
end

control 'system-services-5-33' do
    impact 1.0
    title 'Ensure Windows Error Reporting Service (WerSvc) is set to Disabled'
    desc 'Ensure Windows Error Reporting Service (WerSvc) is set to Disabled'
    tag 'system-services','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/service/
    describe service('WerSvc') do
        it { should_not be_running }
    end

    describe registry_key('HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\WerSvc') do
        its('Start') { should eq 4 }
        end
end

control 'system-services-5-34' do
    impact 1.0
    title 'Ensure Windows Event Collector (Wecsvc) is set to Disabled'
    desc 'Ensure Windows Event Collector (Wecsvc) is set to Disabled'
    tag 'system-services','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/service/
    describe service('Wecsvc') do
        it { should_not be_running }
    end

    describe registry_key('HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Wecsvc') do
        its('Start') { should eq 4 }
        end
end

control 'system-services-5-35' do
    impact 1.0
    title 'Ensure Windows Media Player Network Sharing Service (WMPNetworkSvc) is set to Disabled or Not Installed'
    desc 'Ensure Windows Media Player Network Sharing Service (WMPNetworkSvc) is set to Disabled or Not Installed'
    tag 'system-services','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/service/
    describe service('WMPNetworkSvc') do
        it { should_not be_running }
    end

    describe registry_key('HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\WMPNetworkSvc') do
        its('Start') { should eq 4 }
        end
end

control 'system-services-5-36' do
    impact 1.0
    title 'Ensure Windows Mobile Hotspot Service (icssvc) is set to Disabled'
    desc 'Ensure Windows Mobile Hotspot Service (icssvc) is set to Disabled'
    tag 'system-services','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/service/
    describe service('icssvc') do
        it { should_not be_running }
    end

    describe registry_key('HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\icssvc') do
        its('Start') { should eq 4 }
        end
end

control 'system-services-5-37' do
    impact 1.0
    title 'Ensure Windows Push Notifications System Service (WpnService) is set to Disabled'
    desc 'Ensure Windows Push Notifications System Service (WpnService) is set to Disabled'
    tag 'system-services','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/service/
    describe service('WpnService') do
        it { should_not be_running }
    end

    describe registry_key('HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\WpnService') do
        its('Start') { should eq 4 }
        end
end

control 'system-services-5-38' do
    impact 1.0
    title 'Ensure Windows Remote Management (WS-Management) (WinRM) is set to Disabled'
    desc 'Ensure Windows Remote Management (WS-Management) (WinRM) is set to Disabled'
    tag 'system-services','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/service/
    describe service('WinRM') do
        it { should_not be_running }
    end

    describe registry_key('HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\WinRM') do
        its('Start') { should eq 4 }
        end
end

control 'system-services-5-39' do
    impact 1.0
    title 'Ensure WinHTTP Web Proxy Auto-Discovery Service (WinHttpAutoProxySvc) is set to Disabled'
    desc 'Ensure WinHTTP Web Proxy Auto-Discovery Service (WinHttpAutoProxySvc) is set to Disabled'
    tag 'system-services','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/service/
    describe service('WinHttpAutoProxySvc') do
        it { should_not be_running }
    end

    describe registry_key('HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\WinHttpAutoProxySvc') do
        its('Start') { should eq 4 }
        end
end

control 'system-services-5-40' do
    impact 1.0
    title 'Ensure World Wide Web Publishing Service (W3SVC) is set to Disabled or Not Installed'
    desc 'Ensure World Wide Web Publishing Service (W3SVC) is set to Disabled or Not Installed'
    tag 'system-services','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/service/
    describe service('W3SVC') do
        it { should_not be_running }
    end

    describe registry_key('HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\W3SVC') do
        its('Start') { should eq 4 }
        end
end

control 'system-services-5-41' do
    impact 1.0
    title 'Ensure Xbox Accessory Management Service (XboxGipSvc) is set to Disabled'
    desc 'Ensure Xbox Accessory Management Service (XboxGipSvc) is set to Disabled'
    tag 'system-services','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/service/
    describe service('XboxGipSvc') do
        it { should_not be_running }
    end

    describe registry_key('HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\XboxGipSvc') do
        its('Start') { should eq 4 }
        end
end

control 'system-services-5-42' do
    impact 1.0
    title 'Ensure Xbox Game Monitoring (xbgm) is set to Disabled'
    desc 'Ensure Xbox Game Monitoring (xbgm) is set to Disabled'
    tag 'system-services','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/service/
    describe service('xbgm') do
        it { should_not be_running }
    end

    describe registry_key('HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\xbgm') do
        its('Start') { should eq 4 }
        end
end

control 'system-services-5-43' do
    impact 1.0
    title 'Ensure Xbox Live Auth Manager (XblAuthManager) is set to Disabled'
    desc 'Ensure Xbox Live Auth Manager (XblAuthManager) is set to Disabled'
    tag 'system-services','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/service/
    describe service('XblAuthManager') do
        it { should_not be_running }
    end

    describe registry_key('HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\XblAuthManager') do
        its('Start') { should eq 4 }
        end
end

control 'system-services-5-44' do
    impact 1.0
    title 'Ensure Xbox Live Game Save (XblGameSave) is set to Disabled'
    desc 'Ensure Xbox Live Game Save (XblGameSave) is set to Disabled'
    tag 'system-services','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/service/
    describe service('XblGameSave') do
        it { should_not be_running }
    end

    describe registry_key('HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\XblGameSave') do
        its('Start') { should eq 4 }
        end
end

control 'system-services-5-45' do
    impact 1.0
    title 'Ensure Xbox Live Networking Service (XboxNetApiSvc) is set to Disabled'
    desc 'Ensure Xbox Live Networking Service (XboxNetApiSvc) is set to Disabled'
    tag 'system-services','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    # http://inspec.io/docs/reference/resources/service/
    describe service('XboxNetApiSvc') do
        it { should_not be_running }
    end

    describe registry_key('HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\XboxNetApiSvc') do
        its('Start') { should eq 4 }
        end
end
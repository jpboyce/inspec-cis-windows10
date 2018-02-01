# 18.1 - Adminstrative Templates, Control Panel

control 'administrative-templates-computer-control-panel-18-1-1' do
    impact 1.0
    title 'Ensure Prevent enabling lock screen camera is set to Enabled'
    desc 'Ensure Prevent enabling lock screen camera is set to Enabled'
    tag 'windows-administrative-templates-computer-control-panel','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    describe registry_key('HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Personalization') do
        its('NoLockScreenCamera') { should eq 1 }
    end
end

control 'administrative-templates-computer-control-panel-18-1-2' do
    impact 1.0
    title 'Ensure Prevent enabling lock screen slide show is set to Enabled'
    desc 'Ensure Prevent enabling lock screen slide show is set to Enabled'
    tag 'windows-administrative-templates-computer-control-panel','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    describe registry_key('HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\InputPersonalization') do
        its('NoLockScreenSlideshow') { should eq 1 }
    end
end

control 'administrative-templates-computer-control-panel-18-1-1' do
    impact 1.0
    title 'Ensure Allow Input Personalization is set to Disabled'
    desc 'Ensure Allow Input Personalization is set to Disabled'
    tag 'windows-administrative-templates-computer-control-panel','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    describe registry_key('HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\InputPersonalization') do
        its('AllowInputPersonalization') { should eq 1 }
    end
end


# 17.1 - Advanced Audit Policy

control 'advanced-audit-policy-17-1-1' do
    impact 1.0
    title 'Ensure Audit Credential Validation is set to Success and Failure'
    desc 'Ensure Audit Credential Validation is set to Success and Failure'
    tag 'windows-firewall-public-profile','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    describe command('auditpol /get /subcategory:"Credential Validation"') do
        its('stdout') { should include 'Credential Validation                   Success and Failure' }
    end
end

control 'advanced-audit-policy-17-2-1' do
    impact 1.0
    title 'Ensure Audit Application Group Management is set to Success and Failure'
    desc 'Ensure Audit Application Group Management is set to Success and Failure'
    tag 'windows-firewall-public-profile','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    describe command('auditpol /get /subcategory:"Application Group Management"') do
        its('stdout') { should include 'Application Group Management                   Success and Failure' }
    end
end

control 'advanced-audit-policy-17-2-2' do
    impact 1.0
    title 'Ensure Audit Computer Account Management is set to Success and Failure'
    desc 'Ensure Audit Computer Account Management is set to Success and Failure'
    tag 'windows-firewall-public-profile','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    describe command('auditpol /get /subcategory:"Computer Account Management"') do
        its('stdout') { should include 'Computer Account Management             Success and Failure' }
    end
end

control 'advanced-audit-policy-17-2-3' do
    impact 1.0
    title 'Ensure Audit Other Account Management Events is set to Success and Failure'
    desc 'Ensure Audit Other Account Management Events is set to Success and Failure'
    tag 'windows-firewall-public-profile','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    describe command('auditpol /get /subcategory:"Other Account Management Events"') do
        its('stdout') { should include 'Other Account Management Events         Success and Failure' }
    end
end

control 'advanced-audit-policy-17-2-4' do
    impact 1.0
    title 'Ensure Audit Security Group Management is set to Success and Failure'
    desc 'Ensure Audit Security Group Management is set to Success and Failure'
    tag 'windows-firewall-public-profile','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    describe command('auditpol /get /subcategory:"Security Group Management"') do
        its('stdout') { should include 'Security Group Management               Success and Failure' }
    end
end

control 'advanced-audit-policy-17-2-5' do
    impact 1.0
    title 'Ensure Audit User Account Management is set to Success and Failure'
    desc 'Ensure Audit User Account Management is set to Success and Failure'
    tag 'windows-firewall-public-profile','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    describe command('auditpol /get /subcategory:"User Account Management"') do
        its('stdout') { should include 'User Account Management                 Success and Failure' }
    end
end

control 'advanced-audit-policy-17-3-1' do
    impact 1.0
    title 'Ensure Audit PNP Activity is set to Success'
    desc 'Ensure Audit PNP Activity is set to Success'
    tag 'windows-firewall-public-profile','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    describe command('auditpol /get /subcategory:"PNP Activity"') do
        its('stdout') { should include 'PNP Activity                   Success' }
    end
end

control 'advanced-audit-policy-17-3-2' do
    impact 1.0
    title 'Ensure Audit Process Creation is set to Success'
    desc 'Ensure Audit Process Creation is set to Success'
    tag 'windows-firewall-public-profile','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    describe command('auditpol /get /subcategory:"Process Creation"') do
        its('stdout') { should include 'Process Creation                        Success' }
    end
end

control 'advanced-audit-policy-17-5-1' do
    impact 1.0
    title 'Ensure Audit Account Lockout is set to Success and Failure'
    desc 'Ensure Audit Account Lockout is set to Success and Failure'
    tag 'windows-firewall-public-profile','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    describe command('auditpol /get /subcategory:"Account Lockout"') do
        its('stdout') { should include 'Account Lockout                         Success and Failure' }
    end
end

control 'advanced-audit-policy-17-5-2' do
    impact 1.0
    title 'Ensure Audit Group Membership is set to Success'
    desc 'Ensure Audit Group Membership is set to Success'
    tag 'windows-firewall-public-profile','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    describe command('auditpol /get /subcategory:"Group Membership"') do
        its('stdout') { should include 'Group Membership                   Success' }
    end
end

control 'advanced-audit-policy-17-5-3' do
    impact 1.0
    title 'Ensure Audit Logoff is set to Success'
    desc 'Ensure Audit Logoff is set to Success'
    tag 'windows-firewall-public-profile','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    describe command('auditpol /get /subcategory:"Logoff"') do
        its('stdout') { should include 'Logoff                                  Success' }
    end
end

control 'advanced-audit-policy-17-5-4' do
    impact 1.0
    title 'Ensure Audit Logon is set to Success and Failure'
    desc 'Ensure Audit Logon is set to Success and Failure'
    tag 'windows-firewall-public-profile','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    describe command('auditpol /get /subcategory:Logon"') do
        its('stdout') { should include 'Logon                                   Success and Failure' }
    end
end

control 'advanced-audit-policy-17-5-5' do
    impact 1.0
    title 'Ensure Audit Other Logon/Logoff Events is set to Success and Failure'
    desc 'Ensure Audit Other Logon/Logoff Events is set to Success and Failure'
    tag 'windows-firewall-public-profile','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    describe command('auditpol /get /subcategory:"Other Logon/Logoff Events"') do
        its('stdout') { should include 'Other Logon/Logoff Events               Success and Failure' }
    end
end

control 'advanced-audit-policy-17-5-6' do
    impact 1.0
    title 'Ensure Audit Special Logon is set to Success'
    desc 'Ensure Audit Special Logon is set to Success'
    tag 'windows-firewall-public-profile','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    describe command('auditpol /get /subcategory:"Special Logon"') do
        its('stdout') { should include 'Special Logon                           Success and Failure' }
    end
end

control 'advanced-audit-policy-17-6-1' do
    impact 1.0
    title 'Ensure Audit Removable Storage is set to Success and Failure'
    desc 'Ensure Audit Removable Storage is set to Success and Failure'
    tag 'windows-firewall-public-profile','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    describe command('auditpol /get /subcategory:"Removable Storage"') do
        its('stdout') { should include 'Removable Storage                   Success and Failure' }
    end
end

control 'advanced-audit-policy-17-7-1' do
    impact 1.0
    title 'Ensure Audit Audit Policy Change is set to Success and Failure'
    desc 'Ensure Audit Audit Policy Change is set to Success and Failure'
    tag 'windows-firewall-public-profile','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    describe command('auditpol /get /subcategory:"Audit Policy Change"') do
        its('stdout') { should include 'Audit Policy Change                     Success and Failure' }
    end
end

control 'advanced-audit-policy-17-7-2' do
    impact 1.0
    title 'Ensure Audit Authentication Policy Change is set to Success'
    desc 'Ensure Audit Authentication Policy Change is set to Success'
    tag 'windows-firewall-public-profile','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    describe command('auditpol /get /subcategory:"Authentication Policy Change"') do
        its('stdout') { should include 'Authentication Policy Change            Success' }
    end
end

control 'advanced-audit-policy-17-7-3' do
    impact 1.0
    title 'Ensure Audit Authorization Policy Change is set to Success'
    desc 'Ensure Audit Authorization Policy Change is set to Success'
    tag 'windows-firewall-public-profile','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    describe command('auditpol /get /subcategory:"Authorization Policy Change"') do
        its('stdout') { should include 'Authorization Policy Change             Success and Failure' }
    end
end

control 'advanced-audit-policy-17-8-1' do
    impact 1.0
    title 'Ensure Audit Sensitive Privilege Use is set to Success and Failure'
    desc 'Ensure Audit Sensitive Privilege Use is set to Success and Failure'
    tag 'windows-firewall-public-profile','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    describe command('auditpol /get /subcategory:"Sensitive Privilege Use"') do
        its('stdout') { should include 'Sensitive Privilege Use                 Success and Failure' }
    end
end

control 'advanced-audit-policy-17-9-1' do
    impact 1.0
    title 'Ensure Audit IPsec Driver is set to Success and Failure'
    desc 'Ensure Audit IPsec Driver is set to Success and Failure'
    tag 'windows-firewall-public-profile','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    describe command('auditpol /get /subcategory:"IPsec Driver"') do
        its('stdout') { should include 'IPsec Driver                            Success and Failure' }
    end
end

control 'advanced-audit-policy-17-9-2' do
    impact 1.0
    title 'Ensure Audit Other System Events is set to Success and Failure'
    desc 'Ensure Audit Other System Events is set to Success and Failure'
    tag 'windows-firewall-public-profile','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    describe command('auditpol /get /subcategory:"Other System Events"') do
        its('stdout') { should include 'Other System Events                     Success and Failure' }
    end
end

control 'advanced-audit-policy-17-9-3' do
    impact 1.0
    title 'Ensure Audit Security State Change is set to Success'
    desc 'Ensure Audit Security State Change is set to Success'
    tag 'windows-firewall-public-profile','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    describe command('auditpol /get /subcategory:"Security State Change"') do
        its('stdout') { should include 'Security State Change                   Success' }
    end
end

control 'advanced-audit-policy-17-9-4' do
    impact 1.0
    title 'Ensure Audit Security System Extension is set to Success and Failure'
    desc 'Ensure Audit Security System Extension is set to Success and Failure'
    tag 'windows-firewall-public-profile','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    describe command('auditpol /get /subcategory:"Security System Extension"') do
        its('stdout') { should include 'Security System Extension               Success and Failure' }
    end
end

control 'advanced-audit-policy-17-9-5' do
    impact 1.0
    title 'Ensure Audit System Integrity is set to Success and Failure'
    desc 'Ensure Audit System Integrity is set to Success and Failure'
    tag 'windows-firewall-public-profile','l1'
    ref 'CIS Microsoft Windows 10 Enterprise (Release 1703) Benchmark v1.3.0'

    describe command('auditpol /get /subcategory:"System Integrity"') do
        its('stdout') { should include 'System Integrity                        Success and Failure' }
    end
end

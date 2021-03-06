require 'spec_helper'
require 'json'

describe command('vim --version') do
  its(:stdout) { should match /VIM - Vi IMproved 7.4/ }
end

# case node[:platform]
case os[:family]

when 'redhat', 'centos'

  bpointoutput = `ohai -d /etc/chef/ohai_plugins bpointconfig`
  bpointstatus = JSON.parse(bpointoutput)

  bpointstatus.keys.each do |prgroot|

    describe "bpoint::default.#{prgroot}" do
      # Serverspec examples can be found at1
  	  # http://serverspec.org/resource_types.html
	  #  it 'does something' do
	  #    skip 'Replace this with meaningful tests'
  		it  { should match /default/ }
	  #  end
    end


    # versione "ufficiale" obsolete obsolete
    describe command('ohai -d /etc/chef/ohai_plugins bpoint/release') do
      its(:stdout) { should match /17.20.10/ }
    end

    describe "bpoint['#{prgroot}']['release']" do
      it "should match '17.20.10'" do
        expect(bpointstatus["#{prgroot}"]['release']).to match(/17.20.10/)
      end
    end

    # cosa accade dietro le quinte... [sisver]
    describe command("cat #{prgroot}/prg/etc/sisver") do
      its(:stdout) { should match /17.20.10/ }
    end

    describe "bpoint['#{prgroot}']['ambrelease']" do
      it "should match 'x'" do
        expect(bpointstatus["#{prgroot}"]['ambrelease']).to match(/x/)
      end
    end

    # cosa accade dietro le quinte... [ambver]
    describe command("cat #{prgroot}/prg/etc/ambver") do
  	  its(:stdout) { should match /x/ }
    end

    # qui inizia la parte di check dei diversi uffici (o installazioni seguendo terminologia CRT)
    currentvers = bpointstatus[prgroot]['release'] + bpointstatus[prgroot]['ambrelease']

    bpointstatus[prgroot]['uffici'].each do |uff|

#      currentvers = bpointstatus[prgroot]['release'] + bpointstatus[prgroot]['ambrelease']
      expectedvers = uff['bookmark'] + currentvers

      describe "#{uff['lastrelease']}" do
        it "bpoint['#{prgroot}']['#{uff['ufficio']}']['lastrelease'] should match '#{expectedvers}'" do
          expect(uff['lastrelease']).to match(/#{Regexp.quote(expectedvers)}/)
        end
      end

    end

  end

end

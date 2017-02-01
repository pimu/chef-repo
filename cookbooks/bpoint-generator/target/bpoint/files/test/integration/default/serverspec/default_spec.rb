require 'spec_helper'
require 'json'

describe command('vim --version') do
  its(:stdout) { should match /VIM - Vi IMproved 7.4/ }
end

# case node[:platform]
case os[:family]

when 'redhat', 'centos'

  bpointoutput = `ohai -d /etc/chef/ohai_plugins bpointX`
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
      its(:stdout) { should match /17.10.10/ }
	end

    describe "bpoint['#{prgroot}']['release']" do
      it "should match '17.10.10'" do
        expect(bpointstatus["#{prgroot}"]['release']).to match(/17.10.10/)
      end
	end

	# cosa accade dietro le quinte...
    describe command("cat #{prgroot}/prg/etc/sisver") do
      its(:stdout) { should match /17.10.10/ }
	end

    describe command("cat #{prgroot}/prg/etc/ambver") do
  	  its(:stdout) { should match /x/ }
    end

  end

end

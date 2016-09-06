Ohai.plugin(:Bpoint) do
  provides 'bpoint'

  def from_cmd(cmd)
    so = shell_out(cmd)
    so.stdout.split(' ')[0]
  end

  def from_cmd_i(cmd,i)
    so = shell_out(cmd)
    so.stdout.split(' ')[i]
  end

  def from_cmdfull(cmd)
    so = shell_out(cmd)
    so.stdout
  end

  def init_bpoints
    bpoint Mash.new
    [['cat /usr1/prg/etc/sisver', :release, 0], ['cat /usr1/prg/etc/ambver', :ambrelease, 0], 
     ['cat /usr1/prg/etc/ambver', :ambdate, 1], ['cat /usr1/prg/etc/ambver', :ambtime, 2], ['date +%s -r  /var/tmp/wkisetup-last.log', :lastmodifiedtime, 0]].each do |cmd, property, idx|
      so = shell_out(cmd)
      bpoint[property] = so.stdout.split(' ')[idx]
    end

    bpoint[:fullrelease] = from_cmdfull('cat /usr1/prg/etc/ambver')

    bpoint[:lastmodified] = from_cmdfull('date -r /var/tmp/wkisetup-last.log')

    bpoint
  end

  collect_data(:linux) do
    begin

      bpoint init_bpoints

#      bpointrelease from_cmd('cat /usr1/prg/etc/ambver')
#      bpointfullrelease from_cmdfull('cat /usr1/prg/etc/ambver')
#      bpointdate from_cmd_i('cat /usr1/prg/etc/ambver',1)
#      bpointtime from_cmd_i('cat /usr1/prg/etc/ambver',2)
    rescue
      Ohai::Log.debug('cat /usr1/prg/etc/ambver returned an error, probably file not found')
    end
  end

end

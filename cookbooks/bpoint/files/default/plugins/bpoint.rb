Ohai.plugin(:Bpoint) do
  provides 'bpoint','bpointX'

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

# obsolete obsolete obsolete obsolete
  def init_bpoints
    bpoint Mash.new

    [['cat /usr1/prg/etc/sisver', :release, 0], ['cat /usr1/prg/etc/ambver', :ambrelease, 0],
     ['cat /usr1/prg/etc/ambver', :ambdate, 1], ['cat /usr1/prg/etc/ambver', :ambtime, 2], ['date +%s -r  /var/tmp/wkisetup-last.log', :lastmodifiedtime, 0]].each do |cmd, property, idx|
      so = shell_out(cmd)
      bpoint[property] = so.stdout.split(' ')[idx]
    end

    # modifica del 19-dic-2016 (per evitare ""\n"...)
    bpoint[:fullrelease] = from_cmdfull('cat /usr1/prg/etc/ambver').sub(/[\n\r\f]/,"")

    # modifica del 19-dic-2016 (per evitare ""\n"...)
    bpoint[:lastmodified] = from_cmdfull('date -r /var/tmp/wkisetup-last.log').sub(/[\n\r\f]/,"")

    bpoint
  end

# new new new new
  def init_bpointsX
    # read from config file if present
    if File::exists?( '/usr3/sisagg_batch/path_prg' )
      prgstemp = IO.readlines('/usr3/sisagg_batch/path_prg')
      prgs = []
      prgstemp.each do |l| prgs << l.sub(/[\n\r\f]/,"") end
    else
      # '/usr1' is default if not exists file and for backward compatbility
      prgs = ['/usr1']
    end
    Ohai::Log.debug("prgs defined #{prgs}")

    bpointX Mash.new

#    bpoint[:prgroots] = prgs

    isfirst = true
    prgs.each do |prgroot|

      currentprg Mash.new

      [["cat #{prgroot}/prg/etc/sisver", :release, 0], ["cat #{prgroot}/prg/etc/ambver", :ambrelease, 0],
      ["cat #{prgroot}/prg/etc/ambver", :ambdate, 1], ["cat #{prgroot}/prg/etc/ambver", :ambtime, 2],
      ['date +%s -r  /var/tmp/wkisetup-last.log', :lastmodifiedtime, 0]].each do |cmd, property, idx|
        Ohai::Log.debug("going to exec #{cmd} for property #{property} on #{prgroot}")
        so = shell_out(cmd)
        currentprg[property] = so.stdout.split(' ')[idx]
#        bpoint[property] = currentprg[property] if isfirst
      end

      # modifica del 19-dic-2016 ( + ....sub(/[\n\r\f]/,"") )(per evitare ""\n"...)
      currentprg[:fullrelease] = from_cmdfull("cat #{prgroot}/prg/etc/ambver").sub(/[\n\r\f]/,"")
#      bpoint[:fullrelease] = currentprg[:fullrelease] if isfirst

      currentprg[:lastmodified] = from_cmdfull('date -r /var/tmp/wkisetup-last.log')
#      bpoint[:lastmodified] = currentprg[:lastmodified] if isfirst

      bpointX[prgroot] = currentprg
      isfirst = false
    end

    bpointX
  end

  collect_data(:linux) do
    begin

      bpoint init_bpoints

      bpointX init_bpointsX

#      bpointrelease from_cmd('cat /usr1/prg/etc/ambver')
#      bpointfullrelease from_cmdfull('cat /usr1/prg/etc/ambver')
#      bpointdate from_cmd_i('cat /usr1/prg/etc/ambver',1)
#      bpointtime from_cmd_i('cat /usr1/prg/etc/ambver',2)
    rescue
      Ohai::Log.debug("ohai bpoint plugin returned an error: #{error.inspect}")
    end
  end

end

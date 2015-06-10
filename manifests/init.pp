class detach {
  file { "$tempdir\\install-puppet.ps1":
    ensure  => file,
    content => template('detach/install-puppet.ps1.erb')
  } ->
  exec { 'detach':
    command   => "c:\\windows\\system32\\cmd.exe /c start /b powershell.exe -File $tempdir\\install-puppet.ps1",
    logoutput => true,
  } ->
  exec { 'sleep': # sleep for a bit to show the detached process is waiting
    command   => 'c:\windows\system32\cmd.exe /c ping 127.0.0.1',
    logoutput => true,
  }
}

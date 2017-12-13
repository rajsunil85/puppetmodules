class artifact {
  tidy { 'cleanupdll':
    path    => 'C:\QACamtrade.Net',
    recurse => 1,
    matches => [ '*.dll' ],
  }

  file { 'C:\Temp\Package_d2a6883ffc.zip':
    source => 'puppet:///modules/artifact/Package_d2a6883ffc.zip',
  }

  windows::unzip { 'C:\Temp\Package_d2a6883ffc.zip':
    destination => 'C:\QACamtrade.Net',
    creates     => 'C:\QACamtrade.Net\*.dll',
  }

}


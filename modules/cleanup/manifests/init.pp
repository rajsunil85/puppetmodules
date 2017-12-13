class cleanup {
  tidy { 'C:\Temp':
    recurse => 1,
    matches => [ '*.zip' ],
  }
}


class java {
  package { 'Java':
    provider => 'pkgdmg',
    source   => 'http://192.168.100.8/xcode/xcode4.6/jre-7u15-macosx-x64.dmg'
  }
}
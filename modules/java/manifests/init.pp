class java {
  $jre_url = 'http://192.168.100.8/xcode/xcode4.6/jre-7u15-macosx-x64.dmg'
  $jdk_url = 'http://192.168.100.8/xcode/xcode4.6/jdk-7u15-macosx-x64.dmg'

  package {
    'jre-7u15.dmg':
      ensure   => present,
      alias    => 'java-jre',
      provider => pkgdmg,
      source   => $jre_url ;
    'jdk-7u15.dmg':
      ensure   => present,
      alias    => 'java',
      provider => pkgdmg,
      source   => $jdk_url ;
  }
}
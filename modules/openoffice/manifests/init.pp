class openoffice {
  package { 'OpenOffice':
    provider => 'appdmg',
    source   => 'http://192.168.100.8/xcode/xcode4.6/OOo_3.3.0_MacOS_x86_install_en-US.dmg',
  }
}
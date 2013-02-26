
class xcode {

  package { "Xcode46":
    source => "http://192.168.100.8/xcode/xcode4.6/xcode460417218a.dmg",
    provider => appdmg,
    ensure => installed
  }

 package { "Xcodetools46":
    source => "http://192.168.100.8/xcode/xcode4.6/xcode46cltools_10_86938131a.dmg",
    provider => pkgdmg,
    ensure => installed
  }
}


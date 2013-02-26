
class xcode {

  package { "Xcode46":
    source => "http://192.168.100.8/xcode/xcode4.6/xcode460417218a.dmg",
    provider => appdmg,
    ensure => installed
  }

 package { "Xcodetools46":
    source => "http://192.168.100.8/xcode/xcode4.6/xcode46cltools_10_86938131a.dmg",
    provider => pkgdmg,
    ensure => installed,
require => Package['Xcode46']
  }

file {'/tmp/xcodebuild_license.sh': 
  source => 'puppet:///modules/xcode/xcodebuild_license.sh',
require => Package['Xcode46']
} 
exec {'exec_coolness': 
  command => '/tmp/xcodebuild_license.sh', 
  require => File['/tmp/xcodebuild_license.sh'] 
} 
}


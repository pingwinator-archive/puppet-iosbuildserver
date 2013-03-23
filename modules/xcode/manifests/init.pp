
class xcode {

  package { "Xcode46":
    source => "http://172.16.5.40/xcode/xcode46.dmg",
    provider => appdmg,
    ensure => installed
  }

 package { "Xcodetools46":
    source => "http://172.16.5.40/xcode/xcode46cltools.dmg",
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


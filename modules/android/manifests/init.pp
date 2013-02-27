class android { 
  include wget
   $installdir = '/Developer/android'
   $source  = "http://192.168.100.8/xcode/xcode4.6/android-sdk-mac.zip"
   $archive = "${installdir}/android-sdk-mac.zip"



  file { $installdir:
    ensure => directory,
  } ->
  wget::fetch { 'download-androidsdk':
    source      => $source,
    destination => $archive,
  } ->
  exec { 'unpack-androidsdk':
    command => '/usr/bin/unzip ${archive}',
    creates => $installdir,
    cwd     => $installdir
  }

}
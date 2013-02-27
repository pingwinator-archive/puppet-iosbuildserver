class android {
  staging::file { 'android-sdk-mac.zip':
  source => 'http://192.168.100.8/xcode/xcode4.6/android-sdk-mac.zip'
}

staging::extract { 'android-sdk-mac.zip':
  target  => '/Developer/',
  creates => '/Developer/android',
  require => Staging::File['android-sdk-mac.zip'],
}
}
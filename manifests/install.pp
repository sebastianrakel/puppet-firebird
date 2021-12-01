class firebird::install {
  case $operatingsystem {
    'windows': {
      package {'firebird':
        ensure          => '3.0.4',
        install_options => ['/SuperClassic'],
        provider        => chocolatey,
      }
    }
    default: {
      fail("operating system not supported")
    }
  }
}

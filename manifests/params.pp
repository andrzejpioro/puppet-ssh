class ssh::params {
  case $::osfamily {
    'Debian': {
      $service_name = 'ssh'
      $package_name = 'openssh-server'
    }
    'Redhat': {
      $service_name = 'sshd'
      $package_name = 'openssh-server'
    }
    default: {
      fail("${::operatingsystem} is not supported!")
    }
  }
}

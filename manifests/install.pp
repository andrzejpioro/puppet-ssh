class ssh::install(
  $package_name = $::ssh::package_name,
) {
  package { $package_name: 
    ensure => present,
  }
}

# == Class: zendserver::requirements
#  Manage all requirements for Zend Server installation. This class should not be included directly in the manifest.
#
class zendserver::requirements inherits zendserver {
  notify{"vere: ensure lib is installed: ${zendserver::package_lsbrelease}":}
    package { $zendserver::package_lsbrelease:
      ensure => installed,
    }
}
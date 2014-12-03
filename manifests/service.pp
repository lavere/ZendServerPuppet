# == Class: zendserver::service
#   Manage Zend Server services. The class should not be called directly.
#   You can though "notify/require" Service['zend-server'] to 
class zendserver::service inherits zendserver {

  notify {"vere: start service zendserverpkgname: ${zendserver::install::zendserverpkgname}":}
  service { 'zend-server':
    ensure     => running,
    enable     => true,
    hasrestart => true,
    hasstatus  => true,
    require    => Package[$zendserver::install::zendserverpkgname],
  }
}

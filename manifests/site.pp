node default {
  file {'/root/README':
    ensure => file,
  }
  this is clearly wrong
}

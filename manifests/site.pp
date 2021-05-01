node default {
  file {'/root/README':
    ensure => file,
    content => Tthis is a readme',
  }
}

class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  service { 'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key { 'root@master.puppet.vm':
    ensure => present,
    user   => 'root',
    type   => 'ssh-rsa',
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDeTDtnKjxhl+koUmbds8Fv9tvKl0rXUBrUQmonp5WqytxKAQQGqogYovs6FmMp5Yhzr6xtwulpjpSEW0iIw1wxS5Dimp+JtYehAQRG2aziSv+2y7ckZ7IxaZ3nujSnBn6c7w1PWDBAWzF3iYRo/hjRRrgFX213tn+JzE5WUfcSqyuQ3jcQtpCDjn5fKu/sQLLNfVJ8zBVQI1JSEmi9CllYIAgKdapEezJdbPeeFqwT/N0LFRcJ0Qqy1TZSDmNBUsI80v+RMc5wkgHjQktdpUn5C86H6Oj95sX+U+61nDlseZmKUgnZKzAw12McGDDwD1L1A5HkeuKnuHgHvTMUpHAH',
  }  
}

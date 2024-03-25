# Define SSH client configuration
file { '/home/emmanuel/.ssh/config':
  ensure  => present,
  owner   => 'emmanuel',
  group   => 'emmanuel',
  mode    => '0600', # Set appropriate permissions
  content => "
Host 34.232.53.28
    IdentityFile ~/.ssh/school
    PasswordAuthentication no
  ",
}

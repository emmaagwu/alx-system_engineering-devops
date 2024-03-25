# Define SSH client configuration
file { '/home/emmanuel/.ssh/config':
  ensure  => present,
  owner   => 'emmanuel',
  group   => 'emmanuel',
  mode    => '0600', # Set appropriate permissions
  content => "
Host your_server_host
    IdentityFile ~/.ssh/school
    PasswordAuthentication no
  ",
}

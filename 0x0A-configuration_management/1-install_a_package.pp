# Installs a specific version of flask(2.1.0)
package { 'python3-pip':
  ensure => installed,
}

exec { 'install_werkzeug':
  command => '/usr/bin/pip3 install werkzeug==2.1.1',
  unless  => '/usr/bin/pip3 show werkzeug | grep -q "Version: 2.1.1"',
}

exec { 'install_flask':
  command => '/usr/bin/pip3 install flask==2.1.0',
  unless  => '/usr/bin/pip3 show flask | grep -q "Version: 2.1.0"',
}


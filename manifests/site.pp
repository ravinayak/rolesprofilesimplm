node 'node1' {
  include role::masternodejsnode
}
node 'node2' {
  include role::masterpostgresnode
}

# in /etc/puppetlabs/code/environments/production/environment.conf, add the following lines for this repository to work
# modulepath=/etc/puppetlabs/code/environments/production/rolesprofilesimpl/modules:
#             /etc/puppetlabs/code/environments/production/rolesprofilesimpl/site:$basemodulepath
# modulepath value should be on same line, here separated into 2 lines for brevity, there should not be any space between value 
# and variable like in shell scripts

# in /etc/puppetlabs/puppet/puppet.conf, add setting for hiera configuration file. Originally this file's location is in 
# /etc/puppetlabs/code/evnironments/production/hiera.yaml because we assume that the production folder contains control repository
# but in our case we have changed the location of control repo to rolesprofilesimpl inside production folder, hiera.yaml file is 
# present there
# hiera_config=/etc/puppetlabs/code/environments/production/rolesprofilesimpl/hiera.yaml

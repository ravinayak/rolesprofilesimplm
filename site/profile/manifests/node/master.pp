class profile::node::master {
  class { 'java': }
  class { '::nodejs':
    manage_package_repo       => false,
    nodejs_dev_package_ensure => 'present',
    npm_package_ensure        => 'present',
  }
  notice('****************** Printing Variables *****************************************')
  $classes = lookup('classes', Array[String[1]], 'unique')
  $nodekey = lookup('nodekey', String, 'first')
  notice("Merged result of classes variable (merged from common.yaml and node<num>.yaml) :: ${classes}")
  notice("First result from node<num>.yaml :: ${nodekey}")
}

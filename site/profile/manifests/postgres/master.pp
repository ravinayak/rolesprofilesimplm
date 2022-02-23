class profile::postgres::master{
  class { 'postgresql::server':
    ip_mask_deny_postgres_user => '0.0.0.0/32',
    ip_mask_allow_all_users    => '0.0.0.0/0',
    ipv4acls                   => ['hostssl all johndoe 192.168.0.0/24 cert'],
    postgres_password          => 'TPSrep0rt!',
  }
  notice('****************** Printing Variables *****************************************')
  $classes = lookup('classes', Array[String[1]], 'unique')
  $nodekey = lookup('nodekey', String, 'first')
  notice("Merged result of classes variable (merged from common.yaml and node<num>.yaml) :: ${classes}")
  notice("First result from node<num>.yaml :: ${nodekey}")
}

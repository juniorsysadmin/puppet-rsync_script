#
class rsync_script (
  $date_format        = $rsync_script::params::date_format,
  $date_path          = $rsync_script::params::date_path,
  $destination_server = $rsync_script::params::destination_server,
  $hostname_options   = $rsync_script::params::hostname_options,
  $hostname_path      = $rsync_script::params::hostname_path,
  $rsync_options      = $rsync_script::params::rsync_options,
  $rsync_path         = $rsync_script::params::rsync_path,
  $script_dir         = $rsync_script::params::script_dir,
  $script_file_group  = $rsync_script::params::script_file_group,
  $script_file_mode   = $rsync_script::params::script_file_mode,
  $script_file_name   = $rsync_script::params::script_file_name,
  $script_file_owner  = $rsync_script::params::script_file_owner,
  $ssh_user           = $rsync_script::params::ssh_user,
) inherits rsync_script::params {

  
  concat { "${script_dir}/${script_file_name}":
    ensure_newline => true,
    group          => $script_file_group,
    mode           => $script_file_mode,
    owner          => $script_file_owner,
  }
    
  concat::fragment { 'rsync_script_header':
    content => template('rsync_script/rsync-script-header.erb'),
    order   => '01',
    target  => "${script_dir}/${script_file_name}",
  }

}


#
define rsync_script::folder (
  $destination_folder,
  $destination_server = $rsync_script::destination_server,
  $rsync_options      = $rsync_script::rsync_options,
  $rsync_script_path  = $rsync_script::rsync_script_path,
  $script_dir         = $rsync_script::script_dir,
  $script_file_name   = $rsync_script::script_file_name,
  $ssh_user           = $rsync_script::ssh_user,
) {

  $source_folder = $name

  concat::fragment { $name:
    target  => "${script_dir}/${script_file_name}",
    content => template('rsync_script/rsync-script-fragment.erb'),
    order   => '10',
  }

}


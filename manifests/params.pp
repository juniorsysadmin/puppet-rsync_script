#
class rsync_script::params {

  $date_format       = '+%F'
  $date_path         = '/bin/date'
  $destination_server = ''
  $hostname_options   = ''
  $hostname_path      = '/bin/hostname'
  $rsync_options      = ''
  $rsync_path         = '/usr/bin/rsync'
  $script_dir         = '/var/scripts/backup_scripts'
  $script_file_group  = 'root'
  $script_file_mode   = '0700'
  $script_file_name   = 'rsync_folders.sh'
  $script_file_owner  = 'root'
  $ssh_user           = 'backup'

}


{ config, pkgs, ... }:

{
    systemd.user.services = {
        backup_notif = {
            Unit = {
                Description = "A system notification that reminds of the manual backup of the personal files";
            };
            Service = {
                Type = "oneshot";
                ExecStart = ''${config.home.homeDirectory}/does-nix/scripts/ssd-backup-notification/ssd-backup-notif'';
            };
            Install = {
                WantedBy = [ "multi-user.target" ];
            };
        };
        real_music_backup = {
            Unit = {
                Description = "An automatic backup of the real music YouTube playlist";
            };
            Service = {
                Type = "oneshot";
                ExecStart = ''${config.home.homeDirectory}/does-nix/scripts/real-music-backup'';
            };
            Install = {
                WantedBy = [ "multi-user.target" ];
            };
        };
    };
}

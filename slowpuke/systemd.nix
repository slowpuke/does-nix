{ config, pkgs, ... }:

{
    systemd.user.services = {
        backup_notif = {
            Unit = {
                Description = "A system notification that reminds of the manual backup of the personal files";
                After = [ "graphical-session-pre.target" ];
                PartOf = [ "graphical-session.target" ];
            };
            Service = {
                Type = "oneshot";
                ExecStart = ''${config.home.homeDirectory}/does-nix/scripts/ssd-backup-notification/ssd-backup-notif'';
                Restart = "on-failure";
                RestartSec = 5;
            };
            Install = {
                WantedBy = [ "graphical-session.target" ];
            };
        };
        real_music_backup = {
            Unit = {
                Description = "An automatic backup of the real music YouTube playlist";
            };
            Service = {
                Type = "oneshot";
                ExecStart = ''${config.home.homeDirectory}/does-nix/scripts/real-music-backup'';
                Restart = "on-failure";
                RestartSec = 5;
            };
            Install = {
                WantedBy = [ "multi-user.target" ];
            };
        };
    };
}

{ config, ... }:

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
        videos-backup = {
            Unit = {
                Description = "An automatic backup of the important YouTube videos";
            };
            Service = {
                ExecStart = ''${config.home.homeDirectory}/does-nix/scripts/videos-backup'';
            };
            Install = {
                WantedBy = [ "multi-user.target" ];
            };
        };
    };
}

{ config, pkgs, ... }:

{
    # systemd.user.services = {
    #     test = {
    #         Unit = {
    #             Description = "test";
    #         };
    #         Service = {
    #             Type = "simple";
    #             ExecStart = ''${pkgs.test}/bin/test'';
    #         };
    #         Install = {
    #             WantedBy = [ "multi-user.target" ];
    #         };
    #     };
    # };
}

{ config, pkgs, ... }:

{
    imports = [
        ./hardware-configuration.nix
    ];

    boot.kernelPackages = pkgs.linuxPackages_6_6;

    boot.loader.systemd-boot.enable = true;
    boot.loader.efi.canTouchEfiVariables = true;

    networking.hostName = "nixos";

    environment.shells = with pkgs; [ zsh ];
    users.defaultUserShell = pkgs.zsh;
    programs.zsh.enable = true;

    hardware.bluetooth.enable = true;
    hardware.bluetooth.powerOnBoot = true;

    services.hardware.openrgb.enable = true;

    networking.networkmanager.enable = true;

    time.timeZone = "Europe/Rome";

    i18n.defaultLocale = "en_US.UTF-8";

    i18n.extraLocaleSettings = {
        LC_ADDRESS = "it_IT.UTF-8";
        LC_IDENTIFICATION = "it_IT.UTF-8";
        LC_MEASUREMENT = "it_IT.UTF-8";
        LC_MONETARY = "it_IT.UTF-8";
        LC_NAME = "it_IT.UTF-8";
        LC_NUMERIC = "it_IT.UTF-8";
        LC_PAPER = "it_IT.UTF-8";
        LC_TELEPHONE = "it_IT.UTF-8";
        LC_TIME = "it_IT.UTF-8";
    };

    services.xserver.enable = true;

    services.displayManager.sddm = {
        enable = true;
        theme = "${import ./slowpuke/sddm-theme.nix {inherit pkgs;}}";
        settings = {
            General = { 
                InputMethod = null; 
            };
        };
    };

    services.xserver.windowManager.bspwm.enable = true;
    services.xserver.desktopManager.plasma5.enable = true;

    services.xserver.dpi = 115;     # if bad go back to 125

    services.xserver.xkb = {
        layout = "pl, it";
        variant = "legacy";
    };

    console.keyMap = "pl2";

    services.printing.enable = true;

    services.pulseaudio.enable = false;
    services.pulseaudio.support32Bit = true;
    security.rtkit.enable = true;
    services.pipewire = {
        enable = true;
        alsa.enable = true;
        alsa.support32Bit = true;
        pulse.enable = true;
    };

    users.users.slowpuke = {
        isNormalUser = true;
        description = "slowpuke";
        extraGroups = [ "networkmanager" "wheel" "video" ];
    };

    nixpkgs.config.allowUnfree = true;

    system.stateVersion = "23.05";

    hardware.graphics = {
        enable = true;
        enable32Bit = true;
        extraPackages = [ pkgs.mesa.drivers ];
    };

    services.xserver.videoDrivers = ["nvidia"];

    # nvidia has been the single worst company we've ever dealt with
    hardware.nvidia = {
        modesetting.enable = true;
        powerManagement.enable = false;
        powerManagement.finegrained = false;
        open = false;
        nvidiaSettings = true;
        package = config.boot.kernelPackages.nvidiaPackages.stable;
    };

    environment.systemPackages = with pkgs; [
        nix-ld
        nix-index
        nix-prefetch-git
        linuxKernel.packages.linux_6_6.xpadneo
        pulseaudioFull
    ];

    programs.nix-ld = {
        enable = true;
        libraries = with pkgs; [
            stdenv.cc.cc
            SDL2
         ];
    };

    hardware.xpadneo.enable = true;
    programs.light.enable = true;

    nix.gc = { 
        automatic = true; 
        dates = "daily"; 
        options = "--delete-older-than 15d"; 
    };

    fonts.packages = with pkgs; [
        font-awesome
        nerd-fonts._0xproto
        nerd-fonts.anonymice
        nerd-fonts.inconsolata-go
        nerd-fonts.iosevka
        nerd-fonts.iosevka-term
        nerd-fonts.iosevka-term-slab
        nerd-fonts.lilex
    ];

    nix.settings.experimental-features = [ "nix-command" "flakes"];
}

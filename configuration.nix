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

    services.xserver.xkb = {
        layout = "pl";
        variant = "legacy";
    };

    console.keyMap = "pl2";

    services.printing.enable = true;

    sound.enable = true;
    hardware.pulseaudio.enable = false;
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
        extraGroups = [ "networkmanager" "wheel" ];
    };

    nixpkgs.config.allowUnfree = true;

    system.stateVersion = "23.05";

    hardware.opengl = {
        enable = true;
        driSupport = true;
        driSupport32Bit = true;
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
        # linux-firmware
        # mesa
        # glxinfo
    ];

    programs.nix-ld = {
        enable = true;
        libraries = with pkgs; [
            stdenv.cc.cc
         ];
    };

    hardware.xpadneo.enable = true;

    # i would like to delete all but 5, or some other arbitrary number, but the docs seem to be gone, so lookup 
    # on the internet a solution
    nix.gc = { 
        automatic = true; 
        dates = "daily"; 
        options = "--delete-older-than 7d"; 
        # options = "--delete-older-than +5";
    };

    nix.settings.experimental-features = [ "nix-command" "flakes"];
}

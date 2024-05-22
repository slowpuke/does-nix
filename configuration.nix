{ config, pkgs, ... }:

{
    imports = [
        ./hardware-configuration.nix
        ./slowpuke/gaming.nix
    ];

    # Bootloader.
    boot.loader.systemd-boot.enable = true;
    boot.loader.efi.canTouchEfiVariables = true;

    networking.hostName = "nixos";

    # zsh enable
    environment.shells = with pkgs; [ zsh ];
    users.defaultUserShell = pkgs.zsh;
    programs.zsh.enable = true;

    # bluetooth
    hardware.bluetooth.enable = true;
    hardware.bluetooth.powerOnBoot = true;

    # Enable networking
    networking.networkmanager.enable = true;

    # Set your time zone.
    time.timeZone = "Europe/Rome";

    # Select internationalisation properties.
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

    # Enable the X11 windowing system.
    services.xserver.enable = true;

    # Enable the KDE Plasma Desktop Environment.
    services.displayManager.sddm.enable = true;
    services.xserver.desktopManager.plasma5.enable = true;

    # Configure keymap in X11
    services.xserver.xkb = {
        layout = "pl";
        variant = "legacy";
    };

    # Configure console keymap
    console.keyMap = "pl2";

    # Enable CUPS to print documents.
    services.printing.enable = true;

    # Enable sound with pipewire.
    sound.enable = true;
    hardware.pulseaudio.enable = false;
    security.rtkit.enable = true;
    services.pipewire = {
        enable = true;
        alsa.enable = true;
        alsa.support32Bit = true;
        pulse.enable = true;
    };

    # Define a user account. Don't forget to set a password with ‘passwd’.
    users.users.slowpuke = {
        isNormalUser = true;
        description = "slowpuke";
        extraGroups = [ "networkmanager" "wheel" ];
    };

    # Allow unfree packages
    nixpkgs.config.allowUnfree = true;

    system.stateVersion = "23.05";

    # nvidia has been the single worst company we've ever dealt with
    hardware.opengl = {
        enable = true;
        driSupport = true;
        driSupport32Bit = true;
    };

    services.xserver.videoDrivers = ["nvidia"];

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
    ];

    # to fix the lps problem, if working move to a different place like vim.nix or languages.nix
    programs.nix-ld = {
        enable = true;
        libraries = with pkgs; [
            # go to the mason language server list and see what dependencies you need
            lua
            rustup
        ];
    };

    # hoping this fixes some app not starting issue
    xdg.portal.extraPortals = [ pkgs.xdg-desktop-portal-gtk pkgs.xdg-desktop-portal];

    nix.settings.experimental-features = [ "nix-command" "flakes"];
}

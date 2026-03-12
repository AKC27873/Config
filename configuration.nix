# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running 'nixos-help').

{ config, pkgs, ... }:
let
  pkgsUnstable = import <nixpkgs-unstable> {
    config = {
      allowUnfree = true;
      permittedInsecurePackages = [
        "openssl-1.1.1w"
      ];
    };
  };
in
{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
    ];
   nixpkgs.config.permittedInsecurePackages = [
  "openssl-1.1.1w"
    ];
    hardware.bluetooth.enable = true;
    hardware.bluetooth.powerOnBoot = true;
  environment.shells = with pkgs; [zsh];
  users.defaultUserShell = pkgs.zsh;

  # Bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  programs.neovim.enable = true;
  networking.hostName = "havoc"; # Define your hostname.
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.

  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

  # Enable networking
  networking.networkmanager.enable = true;


  # Set your time zone.
  time.timeZone = "America/New_York";

  # Select internationalisation properties.
  i18n.defaultLocale = "en_US.UTF-8";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "en_US.UTF-8";
    LC_IDENTIFICATION = "en_US.UTF-8";
    LC_MEASUREMENT = "en_US.UTF-8";
    LC_MONETARY = "en_US.UTF-8";
    LC_NAME = "en_US.UTF-8";
    LC_NUMERIC = "en_US.UTF-8";
    LC_PAPER = "en_US.UTF-8";
    LC_TELEPHONE = "en_US.UTF-8";
    LC_TIME = "en_US.UTF-8";
  };

  # Enable the X11 windowing system.
  services.xserver.enable = true;
  # Enable the XFCE Desktop Environment.
  services.xserver.displayManager.lightdm.enable = true;
  services.xserver.desktopManager.xfce.enable = true;
  # Configure keymap in X11
  services.xserver.xkb = {
    layout = "us";
    variant = "";
  };

  # Enable sound with pipewire.
  services.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    # If you want to use JACK applications, uncomment this
    jack.enable = true;

    # use the example session manager (no others are packaged yet so this is enabled by default,
    # no need to redefine it in your config for now)
    #media-session.enable = true;
  };

  programs.nix-ld.enable = true;

  # Enable touchpad support (enabled default in most desktopManager).
  # services.xserver.libinput.enable = true;
  fonts.packages = with pkgs; [
	  nerd-fonts.fira-code
		  nerd-fonts.droid-sans-mono
		  nerd-fonts.noto
		  nerd-fonts.hack
		  nerd-fonts.ubuntu
  ];


  # Define a user account. Don't forget to set a password with 'passwd'.
  users.users.akc27 = {
    isNormalUser = true;
    description = "akc27";
    extraGroups = [ "networkmanager" "wheel" "libvirtd" "kvm" "docker" ];
    packages = with pkgs; [
     thunderbird
     zsh
    ];
  };

  # Install firefox.
  programs.firefox.enable = true;
  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;
  # List packages installed in system profile. To search, run:
  # nix search wget

  environment.systemPackages = with pkgs; [
   pkgsUnstable.alacritty-theme
   pkgsUnstable.alacritty
   pkgsUnstable.gh
   pkgsUnstable.go
   pkgs.bluez
   pkgs.blueman
   pkgs.wget
   pkgs.tree-sitter
   pkgsUnstable.tmux
   pkgsUnstable.busybox
   pkgsUnstable.inetutils
   pkgs.openvpn
   pkgsUnstable.obsidian
   pkgsUnstable.librewolf
   pkgsUnstable.gcc
   pkgs.gnumake
   pkgs.ripgrep
   pkgs.fd
   pkgs.nodejs_24
   pkgsUnstable.binutils
   pkgs.glibc.dev
   pkgs.eza
   pkgs.flameshot
   pkgs.xclip
   pkgs.brightnessctl
   pkgs.libreoffice
   pkgs.discord
   # pkgsUnstable.tailscale
   pkgs.unzip
   pkgs.git
   pkgs.python314
   pkgs.python313
   pkgs.curl
   pkgs.docker
   pkgs.docker-compose
   pkgs.spotify
   pkgsUnstable.bundler
   pkgsUnstable.ruby
   pkgs.vimPlugins.nvim-treesitter-parsers.ruby
   pkgs.virtio-win
   pkgs.qemu
   pkgs.OVMF
   pkgsUnstable.rustup
   pkgsUnstable.lld
   pkgs.starship
   pkgs.xfce.thunar
   pkgs.xfce.thunar-volman  # USB/removable media support
   pkgs.xfce.thunar-archive-plugin  # Archive support
   # XFCE enhancements
   pkgs.xfce.xfce4-whiskermenu-plugin
   pkgs.xfce.xfce4-pulseaudio-plugin
   pkgs.xfce.xfce4-weather-plugin
   pkgs.xfce.xfce4-systemload-plugin
   pkgs.xfce.xfce4-clipman-plugin

   # Themes and fonts
   pkgs.adwaita-icon-theme
   pkgs.papirus-icon-theme
   pkgs.nerd-fonts.jetbrains-mono
   pkgs.nerd-fonts.fira-code
   pkgs.bibata-cursors
   pkgs.gruvbox-plus-icons
   pkgs.gruvbox-dark-icons-gtk
   pkgs.gruvbox-material-gtk-theme
   pkgs.gruvbox-dark-gtk
   pkgs.gruvbox-gtk-theme
  ];


  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  # programs.mtr.enable = true;
  # programs.gnupg.agent = {
  #   enable = true;
  #   enableSSHSupport = true;
  # };

  # List services that you want to enable:
  services.flatpak.enable = true;
  xdg.portal.enable = true;
  xdg.portal.extraPortals = [pkgs.xdg-desktop-portal-gtk];
  services.tailscale.enable = true;
  virtualisation.docker.enable = true;
  programs.zsh.enable = true;

  # Proper virtualization setup
  virtualisation.libvirtd = {
    enable = true;
    qemu = {
      package = pkgs.qemu_kvm;
      runAsRoot = true;
      swtpm.enable = true;
      ovmf.enable = true;
    };
  };
  programs.virt-manager.enable = true;

  environment.sessionVariables = {
    LIBVIRT_DEFAULT_URI = "qemu:///system";
  };

  # Enable the OpenSSH daemon.
  services.openssh.enable = true;

  # Open ports in the firewall.
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  # Or disable the firewall altogether.
  # networking.firewall.enable = false;

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It's perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "25.05"; # Did you read the comment?

}


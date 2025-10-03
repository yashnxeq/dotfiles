
{ config, pkgs, ... }:

{
    home.stateVersion = "25.11";
    home.username = "yash";
    home.homeDirectory = "/home/yash";

    home.packages = with pkgs; [

        # Fonts
        nerd-fonts.iosevka
        nerd-fonts.departure-mono

        # Themes
        nordic

        #----------- Shells
        fish

        #----------- Terminals
        alacritty

        #----------- Runtimes
        jdk8
        dotnet-sdk
        nodejs_24

        #----------- CLIs
        # zip
        # unzip     # Other alternatives already installed via pacman
        wget
        p7zip
        # gnutar    # bsdtar already installed via pacman
        # git       # already installed via pacman
        gdb
        feh
        htop
        maim
        tmux
        neovim
        fastfetch
        bluetuith
        ani-cli

        #----------- APPs
        # ungoogled-chromium  # Widewinde CDM not working in dis shi
        librewolf-unwrapped
        xfce.thunar
        xarchiver
        discord
        mpv
        vlc

        godot
        blender

        obs-studio

        pavucontrol

        #----------- Libs
        widevine-cdm
        mesa
    ];
}

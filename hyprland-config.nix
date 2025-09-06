# /etc/nixos/configuration.nix (minimal snippet)
{ config, pkgs, ... }:

{
  # Enable Hyprland via the provided module
  # (some docs show `programs.hyprland.enable = true` and some modules expose `wayland.windowManager.hyprland`,
  # both are used in different setups — see below if you use Home Manager or flakes)
  programs.hyprland.enable = true;

  # Helpful packages for the default hyprland dots
  environment.systemPackages = with pkgs; [
    hyprland
    kitty         # default hypr config often expects it (you can use your terminal)
    waybar
    mako          # notifications
    wl-clipboard
    grim
    slurp
  ];

  # XDG portals — make sure portals are available
  xdg.portal.enable = true;
  xdg.portal.extraPortals = [ pkgs.xdg-desktop-portal-hyprland ];

  # Polkit (polkit is useful for auth prompts)
  security.polkit.enable = true;
}

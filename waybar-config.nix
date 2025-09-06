{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    waybar
    font-awesome
    roboto
    jetbrains-mono
  ];

  fonts = {
    enableDefaultFonts = true;
    fonts = with pkgs; [
      font-awesome
      roboto
      jetbrains-mono
    ];
  };

  # Optional: If you want to use systemd service
  systemd.user.services.waybar = {
    description = "Waybar status bar";
    wantedBy = [ "graphical-session.target" ];
    partOf = [ "graphical-session.target" ];
    serviceConfig = {
      ExecStart = "${pkgs.waybar}/bin/waybar";
      Restart = "on-failure";
      RestartSec = 5;
    };
  };
}

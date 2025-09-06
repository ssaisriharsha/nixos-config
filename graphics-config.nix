# /etc/nixos/configuration.nix
{config, pkgs, ...}:

{
  hardware.opengl = {
    enable = true;
#   driSupport = true;
#    driSupport32Bit = true; # optional if you need 32-bit libs
  };
  # If you need video acceleration (Intel), add extra packages:
  hardware.graphics.extraPackages = with pkgs; [ intel-media-driver ];
}

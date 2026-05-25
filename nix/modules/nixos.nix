# nix/modules/nixos.nix — auto-generated from bevy_dev_tools.caixa.lisp
# description: "Collection of developer tools for the Bevy Engine"
{ config, lib, pkgs, ... }:
let
  cfg = config.services.bevy_dev_tools;
in {
  options.services.bevy_dev_tools = {
    enable = lib.mkEnableOption "bevy_dev_tools";
    package = lib.mkOption {
      type = lib.types.package;
      default = pkgs.bevy_dev_tools or null;
    };
  };
  config = lib.mkIf cfg.enable {
    environment.systemPackages = [ cfg.package ];
  };
}

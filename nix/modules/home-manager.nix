# nix/modules/home-manager.nix — auto-generated from bevy_dev_tools.caixa.lisp
{ config, lib, pkgs, ... }:
let cfg = config.programs.bevy_dev_tools; in {
  options.programs.bevy_dev_tools = {
    enable = lib.mkEnableOption "bevy_dev_tools";
    package = lib.mkOption { type = lib.types.package; default = pkgs.bevy_dev_tools or null; };
  };
  config = lib.mkIf cfg.enable { home.packages = [ cfg.package ]; };
}

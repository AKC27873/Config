# workflow
---------------------------------------------------------------------------------------
> This is my workflow for my setup for daily using 
XFCE4 on nixOS and using nvim. 
---------------------------------------------------------------------------------------
## Following the Unstable branch in nix 
* You will first need to define it in your `configuration.nix` file to follow it and you can do this by running this
```bash
sudo nix-channel --add https://nixos.org/channels/nixos-unstable nixpkgs-unstable
sudo nix-channel --update
```

To follow the 
* to update and follow the unstable package. 
-------------------------------------------------------------------------------------

## Following the Stable Branch
```bash
sudo nix-channel --add https://channels.nixos.org/nixos-<version> nixos
```
--------------------------------------------------------------

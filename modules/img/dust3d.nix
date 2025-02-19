{ isDarwin, lib, ... }:
{ }
// lib.optionalAttrs isDarwin {
  homebrew.casks = [
    # open-source 3D modelling software
    "dust3d"
  ];
}

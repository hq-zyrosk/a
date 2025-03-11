{pkgs, ...}: {
  programs.nixfmt.package = pkgs.alejandra;
  programs.nixfmt.enable = true;

  settings.global.excludes = [
    "*.{code-workspace,crt,csr,css,glsl,hl,js,key,pub,rasi,svg,ttf,txt}"
    "*{.git*,id_ed25519,id_rsa,justfile}"
  ];

  projectRootFile = "flake.nix";
}

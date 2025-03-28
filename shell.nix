{ ... }:

{
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    syntaxHighlighting.enable = true;
    autosuggestions.enable = true;

    shellAliases = {
      ll = "ls -l";
      update = "sudo nixos-rebuild switch";
      ch-update = "nix-channel --update";
      upgrade = "sudo nixos-rebuild switch --upgrade";
      config = "cd /etc/nixos/";
      nv = "nvim";
      lzd = "lazydocker";
      lzg = "lazygit";
      t = "tmux";
    };

    ohMyZsh = {
      enable = true;
      plugins = [ "git" "docker" "colored-man-pages" "direnv" ];
      theme = "robbyrussell";
    };
  };
}

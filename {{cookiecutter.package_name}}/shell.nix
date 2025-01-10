{pkgs, ...}: 
pkgs.mkShell {
    buildInputs = with pkgs.beam.packages.erlang_{{ cookiecutter.erlang_version }}; [
      erlang
      rebar3
      erlang-ls
    ];
  }

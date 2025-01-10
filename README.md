nix-erlang-template
---

This is a cookiecutter repository which contains my current Erlang jumping
off point. Nix has the concepts of [templates][zero-to-nix-templates] but they
don't really offer the customizability I am looking for here.

## Get the template

To get this cookiecutter,

```shell
nix develop nixpkgs#cookiecutter --command cookiecutter gh:chiroptical/nix-erlang-template
```

You can install cookiecutter via [their directions][install-cookiecutter] and run,

```shell
cookiecutter gh:chiroptical/nix-erlang-template
```

This will create a directory with the package name you specify in
`cookiecutter`. If you `cd` into the directory, you'll see a scaffold for a
Erlang rebar3 project with flake.

## Getting started

You could simply `nix develop`, but I tend to prefer [direnv][direnv] and
[nix-direnv][nix-direnv]. To use these, follow their installation procedures
and add a file `.envrc` with contents:

```
use flake
```

If you see something like,

```
direnv: error /.../.envrc is blocked. Run `direnv allow` to approve its content
```

Then direnv is set up properly. If not follow the installation instructions.
Once you enter `direnv allow` it will set up your shell with all the packages
in `package.yaml`. If you notice builds are installing a bunch of packages,
likely you need to refresh your nix shell via `direnv reload`. After that
completes, you should be in the shell! From there you can run `rebar3 compile` which
will compile the project. You could also run `rebar3 eunit` to run an example test.

[zero-to-nix-templates]: https://zero-to-nix.com/concepts/flakes#templates
[install-cookiecutter]: https://cookiecutter.readthedocs.io/en/stable/installation.html#install-cookiecutter
[direnv]: https://direnv.net
[nix-direnv]: https://github.com/nix-community/nix-direnv

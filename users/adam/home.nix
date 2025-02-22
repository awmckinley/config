{
  inputs,
  isDarwin,
  isLinux,
  isWSL,
  lib,
  pkgs,
  ...
}:
let
  homeDir = if isDarwin then "/Users/adam" else "/home/adam";
  vscode-extensions = inputs.vscode-extensions.extensions.${pkgs.system};
in
{
  home.stateVersion = "22.11";

  home.packages =
    with pkgs;
    [ ]
    ++ lib.optionals isLinux [
      # infinitely extensible web-browser
      nyxt
    ];

  programs.chromium =
    { }
    // lib.optionalAttrs isLinux {
      # configure Chromium
      enable = true;

      # open source web browser with Google web services removed
      package = pkgs.ungoogled-chromium;

      extensions = [
        {
          # 1Password
          id = "aeblfdkhhhdcdjpifhhbdiojplfjncoa";
          version = "8.10.48.25";
          crxPath = builtins.fetchurl {
            url = "https://clients2.googleusercontent.com/crx/blobs/AYA8Vyz-vDRWjQ-PKHx1cxYwqSGYGlATlprVh5tkYCM61gMB2r64eXc5zEUvMB79SZOm1CEw4V3fRza7zN_phUS5MjzEpg7zO59nBUlvJi6kQyliLqZSP2OH1WUVJ-TCXUqtAMZSmuVdt8ROcah2zOK3-tCmSCXjIlioEQ/AEBLFDKHHHDCDJPIFHHBDIOJPLFJNCOA_8_10_48_25.crx";
            sha256 = "sha256:0mnva3a2ckm5syp2ikrny542wz9b9xa1krrqb2v4fqh9brsvx7lg";
          };
        }
        {
          # Bukubrow
          id = "ghniladkapjacfajiooekgkfopkjblpn";
          version = "5.0.3.0";
          crxPath = builtins.fetchurl {
            url = "https://clients2.googleusercontent.com/crx/blobs/AYA8Vyz0faiGRLZBxAu16hWCDL9Rb1GHrBkzHYrRqMD4dloTIaVg1RCOta9eFMXhpnN1olb3GJyP3zjB7Ib720CiCFMEoldVXc1zSNk81mfeUo8gx8ByQADGUprlKpGOWrmpRn8xrjMIU_7dJi4tr18/GHNILADKAPJACFAJIOOEKGKFOPKJBLPN_5_0_3_0.crx";
            sha256 = "sha256:19a27h11gbgxbgv4c2ky2spjvalynh2d1vrqccnzrwnprq6vr0zh";
          };
        }
        {
          # Chrome Extension Source Viewer
          id = "jifpbeccnghkjeaalbbjmodiffmgedin";
          version = "1.7.0";
          crxPath = builtins.fetchurl {
            url = "https://clients2.googleusercontent.com/crx/blobs/AYA8VyzCKWF_azsW9aEkq30nqw_MVTOt03SKUpTpGzT8E3AyCesjqGsPSrhxGBdAJxNDYdtI6fIQmOVZdT5d0DQrw8ZV8zxH5byuMLg10tzCvFVnHwyRAMZSmuWEhnB7H6oXrmb1YCiNM5Y1KoOJJg/JIFPBECCNGHKJEAALBBJMODIFFMGEDIN_1_7_0_0.crx";
            sha256 = "sha256:02ga99sbh3kgpmiklhrwlklydl8gnrw1pswa8d0qfdnwis6m15g2";
          };
        }
        {
          # Competitive Companion
          id = "cjnmckjndlpiamhfimnnjmnckgghkjbl";
          version = "2.56.0";
          crxPath = builtins.fetchurl {
            url = "https://clients2.googleusercontent.com/crx/blobs/AYA8VyyLSs57qCDx8YHuuyCJk5EmYjFvmOO2NPjQB0odqN5mn0l4m4PXSy5LNS7g6haNqhFbR7ZOg4BipivCmLLpi1QOMs0y_hAok1ebDB05GJSUTR2OQfAkM2MUIVjmRagAxlKa5flFS86FjhgIhT4kPPE7FtKVmfGU/CJNMCKJNDLPIAMHFIMNNJMNCKGGHKJBL_2_56_0_0.crx";
            sha256 = "sha256:1v8kbr9g730k1f3kd82vxqsh57zb4n7xz4k1pl1vj4gya4k6zqb7";
          };
        }
        {
          # Read Aloud
          id = "hdhinadidafjejdhmfkjgnolgimiaplp";
          version = "2.11.0";
          crxPath = builtins.fetchurl {
            url = "https://clients2.googleusercontent.com/crx/blobs/AYA8Vyw9DwE2N16Wj_wu9RiKVRbB9yySGCy1O7CuLF5fMtyKK10FxuGuRnatsSPYBIZ54pi1WkfeLUUE7E0vaL7Lr9LuohexlPXsEYNu4F4PgJJZKbBrKB5AMXKdGzJBK7QAxlKa5RUTs-cWZ5RpJa7KYzLsXcTXYIim/HDHINADIDAFJEJDHMFKJGNOLGIMIAPLP_2_11_0_0.crx";
            sha256 = "sha256:1cij032qc0vjqxn943l54rb88czslmhdipfggfw2ax804pvjx6z9";
          };
        }
        {
          # Vimium
          id = "dbepggeogbaibhgnhhndojpepiihcmeb";
          version = "2.1.2";
          crxPath = builtins.fetchurl {
            url = "https://clients2.googleusercontent.com/crx/blobs/AYA8VyyutpPVwk6HAt58RPljND3oCqj1M4ocdM88qIrG16u8fTnsjLlS9GfRcxYNZ74NP_kac4eOZQowwP9_FvoFSSn8OwPcpDAaibqIfLQTIHM5GTdwsJSRWeoT6dESJTEAxlKa5WGGPMJ80yD1BKSBZ0j4JUTzD01G/DBEPGGEOGBAIBHGNHHNDOJPEPIIHCMEB_2_1_2_0.crx";
            sha256 = "sha256:0m8xski05w2r8igj675sxrlkzxlrl59j3a7m0r6c8pwcvka0r88d";
          };
        }
      ];
    };

  programs.vscode =
    { }
    # Visual Studio Code refuses to run inside WSL
    // lib.optionalAttrs (!isWSL) {
      # configure Visual Studio Code
      enable = true;

      # disable update nags
      enableExtensionUpdateCheck = false;
      enableUpdateCheck = false;

      # source code editor
      package = pkgs.vscode.override { };

      extensions = with vscode-extensions.vscode-marketplace; [
        # install and manage .NET SDK and runtime
        ms-dotnettools.vscode-dotnet-runtime

        # auto close tag for XML, PHP, Vue, JSX, TSX, etc.
        formulahendry.auto-close-tag

        # auto rename tag for XML, PHP, Vue, JSX, TSX, etc.
        formulahendry.auto-rename-tag

        # bring information from your production services
        visualstudioonlineapplicationinsights.application-insights

        # tools for developing and running commands of the Azure CLI
        ms-vscode.azurecli

        # makes it easy to run, provision, and deploy Azure applications
        ms-azuretools.azure-dev

        # Azure Functions
        ms-azuretools.vscode-azurefunctions

        # syntax highlighting and IntelliSense for Azure Pipelines YAML
        ms-azure-devops.azure-pipelines

        # language server, editing tools and snippets for ARM templates
        msazurermtools.azurerm-vscode-tools

        # view and manage Azure resources
        ms-azuretools.vscode-azureresourcegroups

        # manage your Azure Storage accounts
        ms-azuretools.vscode-azurestorage

        # open source Azure Storage API compatible server
        azurite.azurite

        # debugger extension for bash scripts
        rogalmic.bash-debug

        # language server for Bash
        mads-hartmann.bash-ide-vscode

        # syntax highlighting for jinja
        samuelcolvin.jinjahtml

        # bicep language support
        ms-azuretools.vscode-bicep

        # toolchain of the web
        biomejs.biome

        # rapid Kubernetes development for teams
        mindaro.mindaro

        # embedded browser
        antfu.browse-lite

        # base C# support
        ms-dotnettools.csharp

        # official C# extension
        ms-dotnettools.csdevkit

        # C/C++ completion, navigation, and insights
        llvm-vs-code-extensions.vscode-clangd

        # run code snippet or code file for multiple languages
        formulahendry.code-runner

        # spelling checker for source code
        streetsidesoftware.code-spell-checker

        # native debugger powered by LLDB
        vadimcn.vscode-lldb

        # CodeQL
        github.vscode-codeql

        # highlight web colors
        naumovs.color-highlight

        # display test coverage
        ryanluker.vscode-coverage-gutters

        # Dart language support and debugger
        dart-code.dart-code

        # lightweight Java debugger
        vscjava.vscode-java-debug

        # language server client for Deno
        denoland.vscode-deno

        # manage dependencies and address vulnerabilities
        fill-labs.dependi

        # open any folder or repository inside a Docker container
        ms-vscode-remote.remote-containers

        # create, manage, and debug containerized applications
        ms-azuretools.vscode-docker

        # support for dotenv file syntax
        mikestead.dotenv

        # Draw.io integration
        hediet.vscode-drawio

        # EditorConfig support
        editorconfig.editorconfig

        # improve highlighting of errors, warnings and other language diagnostics
        usernamehw.errorlens

        # fully-featured TOML support
        tamasfe.even-better-toml

        # edit Excel spreadsheets and CSV files
        grapecity.gc-excelviewer

        # exposes an API that allows other extensions to download files
        mindaro-dev.file-downloader

        # create, duplicate, move, rename, and delete files and directories
        sleistner.vscode-fileutils

        # linting support for Python files using Flake8
        ms-python.flake8

        # Flutter support and debugger
        dart-code.flutter

        # view a Git graph of your repository, and perform Git actions from the graph
        # replaces: donjayamanne.githistory
        mhutchie.git-graph

        # change easily between Git projects
        felipecaputo.git-project-manager

        # GitHub Actions workflows and runs
        github.vscode-github-actions

        # your AI pair programmer
        github.copilot

        # AI chat features
        github.copilot-chat

        # Azure extension for GitHub Copilot
        ms-azuretools.vscode-azure-github-copilot

        # pull request and issue provider for GitHub
        github.vscode-pull-request-github

        # rich Go language support
        golang.go

        # syntax highlighting and autocompletion for Terraform
        hashicorp.terraform

        # Haskell language support
        haskell.haskell

        # syntax support for Haskell
        justusadam.language-haskell

        # highlights matching closing and opening tags
        vincaslt.highlight-matching-tag

        # CSS intellisense for HTML
        # replaces: zignd.html-css-class-completion
        ecmel.vscode-html-css

        # wraps selected code with HTML tags
        bradgashler.htmltagwrap

        # all in one i18n
        lokalise.i18n-ally

        # trim and squeeze spaces and empty lines
        lkrms.inifmt

        # AI-assisted development
        visualstudioexptteam.vscodeintellicode

        # see relevant code examples from GitHub
        visualstudioexptteam.intellicode-api-usage-examples

        # AI-assisted development
        ms-dotnettools.vscodeintellicode-csharp

        # import organization support for Python files
        ms-python.isort

        # provides syntax and recipe launcher for Just scripts
        skellock.just

        # Kotlin language support
        mathiasfrohlich.kotlin

        # develop, deploy and debug Kubernetes applications
        ms-kubernetes-tools.vscode-kubernetes-tools

        # Java linting, Intellisense, formatting, refactoring, Maven/Gradle support
        redhat.java

        # add support for .desktop files
        nico-castell.linux-desktop-file

        # hosts a local server in your workspace
        ms-vscode.live-server

        # launch a development local server with live reload
        ritwickdey.liveserver

        # a better live server with instant updates
        yandeu.five-server

        # real-time collaborative development
        ms-vsliveshare.vsliveshare

        # Lua language server
        sumneko.lua

        # LSP support, REPL integration, and top notch syntax highlighting
        evzen-wybitul.magic-racket

        # provide makefile support
        ms-vscode.makefile-tools

        # all you need to write Markdown
        yzhang.markdown-all-in-one

        # Markdown linting and style checking
        davidanson.vscode-markdownlint

        # markuplint
        yusukehirao.vscode-markuplint

        # language support for MDX
        unifiedjs.vscode-mdx

        # type checking for Python using mypy
        matangover.mypy

        # change theme accent colors by changing nvim modes
        julianiaquinandi.nvim-ui-modifier

        # Nginx configuration helper
        ahmadalli.vscode-nginx-conf

        # Nix language support
        jnoortheen.nix-ide

        # autocompletes npm modules
        christian-kohler.npm-intellisense

        # UI for Nx & Lerna
        nrwl.angular-console

        # extract a filepath from the current cursor position
        fr43nk.seito-openfile

        # manage Parallels Desktop virtual machines, snapshots, and containers
        parallelsdesktop.parallels-desktop

        # paste image from clipboard
        mushan.vscode-paste-image

        # autocompletes filenames
        christian-kohler.path-intellisense

        # subtly change the workspace color
        johnpapa.vscode-peacock

        # debug support for PHP with Xdebug
        xdebug.php-debug

        # run Playwright Test tests
        ms-playwright.playwright

        # develop PowerShell modules, commands, and scripts
        ms-vscode.powershell

        # make TypeScript errors prettier and more human-readable
        yoavbls.pretty-ts-errors

        # syntax highlighting, formatting, auto-completion, jump-to-definition and linting
        prisma.prisma

        # manage Java projects
        vscjava.vscode-java-dependency

        # performant, feature-rich language server
        ms-python.vscode-pylance

        # linting support for Python files using Pylint
        ms-python.pylint

        # static type checking for Python
        ms-pyright.pyright

        # Python language support
        ms-python.python

        # Python debugger using debugpy
        ms-python.debugpy

        # run your Python tests in the sidebar
        littlefoxteam.vscode-python-test-adapter

        # connect to a remote machine through a tunnel
        ms-vscode.remote-server

        # view remote machines for SSH and tunnels
        ms-vscode.remote-explorer

        # displays CPU stats, memory/disk consumption, and battery percentage
        mutantdino.resourcemonitor

        # REST client
        humao.rest-client

        # enhances coding with AI-powered automation, multi-modal support, and experimental features
        rooveterinaryinc.roo-cline

        # support for the Ruff linter and formatter
        charliermarsh.ruff

        # run commands when a file is saved
        emeraldwalk.runonsave

        # Rust language support
        rust-lang.rust-analyzer

        # formatter for shell scripts
        foxundermoon.shell-format

        # integrates ShellCheck
        timonwong.shellcheck

        # Slidev support
        antfu.slidev

        # sorts the keys within JSON objects
        richie5um2.vscode-sort-json

        # connecting users to many of the most commonly used databases
        mtxr.sqltools

        # official Stylelint extension
        stylelint.vscode-stylelint

        # Lua code formatter
        johnnymorganz.stylua

        # helpss you read and write systemd unit files
        hangxingliu.vscode-systemd-support

        # intelligent Tailwind CSS tooling
        bradlc.vscode-tailwindcss

        # converter extension from the test adapter UI
        ms-vscode.test-adapter-converter

        # run your tests in the sidebar
        hbenl.vscode-test-explorer

        # run and debug JUnit or TestNG test cases
        vscjava.vscode-java-test

        # LaTeX and BibTeX language support
        efoerster.texlab

        # lightweight rest API client
        rangav.vscode-thunder-client

        # show TODO, FIXME, etc. comment tags in a tree view
        gruntfuggly.todo-tree

        # highlight trailing spaces and delete them in a flash
        shardulm94.trailing-spaces

        # extra features in tsconfig.json
        johnsoncodehk.vscode-tsconfig-helper

        # full type information for variables, components, and functions
        mxsdev.typescript-explorer

        # Vite
        antfu.vite

        # Neovim integration
        asvetliakov.vscode-neovim

        # nushell language
        thenuprojectcontributors.vscode-nushell-lang

        # display PDF file
        tomoki1207.pdf

        # identify your current working folder in status bar
        antfu.where-am-i

        # open any folder in the WSL
        ms-vscode-remote.remote-wsl

        # XML language support
        redhat.vscode-xml

        # XML formatting, XQuery, and XPath tools
        dotjoshjohnson.xml

        # YAML language support
        redhat.vscode-yaml

        # FullStack enhancement for Prisma ORM
        zenstack.zenstack

        # language support for the Zig programming language
        ziglang.vscode-zig
      ];

      # freeze extensions
      mutableExtensionsDir = false;

      userSettings = {
        "cSpell.customDictionaries" = {
          "custom" = {
            "addWords" = true;
            "name" = "custom";
            "path" = "~/.config/words.txt";
            "scope" = "user";
          };
        };
        "editor.formatOnSave" = false;
        "extensions.experimental.affinity" = {
          "asvetliakov.vscode-neovim" = 1;
        };
        "extensions.ignoreRecommendations" = true;
        "parallels-desktop.brew.path" = "/opt/homebrew/bin/brew";
        "parallels-desktop.extension.path" = (homeDir + "/.parallels-desktop-vscode");
        "parallels-desktop.git.path" = "/run/current-system/sw/bin/git";
        "parallels-desktop.prlctl.path" = "/usr/local/bin/prlctl";
        "telemetry.telemetryLevel" = "off";
        "update.showReleaseNotes" = false;
        "workbench.startupEditor" = "none";
        "[csharp]" = {
          "editor.formatOnSave" = true;
          "editor.formatOnSaveMode" = "file";
        };
      };
    };

  systemd.user = {
    startServices = "sd-switch";

    services.cron = {
      Unit.Description = ".cron.d scripts";
      Install.WantedBy = [ "default.target" ];
      Service = {
        Type = "oneshot";
        ExecStart = "${pkgs.writeShellScript "exec-start" ''
          #!/run/current-system/sw/bin/bash
          log="$HOME/.local/share/cron.log"
          date >>"$log"
          ${pkgs.fd}/bin/fd -e sh . "$HOME/.cron.d" -j 1 -x sh -c "echo .cron.d/{/}; {}" >>"$log" 2>&1
        ''}";
      };
    };

    timers.cron = {
      Unit.Description = ".cron.d scripts";
      Install.WantedBy = [ "timers.target" ];
      Timer = {
        OnCalendar = "*:0/1";
        Unit = "cron.service";
      };
    };
  };
}

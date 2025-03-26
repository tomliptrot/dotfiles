# Taps
tap "apache-spark" # not actually a tap – correcting below, use the original taps:
tap "heroku/brew"
tap "hivemq/mqtt-cli"
tap "homebrew/autoupdate"
tap "homebrew/bundle"
tap "homebrew/cask-versions"
tap "homebrew/services"
tap "microsoft/mssql-release"
tap "mongodb/brew"

# Brews
# Data Compression and File Utilities
brew "p7zip"                     # 7-Zip (high compression file archiver) implementation
brew "xz"                       # General-purpose data compression with high compression ratio
brew "zlib"                     # General-purpose lossless data-compression library

# Graphics, Fonts, and Imaging
brew "freetype"                 # Software library to render fonts
brew "libheif"                  # ISO/IEC 23008-12:2017 HEIF file format decoder and encoder
brew "libtiff"                  # TIFF library and utilities
brew "librsvg"                  # Library to render SVG files using Cairo
brew "imagemagick"              # Tools and libraries to manipulate images in many formats

# Data and Analytics
brew "apache-arrow"             # Columnar in-memory analytics layer designed to accelerate big data
brew "gdal"                    # Geospatial Data Abstraction Library
brew "poppler"                 # PDF rendering library (based on the xpdf-3.0 code base)

# Communication, CLI and Utilities
brew "awscli"                  # Official Amazon AWS command-line interface
brew "azure-cli"               # Microsoft Azure CLI 2.0
brew "direnv"                  # Load/unload environment variables based on $PWD
brew "dvc"                     # Git for data science projects
brew "eza"                     # Modern, maintained replacement for ls
brew "ffmpeg"                  # Play, record, convert, and stream audio and video
brew "fx"                      # Terminal JSON viewer
brew "gh"                      # GitHub command-line tool
brew "git"                     # Distributed revision control system
brew "git-extras"              # Small git utilities
brew "htop"                    # Improved top (interactive process viewer)
brew "jq"                      # Lightweight and flexible command-line JSON processor
brew "just"                    # Handy way to save and run project-specific commands
brew "lsd"                     # Clone of ls with colorful output, file type icons, and more
brew "mqtt-cli", tap: "hivemq/mqtt-cli" # MQTT CLI for MQTT 5.0 and MQTT 3.1.1
brew "node", link: false       # Platform built on V8 to build network applications
brew "node"                    # Platform built on V8 to build network applications (second instance)
brew "ollama"                  # Create, run, and share large language models (LLMs)
brew "openapi-generator"       # Generate clients, server & docs from an OpenAPI spec (v2, v3)
brew "openjdk"                 # Development kit for the Java programming language
brew "openjdk@17"              # Development kit for the Java programming language (version 17)
brew "pkgconf"                 # Package compiler and linker metadata toolkit
brew "poppler"                 # PDF rendering library (based on the xpdf-3.0 code base) [duplicate removed if needed]
brew "swagger-codegen"         # Generate clients, server stubs, and docs from an OpenAPI spec
brew "tailscale"               # Easiest, most secure way to use WireGuard and 2FA
brew "terraform"               # Tool to build, change, and version infrastructure
brew "tree"                    # Display directories as trees (with optional color/HTML output)
brew "watch"                   # Executes a program periodically, showing output fullscreen
brew "wget"                    # Internet file retriever
brew "zsh"                     # UNIX shell (command interpreter)
brew "zsh-completions"         # Additional completion definitions for zsh

# Libraries, Databases, and Development Tools
brew "apache-spark"            # Engine for large-scale data processing
brew "boost"                   # Collection of portable C++ source libraries
brew "coreutils"               # GNU File, Shell, and Text utilities
brew "cryptography"            # Cryptographic recipes and primitives for Python
brew "freetype"                # Software library to render fonts (duplicate, if already included above)
brew "glib"                    # Core application library for C
brew "grpc"                    # Next generation open source RPC library and framework
brew "gnupg"                   # GNU Pretty Good Privacy (PGP) package
brew "gpgme"                   # Library access to GnuPG
brew "mariadb-connector-c"     # MariaDB database connector for C applications
brew "mariadb-connector-odbc"  # Database driver using the industry standard ODBC API
brew "mongosh"                 # MongoDB Shell to connect, configure, query, and work with your MongoDB database
brew "mosquitto"               # Message broker implementing the MQTT protocol
brew "mysql"                   # Open source relational database management system
brew "nghttp2"                 # HTTP/2 C Library
brew "openapi-generator"       # Generate clients, server & docs from an OpenAPI spec (duplicate – if duplicate, remove one)
brew "p7zip"                   # 7-Zip (high compression file archiver) implementation (duplicate – see above)
brew "pipx"                    # Executes binaries from Python packages in isolated environments
brew "portaudio"               # Cross-platform library for audio I/O
brew "postgresql@14"           # Object-relational database system
brew "postgresql@15", restart_service: :changed  # Object-relational database system (with restart option)
brew "qemu"                    # Generic machine emulator and virtualizer
brew "r"                       # Software environment for statistical computing
brew "ruby-build"              # Install various Ruby versions and implementations
brew "rbenv"                   # Ruby version manager
brew "redis"                   # Persistent key-value database, with built-in net interface
brew "ruby"                    # Powerful, clean, object-oriented scripting language
brew "scala"                   # JVM-based programming language
brew "swagger-codegen"         # Generate clients, server stubs, and docs from an OpenAPI spec (duplicate – remove if needed)
brew "tcl-tk"                  # Tool Command Language

# Casks - Applications
cask "adoptopenjdk"            # JDK from the Java User Group (JUG)
cask "adoptopenjdk8"           # Prebuilt OpenJDK binaries
cask "alfred"                  # Application launcher and productivity software
cask "atom"                    # Text editor
cask "authy"                   # Two-factor authentication software
cask "bbedit"                  # Text editor
cask "bitwarden"               # Desktop password and login vault
cask "cd-to"                   # Finder Toolbar app to open the current directory in the Terminal
cask "cyberduck"               # Server and cloud storage browser
cask "db-browser-for-sqlite"   # Browser for SQLite databases
cask "dbeaver-community"       # Universal database tool and SQL client
cask "discord"                 # Voice and text chat software
cask "docker"                  # App to build and share containerised applications and microservices
cask "firefox"                 # Web browser
cask "google-chrome"           # Web browser
cask "google-cloud-sdk"        # Set of tools to manage resources and applications hosted on Google Cloud
cask "google-drive"            # Client for the Google Drive storage service
cask "iterm2"                  # Terminal emulator as alternative to Apple's Terminal app
cask "karabiner-elements"      # Keyboard customiser
cask "miro"                    # Online collaborative whiteboard platform
cask "mqtt-explorer"           # MQTT Explorer
cask "mqttx"                   # Cross-platform MQTT 5.0 Desktop Client
cask "obs"                     # Open-source software for live streaming and screen recording
cask "openinterminal"          # Finder Toolbar app to open the current directory in Terminal or Editor
cask "pgadmin4"                # Administration and development platform for PostgreSQL
cask "postman"                 # Collaboration platform for API development
cask "pycharm"                 # IDE for professional Python development
cask "rstudio", args: { appdir: "/Applications" }  # Data science software focusing on R and Python
cask "sequel-pro"              # MySQL/MariaDB database management platform
cask "sublime-text"            # Text editor for code, markup and prose
cask "textmate"                # General-purpose text editor
cask "typora"                  # Configurable document editor that supports Markdown
cask "vlc"                     # Multimedia player
cask "whatsapp"                # Native desktop client for WhatsApp 
cask "xquartz"                 # Open-source version of the X.Org X Window System
cask "zed"                     # Multiplayer code editor
cask "visual-studio-code"      # open source code editor
cask "zoom"                    # Video communication and virtual meeting platform

# Casks - Fonts
cask "font-fira-code"
cask "font-hack-nerd-font"
cask 'font-jetbrains-mono-nerd-font'
cask "font-meslo-lg-nerd-font"
cask 'font-sauce-code-powerline'
cask 'font-source-code-pro'
cask 'font-source-sans-pro'
cask 'font-source-serif-pro'

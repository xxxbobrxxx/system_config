#!/usr/bin/env bash
#: Global definitions
export VA_SYSTEM_CONFIG_ROOT=${VA_SYSTEM_CONFIG_ROOT:-${HOME}/dev/system_config}

#: PS1
source "${VA_SYSTEM_CONFIG_ROOT}/bashrc/ps1_git.sh"
source "${VA_SYSTEM_CONFIG_ROOT}/bashrc/ps1_colors.sh"

#: Docker environment manager
source "${VA_SYSTEM_CONFIG_ROOT}/bashrc/docker_env.sh"

# enable fasthgbranch
case $( uname -s ) in
    Darwin)
        export PATH="${PATH}:${VA_SYSTEM_CONFIG_ROOT}/bin/macos"
        ;;
esac

source "${VA_SYSTEM_CONFIG_ROOT}/bashrc/setup_python_virtualenv.sh"

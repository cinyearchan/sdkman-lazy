# Try to find sdkman, if it's not on the path
export SDKMAN_DIR="${SDKMAN_DIR:=${HOME}/.sdkman}"

# Lazy load sdkman
sdk () {
    if [[ "$(which sdk | wc -l)" -le 10 ]]; then
        unset -f sdk
        source "$SDKMAN_DIR/bin/sdkman-init.sh"
    fi
    sdk "$@"
}

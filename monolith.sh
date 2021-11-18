#!/system/bin/sh

MODE="everything"

packages="$(pm list packages | toybox sed 's/.*://')"
for package in $packages
do
    echo "[1/3] $package"
    pm compile -f --check-prof false -m "$MODE" "$package"
    echo "[2/3] $package"
    pm compile -f --check-prof false --secondary-dex -m "$MODE" "$package"
    echo "[3/3] $package"
    pm compile -f --check-prof false --compile-layouts "$package"
    echo
done

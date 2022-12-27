#!/system/bin/sh

MODE="everything-profile"

echo ">>> PART 1"
echo
cmd package compile -a -m "$MODE"

echo ">>> PART 2"
echo
cmd package compile -a --compile-layouts

echo ">>> Cleaning up"
cmd package bg-dexopt-job

echo ">>> Done"

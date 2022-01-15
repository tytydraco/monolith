#!/system/bin/sh

MODE="everything-profile"

echo ">>> PART 1"
echo
pm compile -a -f -m "$MODE"
echo ">>> PART 2"
echo
pm compile -a -f --compile-layouts

echo ">>> Cleaning up"
pm bg-dexopt-job

echo ">>> Done"

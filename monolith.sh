#!/system/bin/sh

MODE="everything"

echo ">>> PART 1"
echo
pm compile -a -f --check-prof false -m "$MODE"
echo ">>> PART 2"
echo
pm compile -a -f --check-prof false --compile-layouts

echo ">>> Cleaning up"
pm bg-dexopt-job

echo ">>> Done"

#!/system/bin/sh

MODE="everything"

echo ">>> PART 1"
echo
pm compile -a -f --check-prof false -m "$MODE"
echo ">>> PART 2"
echo
pm compile -a -f --check-prof false --secondary-dex -m "$MODE"
echo ">>> PART 3"
echo
pm compile -a -f --check-prof false --compile-layouts

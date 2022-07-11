#!/system/bin/sh

echo ">>> PART 1"
echo
cmd package compile -m everything-profile -f -a

echo ">>> PART 2"
echo
cmd package compile -a -f --compile-layouts

echo ">>> Cleaning up"
cmd package bg-dexopt-job

echo ">>> Done"

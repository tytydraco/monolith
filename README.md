# monolith
Recompile Android packages with more extensive DEX optimizations

# How
1) Push script to device: `adb push monolith.sh /sdcard/Download`
2) Using ADB shell or root, run the script: `sh /sdcard/Download/monolith.sh`

# To revert
1) `adb shell pm compile -a -f -r install`
2) `adb shell pm bg-dexopt-job`

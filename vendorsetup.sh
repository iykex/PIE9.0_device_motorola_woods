# android-9.0-pie / lineage
for var in eng userdebug; do
  add_lunch_combo lineage_woods-$var
done

# copy skia files at setup
#echo "...fast copying files"
#cp device/motorola/woods/include/SkUserConfig.h external/skia/include/core
#cp device/motorola/woods/include/SkUserConfigManual.h external/skia/include/core
#echo ""
#echo "!Done Copying"

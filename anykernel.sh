### AnyKernel3 Ramdisk Mod Script
## osm0sis @ xda-developers

### AnyKernel setup
# global properties
properties() { '
kernel.string=Spider-Kernel by YFMARCO
do.devicecheck=1
do.modules=1
do.systemless=1
do.cleanup=1
do.cleanuponabort=0
device.name1=a36xq
device.name2=
supported.versions=10.0-16.0
supported.patchlevels=
supported.vendorpatchlevels=
'; } # end properties


### AnyKernel install

## boot shell variables
block=/dev/block/bootdevice/by-name/boot
is_slot_device=1
ramdisk_compression=auto
patch_vbmeta_flag=auto
no_magisk_check=true

# import functions/variables and setup patching - see for reference (DO NOT REMOVE)
. tools/ak3-core.sh

# boot install
dump_boot # use split_boot to skip ramdisk unpack, e.g. for devices with init_boot ramdisk
write_boot # use flash_boot to skip ramdisk repack, e.g. for devices with init_boot ramdisk
## end boot install

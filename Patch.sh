#!/bin/sh
clear 
echo "#################################"
echo "#           PATCH FOR NON GKI KERNEL               #"
echo "#################################"
if [ -e Patches/0001-fs-exec-add-ksu-execveat-hook.patch ]; then
      echo "- Applying patches to ksu / ksu next"
       patch -p1 < Patches/0001-fs-exec-add-ksu-execveat-hook.patch
    else
      echo "- Patch file not found"
fi 
sleep 1
if [ -e Patches/0002-fs-open-add-ksu-faccessat-hook.patch ]; then
      echo "- Applying patches to ksu / ksu next"
      patch -p1 < Patches/0002-fs-open-add-ksu-faccessat-hook.patch
    else
      echo "- Patch file not found"
fi
sleep 1
if [ -e Patches/0003-fs-read_write-add-ksu-vfs_read-hook.patch ]; then
      echo "- Applying patches to ksu / ksu next"
      patch -p1 < Patches/0003-fs-read_write-add-ksu-vfs_read-hook.patch
    else
      echo "- Patch file not found"
fi
sleep 1
if [ -e Patches/0004-fs-stat-add-ksu-vfs_statx-hook.patch ]; then
      echo "- Applying patches to ksu / ksu next"
      patch -p1 < Patches/0004-fs-stat-add-ksu-vfs_statx-hook.patch
    else
      echo "- Patch file not found"
fi
sleep 1
if [ -e Patches/0005-drivers-input-input-add-ksu-input_handle_event-hook.patch ]; then
      echo "- Applying patches to ksu / ksu next"
      patch -p1 < Patches/0005-drivers-input-input-add-ksu-input_handle_event-hook.patch
    else
      echo "- Patch file not found"
fi
sleep 1
if [ -e Patches/0006-fs-namespace-add-path-umount-hook.patch ]; then
      echo "- Applying patches to ksu / ksu next"
      patch -p1 < Patches/0006-fs-namespace-add-path-umount-hook.patch
    else
      echo "- Patch file not found"
fi
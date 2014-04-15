

TARGET_KERNEL_MTK_HEADER := device/wiko/darkmoon/emmctools/header

TARGET_RECOVERY_COMPRESSED_GZIP := $(PRODUCT_OUT)/mtk_recovery.cpio.gz
TARGET_RAMDISK_COMPRESSED_GZIP := $(PRODUCT_OUT)/mtk_ramdisk.cpio.gz
recovery_kernel_mtk := $(strip $(recovery_kernel))_mtk
INSTALLED_KERNEL_TARGET_MTK := $(INSTALLED_KERNEL_TARGET)_MTK

$(INSTALLED_RECOVERYIMAGE_TARGET): $(MKBOOTIMG) \
		$(recovery_ramdisk) \
		$(recovery_kernel)
	@echo "----- Making recovery image ------"
	#Add the sec.ko module to root and rebuild ramdisk
	cp device/wiko/darkmoon/root/sec.ko $(TARGET_RECOVERY_ROOT_OUT)
	$(MKBOOTFS) $(TARGET_RECOVERY_ROOT_OUT) > $(recovery_uncompressed_ramdisk)
	$(MINIGZIP) < $(recovery_uncompressed_ramdisk) > $(recovery_ramdisk)
	device/wiko/darkmoon/releasetools/mtk_pack --recovery $(recovery_ramdisk) -o $(TARGET_RECOVERY_COMPRESSED_GZIP)
	
	# kernel has header
	#dd if=$(TARGET_KERNEL_MTK_HEADER) of=$(recovery_kernel_mtk) count=1
	#dd if=$(recovery_kernel) of=$(recovery_kernel_mtk) seek=1
	#device/wiko/darkmoon/releasetools/mkbootimg --kernel $(recovery_kernel_mtk) --ramdisk $(TARGET_RECOVERY_COMPRESSED_GZIP) --pagesize $(BOARD_KERNEL_PAGESIZE)  --output $@
	
	device/wiko/darkmoon/releasetools/mkbootimg --kernel $(recovery_kernel) --ramdisk $(TARGET_RECOVERY_COMPRESSED_GZIP) --pagesize $(BOARD_KERNEL_PAGESIZE)  --output $@
	@echo -e ${CL_INS}"Made recovery image: $@"${CL_RST}
	$(hide) $(call assert-max-image-size,$@,$(BOARD_RECOVERYIMAGE_PARTITION_SIZE),raw)

$(INSTALLED_BOOTIMAGE_TARGET): $(MKBOOTIMG) $(INTERNAL_BOOTIMAGE_FILES)
	$(call pretty,"Target boot image: $@")
	#Force unsecure mode
	sed -i 's/ro.adb.secure=1/ro.adb.secure=0/g' $(TARGET_ROOT_OUT)/default.prop
	$(MKBOOTFS) $(TARGET_ROOT_OUT) | $(MINIGZIP) > $(INSTALLED_RAMDISK_TARGET)
	device/wiko/darkmoon/releasetools/mtk_pack --rootfs $(INSTALLED_RAMDISK_TARGET) -o $(TARGET_RAMDISK_COMPRESSED_GZIP)
	#$(hide) $(MKBOOTIMG) $(INTERNAL_BOOTIMAGE_ARGS) --output $@

	# kernel has header
	#dd if=$(TARGET_KERNEL_MTK_HEADER) of=$(INSTALLED_KERNEL_TARGET_MTK) count=1
	#dd if=$(INSTALLED_KERNEL_TARGET) of=$(INSTALLED_KERNEL_TARGET_MTK) seek=1
	#device/wiko/darkmoon/releasetools/mkbootimg --kernel $(INSTALLED_KERNEL_TARGET_MTK) --ramdisk $(TARGET_RAMDISK_COMPRESSED_GZIP) --pagesize $(BOARD_KERNEL_PAGESIZE)  --output $@

	device/wiko/darkmoon/releasetools/mkbootimg --kernel $(INSTALLED_KERNEL_TARGET) --ramdisk $(TARGET_RAMDISK_COMPRESSED_GZIP) --pagesize $(BOARD_KERNEL_PAGESIZE)  --output $@

	$(hide) $(call assert-max-image-size,$@,$(BOARD_BOOTIMAGE_PARTITION_SIZE),raw)
	@echo -e ${CL_INS}"Made boot image: $@"${CL_RST}


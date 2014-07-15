
$(INSTALLED_RECOVERYIMAGE_TARGET): $(MKBOOTIMG) \
		$(recovery_ramdisk) \
		$(recovery_kernel)
	@echo ----- Making MTK recovery image ------
	perl device/wiko/darkmoon/releasetools/repack-MT65xx.pl -recovery $(recovery_kernel) out/target/product/darkmoon/recovery/root $@ $(MKBOOTIMG)
	@echo ----- Made recovery image -------- $@
	$(hide) $(call assert-max-image-size,$@,$(BOARD_RECOVERYIMAGE_PARTITION_SIZE),raw)


$(INSTALLED_BOOTIMAGE_TARGET): $(MKBOOTIMG) $(INTERNAL_BOOTIMAGE_FILES)
	@echo ----- Making MTK boot image ------
	$(call pretty,"Target boot image: $@")
	perl device/wiko/darkmoon/releasetools/repack-MT65xx.pl -boot $(recovery_kernel) out/target/product/darkmoon/root $@ $(MKBOOTIMG)
	@echo ----- Made boot image -------- $@
	$(hide) $(call assert-max-image-size,$@,$(BOARD_BOOTIMAGE_PARTITION_SIZE),raw)
#
# Copyright (C) 2014 joaquim.org
#
# Copy GAPPS
#
#

	
#Copy all GAPPS
PRODUCT_COPY_FILES += \
	$(call find-copy-subdir-files,*,device/wiko/darkmoon/gapps,system)
	
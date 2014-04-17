CyanogenMod CM-10.1 | Device configuration for the Wiko Darkmoon (MT6582)
===============================

### Android 4.2.2 - cm-10.1

-------------------------------

To build first get the files from working phone :
```bash
$cd device/wiko/darkmoon

$./extract-files.sh
```

Patch CyanogenMod Source :
```bash
$./device/wiko/darkmoon/patches/install.sh
```

Build :
```bash
$. build/envsetup.sh

$brunch cm_darkmoon-eng
```
# ==== WORK IN PROGRESS ====

 * Compiles - **OK**

 * Boot - **NotOK**

------------------------------

### Copyright 2014 - joaquim.org

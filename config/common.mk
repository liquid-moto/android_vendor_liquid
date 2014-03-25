# brand
PRODUCT_BRAND ?= liquid

# build
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_DISPLAY_ID="Liquid ICS v2.1"

# overrides
PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.com.android.dateformat=MM-dd-yyyy \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dataroaming=false \
    ro.media.enc.jpeg.quality=100 \
    ro.kernel.android.checkjni=0 \
    pm.sleep_mode=1 \
    persist.sys.camera-sound=1 \
	persist.sys.multitouch=2 \
    drm.service.enabled=true

# packages
PRODUCT_PACKAGES += \
    AppWidgetPicker \
    LiveWallpapers \
    HoloSpiralWallpaper \
    LiveWallpapersPicker \
    Galaxy4 \
    PhaseBeam \
    NoiseField \
    DSPManager

# tmobile
PRODUCT_PACKAGES += \
    ThemeManager \
    ThemeChooser \
    com.tmobile.themes

# overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/liquid/overlay/common

# binary
PRODUCT_COPY_FILES += \
	vendor/liquid/prebuilt/common/bin/e2fsck:system/bin/e2fsck \
    vendor/liquid/prebuilt/common/bin/fdisk:system/bin/fdisk \
    vendor/liquid/prebuilt/common/bin/hijack:system/bin/hijack \
    vendor/liquid/prebuilt/common/bin/Hostapd:system/bin/Hostapd \
    vendor/liquid/prebuilt/common/bin/sysinit:system/bin/sysinit

# Bluetooth configuration files
PRODUCT_COPY_FILES += \
    system/bluetooth/data/main.conf:system/etc/bluetooth/main.conf

# etc
PRODUCT_COPY_FILES += \
    vendor/liquid/prebuilt/common/etc/gps.conf:system/etc/gps.conf \
    vendor/liquid/prebuilt/common/etc/init.d/90tweaks:system/etc/init.d/90tweaks

# permissions
PRODUCT_COPY_FILES += \
    vendor/liquid/prebuilt/common/etc/permissions/features.xml:system/etc/permissions/features.xml \
    vendor/liquid/prebuilt/common/etc/permissions/com.google.android.maps.xml:system/etc/permissions/com.google.android.maps.xml \
    vendor/liquid/prebuilt/common/etc/permissions/com.motorola.android.iextdispservice.xml:system/etc/permissions/com.motorola.android.iextdispservice.xml \
    vendor/liquid/prebuilt/common/etc/permissions/com.motorola.android.nativehdmiapis_v1.xml:system/etc/permissions/com.motorola.android.nativehdmiapis_v1.xml \
    vendor/liquid/prebuilt/common/etc/permissions/com.tmobile.software.themes.xml:system/etc/permissions/com.tmobile.software.themes.xml \
    vendor/liquid/prebuilt/common/etc/permissions/com.google.widevine.software.drm.xml:system/etc/permissions/com.google.widevine.software.drm.xml \
    vendor/liquid/prebuilt/common/etc/permissions/com.google.android.media.effects.xml:system/etc/permissions/com.google.android.media.effects.xml

# framework
PRODUCT_COPY_FILES += \
    vendor/liquid/prebuilt/common/framework/com.google.android.maps.jar:system/framework/com.google.android.maps.jar \
    vendor/liquid/prebuilt/common/framework/com.google.android.media.effects.jar:system/framework/com.google.android.media.effects.jar \
    vendor/liquid/prebuilt/common/framework/com.google.widevine.software.drm.jar:system/framework/com.google.widevine.software.drm.jar \
    vendor/liquid/prebuilt/common/framework/com.motorola.android.iextdispservice.jar:system/framework/com.motorola.android.iextdispservice.jar \
    vendor/liquid/prebuilt/common/framework/com.motorola.android.nativehdmiapis_v1.jar:system/framework/com.motorola.android.nativehdmiapis_v1.jar

# google
PRODUCT_COPY_FILES += \
    vendor/liquid/prebuilt/common/app/ChromeBookmarksSyncAdapter.apk:system/app/ChromeBookmarksSyncAdapter.apk \
    vendor/liquid/prebuilt/common/app/ExtDispService.apk:system/app/ExtDispService.apk \
    vendor/liquid/prebuilt/common/app/GalleryGoogle.apk:system/app/GalleryGoogle.apk \
    vendor/liquid/prebuilt/common/app/GenieWidget.apk:system/app/GenieWidget.apk \
    vendor/liquid/prebuilt/common/app/GoogleBackupTransport.apk:system/app/GoogleBackupTransport.apk \
    vendor/liquid/prebuilt/common/app/GoogleCalendarSyncAdapter.apk:system/app/GoogleCalendarSyncAdapter.apk \
    vendor/liquid/prebuilt/common/app/GoogleContactsSyncAdapter.apk:system/app/GoogleContactsSyncAdapter.apk \
    vendor/liquid/prebuilt/common/app/GoogleFeedback.apk:system/app/GoogleFeedback.apk \
    vendor/liquid/prebuilt/common/app/GoogleLoginService.apk:system/app/GoogleLoginService.apk \
    vendor/liquid/prebuilt/common/app/GooglePartnerSetup.apk:system/app/GooglePartnerSetup.apk \
    vendor/liquid/prebuilt/common/app/GoogleQuickSearchBox.apk:system/app/GoogleQuickSearchBox.apk \
    vendor/liquid/prebuilt/common/app/GoogleServicesFramework.apk:system/app/GoogleServicesFramework.apk \
    vendor/liquid/prebuilt/common/app/LatinImeGoogle.apk:system/app/LatinImeGoogle.apk \
    vendor/liquid/prebuilt/common/app/MarketUpdater.apk:system/app/MarketUpdater.apk \
    vendor/liquid/prebuilt/common/app/MediaUploader.apk:system/app/MediaUploader.apk \
    vendor/liquid/prebuilt/common/app/NetworkLocation.apk:system/app/NetworkLocation.apk \
    vendor/liquid/prebuilt/common/app/OneTimeInitializer.apk:system/app/OneTimeInitializer.apk \
    vendor/liquid/prebuilt/common/app/Phonesky.apk:system/app/Phonesky.apk \
    vendor/liquid/prebuilt/common/app/SetupWizard.apk:system/app/SetupWizard.apk \
    vendor/liquid/prebuilt/common/app/Superuser.apk:system/app/Superuser.apk \
    vendor/liquid/prebuilt/common/app/Talk.apk:system/app/Talk.apk \
    vendor/liquid/prebuilt/common/app/Torch.apk:system/app/Torch.apk \
    vendor/liquid/prebuilt/common/app/VoiceSearch.apk:system/app/VoiceSearch.apk

# library
PRODUCT_COPY_FILES += \
    vendor/liquid/prebuilt/common/lib/libextdisp.so:system/lib/libextdisp.so \
    vendor/liquid/prebuilt/common/lib/libhdmi.so:system/lib/libhdmi.so \
    vendor/liquid/prebuilt/common/lib/libpicowrapper.so:system/lib/libpicowrapper.so \
    vendor/liquid/prebuilt/common/lib/libvoicesearch.so:system/lib/libvoicesearch.so \
    vendor/liquid/prebuilt/common/lib/libspeexwrapper.so:system/lib/libspeexwrapper.so \
    vendor/liquid/prebuilt/common/lib/libvideochat_jni.so:system/lib/libvideochat_jni.so \
    vendor/liquid/prebuilt/common/lib/libvideochat_stabilize.so:system/lib/libvideochat_stabilize.so \
    vendor/liquid/prebuilt/common/lib/libflint_engine_jni_api.so:system/lib/libflint_engine_jni_api.so \
    vendor/liquid/prebuilt/common/lib/libfilterpack_facedetect.so:system/lib/libfilterpack_facedetect.so \
    vendor/liquid/prebuilt/common/lib/libOMX.TI.JPEG.decoder.so:system/lib/libOMX.TI.JPEG.decoder.so \
    vendor/liquid/prebuilt/common/lib/libOMX.TI.VPP.so:system/lib/libOMX.TI.VPP.so \
    vendor/liquid/prebuilt/common/lib/libjni_latinimegoogle.so:system/lib/libjni_latinimegoogle.so \
    vendor/liquid/prebuilt/common/lib/egl/libeglinfo.so:system/lib/egl/libeglinfo.so \
    vendor/liquid/prebuilt/common/lib/egl/libgles1_texture_stream.so:system/lib/egl/libgles1_texture_stream.so \
    vendor/liquid/prebuilt/common/lib/egl/libgles2_texture_stream.so:system/lib/egl/libgles2_texture_stream.so \
    vendor/liquid/prebuilt/common/lib/hw/lights.shadow.so:system/lib/hw/lights.shadow.so \
    vendor/liquid/prebuilt/common/lib/modules/cpufreq_BOOSTEDassV2.ko:system/lib/modules/cpufreq_BOOSTEDassV2.ko \
    vendor/liquid/prebuilt/common/lib/modules/cpufreq_conservative.ko:system/lib/modules/cpufreq_conservative.ko \
    vendor/liquid/prebuilt/common/lib/modules/cpufreq_interactive.ko:system/lib/modules/cpufreq_interactive.ko \
    vendor/liquid/prebuilt/common/lib/modules/cpufreq_interactivex.ko:system/lib/modules/cpufreq_interactivex.ko \
    vendor/liquid/prebuilt/common/lib/modules/cpufreq_ondemand.ko:system/lib/modules/cpufreq_ondemand.ko \
    vendor/liquid/prebuilt/common/lib/modules/cpufreq_performance.ko:system/lib/modules/cpufreq_performance.ko \
    vendor/liquid/prebuilt/common/lib/modules/cpufreq_powersave.ko:system/lib/modules/cpufreq_powersave.ko \
    vendor/liquid/prebuilt/common/lib/modules/cpufreq_smartass.ko:system/lib/modules/cpufreq_smartass.ko \
    vendor/liquid/prebuilt/common/lib/modules/cpufreq_smartassv2.ko:system/lib/modules/cpufreq_smartassv2.ko \
    vendor/liquid/prebuilt/common/lib/modules/cpufreq_stats.ko:system/lib/modules/cpufreq_stats.ko \
    vendor/liquid/prebuilt/common/lib/modules/cpufreq_userspace.ko:system/lib/modules/cpufreq_userspace.ko \
    vendor/liquid/prebuilt/common/lib/modules/defy_more.ko:system/lib/modules/defy_more.ko \
    vendor/liquid/prebuilt/common/lib/modules/milestone2_more.ko:system/lib/modules/milestone2_more.ko \
    vendor/liquid/prebuilt/common/lib/modules/multitouch_wiz.ko:system/lib/modules/multitouch_wiz.ko \
    vendor/liquid/prebuilt/common/lib/modules/overclock_defy.ko:system/lib/modules/overclock_defy.ko \
    vendor/liquid/prebuilt/common/lib/modules/overclock.ko:system/lib/modules/overclock.ko \
    vendor/liquid/prebuilt/common/lib/modules/symsearch_wiz.ko:system/lib/modules/symsearch_wiz.ko

# bootmenu
PRODUCT_COPY_FILES += \
    vendor/liquid/prebuilt/common/bootmenu/binary/adbd:system/bootmenu/binary/adbd \
    vendor/liquid/prebuilt/common/bootmenu/binary/adbd.root:system/bootmenu/binary/adbd.root \
    vendor/liquid/prebuilt/common/bootmenu/binary/busybox:system/bootmenu/binary/busybox \
    vendor/liquid/prebuilt/common/bootmenu/binary/lsof:system/bootmenu/binary/lsof \
    vendor/liquid/prebuilt/common/bootmenu/binary/recovery:system/bootmenu/binary/recovery \
    vendor/liquid/prebuilt/common/bootmenu/config/nvs_map_commands.txt:system/bootmenu/config/nvs_map_commands.txt \
    vendor/liquid/prebuilt/common/bootmenu/config/overclock.conf:system/bootmenu/config/overclock.conf \
    vendor/liquid/prebuilt/common/bootmenu/fixes/09multitouch-2pt:system/bootmenu/fixes/09multitouch-2pt \
    vendor/liquid/prebuilt/common/bootmenu/fixes/09multitouch-8pt:system/bootmenu/fixes/09multitouch-8pt \
    vendor/liquid/prebuilt/common/bootmenu/images/background.png:system/bootmenu/images/background.png \
    vendor/liquid/prebuilt/common/bootmenu/images/indeterminate1.png:system/bootmenu/images/indeterminate1.png \
    vendor/liquid/prebuilt/common/bootmenu/images/indeterminate2.png:system/bootmenu/images/indeterminate2.png \
    vendor/liquid/prebuilt/common/bootmenu/images/indeterminate3.png:system/bootmenu/images/indeterminate3.png \
    vendor/liquid/prebuilt/common/bootmenu/images/indeterminate4.png:system/bootmenu/images/indeterminate4.png \
    vendor/liquid/prebuilt/common/bootmenu/images/indeterminate5.png:system/bootmenu/images/indeterminate5.png \
    vendor/liquid/prebuilt/common/bootmenu/images/indeterminate6.png:system/bootmenu/images/indeterminate6.png \
    vendor/liquid/prebuilt/common/bootmenu/images/progress_empty.png:system/bootmenu/images/progress_empty.png \
    vendor/liquid/prebuilt/common/bootmenu/images/progress_fill.png:system/bootmenu/images/progress_fill.png \
    vendor/liquid/prebuilt/common/bootmenu/recovery/cwm-recovery.zip:system/bootmenu/recovery/cwm-recovery.zip \
    vendor/liquid/prebuilt/common/bootmenu/recovery/recovery.zip:system/bootmenu/recovery/recovery.zip \
    vendor/liquid/prebuilt/common/bootmenu/recovery/rzr-recovery.zip:system/bootmenu/recovery/rzr-recovery.zip \
    vendor/liquid/prebuilt/common/bootmenu/recovery/update-binary:system/bootmenu/recovery/update-binary \
    vendor/liquid/prebuilt/common/bootmenu/script/adbd.sh:system/bootmenu/script/adbd.sh \
    vendor/liquid/prebuilt/common/bootmenu/script/cdrom.sh:system/bootmenu/script/cdrom.sh \
    vendor/liquid/prebuilt/common/bootmenu/script/_config.sh:system/bootmenu/script/_config.sh \
    vendor/liquid/prebuilt/common/bootmenu/script/data.sh:system/bootmenu/script/data.sh \
    vendor/liquid/prebuilt/common/bootmenu/script/file_replace.sh:system/bootmenu/script/file_replace.sh \
    vendor/liquid/prebuilt/common/bootmenu/script/fix_hijack_boot.sh:system/bootmenu/script/fix_hijack_boot.sh \
    vendor/liquid/prebuilt/common/bootmenu/script/fix_recovery.sh:system/bootmenu/script/fix_recovery.sh \
    vendor/liquid/prebuilt/common/bootmenu/script/fix_touch_2pt.sh:system/bootmenu/script/fix_touch_2pt.sh \
    vendor/liquid/prebuilt/common/bootmenu/script/fix_touch_8pt.sh:system/bootmenu/script/fix_touch_8pt.sh \
    vendor/liquid/prebuilt/common/bootmenu/script/nvs_map_creation.sh:system/bootmenu/script/nvs_map_creation.sh \
    vendor/liquid/prebuilt/common/bootmenu/script/overclock_backup.sh:system/bootmenu/script/overclock_backup.sh \
    vendor/liquid/prebuilt/common/bootmenu/script/overclock_restore.sh:system/bootmenu/script/overclock_restore.sh \
    vendor/liquid/prebuilt/common/bootmenu/script/overclock.sh:system/bootmenu/script/overclock.sh \
    vendor/liquid/prebuilt/common/bootmenu/script/pre_bootmenu.sh:system/bootmenu/script/pre_bootmenu.sh \
    vendor/liquid/prebuilt/common/bootmenu/script/reboot_bootmenu.sh:system/bootmenu/script/reboot_bootmenu.sh \
    vendor/liquid/prebuilt/common/bootmenu/script/reboot_cwr.sh:system/bootmenu/script/reboot_cwr.sh \
    vendor/liquid/prebuilt/common/bootmenu/script/reboot_rzr.sh:system/bootmenu/script/reboot_rzr.sh \
    vendor/liquid/prebuilt/common/bootmenu/script/recovery_cwr.sh:system/bootmenu/script/recovery_cwr.sh \
    vendor/liquid/prebuilt/common/bootmenu/script/recovery_rzr.sh:system/bootmenu/script/recovery_rzr.sh \
    vendor/liquid/prebuilt/common/bootmenu/script/sdcard.sh:system/bootmenu/script/sdcard.sh \
    vendor/liquid/prebuilt/common/bootmenu/script/system.sh:system/bootmenu/script/system.sh 

# media
PRODUCT_COPY_FILES += \
    vendor/liquid/prebuilt/common/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/liquid/prebuilt/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd

# scripts
PRODUCT_COPY_FILES += \
    vendor/liquid/prebuilt/common/xbin/su:system/xbin/su \
    vendor/liquid/prebuilt/common/xbin/sysro:system/xbin/sysro \
    vendor/liquid/prebuilt/common/xbin/sysrw:system/xbin/sysrw


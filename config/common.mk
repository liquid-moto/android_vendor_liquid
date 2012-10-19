# brand
PRODUCT_BRAND ?= liquid

# build
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_DISPLAY_ID="Liquid ICS v1.5 MR2"

# overrides
PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.com.android.dateformat=MM-dd-yyyy \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dataroaming=false \
    ro.media.enc.jpeg.quality=100 \
    ro.kernel.android.checkjni=0 \
    ro.ril.disable.power.collapse=1 \
    pm.sleep_mode=1 \
    persist.sys.camera-sound=1 \
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
    vendor/liquid/prebuilt/common/bin/dspexec:system/bin/dspexec \
    vendor/liquid/prebuilt/common/bin/e2fsck:system/bin/e2fsck \
    vendor/liquid/prebuilt/common/bin/fdisk:system/bin/fdisk \
    vendor/liquid/prebuilt/common/bin/Hostapd:system/bin/Hostapd \
    vendor/liquid/prebuilt/common/bin/sysinit:system/bin/sysinit

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
    vendor/liquid/prebuilt/common/app/MarketUpdater.apk:system/app/MarketUpdater.apk \
    vendor/liquid/prebuilt/common/app/MediaUploader.apk:system/app/MediaUploader.apk \
    vendor/liquid/prebuilt/common/app/NetworkLocation.apk:system/app/NetworkLocation.apk \
    vendor/liquid/prebuilt/common/app/OneTimeInitializer.apk:system/app/OneTimeInitializer.apk \
    vendor/liquid/prebuilt/common/app/Phonesky.apk:system/app/Phonesky.apk \
    vendor/liquid/prebuilt/common/app/SetupWizard.apk:system/app/SetupWizard.apk \
    vendor/liquid/prebuilt/common/app/Talk.apk:system/app/Talk.apk \
    vendor/liquid/prebuilt/common/app/Torch.apk:system/app/Torch.apk \
    vendor/liquid/prebuilt/common/app/Usb.apk:system/app/Usb.apk \
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
    vendor/liquid/prebuilt/common/lib/dsp/720p_m4venc_sn.dll64P:system/lib/dsp/720p_m4venc_sn.dll64P \
    vendor/liquid/prebuilt/common/lib/egl/libeglinfo.so:system/lib/egl/libeglinfo.so \
    vendor/liquid/prebuilt/common/lib/egl/libgles1_texture_stream.so:system/lib/egl/libgles1_texture_stream.so \
    vendor/liquid/prebuilt/common/lib/egl/libgles2_texture_stream.so:system/lib/egl/libgles2_texture_stream.so \
    vendor/liquid/prebuilt/common/lib/hw/lights.shadow.so:system/lib/hw/lights.shadow.so

# media
PRODUCT_COPY_FILES += \
    vendor/liquid/prebuilt/common/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/liquid/prebuilt/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd

# scripts
PRODUCT_COPY_FILES += \
    vendor/liquid/prebuilt/common/xbin/su:system/xbin/su \
    vendor/liquid/prebuilt/common/xbin/sysro:system/xbin/sysro \
    vendor/liquid/prebuilt/common/xbin/sysrw:system/xbin/sysrw


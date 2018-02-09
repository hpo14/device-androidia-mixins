# libva, vaapi
PRODUCT_PACKAGES += \
    libva \
    libva-android \
    libva-egl \
    libva-tpi \
    i965_drv_video

# Audio/video codec support.
PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
    device/intel/android_ia/common/media/media_profiles.xml:system/etc/media_profiles.xml \
    device/intel/android_ia/common/media/media_codecs.xml:system/etc/media_codecs.xml \
    device/intel/android_ia/common/media/media_codecs_performance.xml:system/etc/media_codecs_performance.xml

#Enable deep buffer for video playback
PRODUCT_PROPERTY_OVERRIDES += media.stagefright.audio.deep=true

# Enable AAC 5.1 output
PRODUCT_PROPERTY_OVERRIDES += \
    media.aac_51_output_enabled=true

{{#mediasdk}}
# Enable Media Sdk

PRODUCT_PACKAGES += \
    libmfxhw32 \
    libmfxhw64 \
    libmfx_omx_core \
    libmfx_omx_components_hw \
    libstagefrighthw

PRODUCT_COPY_FILES += \
    device/intel/android_ia/common/media/mfx_omxil_core.conf:system/etc/mfx_omxil_core.conf
{{/mediasdk}}

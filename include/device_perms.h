#define PROPERTY_PERMS_APPEND \
    { "ril.cfu.querytype",AID_APP,   0 }, \
    { "mux.",             AID_RADIO,    0 }, \
    { "bwc.mm.",          AID_SYSTEM,   0 }, \
    { "gps.",             AID_GPS,     AID_SYSTEM }, \
    { "persist.af.",      AID_MEDIA,   0 }, \
    { "af.",              AID_MEDIA,   0 }, \
    { "a2dp.",            AID_MEDIA,   0 }, \
    { "streamin.",        AID_MEDIA,   0 }, \
    { "streamout.",       AID_MEDIA,   0 }, \
    { "bwc.mm.",          AID_MEDIA,   0 }, \
    { "mediatek.",        AID_RADIO,   0 }, \
    { "bt.",              AID_BLUETOOTH,    0 }, \
    { "persist.mtk.wcn.combo.",AID_SYSTEM,    0 }, \
    { "nvram_init",       AID_NVRAM,   0 }, \
    { "persist.mtklog.",  AID_SHELL,   0 },

#define CONTROL_PERMS_APPEND \
    { "muxreport-daemon", AID_RADIO, AID_RADIO }, \
    { "md_minilog_util", AID_RADIO, AID_RADIO}, \
    { "sysctl", AID_SHELL, AID_SHELL},

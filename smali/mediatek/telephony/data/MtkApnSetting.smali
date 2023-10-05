.class public Lmediatek/telephony/data/MtkApnSetting;
.super Landroid/telephony/data/ApnSetting;
.source "MtkApnSetting.java"


# static fields
.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "MtkApnSetting"

.field private static final MTK_SUPPORTED_APN_TYPES:[I

.field public static final MVNO_TYPE_PNN:I = 0x4

.field public static final TYPE_BIP:I = 0x2000

.field public static final TYPE_RCS:I = 0x1000

.field public static final TYPE_VSIM:I = 0x4000

.field private static final VDBG:Z


# instance fields
.field public final inactiveTimer:I

.field public final oppoPaidSelect:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 59
    const-string v0, "ro.build.type"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lmediatek/telephony/data/MtkApnSetting;->VDBG:Z

    .line 80
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lmediatek/telephony/data/MtkApnSetting;->MTK_SUPPORTED_APN_TYPES:[I

    .line 102
    sget-object v0, Lmediatek/telephony/data/MtkApnSetting;->APN_TYPE_STRING_MAP:Ljava/util/Map;

    const/16 v1, 0x1000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "rcs"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lmediatek/telephony/data/MtkApnSetting;->APN_TYPE_STRING_MAP:Ljava/util/Map;

    const/16 v2, 0x2000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "bip"

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lmediatek/telephony/data/MtkApnSetting;->APN_TYPE_STRING_MAP:Ljava/util/Map;

    const/16 v4, 0x4000

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "vsim"

    invoke-interface {v0, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lmediatek/telephony/data/MtkApnSetting;->APN_TYPE_INT_MAP:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lmediatek/telephony/data/MtkApnSetting;->APN_TYPE_INT_MAP:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lmediatek/telephony/data/MtkApnSetting;->APN_TYPE_INT_MAP:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lmediatek/telephony/data/MtkApnSetting;->MVNO_TYPE_STRING_MAP:Ljava/util/Map;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "pnn"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lmediatek/telephony/data/MtkApnSetting;->MVNO_TYPE_INT_MAP:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    return-void

    :array_0
    .array-data 4
        0x11
        0x2
        0x20
        0x40
        0x80
        0x4
        0x200
        0x800
    .end array-data
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/net/Uri;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IIIIZIIZIIIIILjava/lang/String;IIII)V
    .locals 16
    .param p1, "id"    # I
    .param p2, "operatorNumeric"    # Ljava/lang/String;
    .param p3, "entryName"    # Ljava/lang/String;
    .param p4, "apnName"    # Ljava/lang/String;
    .param p5, "proxyAddress"    # Ljava/lang/String;
    .param p6, "proxyPort"    # I
    .param p7, "mmsc"    # Landroid/net/Uri;
    .param p8, "mmsProxyAddress"    # Ljava/lang/String;
    .param p9, "mmsProxyPort"    # I
    .param p10, "user"    # Ljava/lang/String;
    .param p11, "password"    # Ljava/lang/String;
    .param p12, "authType"    # I
    .param p13, "apnTypeBitmask"    # I
    .param p14, "protocol"    # I
    .param p15, "roamingProtocol"    # I
    .param p16, "carrierEnabled"    # Z
    .param p17, "networkTypeBitmask"    # I
    .param p18, "profileId"    # I
    .param p19, "modemCognitive"    # Z
    .param p20, "maxConns"    # I
    .param p21, "waitTime"    # I
    .param p22, "maxConnsTime"    # I
    .param p23, "mtu"    # I
    .param p24, "mvnoType"    # I
    .param p25, "mvnoMatchData"    # Ljava/lang/String;
    .param p26, "apnSetId"    # I
    .param p27, "carrierId"    # I
    .param p28, "skip464xlat"    # I
    .param p29, "inactiveTimer"    # I

    .line 120
    move-object/from16 v0, p0

    new-instance v1, Landroid/telephony/data/ApnSetting$Builder;

    invoke-direct {v1}, Landroid/telephony/data/ApnSetting$Builder;-><init>()V

    .line 121
    move/from16 v2, p1

    invoke-virtual {v1, v2}, Landroid/telephony/data/ApnSetting$Builder;->setId(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v1

    .line 122
    move-object/from16 v3, p2

    invoke-virtual {v1, v3}, Landroid/telephony/data/ApnSetting$Builder;->setOperatorNumeric(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v1

    .line 123
    move-object/from16 v4, p3

    invoke-virtual {v1, v4}, Landroid/telephony/data/ApnSetting$Builder;->setEntryName(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v1

    .line 124
    move-object/from16 v5, p4

    invoke-virtual {v1, v5}, Landroid/telephony/data/ApnSetting$Builder;->setApnName(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v1

    .line 125
    move-object/from16 v6, p5

    invoke-virtual {v1, v6}, Landroid/telephony/data/ApnSetting$Builder;->setProxyAddress(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v1

    .line 126
    move/from16 v7, p6

    invoke-virtual {v1, v7}, Landroid/telephony/data/ApnSetting$Builder;->setProxyPort(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v1

    .line 127
    move-object/from16 v8, p7

    invoke-virtual {v1, v8}, Landroid/telephony/data/ApnSetting$Builder;->setMmsc(Landroid/net/Uri;)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v1

    .line 128
    move-object/from16 v9, p8

    invoke-virtual {v1, v9}, Landroid/telephony/data/ApnSetting$Builder;->setMmsProxyAddress(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v1

    .line 129
    move/from16 v10, p9

    invoke-virtual {v1, v10}, Landroid/telephony/data/ApnSetting$Builder;->setMmsProxyPort(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v1

    .line 130
    move-object/from16 v11, p10

    invoke-virtual {v1, v11}, Landroid/telephony/data/ApnSetting$Builder;->setUser(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v1

    .line 131
    move-object/from16 v12, p11

    invoke-virtual {v1, v12}, Landroid/telephony/data/ApnSetting$Builder;->setPassword(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v1

    .line 132
    move/from16 v13, p12

    invoke-virtual {v1, v13}, Landroid/telephony/data/ApnSetting$Builder;->setAuthType(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v1

    .line 133
    move/from16 v14, p13

    invoke-virtual {v1, v14}, Landroid/telephony/data/ApnSetting$Builder;->setApnTypeBitmask(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v1

    .line 134
    move/from16 v15, p14

    invoke-virtual {v1, v15}, Landroid/telephony/data/ApnSetting$Builder;->setProtocol(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v1

    .line 135
    move/from16 v2, p15

    invoke-virtual {v1, v2}, Landroid/telephony/data/ApnSetting$Builder;->setRoamingProtocol(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v1

    .line 136
    move/from16 v2, p16

    invoke-virtual {v1, v2}, Landroid/telephony/data/ApnSetting$Builder;->setCarrierEnabled(Z)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v1

    .line 137
    move/from16 v2, p17

    invoke-virtual {v1, v2}, Landroid/telephony/data/ApnSetting$Builder;->setNetworkTypeBitmask(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v1

    .line 138
    move/from16 v2, p18

    invoke-virtual {v1, v2}, Landroid/telephony/data/ApnSetting$Builder;->setProfileId(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v1

    .line 139
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/telephony/data/ApnSetting$Builder;->setModemCognitive(Z)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v1

    .line 140
    move/from16 v2, p20

    invoke-virtual {v1, v2}, Landroid/telephony/data/ApnSetting$Builder;->setMaxConns(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v1

    .line 141
    move/from16 v2, p21

    invoke-virtual {v1, v2}, Landroid/telephony/data/ApnSetting$Builder;->setWaitTime(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v1

    .line 142
    move/from16 v2, p22

    invoke-virtual {v1, v2}, Landroid/telephony/data/ApnSetting$Builder;->setMaxConnsTime(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v1

    .line 143
    move/from16 v2, p23

    invoke-virtual {v1, v2}, Landroid/telephony/data/ApnSetting$Builder;->setMtu(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v1

    .line 144
    move/from16 v2, p24

    invoke-virtual {v1, v2}, Landroid/telephony/data/ApnSetting$Builder;->setMvnoType(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v1

    .line 145
    move-object/from16 v2, p25

    invoke-virtual {v1, v2}, Landroid/telephony/data/ApnSetting$Builder;->setMvnoMatchData(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v1

    .line 146
    move/from16 v2, p26

    invoke-virtual {v1, v2}, Landroid/telephony/data/ApnSetting$Builder;->setApnSetId(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v1

    .line 147
    move/from16 v2, p27

    invoke-virtual {v1, v2}, Landroid/telephony/data/ApnSetting$Builder;->setCarrierId(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v1

    .line 148
    move/from16 v2, p28

    invoke-virtual {v1, v2}, Landroid/telephony/data/ApnSetting$Builder;->setSkip464Xlat(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v1

    .line 120
    invoke-direct {v0, v1}, Landroid/telephony/data/ApnSetting;-><init>(Landroid/telephony/data/ApnSetting$Builder;)V

    .line 149
    move/from16 v1, p29

    iput v1, v0, Lmediatek/telephony/data/MtkApnSetting;->inactiveTimer:I

    .line 152
    const-string v1, ""

    iput-object v1, v0, Lmediatek/telephony/data/MtkApnSetting;->oppoPaidSelect:Ljava/lang/String;

    .line 154
    return-void
.end method

.method private static emptyToNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "stringValue"    # Ljava/lang/String;

    .line 285
    const-string v0, ""

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method private static fromStringEx([Ljava/lang/String;IIIIZIIZIIIIILjava/lang/String;III)Landroid/telephony/data/ApnSetting;
    .locals 35
    .param p0, "a"    # [Ljava/lang/String;
    .param p1, "authType"    # I
    .param p2, "apnTypeBitmask"    # I
    .param p3, "protocol"    # I
    .param p4, "roamingProtocol"    # I
    .param p5, "carrierEnabled"    # Z
    .param p6, "networkTypeBitmask"    # I
    .param p7, "profileId"    # I
    .param p8, "modemCognitive"    # Z
    .param p9, "maxConns"    # I
    .param p10, "waitTime"    # I
    .param p11, "maxConnsTime"    # I
    .param p12, "mtu"    # I
    .param p13, "mvnoType"    # I
    .param p14, "mvnoMatchData"    # Ljava/lang/String;
    .param p15, "apnSetId"    # I
    .param p16, "carrierId"    # I
    .param p17, "skip464xlat"    # I

    .line 220
    move-object/from16 v1, p0

    const/4 v2, 0x0

    .line 221
    .local v2, "inactiveTimer":I
    array-length v0, v1

    const/16 v3, 0x1e

    if-le v0, v3, :cond_0

    .line 223
    :try_start_0
    aget-object v0, v1, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v0

    .line 226
    goto :goto_0

    .line 224
    :catch_0
    move-exception v0

    .line 225
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NumberFormatException, inactive timer = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v1, v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MtkApnSetting"

    invoke-static {v4, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    :goto_0
    new-instance v0, Lmediatek/telephony/data/MtkApnSetting;

    move-object v5, v0

    const/4 v6, -0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0xa

    aget-object v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0xb

    aget-object v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v3, 0x0

    aget-object v8, v1, v3

    const/4 v3, 0x1

    aget-object v9, v1, v3

    const/4 v3, 0x2

    aget-object v10, v1, v3

    const/4 v3, 0x3

    aget-object v3, v1, v3

    invoke-static {v3}, Lmediatek/telephony/data/MtkApnSetting;->portFromString(Ljava/lang/String;)I

    move-result v11

    const/4 v3, 0x7

    aget-object v3, v1, v3

    .line 230
    invoke-static {v3}, Lmediatek/telephony/data/MtkApnSetting;->UriFromString(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    const/16 v3, 0x8

    aget-object v13, v1, v3

    const/16 v3, 0x9

    aget-object v3, v1, v3

    invoke-static {v3}, Lmediatek/telephony/data/MtkApnSetting;->portFromString(Ljava/lang/String;)I

    move-result v14

    const/4 v3, 0x4

    aget-object v15, v1, v3

    const/4 v3, 0x5

    aget-object v16, v1, v3

    move/from16 v17, p1

    move/from16 v18, p2

    move/from16 v19, p3

    move/from16 v20, p4

    move/from16 v21, p5

    move/from16 v22, p6

    move/from16 v23, p7

    move/from16 v24, p8

    move/from16 v25, p9

    move/from16 v26, p10

    move/from16 v27, p11

    move/from16 v28, p12

    move/from16 v29, p13

    move-object/from16 v30, p14

    move/from16 v31, p15

    move/from16 v32, p16

    move/from16 v33, p17

    move/from16 v34, v2

    invoke-direct/range {v5 .. v34}, Lmediatek/telephony/data/MtkApnSetting;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/net/Uri;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IIIIZIIZIIIIILjava/lang/String;IIII)V

    .line 229
    return-object v0
.end method

.method public static makeApnSetting(Landroid/database/Cursor;I)Landroid/telephony/data/ApnSetting;
    .locals 34
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "inactiveTimer"    # I

    .line 157
    move-object/from16 v0, p0

    .line 158
    const-string v1, "type"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 157
    invoke-static {v1}, Lmediatek/telephony/data/MtkApnSetting;->getApnTypesBitmaskFromString(Ljava/lang/String;)I

    move-result v1

    .line 159
    .local v1, "apnTypesBitmask":I
    nop

    .line 160
    const-string v2, "network_type_bitmask"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 159
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 161
    .local v2, "networkTypeBitmask":I
    if-nez v2, :cond_0

    .line 162
    const-string v3, "bearer_bitmask"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 164
    .local v3, "bearerBitmask":I
    nop

    .line 165
    invoke-static {v3}, Landroid/telephony/ServiceState;->convertBearerBitmaskToNetworkTypeBitmask(I)I

    move-result v2

    move/from16 v32, v2

    goto :goto_0

    .line 161
    .end local v3    # "bearerBitmask":I
    :cond_0
    move/from16 v32, v2

    .line 168
    .end local v2    # "networkTypeBitmask":I
    .local v32, "networkTypeBitmask":I
    :goto_0
    new-instance v33, Lmediatek/telephony/data/MtkApnSetting;

    .line 169
    const-string v2, "_id"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 170
    const-string v2, "numeric"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 171
    const-string v2, "name"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 172
    const-string v2, "apn"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 174
    const-string v2, "proxy"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 173
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmediatek/telephony/data/MtkApnSetting;->emptyToNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 176
    const-string v2, "port"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 175
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmediatek/telephony/data/MtkApnSetting;->portFromString(Ljava/lang/String;)I

    move-result v8

    .line 178
    const-string v2, "mmsc"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 177
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmediatek/telephony/data/MtkApnSetting;->UriFromString(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 180
    const-string v2, "mmsproxy"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 179
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmediatek/telephony/data/MtkApnSetting;->emptyToNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 182
    const-string v2, "mmsport"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 181
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmediatek/telephony/data/MtkApnSetting;->portFromString(Ljava/lang/String;)I

    move-result v11

    .line 183
    const-string v2, "user"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 184
    const-string v2, "password"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 185
    const-string v2, "authtype"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 188
    const-string v2, "protocol"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 187
    invoke-static {v2}, Lmediatek/telephony/data/MtkApnSetting;->getProtocolIntFromString(Ljava/lang/String;)I

    move-result v16

    .line 190
    const-string v2, "roaming_protocol"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 189
    invoke-static {v2}, Lmediatek/telephony/data/MtkApnSetting;->getProtocolIntFromString(Ljava/lang/String;)I

    move-result v17

    .line 192
    const-string v2, "carrier_enabled"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v15, 0x1

    if-ne v2, v15, :cond_1

    move/from16 v19, v15

    goto :goto_1

    :cond_1
    const/16 v19, 0x0

    .line 195
    :goto_1
    const-string v2, "profile_id"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 196
    const-string v2, "modem_cognitive"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v15, :cond_2

    move/from16 v21, v15

    goto :goto_2

    :cond_2
    const/16 v21, 0x0

    .line 198
    :goto_2
    const-string v2, "max_conns"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 199
    const-string v2, "wait_time"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    .line 200
    const-string v2, "max_conns_time"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    .line 202
    const-string v2, "mtu"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    .line 204
    const-string v2, "mvno_type"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 203
    invoke-static {v2}, Lmediatek/telephony/data/MtkApnSetting;->getMvnoTypeIntFromString(Ljava/lang/String;)I

    move-result v26

    .line 206
    const-string v2, "mvno_match_data"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 208
    const-string v2, "apn_set_id"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    .line 209
    const-string v2, "carrier_id"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    .line 210
    const-string v2, "skip_464xlat"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v30

    move-object/from16 v2, v33

    move v15, v1

    move/from16 v18, v19

    move/from16 v19, v32

    move/from16 v31, p1

    invoke-direct/range {v2 .. v31}, Lmediatek/telephony/data/MtkApnSetting;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/net/Uri;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IIIIZIIZIIIIILjava/lang/String;IIII)V

    .line 168
    return-object v33
.end method


# virtual methods
.method protected hasApnType(I)Z
    .locals 4
    .param p1, "type"    # I

    .line 255
    iget v0, p0, Lmediatek/telephony/data/MtkApnSetting;->mApnTypeBitmask:I

    const/4 v1, 0x0

    const/16 v2, 0xff

    if-ne v0, v2, :cond_0

    .line 257
    const/16 v0, 0x40

    if-ne p1, v0, :cond_2

    .line 258
    return v1

    .line 272
    :cond_0
    const/16 v0, 0x8

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Lmediatek/telephony/data/MtkApnSetting;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    const-string v3, "20801"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 274
    iget v2, p0, Lmediatek/telephony/data/MtkApnSetting;->mApnTypeBitmask:I

    if-ne v2, v0, :cond_1

    .line 275
    const/4 v0, 0x1

    return v0

    .line 277
    :cond_1
    return v1

    .line 281
    :cond_2
    invoke-super {p0, p1}, Landroid/telephony/data/ApnSetting;->hasApnType(I)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 239
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-super {p0}, Landroid/telephony/data/ApnSetting;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmediatek/telephony/data/MtkApnSetting;->inactiveTimer:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 241
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 249
    invoke-super {p0, p1, p2}, Landroid/telephony/data/ApnSetting;->writeToParcel(Landroid/os/Parcel;I)V

    .line 250
    iget v0, p0, Lmediatek/telephony/data/MtkApnSetting;->inactiveTimer:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 251
    return-void
.end method

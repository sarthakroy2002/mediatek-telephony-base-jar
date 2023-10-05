.class public Landroid/telephony/MtkRadioAccessFamily;
.super Ljava/lang/Object;
.source "MtkRadioAccessFamily.java"


# static fields
.field private static final CDMA:I = 0x48

.field private static final EVDO:I = 0x2830

.field private static final GSM:I = 0x8003

.field private static final HS:I = 0x4380

.field private static final IS_SUPPORT_TDS:Z

.field private static final LTE:I = 0x41000

.field private static final NR:I = 0x80000

.field public static final RAF_1xRTT:I = 0x40

.field public static final RAF_EDGE:I = 0x2

.field public static final RAF_EHRPD:I = 0x2000

.field public static final RAF_EVDO_0:I = 0x10

.field public static final RAF_EVDO_A:I = 0x20

.field public static final RAF_EVDO_B:I = 0x800

.field public static final RAF_GPRS:I = 0x1

.field public static final RAF_GSM:I = 0x8000

.field public static final RAF_HSDPA:I = 0x80

.field public static final RAF_HSPA:I = 0x200

.field public static final RAF_HSPAP:I = 0x4000

.field public static final RAF_HSUPA:I = 0x100

.field public static final RAF_IS95A:I = 0x8

.field public static final RAF_IS95B:I = 0x8

.field public static final RAF_LTE:I = 0x1000

.field public static final RAF_LTE_CA:I = 0x40000

.field public static final RAF_NR:I = 0x80000

.field public static final RAF_TD_SCDMA:I = 0x10000

.field public static final RAF_UMTS:I = 0x4

.field public static final RAF_UNKNOWN:I = 0x0

.field private static final WCDMA:I = 0x4384


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 93
    const-string v0, "ro.vendor.mtk_protocol1_rat_config"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "T"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Landroid/telephony/MtkRadioAccessFamily;->IS_SUPPORT_TDS:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getAdjustedRaf(I)I
    .locals 2
    .param p0, "raf"    # I

    .line 198
    const v0, 0x8003

    and-int v1, p0, v0

    if-lez v1, :cond_0

    or-int/2addr v0, p0

    goto :goto_0

    :cond_0
    move v0, p0

    :goto_0
    move p0, v0

    .line 199
    and-int/lit16 v0, p0, 0x4384

    if-lez v0, :cond_1

    or-int/lit16 v0, p0, 0x4384

    goto :goto_1

    :cond_1
    move v0, p0

    :goto_1
    move p0, v0

    .line 200
    and-int/lit8 v0, p0, 0x48

    if-lez v0, :cond_2

    or-int/lit8 v0, p0, 0x48

    goto :goto_2

    :cond_2
    move v0, p0

    :goto_2
    move p0, v0

    .line 201
    and-int/lit16 v0, p0, 0x2830

    if-lez v0, :cond_3

    or-int/lit16 v0, p0, 0x2830

    goto :goto_3

    :cond_3
    move v0, p0

    :goto_3
    move p0, v0

    .line 202
    const v0, 0x41000

    and-int v1, p0, v0

    if-lez v1, :cond_4

    or-int/2addr v0, p0

    goto :goto_4

    :cond_4
    move v0, p0

    :goto_4
    move p0, v0

    .line 203
    const/high16 v0, 0x80000

    and-int v1, p0, v0

    if-lez v1, :cond_5

    or-int/2addr v0, p0

    goto :goto_5

    :cond_5
    move v0, p0

    :goto_5
    move p0, v0

    .line 205
    return p0
.end method

.method public static getNetworkTypeFromRaf(I)I
    .locals 1
    .param p0, "raf"    # I

    .line 212
    sget-boolean v0, Landroid/telephony/MtkRadioAccessFamily;->IS_SUPPORT_TDS:Z

    if-nez v0, :cond_0

    .line 213
    invoke-static {p0}, Landroid/telephony/RadioAccessFamily;->getNetworkTypeFromRaf(I)I

    move-result v0

    return v0

    .line 216
    :cond_0
    invoke-static {p0}, Landroid/telephony/MtkRadioAccessFamily;->getAdjustedRaf(I)I

    move-result p0

    .line 218
    sparse-switch p0, :sswitch_data_0

    .line 294
    sget v0, Lcom/android/internal/telephony/RILConstants;->PREFERRED_NETWORK_MODE:I

    return v0

    .line 284
    :sswitch_0
    const/16 v0, 0x21

    return v0

    .line 282
    :sswitch_1
    const/16 v0, 0x20

    return v0

    .line 278
    :sswitch_2
    const/16 v0, 0x1e

    return v0

    .line 280
    :sswitch_3
    const/16 v0, 0x1f

    return v0

    .line 276
    :sswitch_4
    const/16 v0, 0x1d

    return v0

    .line 272
    :sswitch_5
    const/16 v0, 0x1b

    return v0

    .line 270
    :sswitch_6
    const/16 v0, 0x1a

    return v0

    .line 274
    :sswitch_7
    const/16 v0, 0x1c

    return v0

    .line 268
    :sswitch_8
    const/16 v0, 0x19

    return v0

    .line 266
    :sswitch_9
    const/16 v0, 0x18

    return v0

    .line 264
    :sswitch_a
    const/16 v0, 0x17

    return v0

    .line 262
    :sswitch_b
    const/16 v0, 0x16

    return v0

    .line 258
    :sswitch_c
    const/16 v0, 0x14

    return v0

    .line 252
    :sswitch_d
    const/16 v0, 0x11

    return v0

    .line 256
    :sswitch_e
    const/16 v0, 0x13

    return v0

    .line 248
    :sswitch_f
    const/16 v0, 0xf

    return v0

    .line 232
    :sswitch_10
    const/16 v0, 0xa

    return v0

    .line 230
    :sswitch_11
    const/16 v0, 0x9

    return v0

    .line 292
    :sswitch_12
    const/16 v0, 0x69

    return v0

    .line 286
    :sswitch_13
    const/16 v0, 0x65

    return v0

    .line 236
    :sswitch_14
    const/16 v0, 0xc

    return v0

    .line 228
    :sswitch_15
    const/16 v0, 0x8

    return v0

    .line 234
    :sswitch_16
    const/16 v0, 0xb

    return v0

    .line 260
    :sswitch_17
    const/16 v0, 0x15

    return v0

    .line 254
    :sswitch_18
    const/16 v0, 0x12

    return v0

    .line 250
    :sswitch_19
    const/16 v0, 0x10

    return v0

    .line 246
    :sswitch_1a
    const/16 v0, 0xe

    return v0

    .line 244
    :sswitch_1b
    const/16 v0, 0xd

    return v0

    .line 242
    :sswitch_1c
    const/4 v0, 0x7

    return v0

    .line 220
    :sswitch_1d
    const/4 v0, 0x0

    return v0

    .line 290
    :sswitch_1e
    const/16 v0, 0x68

    return v0

    .line 288
    :sswitch_1f
    const/16 v0, 0x67

    return v0

    .line 222
    :sswitch_20
    const/4 v0, 0x1

    return v0

    .line 224
    :sswitch_21
    const/4 v0, 0x2

    return v0

    .line 226
    :sswitch_22
    const/4 v0, 0x4

    return v0

    .line 240
    :sswitch_23
    const/4 v0, 0x6

    return v0

    .line 238
    :sswitch_24
    const/4 v0, 0x5

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x48 -> :sswitch_24
        0x2830 -> :sswitch_23
        0x2878 -> :sswitch_22
        0x4384 -> :sswitch_21
        0x8003 -> :sswitch_20
        0x804b -> :sswitch_1f
        0xa87b -> :sswitch_1e
        0xc387 -> :sswitch_1d
        0xebff -> :sswitch_1c
        0x10000 -> :sswitch_1b
        0x14384 -> :sswitch_1a
        0x18003 -> :sswitch_19
        0x1c387 -> :sswitch_18
        0x1ebff -> :sswitch_17
        0x41000 -> :sswitch_16
        0x43878 -> :sswitch_15
        0x45384 -> :sswitch_14
        0x49003 -> :sswitch_13
        0x4b87b -> :sswitch_12
        0x4d387 -> :sswitch_11
        0x4fbff -> :sswitch_10
        0x51000 -> :sswitch_f
        0x55384 -> :sswitch_e
        0x59003 -> :sswitch_d
        0x5d387 -> :sswitch_c
        0x5fbff -> :sswitch_b
        0x80000 -> :sswitch_a
        0xc1000 -> :sswitch_9
        0xc3878 -> :sswitch_8
        0xc5384 -> :sswitch_7
        0xcd387 -> :sswitch_6
        0xcfbff -> :sswitch_5
        0xd1000 -> :sswitch_4
        0xd5384 -> :sswitch_3
        0xd9003 -> :sswitch_2
        0xdd387 -> :sswitch_1
        0xdfbff -> :sswitch_0
    .end sparse-switch
.end method

.method public static getRafFromNetworkType(I)I
    .locals 2
    .param p0, "type"    # I

    .line 105
    sget-boolean v0, Landroid/telephony/MtkRadioAccessFamily;->IS_SUPPORT_TDS:Z

    if-nez v0, :cond_0

    .line 106
    invoke-static {p0}, Landroid/telephony/RadioAccessFamily;->getRafFromNetworkType(I)I

    move-result v0

    return v0

    .line 109
    :cond_0
    const v0, 0x41000

    const v1, 0xc387

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    .line 189
    const/4 v0, 0x0

    return v0

    .line 187
    :pswitch_0
    const v0, 0x4b87b

    return v0

    .line 185
    :pswitch_1
    const v0, 0xa87b

    return v0

    .line 183
    :pswitch_2
    const v0, 0x804b

    return v0

    .line 181
    :pswitch_3
    return v0

    .line 179
    :pswitch_4
    const v0, 0x49003

    return v0

    .line 177
    :pswitch_5
    const v0, 0xdfbff

    return v0

    .line 175
    :pswitch_6
    const v0, 0xdd387

    return v0

    .line 173
    :pswitch_7
    const v0, 0xd5384

    return v0

    .line 171
    :pswitch_8
    const v0, 0xd9003

    return v0

    .line 169
    :pswitch_9
    const v0, 0xd1000

    return v0

    .line 167
    :pswitch_a
    const v0, 0xc5384

    return v0

    .line 165
    :pswitch_b
    const v0, 0xcfbff

    return v0

    .line 163
    :pswitch_c
    const v0, 0xcd387

    return v0

    .line 161
    :pswitch_d
    const v0, 0xc3878

    return v0

    .line 159
    :pswitch_e
    const v0, 0xc1000

    return v0

    .line 157
    :pswitch_f
    const/high16 v0, 0x80000

    return v0

    .line 155
    :pswitch_10
    const v0, 0x5fbff

    return v0

    .line 153
    :pswitch_11
    const v0, 0x1ebff

    return v0

    .line 151
    :pswitch_12
    const v0, 0x5d387

    return v0

    .line 149
    :pswitch_13
    const v0, 0x55384

    return v0

    .line 147
    :pswitch_14
    const v0, 0x1c387

    return v0

    .line 145
    :pswitch_15
    const v0, 0x59003

    return v0

    .line 143
    :pswitch_16
    const v0, 0x18003

    return v0

    .line 141
    :pswitch_17
    const v0, 0x51000

    return v0

    .line 139
    :pswitch_18
    const v0, 0x14384

    return v0

    .line 137
    :pswitch_19
    const/high16 v0, 0x10000

    return v0

    .line 129
    :pswitch_1a
    const v0, 0x45384

    return v0

    .line 127
    :pswitch_1b
    return v0

    .line 125
    :pswitch_1c
    const v0, 0x4fbff

    return v0

    .line 123
    :pswitch_1d
    const v0, 0x4d387

    return v0

    .line 121
    :pswitch_1e
    const v0, 0x43878

    return v0

    .line 135
    :pswitch_1f
    const v0, 0xebff

    return v0

    .line 133
    :pswitch_20
    const/16 v0, 0x2830

    return v0

    .line 131
    :pswitch_21
    const/16 v0, 0x48

    return v0

    .line 119
    :pswitch_22
    const/16 v0, 0x2878

    return v0

    .line 117
    :pswitch_23
    return v1

    .line 115
    :pswitch_24
    const/16 v0, 0x4384

    return v0

    .line 113
    :pswitch_25
    const v0, 0x8003

    return v0

    .line 111
    :pswitch_26
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x65
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

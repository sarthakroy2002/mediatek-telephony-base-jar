.class public Lcom/mediatek/internal/telephony/SignalStrengthExt;
.super Ljava/lang/Object;
.source "SignalStrengthExt.java"

# interfaces
.implements Lmediatek/telephony/ISignalStrengthExt;


# static fields
.field private static final DBG:Z = true

.field static final TAG:Ljava/lang/String; = "SignalStrengthExt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    return-void
.end method

.method public static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "text"    # Ljava/lang/String;

    .line 171
    const-string v0, "SignalStrengthExt"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "txt"    # Ljava/lang/String;

    .line 176
    const-string v0, "SignalStrengthExt"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    return-void
.end method


# virtual methods
.method public mapLteSignalLevel(III)I
    .locals 6
    .param p1, "mLteRsrp"    # I
    .param p2, "mLteRssnr"    # I
    .param p3, "mLteSignalStrength"    # I

    .line 94
    const/4 v0, 0x0

    .line 95
    .local v0, "rssiIconLevel":I
    const/4 v1, -0x1

    .line 96
    .local v1, "rsrpIconLevel":I
    const/4 v2, -0x1

    .line 98
    .local v2, "snrIconLevel":I
    const/16 v3, -0x2c

    if-le p1, v3, :cond_0

    .line 99
    const/4 v1, -0x1

    goto :goto_0

    .line 100
    :cond_0
    const/16 v3, -0x55

    if-lt p1, v3, :cond_1

    .line 101
    const/4 v1, 0x4

    goto :goto_0

    .line 102
    :cond_1
    const/16 v3, -0x5f

    if-lt p1, v3, :cond_2

    .line 103
    const/4 v1, 0x3

    goto :goto_0

    .line 104
    :cond_2
    const/16 v3, -0x69

    if-lt p1, v3, :cond_3

    .line 105
    const/4 v1, 0x2

    goto :goto_0

    .line 106
    :cond_3
    const/16 v3, -0x73

    if-lt p1, v3, :cond_4

    .line 107
    const/4 v1, 0x1

    goto :goto_0

    .line 108
    :cond_4
    const/16 v3, -0x8c

    if-lt p1, v3, :cond_5

    .line 109
    const/4 v1, 0x0

    .line 118
    :cond_5
    :goto_0
    const/16 v3, 0x12c

    if-le p2, v3, :cond_6

    .line 119
    const/4 v2, -0x1

    goto :goto_1

    .line 120
    :cond_6
    const/16 v3, 0x82

    if-lt p2, v3, :cond_7

    .line 121
    const/4 v2, 0x4

    goto :goto_1

    .line 122
    :cond_7
    const/16 v3, 0x2d

    if-lt p2, v3, :cond_8

    .line 123
    const/4 v2, 0x3

    goto :goto_1

    .line 124
    :cond_8
    const/16 v3, 0xa

    if-lt p2, v3, :cond_9

    .line 125
    const/4 v2, 0x2

    goto :goto_1

    .line 126
    :cond_9
    const/16 v3, -0x1e

    if-lt p2, v3, :cond_a

    .line 127
    const/4 v2, 0x1

    goto :goto_1

    .line 128
    :cond_a
    const/16 v3, -0xc8

    if-lt p2, v3, :cond_b

    .line 129
    const/4 v2, 0x0

    .line 131
    :cond_b
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLTELevel - rsrp:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " snr:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " rsrpIconLevel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " snrIconLevel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SignalStrengthExt"

    invoke-static {v4, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const/4 v3, -0x1

    if-eq v2, v3, :cond_d

    if-eq v1, v3, :cond_d

    .line 141
    if-ge v1, v2, :cond_c

    move v3, v1

    goto :goto_2

    :cond_c
    move v3, v2

    :goto_2
    return v3

    .line 144
    :cond_d
    if-eq v2, v3, :cond_e

    .line 145
    return v2

    .line 148
    :cond_e
    if-eq v1, v3, :cond_f

    .line 149
    return v1

    .line 153
    :cond_f
    const/16 v3, 0x3f

    if-le p3, v3, :cond_10

    .line 154
    const/4 v0, 0x0

    goto :goto_3

    .line 155
    :cond_10
    const/16 v3, 0xc

    if-lt p3, v3, :cond_11

    .line 156
    const/4 v0, 0x4

    goto :goto_3

    .line 157
    :cond_11
    const/16 v3, 0x8

    if-lt p3, v3, :cond_12

    .line 158
    const/4 v0, 0x3

    goto :goto_3

    .line 159
    :cond_12
    const/4 v3, 0x5

    if-lt p3, v3, :cond_13

    .line 160
    const/4 v0, 0x2

    goto :goto_3

    .line 161
    :cond_13
    if-ltz p3, :cond_14

    .line 162
    const/4 v0, 0x1

    .line 164
    :cond_14
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getLTELevel - rssi:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " rssiIconLevel:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    return v0
.end method

.method public mapUmtsSignalLevel(II)I
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "UmtsRscp"    # I

    .line 63
    const/4 v0, 0x0

    .line 64
    .local v0, "isTdd3G":Z
    const/4 v1, 0x0

    .line 66
    .local v1, "level":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mapUmtsSignalLevel, phoneId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/SignalStrengthExt;->log(Ljava/lang/String;)V

    .line 69
    const/16 v2, -0x19

    if-gt p2, v2, :cond_5

    const v2, 0x7fffffff

    if-ne p2, v2, :cond_0

    goto :goto_0

    .line 71
    :cond_0
    const/16 v2, -0x48

    if-lt p2, v2, :cond_1

    .line 72
    const/4 v1, 0x4

    goto :goto_1

    .line 73
    :cond_1
    const/16 v2, -0x58

    if-lt p2, v2, :cond_2

    .line 74
    const/4 v1, 0x3

    goto :goto_1

    .line 75
    :cond_2
    const/16 v2, -0x68

    if-lt p2, v2, :cond_3

    .line 76
    const/4 v1, 0x2

    goto :goto_1

    .line 77
    :cond_3
    const/16 v2, -0x78

    if-lt p2, v2, :cond_4

    .line 78
    const/4 v1, 0x1

    goto :goto_1

    .line 80
    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    .line 70
    :cond_5
    :goto_0
    const/4 v1, 0x0

    .line 81
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mapUmtsSignalLevel, level="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/SignalStrengthExt;->log(Ljava/lang/String;)V

    .line 82
    return v1
.end method

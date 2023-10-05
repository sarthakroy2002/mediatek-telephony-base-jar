.class public Lcom/mediatek/internal/telephony/MtkIccUtils;
.super Lcom/android/internal/telephony/uicc/IccUtils;
.source "MtkIccUtils.java"


# static fields
.field static final MTK_LOG_TAG:Ljava/lang/String; = "MtkIccUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/IccUtils;-><init>()V

    return-void
.end method

.method public static parseLanguageIndicator([BII)Ljava/lang/String;
    .locals 3
    .param p0, "rawData"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 109
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 110
    return-object v0

    .line 113
    :cond_0
    array-length v1, p0

    add-int v2, p1, p2

    if-ge v1, v2, :cond_1

    .line 114
    const-string v1, "MtkIccUtils"

    const-string v2, "length is invalid"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    return-object v0

    .line 118
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static parsePlmnToString([BII)Ljava/lang/String;
    .locals 4
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    mul-int/lit8 v1, p2, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 131
    .local v0, "ret":Ljava/lang/StringBuilder;
    aget-byte v1, p0, p1

    and-int/lit8 v1, v1, 0xf

    .line 132
    .local v1, "v":I
    const/16 v2, 0x9

    if-le v1, v2, :cond_0

    goto :goto_0

    .line 133
    :cond_0
    add-int/lit8 v3, v1, 0x30

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 135
    aget-byte v3, p0, p1

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v1, v3, 0xf

    .line 136
    if-le v1, v2, :cond_1

    goto :goto_0

    .line 137
    :cond_1
    add-int/lit8 v3, v1, 0x30

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 139
    add-int/lit8 v3, p1, 0x1

    aget-byte v3, p0, v3

    and-int/lit8 v1, v3, 0xf

    .line 140
    if-le v1, v2, :cond_2

    goto :goto_0

    .line 141
    :cond_2
    add-int/lit8 v3, v1, 0x30

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 143
    add-int/lit8 v3, p1, 0x2

    aget-byte v3, p0, v3

    and-int/lit8 v1, v3, 0xf

    .line 144
    if-le v1, v2, :cond_3

    goto :goto_0

    .line 145
    :cond_3
    add-int/lit8 v3, v1, 0x30

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 147
    add-int/lit8 v3, p1, 0x2

    aget-byte v3, p0, v3

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v1, v3, 0xf

    .line 148
    if-le v1, v2, :cond_4

    goto :goto_0

    .line 149
    :cond_4
    add-int/lit8 v3, v1, 0x30

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 151
    add-int/lit8 v3, p1, 0x1

    aget-byte v3, p0, v3

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v1, v3, 0xf

    .line 152
    if-le v1, v2, :cond_5

    goto :goto_0

    .line 153
    :cond_5
    add-int/lit8 v2, v1, 0x30

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 156
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static parsePlmnToStringForEfOpl([BII)Ljava/lang/String;
    .locals 6
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    mul-int/lit8 v1, p2, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 56
    .local v0, "ret":Ljava/lang/StringBuilder;
    aget-byte v1, p0, p1

    and-int/lit8 v1, v1, 0xf

    .line 57
    .local v1, "v":I
    const/16 v2, 0x64

    const/16 v3, 0x9

    const/16 v4, 0xd

    if-ltz v1, :cond_0

    if-gt v1, v3, :cond_0

    .line 58
    add-int/lit8 v5, v1, 0x30

    int-to-char v5, v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 59
    :cond_0
    if-ne v1, v4, :cond_6

    .line 60
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 64
    :goto_0
    aget-byte v5, p0, p1

    shr-int/lit8 v5, v5, 0x4

    and-int/lit8 v1, v5, 0xf

    .line 65
    if-ltz v1, :cond_1

    if-gt v1, v3, :cond_1

    .line 66
    add-int/lit8 v5, v1, 0x30

    int-to-char v5, v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 67
    :cond_1
    if-ne v1, v4, :cond_6

    .line 68
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 72
    :goto_1
    add-int/lit8 v5, p1, 0x1

    aget-byte v5, p0, v5

    and-int/lit8 v1, v5, 0xf

    .line 73
    if-ltz v1, :cond_2

    if-gt v1, v3, :cond_2

    .line 74
    add-int/lit8 v5, v1, 0x30

    int-to-char v5, v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 75
    :cond_2
    if-ne v1, v4, :cond_6

    .line 76
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 80
    :goto_2
    add-int/lit8 v5, p1, 0x2

    aget-byte v5, p0, v5

    and-int/lit8 v1, v5, 0xf

    .line 81
    if-ltz v1, :cond_3

    if-gt v1, v3, :cond_3

    .line 82
    add-int/lit8 v5, v1, 0x30

    int-to-char v5, v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 83
    :cond_3
    if-ne v1, v4, :cond_6

    .line 84
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 88
    :goto_3
    add-int/lit8 v5, p1, 0x2

    aget-byte v5, p0, v5

    shr-int/lit8 v5, v5, 0x4

    and-int/lit8 v1, v5, 0xf

    .line 89
    if-ltz v1, :cond_4

    if-gt v1, v3, :cond_4

    .line 90
    add-int/lit8 v5, v1, 0x30

    int-to-char v5, v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 91
    :cond_4
    if-ne v1, v4, :cond_6

    .line 92
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 96
    :goto_4
    add-int/lit8 v5, p1, 0x1

    aget-byte v5, p0, v5

    shr-int/lit8 v5, v5, 0x4

    and-int/lit8 v1, v5, 0xf

    .line 97
    if-ltz v1, :cond_5

    if-gt v1, v3, :cond_5

    .line 98
    add-int/lit8 v2, v1, 0x30

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 99
    :cond_5
    if-ne v1, v4, :cond_6

    .line 100
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 105
    :cond_6
    :goto_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

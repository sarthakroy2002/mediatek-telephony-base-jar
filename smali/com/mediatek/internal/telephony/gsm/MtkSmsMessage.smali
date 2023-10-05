.class public Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;
.super Lcom/android/internal/telephony/gsm/SmsMessage;
.source "MtkSmsMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage$DeliverPdu;
    }
.end annotation


# static fields
.field public static final ENCODING_7BIT_LOCKING:I = 0xc

.field public static final ENCODING_7BIT_LOCKING_SINGLE:I = 0xd

.field public static final ENCODING_7BIT_SINGLE:I = 0xb

.field private static final ENG:Z

.field static final LOG_TAG:Ljava/lang/String; = "MtkSmsMessage"

.field public static final MASK_MESSAGE_TYPE_INDICATOR:I = 0x3

.field public static final MASK_USER_DATA_HEADER_INDICATOR:I = 0x40

.field public static final MASK_VALIDITY_PERIOD_FORMAT:I = 0x18

.field public static final MASK_VALIDITY_PERIOD_FORMAT_ABSOLUTE:I = 0x18

.field public static final MASK_VALIDITY_PERIOD_FORMAT_ENHANCED:I = 0x8

.field public static final MASK_VALIDITY_PERIOD_FORMAT_NONE:I = 0x0

.field public static final MASK_VALIDITY_PERIOD_FORMAT_RELATIVE:I = 0x10


# instance fields
.field protected absoluteValidityPeriod:I

.field protected mDestinationAddress:Ljava/lang/String;

.field private mEncodingType:I

.field protected mwiCount:I

.field protected mwiType:I

.field protected relativeValidityPeriod:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 85
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->ENG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 83
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;-><init>()V

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mEncodingType:I

    .line 112
    const/4 v1, -0x1

    iput v1, p0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mwiType:I

    .line 114
    iput v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mwiCount:I

    return-void
.end method

.method public static calculateLength(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .locals 5
    .param p0, "msgBody"    # Ljava/lang/CharSequence;
    .param p1, "use7bitOnly"    # Z
    .param p2, "encodingType"    # I

    .line 1222
    const/4 v0, 0x0

    .line 1223
    .local v0, "newMsgBody":Ljava/lang/CharSequence;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 1224
    .local v1, "r":Landroid/content/res/Resources;
    const v2, 0x11100cf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1225
    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->translate(Ljava/lang/CharSequence;Z)Ljava/lang/String;

    move-result-object v0

    .line 1227
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1228
    move-object v0, p0

    .line 1230
    :cond_1
    invoke-static {v0, p1}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v2

    .line 1232
    .local v2, "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    const/4 v3, 0x3

    const-string v4, "MtkSmsMessage"

    if-ne p2, v3, :cond_2

    .line 1233
    const-string v3, "input mode is unicode"

    invoke-static {v4, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    const/4 v2, 0x0

    .line 1236
    :cond_2
    if-nez v2, :cond_3

    .line 1237
    const-string v3, "7-bit encoding fail"

    invoke-static {v4, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1238
    invoke-static {v0}, Lcom/android/internal/telephony/SmsMessageBase;->calcUnicodeEncodingDetails(Ljava/lang/CharSequence;)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v3

    return-object v3

    .line 1240
    :cond_3
    return-object v2
.end method

.method public static computeRemainUserDataLength(Z[I)I
    .locals 4
    .param p0, "inSeptets"    # Z
    .param p1, "headerElt"    # [I

    .line 1178
    const/4 v0, 0x0

    .line 1180
    .local v0, "headerBytes":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_3

    .line 1181
    aget v2, p1, v1

    if-eqz v2, :cond_2

    const/16 v3, 0x24

    if-eq v2, v3, :cond_1

    const/16 v3, 0x25

    if-eq v2, v3, :cond_0

    goto :goto_1

    .line 1189
    :cond_0
    add-int/lit8 v0, v0, 0x3

    .line 1190
    goto :goto_1

    .line 1186
    :cond_1
    add-int/lit8 v0, v0, 0x3

    .line 1187
    goto :goto_1

    .line 1183
    :cond_2
    add-int/lit8 v0, v0, 0x5

    .line 1184
    nop

    .line 1180
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1196
    .end local v1    # "i":I
    :cond_3
    if-eqz v0, :cond_4

    .line 1197
    add-int/lit8 v0, v0, 0x1

    .line 1200
    :cond_4
    rsub-int v1, v0, 0x8c

    .line 1201
    .local v1, "count":I
    if-eqz p0, :cond_5

    .line 1202
    mul-int/lit8 v2, v1, 0x8

    div-int/lit8 v1, v2, 0x7

    .line 1208
    :cond_5
    return v1
.end method

.method public static createFromEfRecord(I[B)Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;
    .locals 7
    .param p0, "index"    # I
    .param p1, "data"    # [B

    .line 191
    const-string v0, "MtkSmsMessage"

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;

    invoke-direct {v2}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;-><init>()V

    .line 193
    .local v2, "msg":Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;
    iput p0, v2, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mIndexOnIcc:I

    .line 198
    const/4 v3, 0x0

    aget-byte v4, p1, v3

    const/4 v5, 0x1

    and-int/2addr v4, v5

    if-nez v4, :cond_0

    .line 199
    const-string v3, "SMS parsing failed: Trying to parse a free record"

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    return-object v1

    .line 203
    :cond_0
    aget-byte v4, p1, v3

    and-int/lit8 v4, v4, 0x7

    iput v4, v2, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mStatusOnIcc:I

    .line 206
    array-length v4, p1

    sub-int/2addr v4, v5

    .line 210
    .local v4, "size":I
    new-array v6, v4, [B

    .line 211
    .local v6, "pdu":[B
    invoke-static {p1, v5, v6, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 212
    invoke-virtual {v2, v6}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->parsePdu([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    return-object v2

    .line 214
    .end local v2    # "msg":Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;
    .end local v4    # "size":I
    .end local v6    # "pdu":[B
    :catch_0
    move-exception v2

    .line 215
    .local v2, "ex":Ljava/lang/RuntimeException;
    const-string v3, "SMS PDU parsing failed: "

    invoke-static {v0, v3, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 216
    return-object v1
.end method

.method public static createFromPdu([B)Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;
    .locals 4
    .param p0, "pdu"    # [B

    .line 135
    const-string v0, "MtkSmsMessage"

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;

    invoke-direct {v2}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;-><init>()V

    .line 136
    .local v2, "msg":Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;
    invoke-virtual {v2, p0}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->parsePdu([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    return-object v2

    .line 141
    .end local v2    # "msg":Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;
    :catch_0
    move-exception v2

    .line 142
    .local v2, "e":Ljava/lang/OutOfMemoryError;
    const-string v3, "SMS PDU parsing failed with out of memory: "

    invoke-static {v0, v3, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 143
    return-object v1

    .line 138
    .end local v2    # "e":Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v2

    .line 139
    .local v2, "ex":Ljava/lang/RuntimeException;
    const-string v3, "SMS PDU parsing failed: "

    invoke-static {v0, v3, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 140
    return-object v1
.end method

.method private static encodeStringWithSpecialLang(Ljava/lang/CharSequence;ILcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;)Z
    .locals 8
    .param p0, "msgBody"    # Ljava/lang/CharSequence;
    .param p1, "language"    # I
    .param p2, "ted"    # Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    .line 1048
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, v1}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptetsUsingTables(Ljava/lang/CharSequence;ZII)I

    move-result v2

    .line 1050
    .local v2, "septets":I
    const-string v3, " "

    const-string v4, "MtkSmsMessage"

    const/4 v5, -0x1

    if-eq v2, v5, :cond_1

    .line 1052
    iput v2, p2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    .line 1053
    const/16 v1, 0xa0

    if-le v2, v1, :cond_0

    .line 1054
    div-int/lit16 v1, v2, 0x99

    add-int/2addr v1, v0

    iput v1, p2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 1055
    rem-int/lit16 v1, v2, 0x99

    rsub-int v1, v1, 0x99

    iput v1, p2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_0

    .line 1058
    :cond_0
    iput v0, p2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 1059
    rsub-int v1, v2, 0xa0

    iput v1, p2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    .line 1061
    :goto_0
    iput v0, p2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    .line 1062
    iput v5, p2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->shiftLangId:I

    .line 1063
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Try Default: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    return v0

    .line 1070
    :cond_1
    invoke-static {p0, v0, v1, p1}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptetsUsingTables(Ljava/lang/CharSequence;ZII)I

    move-result v2

    .line 1072
    const/4 v6, 0x2

    if-eq v2, v5, :cond_3

    .line 1074
    new-array v5, v6, [I

    fill-array-data v5, :array_0

    .line 1075
    .local v5, "headerElt":[I
    invoke-static {v0, v5}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->computeRemainUserDataLength(Z[I)I

    move-result v6

    .line 1077
    .local v6, "maxLength":I
    iput v2, p2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    .line 1078
    if-le v2, v6, :cond_2

    .line 1079
    aput v1, v5, v0

    .line 1080
    invoke-static {v0, v5}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->computeRemainUserDataLength(Z[I)I

    move-result v6

    .line 1082
    div-int v1, v2, v6

    add-int/2addr v1, v0

    iput v1, p2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 1083
    rem-int v1, v2, v6

    sub-int v1, v6, v1

    iput v1, p2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_1

    .line 1085
    :cond_2
    iput v0, p2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 1086
    sub-int v1, v6, v2

    iput v1, p2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    .line 1088
    :goto_1
    iput v0, p2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    .line 1089
    iput-boolean v0, p2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->useLockingShift:Z

    .line 1090
    iput p1, p2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->shiftLangId:I

    .line 1091
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Try Locking Shift: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    return v0

    .line 1098
    .end local v5    # "headerElt":[I
    .end local v6    # "maxLength":I
    :cond_3
    invoke-static {p0, v0, p1, v1}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptetsUsingTables(Ljava/lang/CharSequence;ZII)I

    move-result v2

    .line 1100
    if-eq v2, v5, :cond_5

    .line 1102
    new-array v5, v6, [I

    fill-array-data v5, :array_1

    .line 1103
    .restart local v5    # "headerElt":[I
    invoke-static {v0, v5}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->computeRemainUserDataLength(Z[I)I

    move-result v6

    .line 1105
    .restart local v6    # "maxLength":I
    iput v2, p2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    .line 1106
    if-le v2, v6, :cond_4

    .line 1107
    aput v1, v5, v0

    .line 1108
    invoke-static {v0, v5}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->computeRemainUserDataLength(Z[I)I

    move-result v6

    .line 1110
    div-int v1, v2, v6

    add-int/2addr v1, v0

    iput v1, p2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 1111
    rem-int v1, v2, v6

    sub-int v1, v6, v1

    iput v1, p2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_2

    .line 1113
    :cond_4
    iput v0, p2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 1114
    sub-int v1, v6, v2

    iput v1, p2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    .line 1116
    :goto_2
    iput v0, p2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    .line 1117
    iput-boolean v0, p2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->useSingleShift:Z

    .line 1118
    iput p1, p2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->shiftLangId:I

    .line 1119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Try Single Shift: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    return v0

    .line 1126
    .end local v5    # "headerElt":[I
    .end local v6    # "maxLength":I
    :cond_5
    invoke-static {p0, v0, p1, p1}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptetsUsingTables(Ljava/lang/CharSequence;ZII)I

    move-result v2

    .line 1128
    if-eq v2, v5, :cond_7

    .line 1129
    const/4 v5, 0x3

    new-array v5, v5, [I

    fill-array-data v5, :array_2

    .line 1133
    .restart local v5    # "headerElt":[I
    invoke-static {v0, v5}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->computeRemainUserDataLength(Z[I)I

    move-result v7

    .line 1135
    .local v7, "maxLength":I
    iput v2, p2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    .line 1136
    if-le v2, v7, :cond_6

    .line 1137
    aput v1, v5, v6

    .line 1138
    invoke-static {v0, v5}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->computeRemainUserDataLength(Z[I)I

    move-result v7

    .line 1140
    div-int v1, v2, v7

    add-int/2addr v1, v0

    iput v1, p2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 1141
    rem-int v1, v2, v7

    sub-int v1, v7, v1

    iput v1, p2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_3

    .line 1143
    :cond_6
    iput v0, p2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 1144
    sub-int v1, v7, v2

    iput v1, p2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    .line 1146
    :goto_3
    iput v0, p2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    .line 1147
    iput-boolean v0, p2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->useLockingShift:Z

    .line 1148
    iput-boolean v0, p2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->useSingleShift:Z

    .line 1149
    iput p1, p2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->shiftLangId:I

    .line 1150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Try Locking & Single Shift: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    return v0

    .line 1154
    .end local v5    # "headerElt":[I
    .end local v7    # "maxLength":I
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Use UCS2"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    return v1

    nop

    :array_0
    .array-data 4
        0x25
        0xffff
    .end array-data

    :array_1
    .array-data 4
        0x24
        0xffff
    .end array-data

    :array_2
    .array-data 4
        0x25
        0x24
        0xffff
    .end array-data
.end method

.method private static getCurrentSysLanguage()I
    .locals 3

    .line 1162
    const-string v0, "persist.sys.language"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1163
    .local v0, "language":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1164
    const-string v2, "ro.product.locale.language"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1167
    :cond_0
    const-string v1, "tr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1169
    const/4 v1, -0x1

    .local v1, "ret":I
    goto :goto_0

    .line 1171
    .end local v1    # "ret":I
    :cond_1
    const/4 v1, -0x1

    .line 1174
    .restart local v1    # "ret":I
    :goto_0
    return v1
.end method

.method private static getDeliverPduHead(Ljava/lang/String;Ljava/lang/String;BLcom/mediatek/internal/telephony/gsm/MtkSmsMessage$DeliverPdu;)Ljava/io/ByteArrayOutputStream;
    .locals 8
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "originalAddress"    # Ljava/lang/String;
    .param p2, "mtiByte"    # B
    .param p3, "ret"    # Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage$DeliverPdu;

    .line 988
    const-string v0, "MtkSmsMessage"

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0xb4

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 991
    .local v1, "bo":Ljava/io/ByteArrayOutputStream;
    if-nez p0, :cond_0

    .line 992
    const/4 v2, 0x0

    iput-object v2, p3, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage$DeliverPdu;->encodedScAddress:[B

    goto :goto_0

    .line 994
    :cond_0
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p3, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage$DeliverPdu;->encodedScAddress:[B

    .line 999
    :goto_0
    invoke-virtual {v1, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1003
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v2

    .line 1005
    .local v2, "oaBytes":[B
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    .line 1007
    array-length v0, v2

    sub-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x2

    .line 1008
    array-length v5, v2

    sub-int/2addr v5, v4

    aget-byte v5, v2, v5

    const/16 v6, 0xf0

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_1

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    sub-int/2addr v0, v4

    .line 1007
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1009
    array-length v0, v2

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_3

    .line 1012
    :cond_2
    :try_start_0
    invoke-static {p1}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;)[B

    move-result-object v5
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v5

    .line 1015
    goto :goto_2

    .line 1013
    :catch_0
    move-exception v5

    .line 1014
    .local v5, "ex":Lcom/android/internal/telephony/EncodeException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ex:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    .end local v5    # "ex":Lcom/android/internal/telephony/EncodeException;
    :goto_2
    if-eqz v2, :cond_3

    .line 1019
    array-length v5, v2

    sub-int/2addr v5, v4

    mul-int/lit8 v5, v5, 0x2

    invoke-virtual {v1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1020
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "oaBytes length = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    const/16 v0, 0xd0

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1024
    array-length v0, v2

    sub-int/2addr v0, v4

    invoke-virtual {v1, v2, v4, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_3

    .line 1026
    :cond_3
    const-string v4, "write a empty address for deliver pdu"

    invoke-static {v0, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1028
    const/16 v0, 0x91

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1033
    :goto_3
    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1035
    return-object v1
.end method

.method public static getDeliverPduWithLang(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BJII)Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage$DeliverPdu;
    .locals 16
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "originalAddress"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "header"    # [B
    .param p4, "timestamp"    # J
    .param p6, "encoding"    # I
    .param p7, "language"    # I

    .line 847
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p7

    const-string v5, "Implausible EncodeException "

    const-string v6, "Implausible UnsupportedEncodingException "

    const-string v7, "MtkSmsMessage"

    const-string v0, "SmsMessage: get deliver pdu"

    invoke-static {v7, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    if-eqz v2, :cond_d

    if-nez v1, :cond_0

    move-object/from16 v13, p0

    const/4 v5, 0x0

    goto/16 :goto_9

    .line 853
    :cond_0
    new-instance v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage$DeliverPdu;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage$DeliverPdu;-><init>()V

    move-object v9, v0

    .line 855
    .local v9, "ret":Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage$DeliverPdu;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SmsMessage: UDHI = "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v3, :cond_1

    move v12, v10

    goto :goto_0

    :cond_1
    move v12, v11

    :goto_0
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    if-eqz v3, :cond_2

    const/16 v0, 0x40

    goto :goto_1

    :cond_2
    move v0, v11

    :goto_1
    or-int/2addr v0, v11

    int-to-byte v12, v0

    .line 858
    .local v12, "mtiByte":B
    move-object/from16 v13, p0

    invoke-static {v13, v1, v12, v9}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->getDeliverPduHead(Ljava/lang/String;Ljava/lang/String;BLcom/mediatek/internal/telephony/gsm/MtkSmsMessage$DeliverPdu;)Ljava/io/ByteArrayOutputStream;

    move-result-object v14

    .line 862
    .local v14, "bo":Ljava/io/ByteArrayOutputStream;
    if-nez p6, :cond_3

    .line 864
    const/4 v0, 0x1

    move v15, v0

    .end local p6    # "encoding":I
    .local v0, "encoding":I
    goto :goto_2

    .line 862
    .end local v0    # "encoding":I
    .restart local p6    # "encoding":I
    :cond_3
    move/from16 v15, p6

    .line 867
    .end local p6    # "encoding":I
    .local v15, "encoding":I
    :goto_2
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Get SubmitPdu with Lang "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    if-ne v15, v10, :cond_4

    .line 870
    invoke-static {v2, v3, v11, v11}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B

    move-result-object v0

    .local v0, "userData":[B
    goto :goto_4

    .line 871
    .end local v0    # "userData":[B
    :cond_4
    if-lez v4, :cond_8

    const/4 v0, 0x3

    if-eq v15, v0, :cond_8

    .line 872
    const/16 v0, 0xc

    if-ne v15, v0, :cond_5

    .line 875
    invoke-static {v2, v3, v11, v4}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B

    move-result-object v0

    .restart local v0    # "userData":[B
    goto :goto_3

    .line 877
    .end local v0    # "userData":[B
    :cond_5
    const/16 v0, 0xb

    if-ne v15, v0, :cond_6

    .line 880
    invoke-static {v2, v3, v4, v11}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B

    move-result-object v0

    .restart local v0    # "userData":[B
    goto :goto_3

    .line 882
    .end local v0    # "userData":[B
    :cond_6
    const/16 v0, 0xd

    if-ne v15, v0, :cond_7

    .line 883
    invoke-static {v2, v3, v4, v4}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B

    move-result-object v0

    .restart local v0    # "userData":[B
    goto :goto_3

    .line 887
    .end local v0    # "userData":[B
    :cond_7
    invoke-static {v2, v3, v11, v11}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B

    move-result-object v0
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_2

    .line 889
    .restart local v0    # "userData":[B
    :goto_3
    const/4 v15, 0x1

    goto :goto_4

    .line 892
    .end local v0    # "userData":[B
    :cond_8
    :try_start_1
    invoke-static/range {p2 .. p3}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->encodeUCS2(Ljava/lang/String;[B)[B

    move-result-object v0
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 903
    .restart local v0    # "userData":[B
    nop

    .line 922
    :goto_4
    goto :goto_5

    .line 898
    .end local v0    # "userData":[B
    :catch_0
    move-exception v0

    move-object v8, v0

    move-object v0, v8

    .line 899
    .local v0, "ucs2Ex":Lcom/android/internal/telephony/EncodeException;
    :try_start_2
    invoke-static {v7, v5, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 902
    const/4 v5, 0x0

    return-object v5

    .line 893
    .end local v0    # "ucs2Ex":Lcom/android/internal/telephony/EncodeException;
    :catch_1
    move-exception v0

    move-object v8, v0

    move-object v0, v8

    .line 894
    .local v0, "uex":Ljava/io/UnsupportedEncodingException;
    invoke-static {v7, v6, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_2 .. :try_end_2} :catch_2

    .line 897
    const/4 v5, 0x0

    return-object v5

    .line 905
    .end local v0    # "uex":Ljava/io/UnsupportedEncodingException;
    :catch_2
    move-exception v0

    move-object v8, v0

    .line 909
    .local v8, "ex":Lcom/android/internal/telephony/EncodeException;
    :try_start_3
    invoke-static/range {p2 .. p3}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->encodeUCS2(Ljava/lang/String;[B)[B

    move-result-object v0
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_3 .. :try_end_3} :catch_3

    .line 910
    .local v0, "userData":[B
    const/4 v15, 0x3

    .line 921
    nop

    .line 924
    .end local v8    # "ex":Lcom/android/internal/telephony/EncodeException;
    :goto_5
    aget-byte v5, v0, v11

    and-int/lit16 v5, v5, 0xff

    const/16 v6, 0xa0

    if-le v5, v6, :cond_9

    .line 925
    const-string v5, "SmsMessage: message is too long"

    invoke-static {v7, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    const/4 v5, 0x0

    return-object v5

    .line 930
    :cond_9
    if-ne v15, v10, :cond_a

    .line 931
    invoke-virtual {v14, v11}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_6

    .line 933
    :cond_a
    const/16 v5, 0x8

    invoke-virtual {v14, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 940
    :goto_6
    invoke-static/range {p4 .. p5}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->parseSCTimestamp(J)[B

    move-result-object v5

    .line 941
    .local v5, "scts":[B
    if-eqz v5, :cond_b

    .line 942
    array-length v6, v5

    invoke-virtual {v14, v5, v11, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_8

    .line 944
    :cond_b
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_7
    const/4 v7, 0x7

    if-ge v6, v7, :cond_c

    .line 945
    invoke-virtual {v14, v11}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 944
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 949
    .end local v6    # "i":I
    :cond_c
    :goto_8
    array-length v6, v0

    invoke-virtual {v14, v0, v11, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 950
    invoke-virtual {v14}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    iput-object v6, v9, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage$DeliverPdu;->encodedMessage:[B

    .line 952
    return-object v9

    .line 916
    .end local v0    # "userData":[B
    .end local v5    # "scts":[B
    .restart local v8    # "ex":Lcom/android/internal/telephony/EncodeException;
    :catch_3
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    .line 917
    .local v0, "ucs2Ex":Lcom/android/internal/telephony/EncodeException;
    invoke-static {v7, v5, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 920
    const/4 v5, 0x0

    return-object v5

    .line 911
    .end local v0    # "ucs2Ex":Lcom/android/internal/telephony/EncodeException;
    :catch_4
    move-exception v0

    const/4 v5, 0x0

    move-object v10, v0

    move-object v0, v10

    .line 912
    .local v0, "uex":Ljava/io/UnsupportedEncodingException;
    invoke-static {v7, v6, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 915
    return-object v5

    .line 849
    .end local v0    # "uex":Ljava/io/UnsupportedEncodingException;
    .end local v8    # "ex":Lcom/android/internal/telephony/EncodeException;
    .end local v9    # "ret":Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage$DeliverPdu;
    .end local v12    # "mtiByte":B
    .end local v14    # "bo":Ljava/io/ByteArrayOutputStream;
    .end local v15    # "encoding":I
    .restart local p6    # "encoding":I
    :cond_d
    move-object/from16 v13, p0

    const/4 v5, 0x0

    .line 850
    :goto_9
    return-object v5
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;II[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 3
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "destinationPort"    # I
    .param p3, "originalPort"    # I
    .param p4, "data"    # [B
    .param p5, "statusReportRequested"    # Z

    .line 549
    invoke-static {p2, p3}, Lcom/mediatek/internal/telephony/MtkSmsHeader;->getSubmitPduHeader(II)[B

    move-result-object v0

    .line 550
    .local v0, "smsHeaderData":[B
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MtkSmsMessage: get submit pdu originalPort = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MtkSmsMessage"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    .line 552
    const/4 v1, 0x0

    return-object v1

    .line 554
    :cond_0
    if-nez p3, :cond_1

    .line 555
    invoke-static {p0, p1, p4, p5}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v1

    return-object v1

    .line 558
    :cond_1
    invoke-static {p0, p1, p4, v0, p5}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;[B[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v1

    return-object v1
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 16
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "destPort"    # I
    .param p4, "statusReportRequested"    # Z

    .line 575
    invoke-static {}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->getCurrentSysLanguage()I

    move-result v0

    .line 576
    .local v0, "language":I
    const/4 v1, -0x1

    .line 577
    .local v1, "singleId":I
    const/4 v2, -0x1

    .line 578
    .local v2, "lockingId":I
    const/4 v3, 0x0

    .line 579
    .local v3, "encoding":I
    new-instance v4, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    invoke-direct {v4}, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;-><init>()V

    .line 581
    .local v4, "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    move-object/from16 v13, p2

    invoke-static {v13, v0, v4}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->encodeStringWithSpecialLang(Ljava/lang/CharSequence;ILcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 582
    iget-boolean v5, v4, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->useLockingShift:Z

    if-eqz v5, :cond_0

    iget-boolean v5, v4, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->useSingleShift:Z

    if-eqz v5, :cond_0

    .line 583
    const/16 v3, 0xd

    .line 584
    move v2, v0

    move v1, v0

    goto :goto_0

    .line 585
    :cond_0
    iget-boolean v5, v4, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->useLockingShift:Z

    if-eqz v5, :cond_1

    .line 586
    const/16 v3, 0xc

    .line 587
    move v2, v0

    goto :goto_0

    .line 588
    :cond_1
    iget-boolean v5, v4, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->useSingleShift:Z

    if-eqz v5, :cond_2

    .line 589
    const/16 v3, 0xb

    .line 590
    move v1, v0

    goto :goto_0

    .line 592
    :cond_2
    const/4 v3, 0x1

    .line 593
    const/4 v0, -0x1

    goto :goto_0

    .line 596
    :cond_3
    const/4 v3, 0x3

    .line 599
    :goto_0
    move/from16 v14, p3

    invoke-static {v14, v1, v2}, Lcom/mediatek/internal/telephony/MtkSmsHeader;->getSubmitPduHeaderWithLang(III)[B

    move-result-object v15

    .line 602
    .local v15, "smsHeaderData":[B
    const/4 v12, -0x1

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move/from16 v8, p4

    move-object v9, v15

    move v10, v3

    move v11, v0

    invoke-static/range {v5 .. v12}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->getSubmitPduWithLang(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v5

    return-object v5
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 16
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "statusReportRequested"    # Z
    .param p4, "header"    # [B
    .param p5, "encoding"    # I
    .param p6, "languageTable"    # I
    .param p7, "languageShiftTable"    # I
    .param p8, "validityPeriod"    # I

    .line 1263
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p8

    if-eqz v2, :cond_10

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto/16 :goto_9

    .line 1267
    :cond_0
    const/4 v5, 0x1

    const-string v6, "MtkSmsMessage"

    const/4 v7, 0x0

    if-nez p5, :cond_6

    .line 1269
    invoke-static {v2, v7}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v0

    .line 1270
    .local v0, "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    iget v8, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    .line 1271
    .end local p5    # "encoding":I
    .local v8, "encoding":I
    iget v9, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    .line 1272
    .end local p6    # "languageTable":I
    .local v9, "languageTable":I
    iget v10, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    .line 1274
    .end local p7    # "languageShiftTable":I
    .local v10, "languageShiftTable":I
    if-ne v8, v5, :cond_5

    if-nez v9, :cond_1

    if-eqz v10, :cond_5

    .line 1275
    :cond_1
    if-eqz p4, :cond_4

    .line 1276
    invoke-static/range {p4 .. p4}, Lcom/android/internal/telephony/SmsHeader;->fromByteArray([B)Lcom/android/internal/telephony/SmsHeader;

    move-result-object v11

    .line 1277
    .local v11, "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    iget v12, v11, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    if-ne v12, v9, :cond_3

    iget v12, v11, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    if-eq v12, v10, :cond_2

    goto :goto_0

    :cond_2
    move-object/from16 v12, p4

    goto :goto_1

    .line 1279
    :cond_3
    :goto_0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Updating language table in SMS header: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v11, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " -> "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v11, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v6, v12}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1282
    iput v9, v11, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    .line 1283
    iput v10, v11, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    .line 1284
    invoke-static {v11}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v12

    .line 1286
    .end local v11    # "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    .end local p4    # "header":[B
    .local v12, "header":[B
    :goto_1
    goto :goto_2

    .line 1287
    .end local v12    # "header":[B
    .restart local p4    # "header":[B
    :cond_4
    invoke-static {}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->makeSmsHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v11

    check-cast v11, Lcom/mediatek/internal/telephony/MtkSmsHeader;

    .line 1288
    .local v11, "smsHeader":Lcom/mediatek/internal/telephony/MtkSmsHeader;
    iput v9, v11, Lcom/mediatek/internal/telephony/MtkSmsHeader;->languageTable:I

    .line 1289
    iput v10, v11, Lcom/mediatek/internal/telephony/MtkSmsHeader;->languageShiftTable:I

    .line 1290
    invoke-static {v11}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v12

    .end local p4    # "header":[B
    .restart local v12    # "header":[B
    goto :goto_2

    .line 1295
    .end local v0    # "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .end local v11    # "smsHeader":Lcom/mediatek/internal/telephony/MtkSmsHeader;
    .end local v12    # "header":[B
    .restart local p4    # "header":[B
    :cond_5
    move-object/from16 v12, p4

    goto :goto_2

    .line 1267
    .end local v8    # "encoding":I
    .end local v9    # "languageTable":I
    .end local v10    # "languageShiftTable":I
    .restart local p5    # "encoding":I
    .restart local p6    # "languageTable":I
    .restart local p7    # "languageShiftTable":I
    :cond_6
    move-object/from16 v12, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    .line 1295
    .end local p4    # "header":[B
    .end local p5    # "encoding":I
    .end local p6    # "languageTable":I
    .end local p7    # "languageShiftTable":I
    .restart local v8    # "encoding":I
    .restart local v9    # "languageTable":I
    .restart local v10    # "languageShiftTable":I
    .restart local v12    # "header":[B
    :goto_2
    new-instance v0, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;-><init>()V

    move-object v11, v0

    .line 1297
    .local v11, "ret":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    const/4 v0, 0x0

    .line 1298
    .local v0, "validityPeriodFormat":I
    const/4 v13, -0x1

    .line 1302
    .local v13, "relativeValidityPeriod":I
    invoke-static/range {p8 .. p8}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->getRelativeValidityPeriod(I)I

    move-result v14

    move v13, v14

    if-ltz v14, :cond_7

    .line 1303
    const/4 v0, 0x2

    move v14, v0

    goto :goto_3

    .line 1302
    :cond_7
    move v14, v0

    .line 1306
    .end local v0    # "validityPeriodFormat":I
    .local v14, "validityPeriodFormat":I
    :goto_3
    shl-int/lit8 v0, v14, 0x3

    or-int/2addr v0, v5

    .line 1307
    if-eqz v12, :cond_8

    const/16 v15, 0x40

    goto :goto_4

    :cond_8
    move v15, v7

    :goto_4
    or-int/2addr v0, v15

    int-to-byte v15, v0

    .line 1309
    .local v15, "mtiByte":B
    move-object/from16 v7, p0

    move/from16 v5, p3

    invoke-static {v7, v1, v15, v5, v11}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;

    move-result-object v4

    .line 1312
    .local v4, "bo":Ljava/io/ByteArrayOutputStream;
    if-nez v4, :cond_9

    .line 1313
    const/4 v6, 0x0

    return-object v6

    .line 1319
    :cond_9
    const-string v1, "Implausible EncodeException "

    const-string v5, "Implausible UnsupportedEncodingException "

    const/4 v7, 0x1

    if-ne v8, v7, :cond_a

    .line 1320
    :try_start_0
    invoke-static {v2, v12, v9, v10}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B

    move-result-object v0
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    .local v0, "userData":[B
    goto :goto_5

    .line 1337
    .end local v0    # "userData":[B
    :catch_0
    move-exception v0

    goto :goto_6

    .line 1324
    :cond_a
    :try_start_1
    invoke-static {v2, v12}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->encodeUCS2(Ljava/lang/String;[B)[B

    move-result-object v0
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1335
    .restart local v0    # "userData":[B
    nop

    .line 1354
    :goto_5
    goto :goto_7

    .line 1330
    .end local v0    # "userData":[B
    :catch_1
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    .line 1331
    .local v0, "ucs2Ex":Lcom/android/internal/telephony/EncodeException;
    :try_start_2
    invoke-static {v6, v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1334
    const/4 v1, 0x0

    return-object v1

    .line 1325
    .end local v0    # "ucs2Ex":Lcom/android/internal/telephony/EncodeException;
    :catch_2
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    .line 1326
    .local v0, "uex":Ljava/io/UnsupportedEncodingException;
    invoke-static {v6, v5, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1329
    const/4 v1, 0x0

    return-object v1

    .line 1337
    .end local v0    # "uex":Ljava/io/UnsupportedEncodingException;
    :goto_6
    move-object v7, v0

    .line 1341
    .local v7, "ex":Lcom/android/internal/telephony/EncodeException;
    :try_start_3
    invoke-static {v2, v12}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->encodeUCS2(Ljava/lang/String;[B)[B

    move-result-object v0
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1342
    .local v0, "userData":[B
    const/4 v8, 0x3

    .line 1353
    nop

    .line 1356
    .end local v7    # "ex":Lcom/android/internal/telephony/EncodeException;
    :goto_7
    const-string v1, "Message too long ("

    const/16 v5, 0xff

    const/4 v7, 0x1

    if-ne v8, v7, :cond_c

    .line 1357
    const/4 v7, 0x0

    aget-byte v2, v0, v7

    and-int/2addr v2, v5

    const/16 v5, 0xa0

    if-le v2, v5, :cond_b

    .line 1360
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v1, v0, v7

    const/16 v5, 0xff

    and-int/2addr v1, v5

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " septets)"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1362
    const/4 v1, 0x0

    return-object v1

    .line 1372
    :cond_b
    invoke-virtual {v4, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_8

    .line 1374
    :cond_c
    const/4 v7, 0x0

    aget-byte v2, v0, v7

    const/16 v5, 0xff

    and-int/2addr v2, v5

    const/16 v5, 0x8c

    if-le v2, v5, :cond_d

    .line 1377
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v1, v0, v7

    const/16 v5, 0xff

    and-int/2addr v1, v5

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bytes)"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1379
    const/4 v1, 0x0

    return-object v1

    .line 1383
    :cond_d
    const/16 v1, 0x8

    invoke-virtual {v4, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1386
    :goto_8
    if-ltz v3, :cond_e

    const/16 v1, 0xff

    if-gt v3, v1, :cond_e

    .line 1387
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "write validity period into pdu: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1388
    invoke-virtual {v4, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1392
    :cond_e
    const/4 v1, 0x2

    if-ne v14, v1, :cond_f

    .line 1394
    invoke-virtual {v4, v13}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1397
    :cond_f
    array-length v1, v0

    const/4 v2, 0x0

    invoke-virtual {v4, v0, v2, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1398
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    iput-object v1, v11, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    .line 1399
    return-object v11

    .line 1348
    .end local v0    # "userData":[B
    .restart local v7    # "ex":Lcom/android/internal/telephony/EncodeException;
    :catch_3
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 1349
    .local v0, "ucs2Ex":Lcom/android/internal/telephony/EncodeException;
    invoke-static {v6, v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1352
    const/4 v1, 0x0

    return-object v1

    .line 1343
    .end local v0    # "ucs2Ex":Lcom/android/internal/telephony/EncodeException;
    :catch_4
    move-exception v0

    const/4 v1, 0x0

    move-object v2, v0

    move-object v0, v2

    .line 1344
    .local v0, "uex":Ljava/io/UnsupportedEncodingException;
    invoke-static {v6, v5, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1347
    return-object v1

    .line 1263
    .end local v0    # "uex":Ljava/io/UnsupportedEncodingException;
    .end local v4    # "bo":Ljava/io/ByteArrayOutputStream;
    .end local v7    # "ex":Lcom/android/internal/telephony/EncodeException;
    .end local v8    # "encoding":I
    .end local v9    # "languageTable":I
    .end local v10    # "languageShiftTable":I
    .end local v11    # "ret":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .end local v12    # "header":[B
    .end local v13    # "relativeValidityPeriod":I
    .end local v14    # "validityPeriodFormat":I
    .end local v15    # "mtiByte":B
    .restart local p4    # "header":[B
    .restart local p5    # "encoding":I
    .restart local p6    # "languageTable":I
    .restart local p7    # "languageShiftTable":I
    :cond_10
    const/4 v1, 0x0

    .line 1264
    :goto_9
    return-object v1
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 6
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "statusReportRequested"    # Z

    .line 670
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get SubmitPdu for auto regist data.length = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bytes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MtkSmsMessage"

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    array-length v0, p2

    const/4 v3, 0x1

    add-int/2addr v0, v3

    const/4 v4, 0x0

    const/16 v5, 0x8c

    if-le v0, v5, :cond_0

    .line 673
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "data length is too long,SMS data.length = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    return-object v4

    .line 678
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;-><init>()V

    .line 679
    .local v0, "ret":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    invoke-static {p0, p1, v3, p3, v0}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;

    move-result-object v1

    .line 682
    .local v1, "bo":Ljava/io/ByteArrayOutputStream;
    if-nez v1, :cond_1

    .line 683
    return-object v4

    .line 688
    :cond_1
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 691
    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 694
    const/4 v2, 0x0

    array-length v3, p2

    invoke-virtual {v1, p2, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 696
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    .line 697
    return-object v0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;[B[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 4
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "smsHeaderData"    # [B
    .param p4, "statusReportRequested"    # Z

    .line 622
    array-length v0, p2

    array-length v1, p3

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x8c

    if-le v0, v2, :cond_0

    .line 623
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SMS data message may only contain "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p3

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bytes"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MtkSmsMessage"

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    return-object v1

    .line 628
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;-><init>()V

    .line 629
    .local v0, "ret":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    const/16 v2, 0x41

    invoke-static {p0, p1, v2, p4, v0}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;

    move-result-object v2

    .line 633
    .local v2, "bo":Ljava/io/ByteArrayOutputStream;
    if-nez v2, :cond_1

    .line 634
    return-object v1

    .line 638
    :cond_1
    const/4 v1, 0x4

    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 643
    array-length v1, p2

    array-length v3, p3

    add-int/2addr v1, v3

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 646
    array-length v1, p3

    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 647
    array-length v1, p3

    const/4 v3, 0x0

    invoke-virtual {v2, p3, v3, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 650
    array-length v1, p2

    invoke-virtual {v2, p2, v3, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 652
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    .line 653
    return-object v0
.end method

.method public static getSubmitPduWithLang(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 17
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "statusReportRequested"    # Z
    .param p4, "header"    # [B
    .param p5, "encoding"    # I
    .param p6, "language"    # I
    .param p7, "validityPeriod"    # I

    .line 715
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move/from16 v4, p6

    const-string v5, "Implausible EncodeException "

    const-string v6, "Implausible UnsupportedEncodingException "

    const-string v7, "MtkSmsMessage"

    const-string v0, "SmsMessage: get submit pdu with Lang"

    invoke-static {v7, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    const/4 v8, 0x0

    if-eqz v2, :cond_e

    if-nez v1, :cond_0

    move-object/from16 v15, p0

    move/from16 v13, p3

    move-object v5, v8

    goto/16 :goto_7

    .line 721
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;-><init>()V

    move-object v9, v0

    .line 723
    .local v9, "ret":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    const/4 v0, 0x0

    .line 724
    .local v0, "validityPeriodFormat":I
    const/4 v10, -0x1

    .line 728
    .local v10, "relativeValidityPeriod":I
    invoke-static/range {p7 .. p7}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->getRelativeValidityPeriod(I)I

    move-result v11

    move v10, v11

    if-ltz v11, :cond_1

    .line 729
    const/4 v0, 0x2

    move v11, v0

    goto :goto_0

    .line 728
    :cond_1
    move v11, v0

    .line 732
    .end local v0    # "validityPeriodFormat":I
    .local v11, "validityPeriodFormat":I
    :goto_0
    shl-int/lit8 v0, v11, 0x3

    const/4 v12, 0x1

    or-int/2addr v0, v12

    .line 733
    if-eqz v3, :cond_2

    const/16 v14, 0x40

    goto :goto_1

    :cond_2
    const/4 v14, 0x0

    :goto_1
    or-int/2addr v0, v14

    int-to-byte v14, v0

    .line 735
    .local v14, "mtiByte":B
    move-object/from16 v15, p0

    move/from16 v13, p3

    invoke-static {v15, v1, v14, v13, v9}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;

    move-result-object v12

    .line 738
    .local v12, "bo":Ljava/io/ByteArrayOutputStream;
    if-nez v12, :cond_3

    .line 739
    return-object v8

    .line 744
    :cond_3
    if-nez p5, :cond_4

    .line 746
    const/4 v0, 0x1

    move v8, v0

    .end local p5    # "encoding":I
    .local v0, "encoding":I
    goto :goto_2

    .line 744
    .end local v0    # "encoding":I
    .restart local p5    # "encoding":I
    :cond_4
    move/from16 v8, p5

    .line 749
    .end local p5    # "encoding":I
    .local v8, "encoding":I
    :goto_2
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Get SubmitPdu with Lang "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    const/4 v1, 0x1

    if-ne v8, v1, :cond_5

    .line 752
    const/4 v1, 0x0

    invoke-static {v2, v3, v1, v1}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B

    move-result-object v0

    .local v0, "userData":[B
    goto :goto_4

    .line 753
    .end local v0    # "userData":[B
    :cond_5
    if-lez v4, :cond_9

    const/4 v0, 0x3

    if-eq v8, v0, :cond_9

    .line 754
    const/16 v0, 0xc

    if-ne v8, v0, :cond_6

    .line 757
    const/4 v1, 0x0

    invoke-static {v2, v3, v1, v4}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B

    move-result-object v0

    .restart local v0    # "userData":[B
    goto :goto_3

    .line 759
    .end local v0    # "userData":[B
    :cond_6
    const/4 v1, 0x0

    const/16 v0, 0xb

    if-ne v8, v0, :cond_7

    .line 762
    invoke-static {v2, v3, v4, v1}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B

    move-result-object v0

    .restart local v0    # "userData":[B
    goto :goto_3

    .line 764
    .end local v0    # "userData":[B
    :cond_7
    const/16 v0, 0xd

    if-ne v8, v0, :cond_8

    .line 765
    invoke-static {v2, v3, v4, v4}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B

    move-result-object v0

    .restart local v0    # "userData":[B
    goto :goto_3

    .line 769
    .end local v0    # "userData":[B
    :cond_8
    const/4 v1, 0x0

    invoke-static {v2, v3, v1, v1}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B

    move-result-object v0
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_2

    .line 771
    .restart local v0    # "userData":[B
    :goto_3
    const/4 v8, 0x1

    goto :goto_4

    .line 774
    .end local v0    # "userData":[B
    :cond_9
    :try_start_1
    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->encodeUCS2(Ljava/lang/String;[B)[B

    move-result-object v0
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 785
    .restart local v0    # "userData":[B
    nop

    .line 804
    :goto_4
    goto :goto_5

    .line 780
    .end local v0    # "userData":[B
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 781
    .local v0, "ucs2Ex":Lcom/android/internal/telephony/EncodeException;
    :try_start_2
    invoke-static {v7, v5, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 784
    const/4 v1, 0x0

    return-object v1

    .line 775
    .end local v0    # "ucs2Ex":Lcom/android/internal/telephony/EncodeException;
    :catch_1
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 776
    .local v0, "uex":Ljava/io/UnsupportedEncodingException;
    invoke-static {v7, v6, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_2 .. :try_end_2} :catch_2

    .line 779
    const/4 v1, 0x0

    return-object v1

    .line 787
    .end local v0    # "uex":Ljava/io/UnsupportedEncodingException;
    :catch_2
    move-exception v0

    move-object v1, v0

    .line 791
    .local v1, "ex":Lcom/android/internal/telephony/EncodeException;
    :try_start_3
    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->encodeUCS2(Ljava/lang/String;[B)[B

    move-result-object v0
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_3 .. :try_end_3} :catch_3

    .line 792
    .local v0, "userData":[B
    const/4 v8, 0x3

    .line 803
    nop

    .line 806
    .end local v1    # "ex":Lcom/android/internal/telephony/EncodeException;
    :goto_5
    const/4 v1, 0x1

    if-ne v8, v1, :cond_b

    .line 807
    const/4 v1, 0x0

    aget-byte v5, v0, v1

    and-int/lit16 v5, v5, 0xff

    const/16 v6, 0xa0

    if-le v5, v6, :cond_a

    .line 809
    const/4 v5, 0x0

    return-object v5

    .line 819
    :cond_a
    invoke-virtual {v12, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_6

    .line 821
    :cond_b
    const/4 v1, 0x0

    const/4 v5, 0x0

    aget-byte v6, v0, v1

    and-int/lit16 v1, v6, 0xff

    const/16 v6, 0x8c

    if-le v1, v6, :cond_c

    .line 823
    return-object v5

    .line 830
    :cond_c
    const/16 v1, 0x8

    invoke-virtual {v12, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 835
    :goto_6
    const/4 v1, 0x2

    if-ne v11, v1, :cond_d

    .line 837
    invoke-virtual {v12, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 840
    :cond_d
    array-length v1, v0

    const/4 v5, 0x0

    invoke-virtual {v12, v0, v5, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 841
    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    iput-object v1, v9, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    .line 842
    return-object v9

    .line 798
    .end local v0    # "userData":[B
    .restart local v1    # "ex":Lcom/android/internal/telephony/EncodeException;
    :catch_3
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    .line 799
    .local v0, "ucs2Ex":Lcom/android/internal/telephony/EncodeException;
    invoke-static {v7, v5, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 802
    const/4 v5, 0x0

    return-object v5

    .line 793
    .end local v0    # "ucs2Ex":Lcom/android/internal/telephony/EncodeException;
    :catch_4
    move-exception v0

    const/4 v5, 0x0

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    .line 794
    .local v0, "uex":Ljava/io/UnsupportedEncodingException;
    invoke-static {v7, v6, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 797
    return-object v5

    .line 717
    .end local v0    # "uex":Ljava/io/UnsupportedEncodingException;
    .end local v1    # "ex":Lcom/android/internal/telephony/EncodeException;
    .end local v8    # "encoding":I
    .end local v9    # "ret":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .end local v10    # "relativeValidityPeriod":I
    .end local v11    # "validityPeriodFormat":I
    .end local v12    # "bo":Ljava/io/ByteArrayOutputStream;
    .end local v14    # "mtiByte":B
    .restart local p5    # "encoding":I
    :cond_e
    move-object/from16 v15, p0

    move/from16 v13, p3

    move-object v5, v8

    .line 718
    :goto_7
    return-object v5
.end method

.method private static intToGsmBCDByte(I)B
    .locals 4
    .param p0, "value"    # I

    .line 972
    const-string v0, "MtkSmsMessage"

    if-gez p0, :cond_0

    .line 973
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[time invalid value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    const/4 v0, 0x0

    return v0

    .line 976
    :cond_0
    rem-int/lit8 p0, p0, 0x64

    .line 977
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[time value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    div-int/lit8 v1, p0, 0xa

    and-int/lit8 v1, v1, 0xf

    rem-int/lit8 v2, p0, 0xa

    shl-int/lit8 v2, v2, 0x4

    and-int/lit16 v2, v2, 0xf0

    or-int/2addr v1, v2

    int-to-byte v1, v1

    .line 981
    .local v1, "b":B
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[time bcd value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    return v1
.end method

.method public static newFromCDS([B)Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;
    .locals 3
    .param p0, "pdu"    # [B

    .line 170
    :try_start_0
    new-instance v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;-><init>()V

    .line 171
    .local v0, "msg":Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;
    invoke-virtual {v0, p0}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->parsePdu([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    return-object v0

    .line 173
    .end local v0    # "msg":Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;
    :catch_0
    move-exception v0

    .line 174
    .local v0, "ex":Ljava/lang/RuntimeException;
    const-string v1, "MtkSmsMessage"

    const-string v2, "CDS SMS PDU parsing failed: "

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 175
    const/4 v1, 0x0

    return-object v1
.end method

.method public static newFromCMT([Ljava/lang/String;)Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;
    .locals 3
    .param p0, "lines"    # [Ljava/lang/String;

    .line 158
    :try_start_0
    new-instance v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;-><init>()V

    .line 159
    .local v0, "msg":Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;
    const/4 v1, 0x1

    aget-object v1, p0, v1

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->parsePdu([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    return-object v0

    .line 161
    .end local v0    # "msg":Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;
    :catch_0
    move-exception v0

    .line 162
    .local v0, "ex":Ljava/lang/RuntimeException;
    const-string v1, "MtkSmsMessage"

    const-string v2, "SMS PDU parsing failed: "

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 163
    const/4 v1, 0x0

    return-object v1
.end method

.method private static parseSCTimestamp(J)[B
    .locals 5
    .param p0, "millis"    # J

    .line 956
    new-instance v0, Landroid/text/format/Time;

    const-string v1, "UTC"

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 957
    .local v0, "t":Landroid/text/format/Time;
    invoke-virtual {v0, p0, p1}, Landroid/text/format/Time;->set(J)V

    .line 959
    const/4 v1, 0x7

    new-array v1, v1, [B

    .line 960
    .local v1, "scts":[B
    iget v2, v0, Landroid/text/format/Time;->year:I

    invoke-static {v2}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->intToGsmBCDByte(I)B

    move-result v2

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    .line 961
    iget v2, v0, Landroid/text/format/Time;->month:I

    const/4 v4, 0x1

    add-int/2addr v2, v4

    invoke-static {v2}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->intToGsmBCDByte(I)B

    move-result v2

    aput-byte v2, v1, v4

    .line 962
    iget v2, v0, Landroid/text/format/Time;->monthDay:I

    invoke-static {v2}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->intToGsmBCDByte(I)B

    move-result v2

    const/4 v4, 0x2

    aput-byte v2, v1, v4

    .line 963
    iget v2, v0, Landroid/text/format/Time;->hour:I

    invoke-static {v2}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->intToGsmBCDByte(I)B

    move-result v2

    const/4 v4, 0x3

    aput-byte v2, v1, v4

    .line 964
    iget v2, v0, Landroid/text/format/Time;->minute:I

    invoke-static {v2}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->intToGsmBCDByte(I)B

    move-result v2

    const/4 v4, 0x4

    aput-byte v2, v1, v4

    .line 965
    iget v2, v0, Landroid/text/format/Time;->second:I

    invoke-static {v2}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->intToGsmBCDByte(I)B

    move-result v2

    const/4 v4, 0x5

    aput-byte v2, v1, v4

    .line 966
    invoke-static {v3}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->intToGsmBCDByte(I)B

    move-result v2

    const/4 v3, 0x6

    aput-byte v2, v1, v3

    .line 968
    return-object v1
.end method


# virtual methods
.method public getDestinationAddress()Ljava/lang/String;
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mDestinationAddress:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 226
    const/4 v0, 0x0

    return-object v0

    .line 229
    :cond_0
    return-object v0
.end method

.method public getEncodingType()I
    .locals 1

    .line 1411
    iget v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mEncodingType:I

    return v0
.end method

.method protected parseSmsStatusReport(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V
    .locals 1
    .param p1, "p"    # Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;
    .param p2, "firstByte"    # I

    .line 240
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseSmsStatusReport(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V

    .line 242
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mMessageBody:Ljava/lang/String;

    .line 243
    return-void
.end method

.method protected parseSmsSubmit(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V
    .locals 1
    .param p1, "p"    # Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;
    .param p2, "firstByte"    # I

    .line 253
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseSmsSubmit(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V

    .line 256
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mRecipientAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mRecipientAddress:Lcom/android/internal/telephony/SmsAddress;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsAddress;->getAddressString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mDestinationAddress:Ljava/lang/String;

    .line 259
    :cond_0
    return-void
.end method

.method protected parseUserData(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;Z)V
    .locals 17
    .param p1, "p"    # Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;
    .param p2, "hasUserDataHeader"    # Z

    .line 270
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    const/4 v3, 0x0

    .line 271
    .local v3, "hasMessageClass":Z
    const/4 v4, 0x0

    .line 273
    .local v4, "userDataCompressed":Z
    const/4 v5, 0x0

    .line 276
    .local v5, "encodingType":I
    iget v6, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mDataCodingScheme:I

    const/16 v7, 0x80

    and-int/2addr v6, v7

    const-string v8, " Dont store = "

    const v9, 0x11100ce

    const/4 v11, 0x4

    const/4 v13, 0x2

    const/4 v14, 0x3

    const-string v15, "MtkSmsMessage"

    const/16 v7, 0xf0

    const/4 v12, 0x1

    if-nez v6, :cond_8

    .line 277
    iget v6, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mDataCodingScheme:I

    and-int/lit8 v6, v6, 0x20

    if-eqz v6, :cond_0

    move v6, v12

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    move v4, v6

    .line 278
    iget v6, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mDataCodingScheme:I

    and-int/lit8 v6, v6, 0x10

    if-eqz v6, :cond_1

    move v6, v12

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    move v3, v6

    .line 280
    if-eqz v4, :cond_2

    .line 281
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "4 - Unsupported SMS data coding scheme (compression) "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mDataCodingScheme:I

    and-int/lit16 v10, v10, 0xff

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v15, v6}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 284
    :cond_2
    iget v6, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mDataCodingScheme:I

    shr-int/2addr v6, v13

    and-int/2addr v6, v14

    if-eqz v6, :cond_7

    if-eq v6, v12, :cond_4

    if-eq v6, v13, :cond_3

    if-eq v6, v14, :cond_6

    goto :goto_2

    .line 290
    :cond_3
    const/4 v5, 0x3

    .line 291
    goto :goto_2

    .line 297
    :cond_4
    invoke-static {}, Lcom/android/internal/telephony/gsm/OplusSmsMessage;->isEnable8BitMtSms()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 298
    const/4 v5, 0x2

    .line 299
    goto :goto_2

    .line 305
    :cond_5
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    .line 306
    .local v6, "r":Landroid/content/res/Resources;
    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 308
    const/4 v5, 0x2

    .line 309
    goto :goto_2

    .line 313
    .end local v6    # "r":Landroid/content/res/Resources;
    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "1 - Unsupported SMS data coding scheme "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mDataCodingScheme:I

    and-int/lit16 v10, v10, 0xff

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v15, v6}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    const/4 v5, 0x2

    goto :goto_2

    .line 286
    :cond_7
    const/4 v5, 0x1

    .line 287
    nop

    .line 316
    :goto_2
    goto/16 :goto_9

    .line 319
    :cond_8
    iget v6, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mDataCodingScheme:I

    and-int/2addr v6, v7

    if-ne v6, v7, :cond_a

    .line 320
    const/4 v3, 0x1

    .line 321
    const/4 v4, 0x0

    .line 323
    iget v6, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mDataCodingScheme:I

    and-int/2addr v6, v11

    if-nez v6, :cond_9

    .line 325
    const/4 v5, 0x1

    goto/16 :goto_9

    .line 328
    :cond_9
    const/4 v5, 0x2

    goto/16 :goto_9

    .line 330
    :cond_a
    iget v6, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mDataCodingScheme:I

    and-int/2addr v6, v7

    const/16 v10, 0xc0

    if-eq v6, v10, :cond_e

    iget v6, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mDataCodingScheme:I

    and-int/2addr v6, v7

    const/16 v9, 0xd0

    if-eq v6, v9, :cond_e

    iget v6, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mDataCodingScheme:I

    and-int/2addr v6, v7

    const/16 v9, 0xe0

    if-ne v6, v9, :cond_b

    goto :goto_3

    .line 371
    :cond_b
    iget v6, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mDataCodingScheme:I

    and-int/2addr v6, v10

    const/16 v9, 0x80

    if-ne v6, v9, :cond_d

    .line 374
    iget v6, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mDataCodingScheme:I

    const/16 v9, 0x84

    if-ne v6, v9, :cond_c

    .line 376
    const/4 v5, 0x4

    goto/16 :goto_9

    .line 378
    :cond_c
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "5 - Unsupported SMS data coding scheme "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mDataCodingScheme:I

    and-int/lit16 v9, v9, 0xff

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v15, v6}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 382
    :cond_d
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "3 - Unsupported SMS data coding scheme "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mDataCodingScheme:I

    and-int/lit16 v9, v9, 0xff

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v15, v6}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 339
    :cond_e
    :goto_3
    iget v6, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mDataCodingScheme:I

    and-int/2addr v6, v7

    const/16 v9, 0xe0

    if-ne v6, v9, :cond_f

    .line 340
    const/4 v5, 0x3

    goto :goto_4

    .line 342
    :cond_f
    const/4 v5, 0x1

    .line 345
    :goto_4
    const/4 v4, 0x0

    .line 346
    iget v6, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mDataCodingScheme:I

    const/16 v9, 0x8

    and-int/2addr v6, v9

    if-ne v6, v9, :cond_10

    move v6, v12

    goto :goto_5

    :cond_10
    const/4 v6, 0x0

    .line 350
    .local v6, "active":Z
    :goto_5
    iget v9, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mDataCodingScheme:I

    and-int/2addr v9, v14

    if-nez v9, :cond_13

    .line 351
    iput-boolean v12, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mIsMwi:Z

    .line 352
    iput-boolean v6, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mMwiSense:Z

    .line 353
    iget v9, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mDataCodingScheme:I

    and-int/2addr v9, v7

    if-ne v9, v10, :cond_11

    move v9, v12

    goto :goto_6

    :cond_11
    const/4 v9, 0x0

    :goto_6
    iput-boolean v9, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mMwiDontStore:Z

    .line 356
    if-ne v6, v12, :cond_12

    .line 357
    const/4 v9, -0x1

    iput v9, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mVoiceMailCount:I

    goto :goto_7

    .line 359
    :cond_12
    const/4 v9, 0x0

    iput v9, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mVoiceMailCount:I

    .line 362
    :goto_7
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MWI in DCS for Vmail. DCS = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mDataCodingScheme:I

    and-int/lit16 v10, v10, 0xff

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v10, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mMwiDontStore:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, " vmail count = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mVoiceMailCount:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v15, v9}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 367
    :cond_13
    const/4 v9, 0x0

    iput-boolean v9, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mIsMwi:Z

    .line 368
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MWI in DCS for fax/email/other: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mDataCodingScheme:I

    and-int/lit16 v10, v10, 0xff

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v15, v9}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    .end local v6    # "active":Z
    :goto_8
    nop

    .line 387
    :goto_9
    if-ne v5, v12, :cond_14

    move v6, v12

    goto :goto_a

    :cond_14
    const/4 v6, 0x0

    :goto_a
    invoke-virtual {v1, v2, v6}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->constructUserData(ZZ)I

    move-result v6

    .line 389
    .local v6, "count":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserData()[B

    move-result-object v9

    iput-object v9, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mUserData:[B

    .line 390
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v9

    iput-object v9, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 394
    iput v5, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mEncodingType:I

    .line 405
    if-eqz v2, :cond_1e

    iget-object v9, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iget-object v9, v9, Lcom/android/internal/telephony/SmsHeader;->specialSmsMsgList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-eqz v9, :cond_1e

    .line 406
    iget-object v9, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iget-object v9, v9, Lcom/android/internal/telephony/SmsHeader;->specialSmsMsgList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_b
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1d

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;

    .line 407
    .local v10, "msg":Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;
    iget v11, v10, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;->msgIndType:I

    and-int/lit16 v11, v11, 0xff

    .line 414
    .local v11, "msgInd":I
    if-eqz v11, :cond_16

    const/16 v13, 0x80

    if-ne v11, v13, :cond_15

    goto :goto_c

    .line 460
    :cond_15
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "TP_UDH fax/email/extended msg/multisubscriber profile. Msg Ind = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v15, v13}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x0

    goto :goto_10

    .line 415
    :cond_16
    :goto_c
    iput-boolean v12, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mIsMwi:Z

    .line 416
    const/16 v13, 0x80

    if-ne v11, v13, :cond_17

    .line 418
    const/4 v14, 0x0

    iput-boolean v14, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mMwiDontStore:Z

    const/16 v7, 0xe0

    const/16 v13, 0xd0

    goto :goto_e

    .line 419
    :cond_17
    iget-boolean v14, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mMwiDontStore:Z

    if-nez v14, :cond_1a

    .line 427
    iget v14, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mDataCodingScheme:I

    and-int/2addr v14, v7

    const/16 v13, 0xd0

    if-eq v14, v13, :cond_18

    iget v14, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mDataCodingScheme:I

    and-int/2addr v14, v7

    const/16 v7, 0xe0

    if-ne v14, v7, :cond_19

    goto :goto_d

    :cond_18
    const/16 v7, 0xe0

    :goto_d
    iget v14, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mDataCodingScheme:I

    const/16 v16, 0x3

    and-int/lit8 v14, v14, 0x3

    if-eqz v14, :cond_1b

    .line 433
    :cond_19
    iput-boolean v12, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mMwiDontStore:Z

    goto :goto_e

    .line 419
    :cond_1a
    const/16 v7, 0xe0

    const/16 v13, 0xd0

    .line 437
    :cond_1b
    :goto_e
    iget v14, v10, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;->msgCount:I

    and-int/lit16 v14, v14, 0xff

    iput v14, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mVoiceMailCount:I

    .line 445
    iget v14, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mVoiceMailCount:I

    if-lez v14, :cond_1c

    .line 446
    iput-boolean v12, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mMwiSense:Z

    const/4 v14, 0x0

    goto :goto_f

    .line 448
    :cond_1c
    const/4 v14, 0x0

    iput-boolean v14, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mMwiSense:Z

    .line 450
    :goto_f
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "MWI in TP-UDH for Vmail. Msg Ind = "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v13, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mMwiDontStore:Z

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, " Vmail count = "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mVoiceMailCount:I

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v15, v7}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    .end local v10    # "msg":Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;
    .end local v11    # "msgInd":I
    :goto_10
    const/16 v7, 0xf0

    const/4 v11, 0x4

    const/4 v13, 0x2

    const/4 v14, 0x3

    goto/16 :goto_b

    .line 406
    :cond_1d
    const/4 v14, 0x0

    goto :goto_11

    .line 405
    :cond_1e
    const/4 v14, 0x0

    .line 466
    :goto_11
    const/4 v7, 0x0

    if-eqz v5, :cond_27

    if-eq v5, v12, :cond_24

    const/4 v8, 0x2

    if-eq v5, v8, :cond_21

    const/4 v8, 0x3

    if-eq v5, v8, :cond_20

    const/4 v7, 0x4

    if-eq v5, v7, :cond_1f

    goto :goto_13

    .line 503
    :cond_1f
    invoke-virtual {v1, v6}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataKSC5601(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mMessageBody:Ljava/lang/String;

    goto :goto_13

    .line 499
    :cond_20
    invoke-virtual {v1, v6}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataUCS2(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mMessageBody:Ljava/lang/String;

    .line 500
    goto :goto_13

    .line 475
    :cond_21
    invoke-static {}, Lcom/android/internal/telephony/gsm/OplusSmsMessage;->isEnable8BitMtSms()Z

    move-result v8

    if-eqz v8, :cond_22

    if-eqz v1, :cond_22

    .line 476
    invoke-virtual {v1, v6}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataOem8bit(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mMessageBody:Ljava/lang/String;

    .line 477
    iget-object v8, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mMessageBody:Ljava/lang/String;

    if-eqz v8, :cond_22

    goto :goto_13

    .line 483
    :cond_22
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v8

    .line 484
    .local v8, "r":Landroid/content/res/Resources;
    const v9, 0x11100ce

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    if-eqz v9, :cond_23

    .line 486
    invoke-virtual {v1, v6}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataGSM8bit(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mMessageBody:Ljava/lang/String;

    goto :goto_13

    .line 488
    :cond_23
    iput-object v7, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mMessageBody:Ljava/lang/String;

    .line 490
    goto :goto_13

    .line 493
    .end local v8    # "r":Landroid/content/res/Resources;
    :cond_24
    nop

    .line 494
    if-eqz v2, :cond_25

    iget-object v7, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iget v9, v7, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    goto :goto_12

    :cond_25
    move v9, v14

    .line 495
    :goto_12
    if-eqz v2, :cond_26

    iget-object v7, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iget v7, v7, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    move v14, v7

    .line 493
    :cond_26
    invoke-virtual {v1, v6, v9, v14}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataGSM7Bit(III)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mMessageBody:Ljava/lang/String;

    .line 496
    goto :goto_13

    .line 468
    :cond_27
    iput-object v7, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mMessageBody:Ljava/lang/String;

    .line 469
    nop

    .line 507
    :goto_13
    iget-object v7, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mMessageBody:Ljava/lang/String;

    if-eqz v7, :cond_28

    .line 508
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->parseMessageBody()V

    .line 511
    :cond_28
    if-nez v3, :cond_29

    .line 512
    sget-object v7, Lcom/android/internal/telephony/SmsConstants$MessageClass;->UNKNOWN:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    iput-object v7, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    goto :goto_14

    .line 514
    :cond_29
    iget v7, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mDataCodingScheme:I

    const/4 v8, 0x3

    and-int/2addr v7, v8

    if-eqz v7, :cond_2d

    if-eq v7, v12, :cond_2c

    const/4 v9, 0x2

    if-eq v7, v9, :cond_2b

    if-eq v7, v8, :cond_2a

    goto :goto_14

    .line 525
    :cond_2a
    sget-object v7, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_3:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    iput-object v7, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    goto :goto_14

    .line 522
    :cond_2b
    sget-object v7, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_2:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    iput-object v7, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    .line 523
    goto :goto_14

    .line 519
    :cond_2c
    sget-object v7, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_1:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    iput-object v7, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    .line 520
    goto :goto_14

    .line 516
    :cond_2d
    sget-object v7, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_0:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    iput-object v7, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    .line 517
    nop

    .line 529
    :goto_14
    return-void
.end method

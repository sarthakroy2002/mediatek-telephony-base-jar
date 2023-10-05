.class public Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;
.super Lcom/android/internal/telephony/cdma/SmsMessage;
.source "MtkSmsMessage.java"


# static fields
.field private static final LOGGABLE_TAG:Ljava/lang/String; = "CDMA:SMS"

.field private static final LOG_TAG:Ljava/lang/String; = "MtkCdmaSmsMessage"

.field private static final RETURN_ACK:I = 0x1

.field private static sPlusCodeUtils:Lcom/mediatek/internal/telephony/cdma/pluscode/IPlusCodeUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 76
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/pluscode/PlusCodeProcessor;->getPlusCodeUtils()Lcom/mediatek/internal/telephony/cdma/pluscode/IPlusCodeUtils;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->sPlusCodeUtils:Lcom/mediatek/internal/telephony/cdma/pluscode/IPlusCodeUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;-><init>()V

    return-void
.end method

.method public static calculateLength(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .locals 4
    .param p0, "messageBody"    # Ljava/lang/CharSequence;
    .param p1, "use7bitOnly"    # Z
    .param p2, "encodingType"    # I

    .line 589
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 590
    .local v0, "r":Landroid/content/res/Resources;
    const v1, 0x11100cf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 591
    const-string v1, "MtkCdmaSmsMessage"

    const-string v2, "here use BearerData.calcTextEncodingDetails, but divide in parent class will use Sms7BitEncodingTranslator.translate(messageBody) returned string instead again in this case, Caution!!"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    const-string v3, "search calculateLengthCDMA for help!"

    invoke-static {v1, v3, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 597
    :cond_0
    const/4 v1, 0x1

    invoke-static {p0, p1, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->calcTextEncodingDetails(Ljava/lang/CharSequence;ZZ)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v1

    return-object v1
.end method

.method public static createEfPdu(Ljava/lang/String;Ljava/lang/String;J)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 9
    .param p0, "destinationAddress"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "timeStamp"    # J

    .line 347
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    .line 351
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {v1}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .line 352
    .local v1, "uData":Lcom/android/internal/telephony/cdma/sms/UserData;
    iput-object p1, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 353
    iput-object v0, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 375
    const-wide/16 v2, 0x0

    cmp-long v0, p2, v2

    const-string v2, "createEfPdu, input timeStamp = "

    const-string v3, "MtkCdmaSmsMessage"

    if-lez v0, :cond_1

    .line 376
    move-wide v4, p2

    .line 377
    .local v4, "scTimeMillis":J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", out scTimeMillis = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    nop

    .line 381
    .end local v4    # "scTimeMillis":J
    goto :goto_0

    .line 382
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", dont assign time zone to this invalid value"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    :goto_0
    const/4 v3, 0x0

    const/4 v7, -0x1

    const/4 v8, -0x1

    move-object v2, p0

    move-object v4, v1

    move-wide v5, p2

    invoke-static/range {v2 .. v8}, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->privateGetPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;JII)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0

    .line 348
    .end local v1    # "uData":Lcom/android/internal/telephony/cdma/sms/UserData;
    :cond_2
    :goto_1
    return-object v0
.end method

.method public static createFromEfRecord(I[B)Lcom/android/internal/telephony/cdma/SmsMessage;
    .locals 7
    .param p0, "index"    # I
    .param p1, "data"    # [B

    .line 90
    const-string v0, "MtkCdmaSmsMessage"

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;

    invoke-direct {v2}, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;-><init>()V

    .line 92
    .local v2, "msg":Lcom/android/internal/telephony/cdma/SmsMessage;
    iput p0, v2, Lcom/android/internal/telephony/cdma/SmsMessage;->mIndexOnIcc:I

    .line 97
    const/4 v3, 0x0

    aget-byte v4, p1, v3

    const/4 v5, 0x1

    and-int/2addr v4, v5

    if-nez v4, :cond_0

    .line 98
    const-string v3, "SMS parsing failed: Trying to parse a free record"

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    return-object v1

    .line 101
    :cond_0
    aget-byte v4, p1, v3

    and-int/lit8 v4, v4, 0x7

    iput v4, v2, Lcom/android/internal/telephony/cdma/SmsMessage;->mStatusOnIcc:I

    .line 106
    aget-byte v4, p1, v5

    and-int/lit16 v4, v4, 0xff

    .line 110
    .local v4, "size":I
    new-array v5, v4, [B

    .line 111
    .local v5, "pdu":[B
    const/4 v6, 0x2

    invoke-static {p1, v6, v5, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 114
    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/cdma/SmsMessage;->parsePduFromEfRecord([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    return-object v2

    .line 116
    .end local v2    # "msg":Lcom/android/internal/telephony/cdma/SmsMessage;
    .end local v4    # "size":I
    .end local v5    # "pdu":[B
    :catch_0
    move-exception v2

    .line 117
    .local v2, "ex":Ljava/lang/RuntimeException;
    const-string v3, "SMS PDU parsing failed: "

    invoke-static {v0, v3, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 118
    return-object v1
.end method

.method private static getMaskString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .line 636
    if-nez p0, :cond_0

    .line 637
    const-string v0, "null"

    return-object v0

    .line 638
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_1

    .line 639
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    shr-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "xxxxx"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 641
    :cond_1
    const-string v0, "xx"

    return-object v0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/UserData;Z)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 7
    .param p0, "destAddr"    # Ljava/lang/String;
    .param p1, "userData"    # Lcom/android/internal/telephony/cdma/sms/UserData;
    .param p2, "statusReportRequested"    # Z

    .line 333
    const-wide/16 v3, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    move-object v0, p0

    move v1, p2

    move-object v2, p1

    invoke-static/range {v0 .. v6}, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->privateGetPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;JII)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;II[BZ)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 6
    .param p0, "scAddr"    # Ljava/lang/String;
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "destPort"    # I
    .param p3, "originalPort"    # I
    .param p4, "data"    # [B
    .param p5, "statusReportRequested"    # Z

    .line 296
    new-instance v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    invoke-direct {v0}, Lcom/android/internal/telephony/SmsHeader$PortAddrs;-><init>()V

    .line 297
    .local v0, "portAddrs":Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    iput p2, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    .line 298
    iput p3, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    .line 299
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->areEightBits:Z

    .line 301
    new-instance v2, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v2}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 302
    .local v2, "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    iput-object v0, v2, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    .line 304
    new-instance v3, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {v3}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .line 308
    .local v3, "uData":Lcom/android/internal/telephony/cdma/sms/UserData;
    if-nez p3, :cond_0

    .line 309
    const/4 v4, 0x0

    iput-object v4, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 310
    const-string v4, "MtkCdmaSmsMessage"

    const-string v5, "getSubmitPdu(with dest&original port), clear the header."

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 312
    :cond_0
    iput-object v2, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 314
    :goto_0
    iput v1, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 315
    const/4 v1, 0x1

    iput-boolean v1, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    .line 316
    iput-object p4, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 318
    invoke-static {p1, p5, v3}, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->privateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v1

    return-object v1
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;IIIZ)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 13
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "destAddrStr"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "statusReportRequested"    # Z
    .param p4, "smsHeader"    # Lcom/android/internal/telephony/SmsHeader;
    .param p5, "encodingtype"    # I
    .param p6, "validityPeriod"    # I
    .param p7, "priority"    # I
    .param p8, "use7BitAscii"    # Z

    .line 541
    move-object v0, p2

    move/from16 v1, p5

    move/from16 v2, p6

    const/4 v3, 0x0

    const-string v4, "MtkCdmaSmsMessage"

    if-eqz p1, :cond_7

    if-nez v0, :cond_0

    move-object/from16 v12, p4

    goto :goto_2

    .line 546
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 547
    const-string v5, "getSubmitPdu, destination address is empty. do nothing."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    return-object v3

    .line 551
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 552
    const-string v5, "getSubmitPdu, message text is empty. do nothing."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    return-object v3

    .line 556
    :cond_2
    const/16 v3, 0xf4

    if-le v2, v3, :cond_3

    const/16 v3, 0xff

    if-gt v2, v3, :cond_3

    .line 557
    const/16 v2, 0xf4

    .line 560
    .end local p6    # "validityPeriod":I
    .local v2, "validityPeriod":I
    :cond_3
    new-instance v3, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {v3}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .line 561
    .local v3, "uData":Lcom/android/internal/telephony/cdma/sms/UserData;
    iput-object v0, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 562
    move-object/from16 v12, p4

    iput-object v12, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 565
    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ne v1, v5, :cond_5

    .line 566
    if-eqz p8, :cond_4

    goto :goto_0

    .line 567
    :cond_4
    const/16 v4, 0x9

    :goto_0
    iput v4, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    goto :goto_1

    .line 568
    :cond_5
    if-ne v1, v4, :cond_6

    .line 569
    const/4 v4, 0x0

    iput v4, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    goto :goto_1

    .line 571
    :cond_6
    const/4 v4, 0x4

    iput v4, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 573
    :goto_1
    iput-boolean v5, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    .line 575
    const-wide/16 v8, 0x0

    move-object v5, p1

    move/from16 v6, p3

    move-object v7, v3

    move v10, v2

    move/from16 v11, p7

    invoke-static/range {v5 .. v11}, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->privateGetPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;JII)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v4

    return-object v4

    .line 541
    .end local v2    # "validityPeriod":I
    .end local v3    # "uData":Lcom/android/internal/telephony/cdma/sms/UserData;
    .restart local p6    # "validityPeriod":I
    :cond_7
    move-object/from16 v12, p4

    .line 542
    :goto_2
    const-string v5, "getSubmitPdu, null sms text or destination address. do nothing."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    return-object v3
.end method

.method private static handlePlusCodeInternal(ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "ton"    # I
    .param p1, "number"    # Ljava/lang/String;

    .line 646
    sget-object v0, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->sPlusCodeUtils:Lcom/mediatek/internal/telephony/cdma/pluscode/IPlusCodeUtils;

    invoke-interface {v0, p1}, Lcom/mediatek/internal/telephony/cdma/pluscode/IPlusCodeUtils;->removeIddNddAddPlusCodeForSms(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 647
    .local v0, "ret":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 648
    const/4 v1, 0x0

    return-object v1

    .line 650
    :cond_0
    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2b

    if-eq v1, v2, :cond_1

    .line 651
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 653
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handlePlusCodeInternal, ton = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " number = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 654
    invoke-static {p1}, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->getMaskString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " the address = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 655
    invoke-static {v0}, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->getMaskString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 653
    const-string v2, "MtkCdmaSmsMessage"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    return-object v0
.end method

.method public static newMtkSmsMessage(Lcom/android/internal/telephony/cdma/SmsMessage;)Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;
    .locals 3
    .param p0, "sms"    # Lcom/android/internal/telephony/cdma/SmsMessage;

    .line 608
    if-nez p0, :cond_0

    .line 609
    const/4 v0, 0x0

    return-object v0

    .line 611
    :cond_0
    new-instance v0, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;-><init>()V

    .line 612
    .local v0, "mtkSms":Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getServiceCenterAddress()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->mScAddress:Ljava/lang/String;

    .line 613
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    iput-object v1, v0, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    .line 614
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->mMessageBody:Ljava/lang/String;

    .line 615
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getPseudoSubject()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->mPseudoSubject:Ljava/lang/String;

    .line 616
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getEmailFrom()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->mEmailFrom:Ljava/lang/String;

    .line 617
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getEmailBody()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->mEmailBody:Ljava/lang/String;

    .line 618
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->isEmail()Z

    move-result v1

    iput-boolean v1, v0, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->mIsEmail:Z

    .line 619
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getTimestampMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->mScTimeMillis:J

    .line 620
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getPdu()[B

    move-result-object v1

    iput-object v1, v0, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->mPdu:[B

    .line 621
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getUserData()[B

    move-result-object v1

    iput-object v1, v0, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->mUserData:[B

    .line 622
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v1

    iput-object v1, v0, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 623
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->mIsMwi:Z

    .line 624
    iput-boolean v1, v0, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->mMwiSense:Z

    .line 625
    iput-boolean v1, v0, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->mMwiDontStore:Z

    .line 626
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getStatusOnIcc()I

    move-result v1

    iput v1, v0, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->mStatusOnIcc:I

    .line 627
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getIndexOnIcc()I

    move-result v1

    iput v1, v0, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->mIndexOnIcc:I

    .line 628
    iget v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mMessageRef:I

    iput v1, v0, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->mMessageRef:I

    .line 629
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getStatus()I

    move-result v1

    shr-int/lit8 v1, v1, 0x10

    iput v1, v0, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->status:I

    .line 630
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iput-object v1, v0, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    .line 631
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iput-object v1, v0, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    .line 632
    return-object v0
.end method

.method private static privateGetPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;JII)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 16
    .param p0, "destAddrStr"    # Ljava/lang/String;
    .param p1, "statusReportRequested"    # Z
    .param p2, "userData"    # Lcom/android/internal/telephony/cdma/sms/UserData;
    .param p3, "timeStamp"    # J
    .param p5, "validityPeriod"    # I
    .param p6, "priority"    # I

    .line 413
    move/from16 v1, p5

    move/from16 v2, p6

    .line 414
    invoke-static/range {p0 .. p0}, Landroid/telephony/PhoneNumberUtils;->cdmaCheckAndProcessPlusCodeForSms(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 413
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->parse(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-result-object v3

    .line 415
    .local v3, "destAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 416
    return-object v4

    .line 418
    :cond_0
    iget v0, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    const/16 v5, 0x24

    const-string v6, "MtkCdmaSmsMessage"

    if-le v0, v5, :cond_1

    .line 419
    const-string v0, "number of digit exceeds the SMS_ADDRESS_MAX"

    invoke-static {v6, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    return-object v4

    .line 422
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/BearerData;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;-><init>()V

    move-object v5, v0

    .line 423
    .local v5, "bearerData":Lcom/android/internal/telephony/cdma/sms/BearerData;
    const/4 v0, 0x2

    iput v0, v5, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    .line 425
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->getNextMessageId()I

    move-result v7

    iput v7, v5, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    .line 427
    move/from16 v7, p1

    iput-boolean v7, v5, Lcom/android/internal/telephony/cdma/sms/BearerData;->deliveryAckReq:Z

    .line 428
    const/4 v8, 0x0

    iput-boolean v8, v5, Lcom/android/internal/telephony/cdma/sms/BearerData;->userAckReq:Z

    .line 429
    iput-boolean v8, v5, Lcom/android/internal/telephony/cdma/sms/BearerData;->readAckReq:Z

    .line 430
    iput-boolean v8, v5, Lcom/android/internal/telephony/cdma/sms/BearerData;->reportReq:Z

    .line 432
    move-object/from16 v9, p2

    iput-object v9, v5, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    .line 434
    const-wide/16 v10, 0x0

    cmp-long v10, p3, v10

    if-lez v10, :cond_2

    .line 436
    new-instance v10, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    invoke-direct {v10}, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;-><init>()V

    iput-object v10, v5, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    .line 441
    :cond_2
    const/4 v10, 0x1

    if-ltz v1, :cond_3

    .line 442
    iput-boolean v10, v5, Lcom/android/internal/telephony/cdma/sms/BearerData;->validityPeriodRelativeSet:Z

    .line 443
    iput v1, v5, Lcom/android/internal/telephony/cdma/sms/BearerData;->validityPeriodRelative:I

    goto :goto_0

    .line 445
    :cond_3
    iput-boolean v8, v5, Lcom/android/internal/telephony/cdma/sms/BearerData;->validityPeriodRelativeSet:Z

    .line 449
    :goto_0
    if-ltz v2, :cond_4

    .line 450
    iput-boolean v10, v5, Lcom/android/internal/telephony/cdma/sms/BearerData;->priorityIndicatorSet:Z

    .line 451
    iput v2, v5, Lcom/android/internal/telephony/cdma/sms/BearerData;->priority:I

    goto :goto_1

    .line 453
    :cond_4
    iput-boolean v8, v5, Lcom/android/internal/telephony/cdma/sms/BearerData;->priorityIndicatorSet:Z

    .line 456
    :goto_1
    invoke-static {v5}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode(Lcom/android/internal/telephony/cdma/sms/BearerData;)[B

    move-result-object v11

    .line 457
    .local v11, "encodedBearerData":[B
    const-string v12, "CDMA:SMS"

    invoke-static {v12, v0}, Landroid/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 458
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "MO (encoded) BearerData = "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    if-eqz v11, :cond_5

    .line 460
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "MO raw BearerData = \'"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    invoke-static {v11}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "\'"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 460
    invoke-static {v6, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    :cond_5
    if-nez v11, :cond_6

    .line 465
    return-object v4

    .line 467
    :cond_6
    iget-boolean v0, v5, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    if-eqz v0, :cond_7

    .line 468
    const/16 v0, 0x1005

    goto :goto_2

    :cond_7
    const/16 v0, 0x1002

    :goto_2
    move v12, v0

    .line 471
    .local v12, "teleservice":I
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;-><init>()V

    move-object v13, v0

    .line 472
    .local v13, "envelope":Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    iput v8, v13, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    .line 473
    iput v12, v13, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    .line 474
    iput-object v3, v13, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->destAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 475
    iput v10, v13, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerReply:I

    .line 476
    iput-object v11, v13, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    .line 488
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v10, 0x64

    invoke-direct {v0, v10}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 489
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v10, Ljava/io/DataOutputStream;

    invoke-direct {v10, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 490
    .local v10, "dos":Ljava/io/DataOutputStream;
    iget v14, v13, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    invoke-virtual {v10, v14}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 491
    invoke-virtual {v10, v8}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 492
    invoke-virtual {v10, v8}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 493
    iget v14, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    invoke-virtual {v10, v14}, Ljava/io/DataOutputStream;->write(I)V

    .line 494
    iget v14, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    invoke-virtual {v10, v14}, Ljava/io/DataOutputStream;->write(I)V

    .line 495
    iget v14, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    invoke-virtual {v10, v14}, Ljava/io/DataOutputStream;->write(I)V

    .line 496
    iget v14, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    invoke-virtual {v10, v14}, Ljava/io/DataOutputStream;->write(I)V

    .line 497
    iget v14, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    invoke-virtual {v10, v14}, Ljava/io/DataOutputStream;->write(I)V

    .line 498
    iget-object v14, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    iget-object v15, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    array-length v15, v15

    invoke-virtual {v10, v14, v8, v15}, Ljava/io/DataOutputStream;->write([BII)V

    .line 500
    invoke-virtual {v10, v8}, Ljava/io/DataOutputStream;->write(I)V

    .line 501
    invoke-virtual {v10, v8}, Ljava/io/DataOutputStream;->write(I)V

    .line 502
    invoke-virtual {v10, v8}, Ljava/io/DataOutputStream;->write(I)V

    .line 503
    array-length v14, v11

    invoke-virtual {v10, v14}, Ljava/io/DataOutputStream;->write(I)V

    .line 504
    array-length v14, v11

    invoke-virtual {v10, v11, v8, v14}, Ljava/io/DataOutputStream;->write([BII)V

    .line 505
    invoke-virtual {v10}, Ljava/io/DataOutputStream;->close()V

    .line 507
    new-instance v8, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    invoke-direct {v8}, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;-><init>()V

    .line 508
    .local v8, "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v14

    iput-object v14, v8, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;->encodedMessage:[B

    .line 509
    iput-object v4, v8, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;->encodedScAddress:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 510
    return-object v8

    .line 511
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v8    # "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .end local v10    # "dos":Ljava/io/DataOutputStream;
    :catch_0
    move-exception v0

    .line 512
    .local v0, "ex":Ljava/io/IOException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "creating SubmitPdu failed: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    .end local v0    # "ex":Ljava/io/IOException;
    return-object v4
.end method

.method private static replaceIddNddWithPluscode(Lcom/android/internal/telephony/SmsAddress;)V
    .locals 4
    .param p0, "addr"    # Lcom/android/internal/telephony/SmsAddress;

    .line 661
    if-nez p0, :cond_0

    .line 662
    return-void

    .line 665
    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 666
    .local v0, "orignalStr":Ljava/lang/String;
    iget v1, p0, Lcom/android/internal/telephony/SmsAddress;->ton:I

    invoke-static {v1, v0}, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->handlePlusCodeInternal(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 667
    .local v1, "number":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 668
    return-void

    .line 670
    :cond_1
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 671
    .local v2, "changed":Z
    if-eqz v2, :cond_2

    .line 672
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    .line 673
    iput-object v1, p0, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    .line 675
    :cond_2
    return-void
.end method


# virtual methods
.method public getDestinationAddress()Ljava/lang/String;
    .locals 1

    .line 684
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOriginatingAddress()Ljava/lang/String;
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->replaceIddNddWithPluscode(Lcom/android/internal/telephony/SmsAddress;)V

    .line 267
    invoke-super {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public parsePduFromEfRecord([B)V
    .locals 19
    .param p1, "pdu"    # [B

    .line 128
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "MtkCdmaSmsMessage"

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v4, v0

    .line 129
    .local v4, "bais":Ljava/io/ByteArrayInputStream;
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v5, v0

    .line 130
    .local v5, "dis":Ljava/io/DataInputStream;
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;-><init>()V

    move-object v6, v0

    .line 131
    .local v6, "env":Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;-><init>()V

    move-object v7, v0

    .line 132
    .local v7, "addr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;-><init>()V

    move-object v8, v0

    .line 134
    .local v8, "subAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    :try_start_0
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    iput v0, v6, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    .line 135
    :goto_0
    invoke-virtual {v5}, Ljava/io/DataInputStream;->available()I

    move-result v0

    if-lez v0, :cond_c

    .line 136
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    .line 137
    .local v0, "parameterId":I
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v9

    .line 138
    .local v9, "parameterLen":I
    new-array v10, v9, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 139
    .local v10, "parameterData":[B
    const/4 v11, 0x2

    const/4 v12, 0x6

    const/4 v13, 0x3

    const/16 v15, 0x8

    const/4 v14, 0x0

    packed-switch v0, :pswitch_data_0

    .line 250
    move-object/from16 v18, v8

    move/from16 v17, v9

    .end local v8    # "subAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    .end local v9    # "parameterLen":I
    .local v17, "parameterLen":I
    .local v18, "subAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    :try_start_1
    new-instance v8, Ljava/lang/Exception;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_6

    .line 246
    .end local v17    # "parameterLen":I
    .end local v18    # "subAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    .restart local v8    # "subAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    .restart local v9    # "parameterLen":I
    :pswitch_0
    :try_start_2
    invoke-virtual {v5, v10, v14, v9}, Ljava/io/DataInputStream;->read([BII)I

    .line 247
    iput-object v10, v6, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    .line 248
    move-object/from16 v18, v8

    goto/16 :goto_5

    .line 238
    :pswitch_1
    invoke-virtual {v5, v10, v14, v9}, Ljava/io/DataInputStream;->read([BII)I

    .line 239
    new-instance v13, Lcom/android/internal/util/BitwiseInputStream;

    invoke-direct {v13, v10}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 240
    .local v13, "ccBis":Lcom/android/internal/util/BitwiseInputStream;
    invoke-virtual {v13, v12}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v12

    aget-byte v12, v12, v14

    iput-byte v12, v6, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->replySeqNo:B

    .line 241
    invoke-virtual {v13, v11}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v11

    aget-byte v11, v11, v14

    iput-byte v11, v6, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->errorClass:B

    .line 242
    iget-byte v11, v6, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->errorClass:B

    if-eqz v11, :cond_0

    .line 243
    invoke-virtual {v13, v15}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v11

    aget-byte v11, v11, v14

    iput-byte v11, v6, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->causeCode:B

    move-object/from16 v18, v8

    goto/16 :goto_5

    .line 242
    :cond_0
    move-object/from16 v18, v8

    goto/16 :goto_5

    .line 233
    .end local v13    # "ccBis":Lcom/android/internal/util/BitwiseInputStream;
    :pswitch_2
    invoke-virtual {v5, v10, v14, v9}, Ljava/io/DataInputStream;->read([BII)I

    .line 234
    new-instance v11, Lcom/android/internal/util/BitwiseInputStream;

    invoke-direct {v11, v10}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 235
    .local v11, "replyOptBis":Lcom/android/internal/util/BitwiseInputStream;
    invoke-virtual {v11, v12}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v12

    iput v12, v6, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerReply:I

    .line 236
    move-object/from16 v18, v8

    goto/16 :goto_5

    .line 214
    .end local v11    # "replyOptBis":Lcom/android/internal/util/BitwiseInputStream;
    :pswitch_3
    invoke-virtual {v5, v10, v14, v9}, Ljava/io/DataInputStream;->read([BII)I

    .line 215
    new-instance v11, Lcom/android/internal/util/BitwiseInputStream;

    invoke-direct {v11, v10}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 216
    .local v11, "subAddrBis":Lcom/android/internal/util/BitwiseInputStream;
    invoke-virtual {v11, v13}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v12

    iput v12, v8, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->type:I

    .line 217
    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v12

    aget-byte v12, v12, v14

    iput-byte v12, v8, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->odd:B

    .line 218
    invoke-virtual {v11, v15}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v12

    .line 219
    .local v12, "subAddrLen":I
    new-array v14, v12, [B

    .line 220
    .local v14, "subdata":[B
    const/4 v15, 0x0

    .local v15, "index":I
    :goto_1
    if-ge v15, v12, :cond_1

    .line 221
    move/from16 v16, v12

    const/4 v13, 0x4

    .end local v12    # "subAddrLen":I
    .local v16, "subAddrLen":I
    invoke-virtual {v11, v13}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v12

    and-int/lit16 v12, v12, 0xff

    int-to-byte v12, v12

    .line 223
    .local v12, "b":B
    invoke-static {v12}, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->convertDtmfToAscii(B)B

    move-result v13

    aput-byte v13, v14, v15

    .line 220
    add-int/lit8 v15, v15, 0x1

    move/from16 v12, v16

    const/4 v13, 0x3

    goto :goto_1

    .end local v16    # "subAddrLen":I
    .local v12, "subAddrLen":I
    :cond_1
    move/from16 v16, v12

    .line 225
    .end local v12    # "subAddrLen":I
    .end local v15    # "index":I
    .restart local v16    # "subAddrLen":I
    iput-object v14, v8, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->origBytes:[B

    .line 226
    const/4 v12, 0x3

    if-ne v0, v12, :cond_2

    .line 227
    iput-object v8, v6, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origSubaddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    move-object/from16 v18, v8

    goto/16 :goto_5

    .line 229
    :cond_2
    iput-object v8, v6, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->destSubaddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 231
    move-object/from16 v18, v8

    goto/16 :goto_5

    .line 255
    .end local v0    # "parameterId":I
    .end local v9    # "parameterLen":I
    .end local v10    # "parameterData":[B
    .end local v11    # "subAddrBis":Lcom/android/internal/util/BitwiseInputStream;
    .end local v14    # "subdata":[B
    .end local v16    # "subAddrLen":I
    :catch_0
    move-exception v0

    move-object/from16 v18, v8

    goto/16 :goto_7

    .line 158
    .restart local v0    # "parameterId":I
    .restart local v9    # "parameterLen":I
    .restart local v10    # "parameterData":[B
    :pswitch_4
    :try_start_3
    invoke-virtual {v5, v10, v14, v9}, Ljava/io/DataInputStream;->read([BII)I

    .line 159
    new-instance v12, Lcom/android/internal/util/BitwiseInputStream;

    invoke-direct {v12, v10}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 160
    .local v12, "addrBis":Lcom/android/internal/util/BitwiseInputStream;
    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v14

    iput v14, v7, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    .line 161
    invoke-virtual {v12, v13}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v14

    iput v14, v7, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    .line 162
    const/4 v14, 0x0

    .line 163
    .local v14, "numberType":I
    iget v11, v7, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    if-ne v11, v13, :cond_3

    .line 164
    const/4 v11, 0x3

    :try_start_4
    invoke-virtual {v12, v11}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v11

    move v14, v11

    .line 165
    iput v14, v7, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    .line 166
    iget v11, v7, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    if-nez v11, :cond_3

    .line 167
    const/4 v11, 0x4

    invoke-virtual {v12, v11}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v13

    iput v13, v7, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 169
    :cond_3
    :try_start_5
    invoke-virtual {v12, v15}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v11

    iput v11, v7, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    .line 170
    iget v11, v7, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    new-array v11, v11, [B

    .line 171
    .local v11, "data":[B
    const/4 v13, 0x0

    .line 172
    .local v13, "b":B
    iget v15, v7, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    if-nez v15, :cond_5

    .line 174
    const/4 v15, 0x0

    .restart local v15    # "index":I
    :goto_2
    move-object/from16 v18, v8

    .end local v8    # "subAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    .restart local v18    # "subAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    :try_start_6
    iget v8, v7, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    if-ge v15, v8, :cond_4

    .line 175
    const/4 v8, 0x4

    invoke-virtual {v12, v8}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v16

    and-int/lit8 v8, v16, 0xf

    int-to-byte v13, v8

    .line 178
    invoke-static {v13}, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->convertDtmfToAscii(B)B

    move-result v8

    aput-byte v8, v11, v15

    .line 174
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v8, v18

    goto :goto_2

    :cond_4
    move/from16 v17, v9

    .end local v15    # "index":I
    goto :goto_4

    .line 180
    .end local v18    # "subAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    .restart local v8    # "subAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    :cond_5
    move-object/from16 v18, v8

    .end local v8    # "subAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    .restart local v18    # "subAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    iget v8, v7, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    const/4 v15, 0x1

    if-ne v8, v15, :cond_a

    .line 181
    iget v8, v7, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    if-nez v8, :cond_7

    .line 182
    const/4 v8, 0x0

    .local v8, "index":I
    :goto_3
    iget v15, v7, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    if-ge v8, v15, :cond_6

    .line 183
    move/from16 v17, v9

    const/16 v15, 0x8

    .end local v9    # "parameterLen":I
    .restart local v17    # "parameterLen":I
    invoke-virtual {v12, v15}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v9

    and-int/lit16 v9, v9, 0xff

    int-to-byte v13, v9

    .line 184
    aput-byte v13, v11, v8

    .line 182
    add-int/lit8 v8, v8, 0x1

    move/from16 v9, v17

    goto :goto_3

    .end local v17    # "parameterLen":I
    .restart local v9    # "parameterLen":I
    :cond_6
    move/from16 v17, v9

    .end local v8    # "index":I
    .end local v9    # "parameterLen":I
    .restart local v17    # "parameterLen":I
    goto :goto_4

    .line 186
    .end local v17    # "parameterLen":I
    .restart local v9    # "parameterLen":I
    :cond_7
    move/from16 v17, v9

    .end local v9    # "parameterLen":I
    .restart local v17    # "parameterLen":I
    iget v8, v7, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_9

    .line 187
    const/4 v8, 0x2

    if-ne v14, v8, :cond_8

    .line 188
    const-string v8, "TODO: Addr is email id"

    invoke-static {v3, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 190
    :cond_8
    const-string v8, "TODO: Addr is data network address"

    invoke-static {v3, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 193
    :cond_9
    const-string v8, "Addr is of incorrect type"

    invoke-static {v3, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 196
    .end local v17    # "parameterLen":I
    .restart local v9    # "parameterLen":I
    :cond_a
    move/from16 v17, v9

    .end local v9    # "parameterLen":I
    .restart local v17    # "parameterLen":I
    const-string v8, "Incorrect Digit mode"

    invoke-static {v3, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :goto_4
    iput-object v11, v7, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    .line 199
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Addr="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 204
    iput-object v7, v6, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 205
    iput-object v7, v1, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    .line 206
    const/4 v8, 0x4

    if-ne v0, v8, :cond_b

    .line 207
    iput-object v7, v6, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->destAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 208
    iput-object v7, v1, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->mRecipientAddress:Lcom/android/internal/telephony/SmsAddress;

    goto :goto_5

    .line 154
    .end local v11    # "data":[B
    .end local v12    # "addrBis":Lcom/android/internal/util/BitwiseInputStream;
    .end local v13    # "b":B
    .end local v14    # "numberType":I
    .end local v17    # "parameterLen":I
    .end local v18    # "subAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    .local v8, "subAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    .restart local v9    # "parameterLen":I
    :pswitch_5
    move-object/from16 v18, v8

    move/from16 v17, v9

    .end local v8    # "subAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    .end local v9    # "parameterLen":I
    .restart local v17    # "parameterLen":I
    .restart local v18    # "subAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v8

    iput v8, v6, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    .line 155
    goto :goto_5

    .line 146
    .end local v17    # "parameterLen":I
    .end local v18    # "subAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    .restart local v8    # "subAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    .restart local v9    # "parameterLen":I
    :pswitch_6
    move-object/from16 v18, v8

    move/from16 v17, v9

    .end local v8    # "subAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    .end local v9    # "parameterLen":I
    .restart local v17    # "parameterLen":I
    .restart local v18    # "subAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v8

    iput v8, v6, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    .line 147
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "teleservice = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v6, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    nop

    .line 252
    .end local v0    # "parameterId":I
    .end local v10    # "parameterData":[B
    .end local v17    # "parameterLen":I
    :cond_b
    :goto_5
    move-object/from16 v8, v18

    goto/16 :goto_0

    .line 250
    .restart local v0    # "parameterId":I
    .restart local v10    # "parameterData":[B
    .restart local v17    # "parameterLen":I
    :goto_6
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "unsupported parameterId ("

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ")"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .end local v4    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v5    # "dis":Ljava/io/DataInputStream;
    .end local v6    # "env":Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    .end local v7    # "addr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .end local v18    # "subAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    .end local p0    # "this":Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;
    .end local p1    # "pdu":[B
    throw v8

    .line 253
    .end local v0    # "parameterId":I
    .end local v10    # "parameterData":[B
    .end local v17    # "parameterLen":I
    .restart local v4    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v5    # "dis":Ljava/io/DataInputStream;
    .restart local v6    # "env":Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    .restart local v7    # "addr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .restart local v8    # "subAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    .restart local p0    # "this":Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;
    .restart local p1    # "pdu":[B
    :cond_c
    move-object/from16 v18, v8

    .end local v8    # "subAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    .restart local v18    # "subAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->close()V

    .line 254
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 257
    goto :goto_8

    .line 255
    :catch_1
    move-exception v0

    goto :goto_7

    .end local v18    # "subAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    .restart local v8    # "subAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    :catch_2
    move-exception v0

    move-object/from16 v18, v8

    .line 256
    .end local v8    # "subAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    .local v0, "ex":Ljava/lang/Exception;
    .restart local v18    # "subAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    :goto_7
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "parsePduFromEfRecord: conversion from pdu to SmsMessage failed"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_8
    iput-object v6, v1, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    .line 260
    iput-object v2, v1, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->mPdu:[B

    .line 261
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->parseSms()V

    .line 262
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public parseSms()V
    .locals 5

    .line 695
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    const-string v1, "MtkCdmaSmsMessage"

    const/high16 v2, 0x40000

    if-ne v0, v2, :cond_1

    .line 696
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/BearerData;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    .line 697
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    if-eqz v0, :cond_0

    .line 698
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    iput v2, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    .line 700
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseSms: get MWI "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v2, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    .line 701
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 700
    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    return-void

    .line 704
    :cond_1
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    invoke-static {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decode([B)Lcom/android/internal/telephony/cdma/sms/BearerData;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    .line 705
    const-string v0, "CDMA:SMS"

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 706
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MT raw BearerData = \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    .line 707
    invoke-static {v3}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 706
    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MT (decoded) BearerData = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    :cond_2
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    if-eqz v0, :cond_d

    .line 714
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    iput v0, p0, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->mMessageRef:I

    .line 715
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    if-eqz v0, :cond_3

    .line 716
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iput-object v0, p0, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->mUserData:[B

    .line 717
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 718
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->mMessageBody:Ljava/lang/String;

    .line 721
    :cond_3
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v0, :cond_4

    .line 722
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->decodeSmsDisplayAddress(Lcom/android/internal/telephony/SmsAddress;)V

    .line 725
    :cond_4
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->mRecipientAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v0, :cond_5

    .line 726
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->mRecipientAddress:Lcom/android/internal/telephony/SmsAddress;

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->decodeSmsDisplayAddress(Lcom/android/internal/telephony/SmsAddress;)V

    .line 729
    :cond_5
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    if-eqz v0, :cond_6

    .line 730
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->toMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->mScTimeMillis:J

    .line 734
    :cond_6
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    const/4 v3, 0x4

    if-ne v0, v3, :cond_9

    .line 742
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageStatusSet:Z

    if-nez v0, :cond_8

    .line 743
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DELIVERY_ACK message without msgStatus ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 744
    iget-object v3, p0, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->mUserData:[B

    if-nez v3, :cond_7

    const-string v3, "also missing"

    goto :goto_0

    :cond_7
    const-string v3, "does have"

    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " userData)."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 743
    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    iput v2, p0, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->status:I

    goto :goto_1

    .line 748
    :cond_8
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->errorClass:I

    shl-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->status:I

    .line 749
    iget v0, p0, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->status:I

    iget-object v1, p0, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageStatus:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->status:I

    goto :goto_1

    .line 751
    :cond_9
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_b

    iget-object v0, p0, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    if-ne v0, v2, :cond_a

    goto :goto_1

    .line 753
    :cond_a
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported message type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v2, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 756
    :cond_b
    :goto_1
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->mMessageBody:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 757
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->parseMessageBody()V

    .line 759
    :cond_c
    return-void

    .line 711
    :cond_d
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unsupported message: BearerData decode failed."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

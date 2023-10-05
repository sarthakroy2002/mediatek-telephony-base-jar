.class public final Lmediatek/telephony/MtkTelephony$MtkSms$Intents;
.super Ljava/lang/Object;
.source "MtkTelephony.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmediatek/telephony/MtkTelephony$MtkSms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Intents"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 634
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 635
    return-void
.end method

.method public static getMessagesFromIntent(Landroid/content/Intent;)[Lmediatek/telephony/MtkSmsMessage;
    .locals 8
    .param p0, "intent"    # Landroid/content/Intent;

    .line 647
    const-string v0, "MtkTelephony"

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "pdus"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 652
    .local v2, "messages":[Ljava/lang/Object;
    nop

    .line 654
    if-nez v2, :cond_0

    .line 655
    const-string v3, "pdus does not exist in the intent"

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    return-object v1

    .line 659
    :cond_0
    const-string v1, "format"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 660
    .local v1, "format":Ljava/lang/String;
    nop

    .line 661
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubscriptionId()I

    move-result v3

    .line 660
    const-string v4, "subscription"

    invoke-virtual {p0, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 663
    .local v3, "subId":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " getMessagesFromIntent sub_id : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    array-length v0, v2

    .line 666
    .local v0, "pduCount":I
    new-array v4, v0, [Lmediatek/telephony/MtkSmsMessage;

    .line 668
    .local v4, "msgs":[Lmediatek/telephony/MtkSmsMessage;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v0, :cond_2

    .line 669
    aget-object v6, v2, v5

    check-cast v6, [B

    .line 670
    .local v6, "pdu":[B
    invoke-static {v6, v1}, Lmediatek/telephony/MtkSmsMessage;->createFromPdu([BLjava/lang/String;)Lmediatek/telephony/MtkSmsMessage;

    move-result-object v7

    aput-object v7, v4, v5

    .line 671
    aget-object v7, v4, v5

    if-eqz v7, :cond_1

    aget-object v7, v4, v5

    invoke-virtual {v7, v3}, Lmediatek/telephony/MtkSmsMessage;->setSubId(I)V

    .line 668
    .end local v6    # "pdu":[B
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 673
    .end local v5    # "i":I
    :cond_2
    return-object v4

    .line 649
    .end local v0    # "pduCount":I
    .end local v1    # "format":Ljava/lang/String;
    .end local v2    # "messages":[Ljava/lang/Object;
    .end local v3    # "subId":I
    .end local v4    # "msgs":[Lmediatek/telephony/MtkSmsMessage;
    :catch_0
    move-exception v2

    .line 650
    .local v2, "e":Ljava/lang/ClassCastException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMessagesFromIntent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    return-object v1
.end method

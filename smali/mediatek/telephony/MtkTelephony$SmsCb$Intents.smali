.class public final Lmediatek/telephony/MtkTelephony$SmsCb$Intents;
.super Ljava/lang/Object;
.source "MtkTelephony.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmediatek/telephony/MtkTelephony$SmsCb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Intents"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 408
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsCbMessage;
    .locals 4
    .param p0, "intent"    # Landroid/content/Intent;

    .line 418
    const-string v0, "message"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    .line 419
    .local v0, "messages":[Landroid/os/Parcelable;
    if-nez v0, :cond_0

    .line 420
    const/4 v1, 0x0

    return-object v1

    .line 423
    :cond_0
    array-length v1, v0

    new-array v1, v1, [Landroid/telephony/SmsCbMessage;

    .line 425
    .local v1, "msgs":[Landroid/telephony/SmsCbMessage;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 426
    aget-object v3, v0, v2

    check-cast v3, Landroid/telephony/SmsCbMessage;

    aput-object v3, v1, v2

    .line 425
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 428
    .end local v2    # "i":I
    :cond_1
    return-object v1
.end method

.class public Lcom/mediatek/internal/telephony/MtkSubscriptionManager;
.super Ljava/lang/Object;
.source "MtkSubscriptionManager.java"


# static fields
.field private static final DBG:Z = false

.field public static final EXTRA_VALUE_NEW_SIM:I = 0x1

.field public static final EXTRA_VALUE_NOCHANGE:I = 0x4

.field public static final EXTRA_VALUE_REMOVE_SIM:I = 0x2

.field public static final EXTRA_VALUE_REPOSITION_SIM:I = 0x3

.field public static final INTENT_KEY_DETECT_STATUS:Ljava/lang/String; = "simDetectStatus"

.field public static final INTENT_KEY_PROP_KEY:Ljava/lang/String; = "simPropKey"

.field public static final INTENT_KEY_SIM_COUNT:Ljava/lang/String; = "simCount"

.field private static final LOG_TAG:Ljava/lang/String; = "MtkSubscriptionManager"

.field private static final VDBG:Z = false


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    return-void
.end method

.method public static getSubIdUsingPhoneId(I)I
    .locals 3
    .param p0, "phoneId"    # I

    .line 174
    const/4 v0, -0x1

    .line 177
    .local v0, "subId":I
    :try_start_0
    const-string v1, "isubstub"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/IMtkSub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/IMtkSub;

    move-result-object v1

    .line 178
    .local v1, "iSub":Lcom/mediatek/internal/telephony/IMtkSub;
    if-eqz v1, :cond_0

    .line 179
    invoke-interface {v1, p0}, Lcom/mediatek/internal/telephony/IMtkSub;->getSubIdUsingPhoneId(I)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 183
    .end local v1    # "iSub":Lcom/mediatek/internal/telephony/IMtkSub;
    :cond_0
    goto :goto_0

    .line 181
    :catch_0
    move-exception v1

    .line 185
    :goto_0
    return v0
.end method

.method public static getSubInfo(Ljava/lang/String;I)Lcom/mediatek/internal/telephony/MtkSubscriptionInfo;
    .locals 1
    .param p0, "callingPackage"    # Ljava/lang/String;
    .param p1, "subId"    # I

    .line 83
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/mediatek/internal/telephony/MtkSubscriptionManager;->getSubInfo(Ljava/lang/String;ILjava/lang/String;)Lcom/mediatek/internal/telephony/MtkSubscriptionInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getSubInfo(Ljava/lang/String;ILjava/lang/String;)Lcom/mediatek/internal/telephony/MtkSubscriptionInfo;
    .locals 3
    .param p0, "callingPackage"    # Ljava/lang/String;
    .param p1, "subId"    # I
    .param p2, "callingFeatureId"    # Ljava/lang/String;

    .line 101
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[getSubInfo]- invalid subId, subId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkSubscriptionManager"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    const/4 v0, 0x0

    return-object v0

    .line 106
    :cond_0
    const/4 v0, 0x0

    .line 109
    .local v0, "subInfo":Lcom/mediatek/internal/telephony/MtkSubscriptionInfo;
    :try_start_0
    const-string v1, "isubstub"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/IMtkSub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/IMtkSub;

    move-result-object v1

    .line 110
    .local v1, "iSub":Lcom/mediatek/internal/telephony/IMtkSub;
    if-eqz v1, :cond_1

    .line 111
    invoke-interface {v1, p0, p1, p2}, Lcom/mediatek/internal/telephony/IMtkSub;->getSubInfo(Ljava/lang/String;ILjava/lang/String;)Lcom/mediatek/internal/telephony/MtkSubscriptionInfo;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 115
    .end local v1    # "iSub":Lcom/mediatek/internal/telephony/IMtkSub;
    :cond_1
    goto :goto_0

    .line 113
    :catch_0
    move-exception v1

    .line 117
    :goto_0
    return-object v0
.end method

.method public static getSubInfoForIccId(Ljava/lang/String;Ljava/lang/String;)Lcom/mediatek/internal/telephony/MtkSubscriptionInfo;
    .locals 1
    .param p0, "callingPackage"    # Ljava/lang/String;
    .param p1, "iccId"    # Ljava/lang/String;

    .line 128
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/mediatek/internal/telephony/MtkSubscriptionManager;->getSubInfoForIccId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/mediatek/internal/telephony/MtkSubscriptionInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getSubInfoForIccId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/mediatek/internal/telephony/MtkSubscriptionInfo;
    .locals 3
    .param p0, "callingPackage"    # Ljava/lang/String;
    .param p1, "iccId"    # Ljava/lang/String;
    .param p2, "callingFeatureId"    # Ljava/lang/String;

    .line 145
    if-nez p1, :cond_0

    .line 146
    const-string v0, "MtkSubscriptionManager"

    const-string v1, "[getSubInfoForIccId]- null iccid"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const/4 v0, 0x0

    return-object v0

    .line 150
    :cond_0
    const/4 v0, 0x0

    .line 153
    .local v0, "result":Lcom/mediatek/internal/telephony/MtkSubscriptionInfo;
    :try_start_0
    const-string v1, "isubstub"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/IMtkSub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/IMtkSub;

    move-result-object v1

    .line 154
    .local v1, "iSub":Lcom/mediatek/internal/telephony/IMtkSub;
    if-eqz v1, :cond_1

    .line 155
    invoke-interface {v1, p0, p1, p2}, Lcom/mediatek/internal/telephony/IMtkSub;->getSubInfoForIccId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/mediatek/internal/telephony/MtkSubscriptionInfo;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 159
    .end local v1    # "iSub":Lcom/mediatek/internal/telephony/IMtkSub;
    :cond_1
    goto :goto_0

    .line 157
    :catch_0
    move-exception v1

    .line 161
    :goto_0
    return-object v0
.end method

.method private static printStackTrace(Ljava/lang/String;)V
    .locals 7
    .param p0, "msg"    # Ljava/lang/String;

    .line 239
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 240
    .local v0, "re":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StackTrace - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MtkSubscriptionManager"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 242
    .local v1, "st":[Ljava/lang/StackTraceElement;
    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v1, v4

    .line 243
    .local v5, "ste":Ljava/lang/StackTraceElement;
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    .end local v5    # "ste":Ljava/lang/StackTraceElement;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 245
    :cond_0
    return-void
.end method

.method public static setDefaultDataSubIdWithoutCapabilitySwitch(I)V
    .locals 1
    .param p0, "subId"    # I

    .line 220
    if-gtz p0, :cond_0

    .line 221
    const-string v0, "setDefaultDataSubIdWithoutCapabilitySwitch subId 0"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSubscriptionManager;->printStackTrace(Ljava/lang/String;)V

    .line 226
    :cond_0
    :try_start_0
    const-string v0, "isubstub"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/IMtkSub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/IMtkSub;

    move-result-object v0

    .line 227
    .local v0, "iSub":Lcom/mediatek/internal/telephony/IMtkSub;
    if-eqz v0, :cond_1

    .line 228
    invoke-interface {v0, p0}, Lcom/mediatek/internal/telephony/IMtkSub;->setDefaultDataSubIdWithoutCapabilitySwitch(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    .end local v0    # "iSub":Lcom/mediatek/internal/telephony/IMtkSub;
    :cond_1
    goto :goto_0

    .line 230
    :catch_0
    move-exception v0

    .line 233
    :goto_0
    return-void
.end method

.method public static setDefaultSubId(I)V
    .locals 2
    .param p0, "subId"    # I

    .line 196
    if-gtz p0, :cond_0

    .line 197
    const-string v0, "setDefaultSubId subId 0"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSubscriptionManager;->printStackTrace(Ljava/lang/String;)V

    .line 201
    :cond_0
    :try_start_0
    const-string v0, "isubstub"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/IMtkSub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/IMtkSub;

    move-result-object v0

    .line 202
    .local v0, "iSub":Lcom/mediatek/internal/telephony/IMtkSub;
    if-eqz v0, :cond_1

    .line 203
    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/mediatek/internal/telephony/IMtkSub;->setDefaultFallbackSubId(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    .end local v0    # "iSub":Lcom/mediatek/internal/telephony/IMtkSub;
    :cond_1
    goto :goto_0

    .line 206
    :catch_0
    move-exception v0

    .line 209
    :goto_0
    return-void
.end method

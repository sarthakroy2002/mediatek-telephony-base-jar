.class public Lcom/mediatek/telephony/MtkTelephonyManagerEx;
.super Ljava/lang/Object;
.source "MtkTelephonyManagerEx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/telephony/MtkTelephonyManagerEx$OemHookCallback;
    }
.end annotation


# static fields
.field public static final APP_FAM_3GPP:I = 0x1

.field public static final APP_FAM_3GPP2:I = 0x2

.field public static final APP_FAM_NONE:I = 0x0

.field public static final CARD_TYPE_CSIM:I = 0x4

.field public static final CARD_TYPE_NONE:I = 0x0

.field public static final CARD_TYPE_RUIM:I = 0x8

.field public static final CARD_TYPE_SIM:I = 0x1

.field public static final CARD_TYPE_USIM:I = 0x2

.field public static final FAIL_RETRY:I = -0x1

.field public static final FAIL_RETRY_NO_NEED:I = -0x2

.field private static final PRLVERSION:Ljava/lang/String; = "vendor.cdma.prl.version"

.field private static final PROPERTY_RIL_CDMA_CARD_TYPE:[Ljava/lang/String;

.field private static final PROPERTY_RIL_CT3G:[Ljava/lang/String;

.field private static final PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

.field public static final PROPERTY_SIM_CARD_ONOFF:Ljava/lang/String; = "ro.vendor.mtk_sim_card_onoff"

.field public static final PROPERTY_SIM_ONOFF_STATE:[Ljava/lang/String;

.field public static final PROPERTY_SIM_ONOFF_SUPPORT:Ljava/lang/String; = "vendor.ril.sim.onoff.support"

.field private static final PROPERTY_SIM_SLOT_LOCK_CARD_VALID:[Ljava/lang/String;

.field private static final PROPERTY_SIM_SLOT_LOCK_POLICY:Ljava/lang/String; = "vendor.gsm.sim.slot.lock.policy"

.field private static final PROPERTY_SIM_SLOT_LOCK_SERVICE_CAPABILITY:[Ljava/lang/String;

.field private static final PROPERTY_SIM_SLOT_LOCK_STATE:Ljava/lang/String; = "vendor.gsm.sim.slot.lock.state"

.field private static final PROPERTY_SML_MODE:Ljava/lang/String; = "ro.vendor.sim_me_lock_mode"

.field public static final SET_SIM_POWER_ERROR_ALREADY_SIM_OFF:I = 0xe

.field public static final SET_SIM_POWER_ERROR_ALREADY_SIM_ON:I = 0xf

.field public static final SET_SIM_POWER_ERROR_EXECUTING_SIM_OFF:I = 0xc

.field public static final SET_SIM_POWER_ERROR_EXECUTING_SIM_ON:I = 0xd

.field public static final SET_SIM_POWER_ERROR_NOT_ALLOWED:I = 0x36

.field public static final SET_SIM_POWER_ERROR_NOT_SUPPORT:I = -0x1

.field public static final SET_SIM_POWER_ERROR_SIM_ABSENT:I = 0xb

.field public static final SET_SIM_POWER_SUCCESS:I = 0x0

.field public static final SIM_POWER_STATE_EXECUTING_SIM_OFF:I = 0xa

.field public static final SIM_POWER_STATE_EXECUTING_SIM_ON:I = 0xb

.field public static final SIM_POWER_STATE_SIM_OFF:I = 0xa

.field public static final SIM_POWER_STATE_SIM_ON:I = 0xb

.field public static final SIM_SWITCH_MODE_AOSP_SIM_ONOFF:I = 0x3

.field public static final SIM_SWITCH_MODE_MTK_SIM_ONOFF:I = 0x2

.field public static final SIM_SWITCH_MODE_RADIO_ONOFF:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MtkTelephonyManagerEx"

.field private static sInstance:Lcom/mediatek/telephony/MtkTelephonyManagerEx;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsSmlLockMode:Z

.field private mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 138
    const-string v0, "vendor.gsm.ril.fulluicctype"

    const-string v1, "vendor.gsm.ril.fulluicctype.2"

    const-string v2, "vendor.gsm.ril.fulluicctype.3"

    const-string v3, "vendor.gsm.ril.fulluicctype.4"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

    .line 148
    const-string v0, "vendor.gsm.ril.ct3g"

    const-string v1, "vendor.gsm.ril.ct3g.2"

    const-string v2, "vendor.gsm.ril.ct3g.3"

    const-string v3, "vendor.gsm.ril.ct3g.4"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->PROPERTY_RIL_CT3G:[Ljava/lang/String;

    .line 158
    const-string v0, "vendor.ril.cdma.card.type.1"

    const-string v1, "vendor.ril.cdma.card.type.2"

    const-string v2, "vendor.ril.cdma.card.type.3"

    const-string v3, "vendor.ril.cdma.card.type.4"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->PROPERTY_RIL_CDMA_CARD_TYPE:[Ljava/lang/String;

    .line 180
    const-string v0, "vendor.gsm.sim.slot.lock.service.capability"

    const-string v1, "vendor.gsm.sim.slot.lock.service.capability.2"

    const-string v2, "vendor.gsm.sim.slot.lock.service.capability.3"

    const-string v3, "vendor.gsm.sim.slot.lock.service.capability.4"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->PROPERTY_SIM_SLOT_LOCK_SERVICE_CAPABILITY:[Ljava/lang/String;

    .line 190
    const-string v0, "vendor.gsm.sim.slot.lock.card.valid"

    const-string v1, "vendor.gsm.sim.slot.lock.card.valid.2"

    const-string v2, "vendor.gsm.sim.slot.lock.card.valid.3"

    const-string v3, "vendor.gsm.sim.slot.lock.card.valid.4"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->PROPERTY_SIM_SLOT_LOCK_CARD_VALID:[Ljava/lang/String;

    .line 209
    const-string v0, "vendor.ril.sim.onoff.state1"

    const-string v1, "vendor.ril.sim.onoff.state2"

    const-string v2, "vendor.ril.sim.onoff.state3"

    const-string v3, "vendor.ril.sim.onoff.state4"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->PROPERTY_SIM_ONOFF_STATE:[Ljava/lang/String;

    .line 259
    new-instance v0, Lcom/mediatek/telephony/MtkTelephonyManagerEx;

    invoke-direct {v0}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;-><init>()V

    sput-object v0, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->sInstance:Lcom/mediatek/telephony/MtkTelephonyManagerEx;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->mContext:Landroid/content/Context;

    .line 203
    const-string v0, "ro.vendor.sim_me_lock_mode"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->mIsSmlLockMode:Z

    .line 255
    const-string v0, "telephony.registry"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    .line 257
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->mContext:Landroid/content/Context;

    .line 203
    const-string v0, "ro.vendor.sim_me_lock_mode"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->mIsSmlLockMode:Z

    .line 247
    iput-object p1, p0, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->mContext:Landroid/content/Context;

    .line 248
    const-string v0, "telephony.registry"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    .line 251
    return-void
.end method

.method public static getDefault()Lcom/mediatek/telephony/MtkTelephonyManagerEx;
    .locals 1

    .line 269
    sget-object v0, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->sInstance:Lcom/mediatek/telephony/MtkTelephonyManagerEx;

    return-object v0
.end method

.method private getIMtkTelephonyEx()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;
    .locals 1

    .line 305
    const-string v0, "phoneEx"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v0

    return-object v0
.end method

.method private getITelephony()Lcom/android/internal/telephony/ITelephony;
    .locals 1

    .line 301
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    return-object v0
.end method

.method private getMtkSubscriberInfoEx()Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx;
    .locals 1

    .line 372
    const-string v0, "iphonesubinfoEx"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx;

    move-result-object v0

    return-object v0
.end method

.method private getOpPackageName()Ljava/lang/String;
    .locals 1

    .line 447
    iget-object v0, p0, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 448
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 450
    :cond_0
    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSubIdBySlot(I)I
    .locals 4
    .param p1, "slot"    # I

    .line 294
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 295
    .local v0, "subId":[I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSubIdBySlot, simId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "subId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    const/4 v2, 0x0

    if-eqz v0, :cond_0

    aget v3, v0, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    :cond_0
    const-string v3, "invalid!"

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 295
    const-string v3, "MtkTelephonyManagerEx"

    invoke-static {v3, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    if-eqz v0, :cond_1

    aget v1, v0, v2

    goto :goto_1

    :cond_1
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v1

    :goto_1
    return v1
.end method

.method private getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;
    .locals 1

    .line 310
    const-string v0, "iphonesubinfo"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abortFemtoCellList(I)Z
    .locals 5
    .param p1, "phoneId"    # I

    .line 1600
    const-string v0, "MtkTelephonyManagerEx"

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getIMtkTelephonyEx()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v2

    .line 1601
    .local v2, "telephonyEx":Lcom/mediatek/internal/telephony/IMtkTelephonyEx;
    if-nez v2, :cond_0

    .line 1602
    const-string v3, "abortFemtoCellList error because telephony is null"

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1603
    return v1

    .line 1605
    :cond_0
    invoke-interface {v2, p1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->abortFemtoCellList(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1609
    .end local v2    # "telephonyEx":Lcom/mediatek/internal/telephony/IMtkTelephonyEx;
    :catch_0
    move-exception v2

    .line 1610
    .local v2, "ex":Ljava/lang/NullPointerException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "abortFemtoCellList error due to NullPointerException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1611
    return v1

    .line 1606
    .end local v2    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v2

    .line 1607
    .local v2, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "abortFemtoCellList error due to RemoteException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1608
    return v1
.end method

.method public addGwsdListener(ILcom/mediatek/gwsd/GwsdListener;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Lcom/mediatek/gwsd/GwsdListener;

    .line 2104
    :try_start_0
    const-string v0, "gwsd"

    .line 2105
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2104
    invoke-static {v0}, Lcom/mediatek/gwsd/IGwsdService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/gwsd/IGwsdService;

    move-result-object v0

    .line 2106
    .local v0, "iGwsdService":Lcom/mediatek/gwsd/IGwsdService;
    if-eqz v0, :cond_0

    .line 2107
    iget-object v1, p2, Lcom/mediatek/gwsd/GwsdListener;->callback:Lcom/mediatek/gwsd/IGwsdListener;

    invoke-interface {v0, p1, v1}, Lcom/mediatek/gwsd/IGwsdService;->addListener(ILcom/mediatek/gwsd/IGwsdListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2111
    .end local v0    # "iGwsdService":Lcom/mediatek/gwsd/IGwsdService;
    :cond_0
    goto :goto_0

    .line 2109
    :catch_0
    move-exception v0

    .line 2110
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "MtkTelephonyManagerEx"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2112
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public addGwsdListener(Lcom/mediatek/gwsd/GwsdListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/mediatek/gwsd/GwsdListener;

    .line 2098
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    .line 2097
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 2099
    .local v0, "defDataPhoneId":I
    invoke-virtual {p0, v0, p1}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->addGwsdListener(ILcom/mediatek/gwsd/GwsdListener;)V

    .line 2100
    return-void
.end method

.method public cancelAvailableNetworks(I)Z
    .locals 5
    .param p1, "phoneId"    # I

    .line 1698
    const-string v0, "MtkTelephonyManagerEx"

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getIMtkTelephonyEx()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v2

    .line 1699
    .local v2, "telephonyEx":Lcom/mediatek/internal/telephony/IMtkTelephonyEx;
    if-nez v2, :cond_0

    .line 1700
    const-string v3, " cancelAvailableNetworks error because telephony is null"

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1701
    return v1

    .line 1703
    :cond_0
    invoke-interface {v2, p1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->cancelAvailableNetworks(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1707
    .end local v2    # "telephonyEx":Lcom/mediatek/internal/telephony/IMtkTelephonyEx;
    :catch_0
    move-exception v2

    .line 1708
    .local v2, "ex":Ljava/lang/NullPointerException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " cancelAvailableNetworks error due to NullPointerException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1709
    return v1

    .line 1704
    .end local v2    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v2

    .line 1705
    .local v2, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " cancelAvailableNetworks error due to RemoteException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1706
    return v1
.end method

.method public checkValidCard(I)I
    .locals 4
    .param p1, "slotId"    # I

    .line 1848
    iget-boolean v0, p0, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->mIsSmlLockMode:Z

    if-eqz v0, :cond_2

    .line 1849
    const-string v0, "MtkTelephonyManagerEx"

    if-ltz p1, :cond_1

    sget-object v1, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->PROPERTY_SIM_SLOT_LOCK_CARD_VALID:[Ljava/lang/String;

    array-length v2, v1

    if-lt p1, v2, :cond_0

    goto :goto_0

    .line 1853
    :cond_0
    aget-object v1, v1, p1

    const/4 v2, -0x1

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1856
    .local v1, "validCard":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkValidCard: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",slotId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1857
    return v1

    .line 1850
    .end local v1    # "validCard":I
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkValidCard: invalid slotId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1851
    const/4 v0, 0x2

    return v0

    .line 1859
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public exitEmergencyCallbackMode(I)Z
    .locals 2
    .param p1, "subId"    # I

    .line 1074
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getIMtkTelephonyEx()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->exitEmergencyCallbackMode(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1077
    :catch_0
    move-exception v1

    .line 1078
    .local v1, "ex":Ljava/lang/NullPointerException;
    return v0

    .line 1075
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 1076
    .local v1, "ex":Landroid/os/RemoteException;
    return v0
.end method

.method public getAllCellInfo(I)Ljava/util/List;
    .locals 3
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    .line 1487
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getIMtkTelephonyEx()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v1

    .line 1488
    .local v1, "telephonyEx":Lcom/mediatek/internal/telephony/IMtkTelephonyEx;
    if-nez v1, :cond_0

    .line 1489
    return-object v0

    .line 1491
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->getAllCellInfo(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1492
    .end local v1    # "telephonyEx":Lcom/mediatek/internal/telephony/IMtkTelephonyEx;
    :catch_0
    move-exception v1

    .line 1493
    .local v1, "ex":Landroid/os/RemoteException;
    return-object v0
.end method

.method public getApcInfo(I)Lcom/mediatek/internal/telephony/PseudoCellInfo;
    .locals 5
    .param p1, "slotId"    # I

    .line 1111
    const/4 v0, 0x0

    const-string v1, "MtkTelephonyManagerEx"

    if-ltz p1, :cond_2

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v2

    if-lt p1, v2, :cond_0

    goto :goto_0

    .line 1117
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getIMtkTelephonyEx()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v2

    .line 1118
    .local v2, "telephony":Lcom/mediatek/internal/telephony/IMtkTelephonyEx;
    if-nez v2, :cond_1

    .line 1119
    const-string v3, "getApcInfo return null because telephony is null"

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    return-object v0

    .line 1122
    :cond_1
    invoke-interface {v2, p1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->getApcInfoUsingSlotId(I)Lcom/mediatek/internal/telephony/PseudoCellInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1126
    .end local v2    # "telephony":Lcom/mediatek/internal/telephony/IMtkTelephonyEx;
    :catch_0
    move-exception v2

    .line 1127
    .local v2, "ex":Ljava/lang/NullPointerException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getApcInfo returning null due to NullPointerException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    return-object v0

    .line 1123
    .end local v2    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v2

    .line 1124
    .local v2, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getApcInfo returning null due to RemoteException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1125
    return-object v0

    .line 1112
    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_2
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getApcInfo with invalid slotId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    return-object v0
.end method

.method public getCallSubAddressEnabled()Z
    .locals 2

    .line 2652
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 2653
    .local v0, "defaultPhoneId":I
    invoke-virtual {p0, v0}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getCallSubAddressEnabled(I)Z

    move-result v1

    return v1
.end method

.method public getCallSubAddressEnabled(I)Z
    .locals 4
    .param p1, "phoneId"    # I

    .line 2672
    const-string v0, "MtkTelephonyManagerEx"

    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getIMtkTelephonyEx()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->getCallSubAddressEnabled(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2675
    :catch_0
    move-exception v1

    .line 2676
    .local v1, "ex":Ljava/lang/NullPointerException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCallSubAddressEnabled IMtkTelephonyEx npe: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2673
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 2674
    .local v1, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCallSubAddressEnabled IMtkTelephonyEx re: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2677
    .end local v1    # "ex":Landroid/os/RemoteException;
    nop

    .line 2678
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCdmaCardType(I)Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;
    .locals 5
    .param p1, "slotId"    # I

    .line 574
    const-string v0, "MtkTelephonyManagerEx"

    if-ltz p1, :cond_2

    sget-object v1, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->PROPERTY_RIL_CT3G:[Ljava/lang/String;

    array-length v1, v1

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 578
    :cond_0
    sget-object v1, Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;->UNKNOW_CARD:Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;

    .line 579
    .local v1, "mCdmaCardType":Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;
    sget-object v2, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->PROPERTY_RIL_CDMA_CARD_TYPE:[Ljava/lang/String;

    aget-object v2, v2, p1

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 580
    .local v2, "result":Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 581
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 582
    .local v3, "cardtype":I
    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;->getCardTypeFromInt(I)Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;

    move-result-object v1

    .line 584
    .end local v3    # "cardtype":I
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCdmaCardType slotId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  mCdmaCardType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    return-object v1

    .line 575
    .end local v1    # "mCdmaCardType":Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;
    .end local v2    # "result":Ljava/lang/String;
    :cond_2
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCdmaCardType: invalid slotId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCdmaSubscriptionActStatus(I)I
    .locals 4
    .param p1, "subId"    # I

    .line 1138
    const-string v0, "MtkTelephonyManagerEx"

    const/4 v1, 0x0

    .line 1141
    .local v1, "actStatus":I
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getIMtkTelephonyEx()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->getCdmaSubscriptionActStatus(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    .line 1146
    :goto_0
    goto :goto_1

    .line 1144
    :catch_0
    move-exception v2

    .line 1145
    .local v2, "ex":Ljava/lang/NullPointerException;
    const-string v3, "fail to getCdmaSubscriptionActStatus due to NullPointerException"

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1142
    .end local v2    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v2

    .line 1143
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v3, "fail to getCdmaSubscriptionActStatus due to RemoteException"

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1147
    :goto_1
    return v1
.end method

.method public getCellLocation(I)Landroid/telephony/CellLocation;
    .locals 8
    .param p1, "simId"    # I

    .line 670
    const-string v0, "MtkTelephonyManagerEx"

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getIMtkTelephonyEx()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v2

    .line 671
    .local v2, "telephony":Lcom/mediatek/internal/telephony/IMtkTelephonyEx;
    if-nez v2, :cond_0

    .line 672
    const-string v3, "getCellLocation returning null because telephony is null"

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    return-object v1

    .line 675
    :cond_0
    invoke-interface {v2, p1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->getCellLocationUsingSlotId(I)Landroid/os/Bundle;

    move-result-object v3

    .line 676
    .local v3, "bundle":Landroid/os/Bundle;
    if-nez v3, :cond_1

    .line 677
    const-string v4, "getCellLocation returning null because bundle is null"

    invoke-static {v0, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    return-object v1

    .line 679
    :cond_1
    invoke-virtual {v3}, Landroid/os/Bundle;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 680
    const-string v4, "getCellLocation returning null because bundle is empty"

    invoke-static {v0, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    return-object v1

    .line 683
    :cond_2
    invoke-virtual {p0, p1}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getPhoneType(I)I

    move-result v4

    .line 684
    .local v4, "phoneType":I
    const/4 v5, 0x0

    .line 685
    .local v5, "cl":Landroid/telephony/CellLocation;
    const/4 v6, 0x1

    if-eq v4, v6, :cond_4

    const/4 v6, 0x2

    if-eq v4, v6, :cond_3

    .line 693
    const/4 v5, 0x0

    goto :goto_0

    .line 687
    :cond_3
    new-instance v6, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-direct {v6, v3}, Landroid/telephony/cdma/CdmaCellLocation;-><init>(Landroid/os/Bundle;)V

    move-object v5, v6

    .line 688
    goto :goto_0

    .line 690
    :cond_4
    new-instance v6, Landroid/telephony/gsm/GsmCellLocation;

    invoke-direct {v6, v3}, Landroid/telephony/gsm/GsmCellLocation;-><init>(Landroid/os/Bundle;)V

    move-object v5, v6

    .line 691
    nop

    .line 696
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getCellLocation is"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    if-nez v5, :cond_5

    .line 698
    const-string v6, "getCellLocation returning null because cl is null"

    invoke-static {v0, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    return-object v1

    .line 700
    :cond_5
    invoke-virtual {v5}, Landroid/telephony/CellLocation;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 701
    const-string v6, "getCellLocation returning null because CellLocation is empty"

    invoke-static {v0, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 702
    return-object v1

    .line 704
    :cond_6
    return-object v5

    .line 708
    .end local v2    # "telephony":Lcom/mediatek/internal/telephony/IMtkTelephonyEx;
    .end local v3    # "bundle":Landroid/os/Bundle;
    .end local v4    # "phoneType":I
    .end local v5    # "cl":Landroid/telephony/CellLocation;
    :catch_0
    move-exception v2

    .line 709
    .local v2, "ex":Ljava/lang/NullPointerException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCellLocation returning null due to NullPointerException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    return-object v1

    .line 705
    .end local v2    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v2

    .line 706
    .local v2, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCellLocation returning null due to RemoteException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    return-object v1
.end method

.method public getDebuggingDsdaStatus()I
    .locals 5

    .line 2541
    const-string v0, "MtkTelephonyManagerEx"

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getIMtkTelephonyEx()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v2

    .line 2542
    .local v2, "telephonyEx":Lcom/mediatek/internal/telephony/IMtkTelephonyEx;
    if-nez v2, :cond_0

    .line 2543
    const-string v3, "getDebuggingDsdaStatus : telephony is null"

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2544
    return v1

    .line 2546
    :cond_0
    invoke-interface {v2}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->getDebuggingDsdaStatus()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2550
    .end local v2    # "telephonyEx":Lcom/mediatek/internal/telephony/IMtkTelephonyEx;
    :catch_0
    move-exception v2

    .line 2551
    .local v2, "ex":Ljava/lang/NullPointerException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDebuggingDsdaStatus : NullPointerException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2552
    return v1

    .line 2547
    .end local v2    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v2

    .line 2548
    .local v2, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDebuggingDsdaStatus : RemoteException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2549
    return v1
.end method

.method public getDisable2G(I)I
    .locals 5
    .param p1, "phoneId"    # I

    .line 1552
    const-string v0, "MtkTelephonyManagerEx"

    const/4 v1, -0x1

    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getIMtkTelephonyEx()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v2

    .line 1553
    .local v2, "telephonyEx":Lcom/mediatek/internal/telephony/IMtkTelephonyEx;
    if-nez v2, :cond_0

    .line 1554
    const-string v3, "getDisable2G error because telephony is null"

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1555
    return v1

    .line 1557
    :cond_0
    invoke-interface {v2, p1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->getDisable2G(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1561
    .end local v2    # "telephonyEx":Lcom/mediatek/internal/telephony/IMtkTelephonyEx;
    :catch_0
    move-exception v2

    .line 1562
    .local v2, "ex":Ljava/lang/NullPointerException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDisable2G error due to NullPointerException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1563
    return v1

    .line 1558
    .end local v2    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v2

    .line 1559
    .local v2, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDisable2G error due to RemoteException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1560
    return v1
.end method

.method public getFemtoCellList(I)Ljava/util/List;
    .locals 5
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/mediatek/internal/telephony/FemtoCellInfo;",
            ">;"
        }
    .end annotation

    .line 1576
    const-string v0, "MtkTelephonyManagerEx"

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getIMtkTelephonyEx()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v2

    .line 1577
    .local v2, "telephonyEx":Lcom/mediatek/internal/telephony/IMtkTelephonyEx;
    if-nez v2, :cond_0

    .line 1578
    const-string v3, "getFemtoCellList error because telephony is null"

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1579
    return-object v1

    .line 1581
    :cond_0
    invoke-interface {v2, p1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->getFemtoCellList(I)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1585
    .end local v2    # "telephonyEx":Lcom/mediatek/internal/telephony/IMtkTelephonyEx;
    :catch_0
    move-exception v2

    .line 1586
    .local v2, "ex":Ljava/lang/NullPointerException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFemtoCellList error due to NullPointerException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1587
    return-object v1

    .line 1582
    .end local v2    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v2

    .line 1583
    .local v2, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFemtoCellList error due to RemoteException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1584
    return-object v1
.end method

.method public getIccAppFamily(I)I
    .locals 2
    .param p1, "slotId"    # I

    .line 411
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getIMtkTelephonyEx()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->getIccAppFamily(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 414
    :catch_0
    move-exception v1

    .line 415
    .local v1, "ex":Ljava/lang/NullPointerException;
    return v0

    .line 412
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 413
    .local v1, "ex":Landroid/os/RemoteException;
    return v0
.end method

.method public getIccCardType(I)Ljava/lang/String;
    .locals 3
    .param p1, "subId"    # I

    .line 428
    const/4 v0, 0x0

    .line 430
    .local v0, "type":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getIMtkTelephonyEx()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->getIccCardType(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 436
    :goto_0
    goto :goto_1

    .line 433
    :catch_0
    move-exception v1

    .line 435
    .local v1, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1

    .line 431
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 432
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .end local v1    # "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 437
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIccCardType sub "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ,icc type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    if-eqz v0, :cond_0

    move-object v2, v0

    goto :goto_2

    :cond_0
    const-string v2, "null"

    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 437
    const-string v2, "MtkTelephonyManagerEx"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    return-object v0
.end method

.method public getIsimDomain(I)Ljava/lang/String;
    .locals 2
    .param p1, "subId"    # I

    .line 759
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getMtkSubscriberInfoEx()Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx;->getIsimDomainForSubscriber(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 762
    :catch_0
    move-exception v1

    .line 764
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v0

    .line 760
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 761
    .local v1, "ex":Landroid/os/RemoteException;
    return-object v0
.end method

.method public getIsimGbabp()Ljava/lang/String;
    .locals 1

    .line 897
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getIsimGbabp(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsimGbabp(I)Ljava/lang/String;
    .locals 2
    .param p1, "subId"    # I

    .line 908
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getMtkSubscriberInfoEx()Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx;->getIsimGbabpForSubscriber(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 911
    :catch_0
    move-exception v1

    .line 913
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v0

    .line 909
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 910
    .local v1, "ex":Landroid/os/RemoteException;
    return-object v0
.end method

.method public getIsimImpi(I)Ljava/lang/String;
    .locals 2
    .param p1, "subId"    # I

    .line 742
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getMtkSubscriberInfoEx()Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx;->getIsimImpiForSubscriber(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 745
    :catch_0
    move-exception v1

    .line 747
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v0

    .line 743
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 744
    .local v1, "ex":Landroid/os/RemoteException;
    return-object v0
.end method

.method public getIsimImpu(I)[Ljava/lang/String;
    .locals 2
    .param p1, "subId"    # I

    .line 777
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getMtkSubscriberInfoEx()Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx;->getIsimImpuForSubscriber(I)[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 780
    :catch_0
    move-exception v1

    .line 782
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v0

    .line 778
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 779
    .local v1, "ex":Landroid/os/RemoteException;
    return-object v0
.end method

.method public getIsimIst(I)Ljava/lang/String;
    .locals 2
    .param p1, "subId"    # I

    .line 794
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getMtkSubscriberInfoEx()Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx;->getIsimIstForSubscriber(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 797
    :catch_0
    move-exception v1

    .line 799
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v0

    .line 795
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 796
    .local v1, "ex":Landroid/os/RemoteException;
    return-object v0
.end method

.method public getIsimPcscf(I)[Ljava/lang/String;
    .locals 2
    .param p1, "subId"    # I

    .line 812
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getMtkSubscriberInfoEx()Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx;->getIsimPcscfForSubscriber(I)[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 815
    :catch_0
    move-exception v1

    .line 817
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v0

    .line 813
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 814
    .local v1, "ex":Landroid/os/RemoteException;
    return-object v0
.end method

.method public getLine1PhoneNumber(I)Ljava/lang/String;
    .locals 5
    .param p1, "subId"    # I

    .line 1936
    const/4 v0, 0x0

    .line 1938
    .local v0, "number":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 1939
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 1940
    iget-object v2, p0, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->mContext:Landroid/content/Context;

    .line 1941
    invoke-virtual {v3}, Landroid/content/Context;->getFeatureId()Ljava/lang/String;

    move-result-object v3

    .line 1940
    invoke-interface {v1, p1, v2, v3}, Lcom/android/internal/telephony/ITelephony;->getLine1NumberForDisplay(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 1944
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    goto :goto_1

    .line 1943
    :catch_0
    move-exception v1

    goto :goto_1

    .line 1942
    :catch_1
    move-exception v1

    goto :goto_0

    .line 1945
    :goto_1
    if-eqz v0, :cond_1

    .line 1946
    return-object v0

    .line 1949
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    invoke-direct {p0}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getMtkSubscriberInfoEx()Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx;

    move-result-object v2

    .line 1950
    .local v2, "info":Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx;
    if-nez v2, :cond_2

    .line 1951
    return-object v1

    .line 1952
    :cond_2
    invoke-direct {p0}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->mContext:Landroid/content/Context;

    .line 1953
    invoke-virtual {v4}, Landroid/content/Context;->getFeatureId()Ljava/lang/String;

    move-result-object v4

    .line 1952
    invoke-interface {v2, p1, v3, v4}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx;->getLine1PhoneNumberForSubscriber(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2

    return-object v1

    .line 1956
    .end local v2    # "info":Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx;
    :catch_2
    move-exception v2

    .line 1958
    .local v2, "ex":Ljava/lang/NullPointerException;
    return-object v1

    .line 1954
    .end local v2    # "ex":Ljava/lang/NullPointerException;
    :catch_3
    move-exception v2

    .line 1955
    .local v2, "ex":Landroid/os/RemoteException;
    return-object v1
.end method

.method public getLocatedPlmn(I)Ljava/lang/String;
    .locals 4
    .param p1, "phoneId"    # I

    .line 1503
    const-string v0, "MtkTelephonyManagerEx"

    const/4 v1, 0x0

    .line 1506
    .local v1, "plmn":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getIMtkTelephonyEx()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v2

    .line 1507
    .local v2, "telephonyEx":Lcom/mediatek/internal/telephony/IMtkTelephonyEx;
    if-eqz v2, :cond_0

    .line 1508
    invoke-interface {v2, p1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->getLocatedPlmn(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    .line 1514
    .end local v2    # "telephonyEx":Lcom/mediatek/internal/telephony/IMtkTelephonyEx;
    :cond_0
    :goto_0
    goto :goto_1

    .line 1512
    :catch_0
    move-exception v2

    .line 1513
    .local v2, "ex":Ljava/lang/NullPointerException;
    const-string v3, "fail to getLocatedPlmn due to NullPointerException"

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1510
    .end local v2    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v2

    .line 1511
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v3, "fail to getLocatedPlmn due to RemoteException"

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1515
    :goto_1
    return-object v1
.end method

.method public getMobileDataUsage(I)Landroid/net/NetworkStats;
    .locals 5
    .param p1, "phoneId"    # I

    .line 2428
    const-string v0, "MtkTelephonyManagerEx"

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getIMtkTelephonyEx()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v2

    .line 2429
    .local v2, "telephonyEx":Lcom/mediatek/internal/telephony/IMtkTelephonyEx;
    if-nez v2, :cond_0

    .line 2430
    const-string v3, "getMobileDataUsage : telephony is null"

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2431
    return-object v1

    .line 2433
    :cond_0
    invoke-interface {v2, p1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->getMobileDataUsage(I)Landroid/net/NetworkStats;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2437
    .end local v2    # "telephonyEx":Lcom/mediatek/internal/telephony/IMtkTelephonyEx;
    :catch_0
    move-exception v2

    .line 2438
    .local v2, "ex":Ljava/lang/NullPointerException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMobileDataUsage : NullPointerException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2439
    return-object v1

    .line 2434
    .end local v2    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v2

    .line 2435
    .local v2, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMobileDataUsage : RemoteException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2436
    return-object v1
.end method

.method public getNrMapStatus(I)Ljava/lang/String;
    .locals 4
    .param p1, "phoneId"    # I

    .line 2634
    const-string v0, "MtkTelephonyManagerEx"

    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getIMtkTelephonyEx()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v1

    .line 2635
    .local v1, "telephony":Lcom/mediatek/internal/telephony/IMtkTelephonyEx;
    if-eqz v1, :cond_0

    .line 2636
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNrMapStatus id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2637
    invoke-interface {v1, p1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->getNrMapStatus(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2639
    :cond_0
    const-string v2, "getNrMapStatus IMtkTelephonyEx is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2643
    nop

    .end local v1    # "telephony":Lcom/mediatek/internal/telephony/IMtkTelephonyEx;
    goto :goto_0

    .line 2641
    :catch_0
    move-exception v1

    .line 2642
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "getNrMapStatus RemoteException"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2644
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_0
    const-string v0, "n/a"

    return-object v0
.end method

.method public getPhoneType(I)I
    .locals 4
    .param p1, "simId"    # I

    .line 284
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 285
    .local v0, "subIds":[I
    if-nez v0, :cond_0

    .line 286
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    const/4 v2, -0x1

    .line 287
    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType(I)I

    move-result v1

    .line 286
    return v1

    .line 289
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Deprecated! getPhoneType with simId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", subId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    aget v3, v0, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "MtkTelephonyManagerEx"

    invoke-static {v3, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType(I)I

    move-result v1

    return v1
.end method

.method public getPrlVersion(I)Ljava/lang/String;
    .locals 5
    .param p1, "subId"    # I

    .line 1022
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result v0

    .line 1023
    .local v0, "slotId":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vendor.cdma.prl.version"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1024
    .local v1, "prlVersion":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPrlversion PRLVERSION subId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " key = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " value = "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MtkTelephonyManagerEx"

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    return-object v1
.end method

.method public getProtocolStackId(I)I
    .locals 4
    .param p1, "slot"    # I

    .line 1737
    const-string v0, "MtkTelephonyManagerEx"

    const/4 v1, 0x0

    .line 1739
    .local v1, "majorSlot":I
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getIMtkTelephonyEx()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v2

    .line 1740
    .local v2, "telephonyEx":Lcom/mediatek/internal/telephony/IMtkTelephonyEx;
    if-eqz v2, :cond_0

    .line 1741
    invoke-interface {v2}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->getMainCapabilityPhoneId()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    .line 1747
    .end local v2    # "telephonyEx":Lcom/mediatek/internal/telephony/IMtkTelephonyEx;
    :cond_0
    :goto_0
    goto :goto_1

    .line 1745
    :catch_0
    move-exception v2

    .line 1746
    .local v2, "ex":Ljava/lang/NullPointerException;
    const-string v3, "fail to getMainCapabilityPhoneId due to NullPointerException"

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1743
    .end local v2    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v2

    .line 1744
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v3, "fail to getMainCapabilityPhoneId due to RemoteException"

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1748
    :goto_1
    if-ne p1, v1, :cond_1

    .line 1749
    const/4 v0, 0x1

    return v0

    .line 1751
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->isDssNoResetSupport()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1752
    if-ge p1, v1, :cond_3

    .line 1753
    add-int/lit8 v0, p1, 0x2

    return v0

    .line 1755
    :cond_2
    if-nez p1, :cond_3

    .line 1756
    add-int/lit8 v0, v1, 0x1

    return v0

    .line 1758
    :cond_3
    add-int/lit8 v0, p1, 0x1

    return v0
.end method

.method public getRoamingEnable(I)[I
    .locals 5
    .param p1, "phoneId"    # I

    .line 2360
    const-string v0, "MtkTelephonyManagerEx"

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getIMtkTelephonyEx()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v2

    .line 2361
    .local v2, "telephony":Lcom/mediatek/internal/telephony/IMtkTelephonyEx;
    if-nez v2, :cond_0

    .line 2362
    const-string v3, "getRoamingEnable error because telephony is null"

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2363
    return-object v1

    .line 2365
    :cond_0
    invoke-interface {v2, p1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->getRoamingEnable(I)[I

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2368
    .end local v2    # "telephony":Lcom/mediatek/internal/telephony/IMtkTelephonyEx;
    :catch_0
    move-exception v2

    .line 2369
    .local v2, "ex":Ljava/lang/NullPointerException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRoamingEnable error due to NullPointerException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2366
    .end local v2    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v2

    .line 2367
    .local v2, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRoamingEnable error due to RemoteException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2370
    .end local v2    # "ex":Landroid/os/RemoteException;
    nop

    .line 2371
    :goto_0
    return-object v1
.end method

.method public getRxTestResult()[I
    .locals 3

    .line 1056
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 1058
    .local v0, "defaultPhoneId":I
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getIMtkTelephonyEx()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->getRxTestResult(I)[I

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1061
    :catch_0
    move-exception v2

    .line 1062
    .local v2, "ex":Ljava/lang/NullPointerException;
    return-object v1

    .line 1059
    .end local v2    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v2

    .line 1060
    .local v2, "ex":Landroid/os/RemoteException;
    return-object v1
.end method

.method public getServiceStateByPhoneId(I)Landroid/telephony/ServiceState;
    .locals 4
    .param p1, "phoneId"    # I

    .line 2313
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v1

    .line 2314
    .local v1, "attributionTag":Ljava/lang/String;
    :goto_0
    invoke-direct {p0}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getIMtkTelephonyEx()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v2

    invoke-direct {p0}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p1, v3, v1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->getServiceStateByPhoneId(ILjava/lang/String;Ljava/lang/String;)Landroid/telephony/ServiceState;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2317
    .end local v1    # "attributionTag":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 2318
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v0

    .line 2315
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 2316
    .local v1, "ex":Landroid/os/RemoteException;
    return-object v0
.end method

.method public getShouldServiceCapability(I)I
    .locals 4
    .param p1, "slotId"    # I

    .line 1815
    iget-boolean v0, p0, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->mIsSmlLockMode:Z

    if-eqz v0, :cond_2

    .line 1816
    const-string v0, "MtkTelephonyManagerEx"

    if-ltz p1, :cond_1

    sget-object v1, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->PROPERTY_SIM_SLOT_LOCK_SERVICE_CAPABILITY:[Ljava/lang/String;

    array-length v2, v1

    if-lt p1, v2, :cond_0

    goto :goto_0

    .line 1821
    :cond_0
    aget-object v1, v1, p1

    const/4 v2, -0x1

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1824
    .local v1, "capability":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getShouldServiceCapability: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",slotId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1825
    return v1

    .line 1817
    .end local v1    # "capability":I
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getShouldServiceCapability: invalid slotId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1818
    const/4 v0, 0x4

    return v0

    .line 1827
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public getSimApplicationState(I)I
    .locals 2
    .param p1, "slotId"    # I

    .line 1453
    invoke-static {p1}, Landroid/telephony/TelephonyManager;->getSimStateForSlotIndex(I)I

    move-result v0

    .line 1455
    .local v0, "simApplicationState":I
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    .line 1466
    return v0

    .line 1464
    :cond_0
    const/4 v1, 0x6

    return v1

    .line 1460
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public getSimCardState(I)I
    .locals 2
    .param p1, "slotId"    # I

    .line 1424
    invoke-static {p1}, Landroid/telephony/TelephonyManager;->getSimStateForSlotIndex(I)I

    move-result v0

    .line 1426
    .local v0, "simCardState":I
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    .line 1433
    const/16 v1, 0xb

    return v1

    .line 1431
    :cond_0
    return v0
.end method

.method public getSimLockPolicy()I
    .locals 3

    .line 1784
    iget-boolean v0, p0, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->mIsSmlLockMode:Z

    if-eqz v0, :cond_0

    .line 1785
    const/4 v0, -0x1

    const-string v1, "vendor.gsm.sim.slot.lock.policy"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1787
    .local v0, "policy":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSimLockPolicy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MtkTelephonyManagerEx"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1788
    return v0

    .line 1790
    .end local v0    # "policy":I
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getSimLockState()I
    .locals 3

    .line 1874
    iget-boolean v0, p0, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->mIsSmlLockMode:Z

    if-eqz v0, :cond_0

    .line 1875
    const/4 v0, -0x1

    const-string v1, "vendor.gsm.sim.slot.lock.state"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1877
    .local v0, "lockState":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSimLockState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MtkTelephonyManagerEx"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1878
    return v0

    .line 1880
    .end local v0    # "lockState":I
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getSimLockStateForRSU(I)I
    .locals 2
    .param p1, "phoneId"    # I

    .line 1906
    const/4 v0, -0x2

    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getIMtkTelephonyEx()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v1

    .line 1907
    .local v1, "telephonyEx":Lcom/mediatek/internal/telephony/IMtkTelephonyEx;
    if-nez v1, :cond_0

    .line 1908
    const/4 v0, -0x1

    return v0

    .line 1910
    :cond_0
    invoke-interface {v1, p1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->getSimLockStateForRSU(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1914
    .end local v1    # "telephonyEx":Lcom/mediatek/internal/telephony/IMtkTelephonyEx;
    :catch_0
    move-exception v1

    .line 1915
    .local v1, "ex":Ljava/lang/NullPointerException;
    return v0

    .line 1912
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 1913
    .local v1, "ex":Landroid/os/RemoteException;
    return v0
.end method

.method public getSimOnOffExecutingState(I)I
    .locals 4
    .param p1, "slotId"    # I

    .line 2075
    const/4 v0, -0x1

    .line 2076
    .local v0, "result":I
    const-string v1, "MtkTelephonyManagerEx"

    if-ltz p1, :cond_2

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v2

    if-lt p1, v2, :cond_0

    goto :goto_2

    .line 2081
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getIMtkTelephonyEx()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v2

    .line 2082
    .local v2, "telephonyEx":Lcom/mediatek/internal/telephony/IMtkTelephonyEx;
    if-eqz v2, :cond_1

    .line 2083
    invoke-interface {v2, p1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->getSimOnOffExecutingState(I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 2089
    .end local v2    # "telephonyEx":Lcom/mediatek/internal/telephony/IMtkTelephonyEx;
    :cond_1
    :goto_0
    goto :goto_1

    .line 2087
    :catch_0
    move-exception v2

    .line 2088
    .local v2, "ex":Ljava/lang/SecurityException;
    const-string v3, "Permission error calling ITelephony#getSimOnOffExecutingState"

    invoke-static {v1, v3, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2085
    .end local v2    # "ex":Ljava/lang/SecurityException;
    :catch_1
    move-exception v2

    .line 2086
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v3, "Error calling ITelephony#getSimOnOffExecutingState"

    invoke-static {v1, v3, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2    # "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 2091
    :goto_1
    return v0

    .line 2077
    :cond_2
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSimOnOffExecutingState error with invalid slotId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2078
    return v0
.end method

.method public getSimOnOffState(I)I
    .locals 4
    .param p1, "slotId"    # I

    .line 2008
    const/4 v0, -0x1

    .line 2009
    .local v0, "result":I
    const-string v1, "MtkTelephonyManagerEx"

    if-ltz p1, :cond_2

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v2

    if-lt p1, v2, :cond_0

    goto :goto_2

    .line 2014
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getIMtkTelephonyEx()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v2

    .line 2015
    .local v2, "telephonyEx":Lcom/mediatek/internal/telephony/IMtkTelephonyEx;
    if-eqz v2, :cond_1

    .line 2016
    invoke-interface {v2, p1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->getSimOnOffState(I)I

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v3

    .line 2022
    .end local v2    # "telephonyEx":Lcom/mediatek/internal/telephony/IMtkTelephonyEx;
    :cond_1
    :goto_0
    goto :goto_1

    .line 2020
    :catch_0
    move-exception v2

    .line 2021
    .local v2, "ex":Ljava/lang/SecurityException;
    const-string v3, "Permission error calling ITelephony#getSimOnOffState"

    invoke-static {v1, v3, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2018
    .end local v2    # "ex":Ljava/lang/SecurityException;
    :catch_1
    move-exception v2

    .line 2019
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v3, "Error calling ITelephony#getSimOnOffState"

    invoke-static {v1, v3, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2    # "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 2024
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSimOnOffState slotId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2025
    return v0

    .line 2010
    :cond_2
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSimOnOffState error with invalid slotId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2011
    return v0
.end method

.method public getSimOperatorNumericForPhoneEx(I)[Ljava/lang/String;
    .locals 5
    .param p1, "phoneId"    # I

    .line 634
    const-string v0, "MtkTelephonyManagerEx"

    if-ltz p1, :cond_2

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v1

    if-lt p1, v1, :cond_0

    goto :goto_3

    .line 639
    :cond_0
    const/4 v1, 0x0

    .line 641
    .local v1, "values":[Ljava/lang/String;
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getIMtkTelephonyEx()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->getSimOperatorNumericForPhoneEx(I)[Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 646
    :goto_0
    goto :goto_1

    .line 644
    :catch_0
    move-exception v2

    .line 645
    .local v2, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1

    .line 642
    .end local v2    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v2

    .line 643
    .local v2, "ex":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .end local v2    # "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 648
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSimOperatorNumericForPhoneEx phoneId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " values = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 649
    if-eqz v1, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    aget-object v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    aget-object v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_1
    const-string v3, "null"

    :goto_2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 648
    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    return-object v1

    .line 635
    .end local v1    # "values":[Ljava/lang/String;
    :cond_2
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSimOperatorNumericForPhoneEx with invalid phoneId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSimSerialNumber(I)Ljava/lang/String;
    .locals 3
    .param p1, "simId"    # I

    .line 601
    if-ltz p1, :cond_3

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_2

    .line 606
    :cond_0
    const/4 v0, 0x0

    .line 608
    .local v0, "iccId":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getIMtkTelephonyEx()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v1

    invoke-direct {p0}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->getSimSerialNumber(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 613
    :goto_0
    goto :goto_1

    .line 611
    :catch_0
    move-exception v1

    .line 612
    .local v1, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1

    .line 609
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 610
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .end local v1    # "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 615
    :goto_1
    if-eqz v0, :cond_2

    const-string v1, "N/A"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 616
    :cond_1
    const/4 v0, 0x0

    .line 619
    :cond_2
    return-object v0

    .line 602
    .end local v0    # "iccId":Ljava/lang/String;
    :cond_3
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSimSerialNumber with invalid simId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkTelephonyManagerEx"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSuggestedPlmnList(IIII)[Ljava/lang/String;
    .locals 8
    .param p1, "phoneId"    # I
    .param p2, "rat"    # I
    .param p3, "num"    # I
    .param p4, "timer"    # I

    .line 2390
    const/4 v0, 0x0

    const-string v1, "MtkTelephonyManagerEx"

    if-ltz p1, :cond_5

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v2

    if-lt p1, v2, :cond_0

    goto/16 :goto_3

    .line 2395
    :cond_0
    if-eqz p2, :cond_1

    const/4 v2, 0x1

    if-eq p2, v2, :cond_1

    const/4 v2, 0x3

    if-eq p2, v2, :cond_1

    .line 2396
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSuggestedPlmnList with invalid rat:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2397
    return-object v0

    .line 2400
    :cond_1
    if-gtz p3, :cond_2

    .line 2401
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSuggestedPlmnList with invalid num:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2402
    return-object v0

    .line 2405
    :cond_2
    if-gtz p4, :cond_3

    .line 2406
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSuggestedPlmnList with invalid timer:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2407
    return-object v0

    .line 2410
    :cond_3
    const/4 v0, 0x0

    .line 2412
    .local v0, "values":[Ljava/lang/String;
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getIMtkTelephonyEx()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v2

    .line 2413
    invoke-direct {p0}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getOpPackageName()Ljava/lang/String;

    move-result-object v7

    .line 2412
    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-interface/range {v2 .. v7}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->getSuggestedPlmnList(IIIILjava/lang/String;)[Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 2418
    :goto_0
    goto :goto_1

    .line 2416
    :catch_0
    move-exception v2

    .line 2417
    .local v2, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1

    .line 2414
    .end local v2    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v2

    .line 2415
    .local v2, "ex":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .end local v2    # "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 2420
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSuggestedPlmnList phoneId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " values = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2421
    if-eqz v0, :cond_4

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_4
    const-string v3, "null"

    :goto_2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2420
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2422
    return-object v0

    .line 2391
    .end local v0    # "values":[Ljava/lang/String;
    :cond_5
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSuggestedPlmnList with invalid phoneId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2392
    return-object v0
.end method

.method public getSupportCardType(I)[Ljava/lang/String;
    .locals 6
    .param p1, "slotId"    # I

    .line 536
    const/4 v0, 0x0

    .line 537
    .local v0, "property":Ljava/lang/String;
    const/4 v1, 0x0

    .line 538
    .local v1, "prop":Ljava/lang/String;
    const/4 v2, 0x0

    .line 540
    .local v2, "values":[Ljava/lang/String;
    const-string v3, "MtkTelephonyManagerEx"

    if-ltz p1, :cond_3

    sget-object v4, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

    array-length v5, v4

    if-lt p1, v5, :cond_0

    goto :goto_1

    .line 544
    :cond_0
    aget-object v4, v4, p1

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 545
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 546
    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 548
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSupportCardType slotId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", prop value= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", size= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    if-eqz v2, :cond_2

    array-length v5, v2

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 548
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    return-object v2

    .line 541
    :cond_3
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSupportCardType: invalid slotId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    const/4 v3, 0x0

    return-object v3
.end method

.method public getUimSubscriberId(I)Ljava/lang/String;
    .locals 3
    .param p1, "subId"    # I

    .line 516
    const-string v0, ""

    .line 519
    .local v0, "uimImsi":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getIMtkTelephonyEx()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v1

    invoke-direct {p0}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->getUimSubscriberId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 524
    :goto_0
    goto :goto_1

    .line 522
    :catch_0
    move-exception v1

    .line 523
    .local v1, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1

    .line 520
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 521
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .end local v1    # "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 526
    :goto_1
    return-object v0
.end method

.method public getUsimGbabp()Ljava/lang/String;
    .locals 1

    .line 959
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getUsimGbabp(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUsimGbabp(I)Ljava/lang/String;
    .locals 2
    .param p1, "subId"    # I

    .line 970
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getMtkSubscriberInfoEx()Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx;->getUsimGbabpForSubscriber(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 973
    :catch_0
    move-exception v1

    .line 975
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v0

    .line 971
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 972
    .local v1, "ex":Landroid/os/RemoteException;
    return-object v0
.end method

.method public getUsimService(I)Z
    .locals 1
    .param p1, "service"    # I

    .line 382
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getUsimService(II)Z

    move-result v0

    return v0
.end method

.method public getUsimService(II)Z
    .locals 3
    .param p1, "subId"    # I
    .param p2, "service"    # I

    .line 394
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getMtkSubscriberInfoEx()Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx;

    move-result-object v1

    .line 395
    invoke-direct {p0}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 394
    invoke-interface {v1, p1, p2, v2}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx;->getUsimServiceForSubscriber(IILjava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 398
    :catch_0
    move-exception v1

    .line 400
    .local v1, "ex":Ljava/lang/NullPointerException;
    return v0

    .line 396
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 397
    .local v1, "ex":Landroid/os/RemoteException;
    return v0
.end method

.method public getVoDataEnabled(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .line 2164
    :try_start_0
    const-string v0, "vodata"

    .line 2165
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2164
    invoke-static {v0}, Lcom/mediatek/ims/internal/IVoDataService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/internal/IVoDataService;

    move-result-object v0

    .line 2166
    .local v0, "iVoDataService":Lcom/mediatek/ims/internal/IVoDataService;
    if-eqz v0, :cond_0

    .line 2167
    invoke-interface {v0, p1}, Lcom/mediatek/ims/internal/IVoDataService;->getEnabled(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2171
    .end local v0    # "iVoDataService":Lcom/mediatek/ims/internal/IVoDataService;
    :cond_0
    goto :goto_0

    .line 2169
    :catch_0
    move-exception v0

    .line 2170
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "MtkTelephonyManagerEx"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2172
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public invokeOemRilRequestRaw([B[B)I
    .locals 2
    .param p1, "oemReq"    # [B
    .param p2, "oemResp"    # [B

    .line 1350
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getIMtkTelephonyEx()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v0

    .line 1351
    .local v0, "telephony":Lcom/mediatek/internal/telephony/IMtkTelephonyEx;
    if-eqz v0, :cond_0

    .line 1352
    invoke-interface {v0, p1, p2}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->invokeOemRilRequestRaw([B[B)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 1351
    .end local v0    # "telephony":Lcom/mediatek/internal/telephony/IMtkTelephonyEx;
    :cond_0
    goto :goto_0

    .line 1354
    :catch_0
    move-exception v0

    goto :goto_1

    .line 1353
    :catch_1
    move-exception v0

    .line 1355
    :goto_0
    nop

    .line 1356
    :goto_1
    const/4 v0, -0x1

    return v0
.end method

.method public invokeOemRilRequestRawBySlot(I[B[B)I
    .locals 2
    .param p1, "slotId"    # I
    .param p2, "oemReq"    # [B
    .param p3, "oemResp"    # [B

    .line 1371
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getIMtkTelephonyEx()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v0

    .line 1372
    .local v0, "telephony":Lcom/mediatek/internal/telephony/IMtkTelephonyEx;
    if-eqz v0, :cond_0

    .line 1373
    invoke-interface {v0, p1, p2, p3}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->invokeOemRilRequestRawBySlot(I[B[B)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 1372
    .end local v0    # "telephony":Lcom/mediatek/internal/telephony/IMtkTelephonyEx;
    :cond_0
    goto :goto_0

    .line 1375
    :catch_0
    move-exception v0

    goto :goto_1

    .line 1374
    :catch_1
    move-exception v0

    .line 1376
    :goto_0
    nop

    .line 1377
    :goto_1
    const/4 v0, -0x1

    return v0
.end method

.method public isCt3gDualMode(I)Z
    .locals 4
    .param p1, "slotId"    # I

    .line 559
    const-string v0, "MtkTelephonyManagerEx"

    if-ltz p1, :cond_1

    sget-object v1, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->PROPERTY_RIL_CT3G:[Ljava/lang/String;

    array-length v2, v1

    if-lt p1, v2, :cond_0

    goto :goto_0

    .line 563
    :cond_0
    aget-object v1, v1, p1

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 564
    .local v1, "result":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCt3gDualMode:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    const-string v0, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 560
    .end local v1    # "result":Ljava/lang/String;
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCt3gDualMode: invalid slotId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    const/4 v0, 0x0

    return v0
.end method

.method public isDataAvailableForGwsdDualSim(Z)Z
    .locals 3
    .param p1, "gwsdDualSimStatus"    # Z

    .line 2521
    const-string v0, "MtkTelephonyManagerEx"

    const-string v1, "isDataAvailableForGwsdDualSim"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2523
    :try_start_0
    const-string v1, "gwsd"

    .line 2524
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 2523
    invoke-static {v1}, Lcom/mediatek/gwsd/IGwsdService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/gwsd/IGwsdService;

    move-result-object v1

    .line 2525
    .local v1, "iGwsdService":Lcom/mediatek/gwsd/IGwsdService;
    if-eqz v1, :cond_0

    .line 2526
    invoke-interface {v1, p1}, Lcom/mediatek/gwsd/IGwsdService;->isDataAvailableForGwsdDualSim(Z)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2530
    .end local v1    # "iGwsdService":Lcom/mediatek/gwsd/IGwsdService;
    :cond_0
    goto :goto_0

    .line 2528
    :catch_0
    move-exception v1

    .line 2529
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2531
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public isDigitsSupported()Z
    .locals 3

    .line 1386
    const-string v0, "persist.vendor.mtk_digits_support"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    move v0, v1

    .line 1387
    .local v0, "result":Z
    return v0
.end method

.method public isDssNoResetSupport()Z
    .locals 2

    .line 1719
    const-string v0, "vendor.ril.simswitch.no_reset_support"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "MtkTelephonyManagerEx"

    if-eqz v0, :cond_0

    .line 1720
    const-string v0, "return true for isDssNoResetSupport"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1721
    const/4 v0, 0x1

    return v0

    .line 1723
    :cond_0
    const-string v0, "return false for isDssNoResetSupport"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1724
    const/4 v0, 0x0

    return v0
.end method

.method public isEmergencyNumber(ILjava/lang/String;)Z
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "number"    # Ljava/lang/String;

    .line 2482
    const-string v0, "MtkTelephonyManagerEx"

    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getIMtkTelephonyEx()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v1

    .line 2483
    .local v1, "telephony":Lcom/mediatek/internal/telephony/IMtkTelephonyEx;
    if-eqz v1, :cond_0

    .line 2484
    invoke-interface {v1, p1, p2}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->isEmergencyNumber(ILjava/lang/String;)Z

    move-result v0

    return v0

    .line 2486
    :cond_0
    const-string v2, "isEmergencyNumber IMtkTelephonyEx is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2490
    nop

    .end local v1    # "telephony":Lcom/mediatek/internal/telephony/IMtkTelephonyEx;
    goto :goto_0

    .line 2488
    :catch_0
    move-exception v1

    .line 2489
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "isEmergencyNumber RemoteException"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2491
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public isGsm(I)Z
    .locals 2
    .param p1, "radioTechnology"    # I

    .line 720
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/16 v1, 0x8

    if-eq p1, v1, :cond_1

    const/16 v1, 0x9

    if-eq p1, v1, :cond_1

    const/16 v1, 0xa

    if-eq p1, v1, :cond_1

    const/16 v1, 0xd

    if-eq p1, v1, :cond_1

    const/16 v1, 0xf

    if-eq p1, v1, :cond_1

    const/16 v1, 0x10

    if-eq p1, v1, :cond_1

    const/16 v1, 0x11

    if-eq p1, v1, :cond_1

    const/16 v1, 0x13

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public isImsRegistered(I)Z
    .locals 2
    .param p1, "subId"    # I

    .line 831
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getIMtkTelephonyEx()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->isImsRegistered(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 834
    :catch_0
    move-exception v1

    .line 835
    .local v1, "ex":Ljava/lang/NullPointerException;
    return v0

    .line 832
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 833
    .local v1, "ex":Landroid/os/RemoteException;
    return v0
.end method

.method public isInCsCall(I)Z
    .locals 5
    .param p1, "phoneId"    # I

    .line 1395
    const-string v0, "MtkTelephonyManagerEx"

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getIMtkTelephonyEx()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v2

    .line 1396
    .local v2, "telephony":Lcom/mediatek/internal/telephony/IMtkTelephonyEx;
    if-nez v2, :cond_0

    .line 1397
    const-string v3, "[isInCsCall] telephony = null"

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1398
    return v1

    .line 1400
    :cond_0
    invoke-interface {v2, p1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->isInCsCall(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1404
    .end local v2    # "telephony":Lcom/mediatek/internal/telephony/IMtkTelephonyEx;
    :catch_0
    move-exception v2

    .line 1405
    .local v2, "ex":Ljava/lang/NullPointerException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[isInCsCall] NullPointerException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1406
    return v1

    .line 1401
    .end local v2    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v2

    .line 1402
    .local v2, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[isInCsCall] RemoteException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1403
    return v1
.end method

.method public isInDsdaMode()Z
    .locals 10

    .line 322
    const-string v0, "ro.vendor.mtk_switch_antenna"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 323
    return v1

    .line 325
    :cond_0
    const-string v0, "ro.vendor.mtk_c2k_lte_mode"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    .line 327
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 328
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v3

    .line 329
    .local v3, "simCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_3

    .line 330
    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v5

    .line 331
    .local v5, "allSubId":[I
    const-string v6, "MtkTelephonyManagerEx"

    if-nez v5, :cond_1

    .line 332
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isInDsdaMode, allSubId is null for slot"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    goto :goto_1

    .line 335
    :cond_1
    aget v7, v5, v1

    invoke-virtual {v0, v7}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType(I)I

    move-result v7

    .line 336
    .local v7, "phoneType":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isInDsdaMode, allSubId[0]:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v9, v5, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", phoneType:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    const/4 v6, 0x2

    if-ne v7, v6, :cond_2

    .line 339
    return v2

    .line 329
    .end local v5    # "allSubId":[I
    .end local v7    # "phoneType":I
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 343
    .end local v0    # "tm":Landroid/telephony/TelephonyManager;
    .end local v3    # "simCount":I
    .end local v4    # "i":I
    :cond_3
    return v1
.end method

.method public isInHomeNetwork(I)Z
    .locals 2
    .param p1, "subId"    # I

    .line 355
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getIMtkTelephonyEx()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v1

    .line 356
    .local v1, "telephonyEx":Lcom/mediatek/internal/telephony/IMtkTelephonyEx;
    if-nez v1, :cond_0

    .line 357
    return v0

    .line 359
    :cond_0
    invoke-interface {v1, p1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->isInHomeNetwork(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 363
    .end local v1    # "telephonyEx":Lcom/mediatek/internal/telephony/IMtkTelephonyEx;
    :catch_0
    move-exception v1

    .line 364
    .local v1, "ex":Ljava/lang/NullPointerException;
    return v0

    .line 361
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 362
    .local v1, "ex":Landroid/os/RemoteException;
    return v0
.end method

.method public isNrMapEnabled(I)Z
    .locals 4
    .param p1, "phoneId"    # I

    .line 2619
    const-string v0, "MtkTelephonyManagerEx"

    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getIMtkTelephonyEx()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v1

    .line 2620
    .local v1, "telephony":Lcom/mediatek/internal/telephony/IMtkTelephonyEx;
    if-eqz v1, :cond_0

    .line 2621
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isNrMapEnabled id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2622
    invoke-interface {v1, p1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->isNrMapEnabled(I)Z

    move-result v0

    return v0

    .line 2624
    :cond_0
    const-string v2, "isNrMapEnabled IMtkTelephonyEx is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2628
    nop

    .end local v1    # "telephony":Lcom/mediatek/internal/telephony/IMtkTelephonyEx;
    goto :goto_0

    .line 2626
    :catch_0
    move-exception v1

    .line 2627
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "isNrMapEnabled RemoteException"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2629
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSimOnOffEnabled()Z
    .locals 3

    .line 1992
    const/4 v0, 0x0

    .line 1993
    .local v0, "result":Z
    const-string v1, "ro.vendor.mtk_sim_card_onoff"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1994
    const-string v1, "vendor.ril.sim.onoff.support"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .line 1996
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSimOnOffEnabled result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MtkTelephonyManagerEx"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1997
    return v0
.end method

.method public isVolteEnabled(I)Z
    .locals 2
    .param p1, "subId"    # I

    .line 848
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getIMtkTelephonyEx()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->isVolteEnabled(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 851
    :catch_0
    move-exception v1

    .line 852
    .local v1, "ex":Ljava/lang/NullPointerException;
    return v0

    .line 849
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 850
    .local v1, "ex":Landroid/os/RemoteException;
    return v0
.end method

.method public isWifiCallingEnabled(I)Z
    .locals 2
    .param p1, "subId"    # I

    .line 865
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getIMtkTelephonyEx()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->isWifiCallingEnabled(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 868
    :catch_0
    move-exception v1

    .line 869
    .local v1, "ex":Ljava/lang/NullPointerException;
    return v0

    .line 866
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 867
    .local v1, "ex":Landroid/os/RemoteException;
    return v0
.end method

.method public isWifiCalllingActive(I)Z
    .locals 2
    .param p1, "subId"    # I

    .line 882
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getIMtkTelephonyEx()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->isWifiCallingEnabled(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 885
    :catch_0
    move-exception v1

    .line 886
    .local v1, "ex":Ljava/lang/NullPointerException;
    return v0

    .line 883
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 884
    .local v1, "ex":Landroid/os/RemoteException;
    return v0
.end method

.method public loadEFLinearFixedAll(IIILjava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "slotId"    # I
    .param p2, "family"    # I
    .param p3, "fileID"    # I
    .param p4, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 495
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getIMtkTelephonyEx()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v0

    .line 496
    .local v0, "telephony":Lcom/mediatek/internal/telephony/IMtkTelephonyEx;
    if-eqz v0, :cond_0

    .line 497
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->loadEFLinearFixedAll(IIILjava/lang/String;)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 496
    .end local v0    # "telephony":Lcom/mediatek/internal/telephony/IMtkTelephonyEx;
    :cond_0
    goto :goto_0

    .line 499
    :catch_0
    move-exception v0

    goto :goto_1

    .line 498
    :catch_1
    move-exception v0

    .line 500
    :goto_0
    nop

    .line 501
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public loadEFTransparent(IIILjava/lang/String;)[B
    .locals 2
    .param p1, "slotId"    # I
    .param p2, "family"    # I
    .param p3, "fileID"    # I
    .param p4, "filePath"    # Ljava/lang/String;

    .line 469
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getIMtkTelephonyEx()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v0

    .line 470
    .local v0, "telephony":Lcom/mediatek/internal/telephony/IMtkTelephonyEx;
    if-eqz v0, :cond_0

    .line 471
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->loadEFTransparent(IIILjava/lang/String;)[B

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 470
    .end local v0    # "telephony":Lcom/mediatek/internal/telephony/IMtkTelephonyEx;
    :cond_0
    goto :goto_0

    .line 473
    :catch_0
    move-exception v0

    goto :goto_1

    .line 472
    :catch_1
    move-exception v0

    .line 474
    :goto_0
    nop

    .line 475
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public manuallySetNrMap(II)V
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "i"    # I

    .line 2605
    const-string v0, "MtkTelephonyManagerEx"

    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getIMtkTelephonyEx()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v1

    .line 2606
    .local v1, "telephony":Lcom/mediatek/internal/telephony/IMtkTelephonyEx;
    if-eqz v1, :cond_0

    .line 2607
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "switchNrMap id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " i="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2608
    invoke-interface {v1, p1, p2}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->manuallySetNrMap(II)V

    goto :goto_0

    .line 2610
    :cond_0
    const-string v2, "manuallySetNrMap IMtkTelephonyEx is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2614
    .end local v1    # "telephony":Lcom/mediatek/internal/telephony/IMtkTelephonyEx;
    :goto_0
    goto :goto_1

    .line 2612
    :catch_0
    move-exception v1

    .line 2613
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "manuallySetNrMap RemoteException"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2615
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method

.method public queryFemtoCellSystemSelectionMode(I)I
    .locals 5
    .param p1, "phoneId"    # I

    .line 1649
    const-string v0, "MtkTelephonyManagerEx"

    const/4 v1, -0x1

    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getIMtkTelephonyEx()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v2

    .line 1650
    .local v2, "telephonyEx":Lcom/mediatek/internal/telephony/IMtkTelephonyEx;
    if-nez v2, :cond_0

    .line 1651
    const-string v3, "queryFemtoCellSystemSelectionMode error because telephony is null"

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1652
    return v1

    .line 1654
    :cond_0
    invoke-interface {v2, p1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->queryFemtoCellSystemSelectionMode(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1658
    .end local v2    # "telephonyEx":Lcom/mediatek/internal/telephony/IMtkTelephonyEx;
    :catch_0
    move-exception v2

    .line 1659
    .local v2, "ex":Ljava/lang/NullPointerException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queryFemtoCellSystemSelectionMode due to NullPointerException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1660
    return v1

    .line 1655
    .end local v2    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v2

    .line 1656
    .local v2, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queryFemtoCellSystemSelectionMode error due to RemoteException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1657
    return v1
.end method

.method public registerAtUrcInd(ILandroid/os/Handler;I)V
    .locals 4
    .param p1, "slotId"    # I
    .param p2, "h"    # Landroid/os/Handler;
    .param p3, "event_id"    # I

    .line 1172
    const-string v0, "MtkTelephonyManagerEx"

    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getIMtkTelephonyEx()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v1

    .line 1173
    .local v1, "telephony":Lcom/mediatek/internal/telephony/IMtkTelephonyEx;
    if-eqz v1, :cond_0

    .line 1174
    new-instance v2, Lcom/mediatek/telephony/MtkTelephonyManagerEx$1;

    invoke-direct {v2, p0, p2, p3}, Lcom/mediatek/telephony/MtkTelephonyManagerEx$1;-><init>(Lcom/mediatek/telephony/MtkTelephonyManagerEx;Landroid/os/Handler;I)V

    invoke-interface {v1, p1, v2}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->registerAtUrcInd(ILcom/mediatek/telephony/IOemHookCallback;)V

    goto :goto_0

    .line 1206
    :cond_0
    const-string v2, "registerAtUrcInd service is null"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1210
    .end local v1    # "telephony":Lcom/mediatek/internal/telephony/IMtkTelephonyEx;
    :goto_0
    goto :goto_1

    .line 1208
    :catch_0
    move-exception v1

    .line 1209
    .local v1, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method

.method public registerAtUrcInd(ILjava/util/concurrent/Executor;Lcom/mediatek/telephony/MtkTelephonyManagerEx$OemHookCallback;)V
    .locals 4
    .param p1, "slotId"    # I
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "cb"    # Lcom/mediatek/telephony/MtkTelephonyManagerEx$OemHookCallback;

    .line 1221
    const-string v0, "MtkTelephonyManagerEx"

    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getIMtkTelephonyEx()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v1

    .line 1222
    .local v1, "telephony":Lcom/mediatek/internal/telephony/IMtkTelephonyEx;
    if-eqz v1, :cond_0

    .line 1223
    new-instance v2, Lcom/mediatek/telephony/MtkTelephonyManagerEx$2;

    invoke-direct {v2, p0, p2, p3}, Lcom/mediatek/telephony/MtkTelephonyManagerEx$2;-><init>(Lcom/mediatek/telephony/MtkTelephonyManagerEx;Ljava/util/concurrent/Executor;Lcom/mediatek/telephony/MtkTelephonyManagerEx$OemHookCallback;)V

    invoke-interface {v1, p1, v2}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->registerAtUrcInd(ILcom/mediatek/telephony/IOemHookCallback;)V

    goto :goto_0

    .line 1242
    :cond_0
    const-string v2, "registerAtUrcInd service is null"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1246
    .end local v1    # "telephony":Lcom/mediatek/internal/telephony/IMtkTelephonyEx;
    :goto_0
    goto :goto_1

    .line 1244
    :catch_0
    move-exception v1

    .line 1245
    .local v1, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1247
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method

.method public removeGwsdListener()V
    .locals 1

    .line 2116
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    .line 2115
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 2117
    .local v0, "defDataPhoneId":I
    invoke-virtual {p0, v0}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->removeGwsdListener(I)V

    .line 2118
    return-void
.end method

.method public removeGwsdListener(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .line 2122
    :try_start_0
    const-string v0, "gwsd"

    .line 2123
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2122
    invoke-static {v0}, Lcom/mediatek/gwsd/IGwsdService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/gwsd/IGwsdService;

    move-result-object v0

    .line 2124
    .local v0, "iGwsdService":Lcom/mediatek/gwsd/IGwsdService;
    if-eqz v0, :cond_0

    .line 2125
    invoke-interface {v0, p1}, Lcom/mediatek/gwsd/IGwsdService;->removeListener(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2129
    .end local v0    # "iGwsdService":Lcom/mediatek/gwsd/IGwsdService;
    :cond_0
    goto :goto_0

    .line 2127
    :catch_0
    move-exception v0

    .line 2128
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "MtkTelephonyManagerEx"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2130
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public selectFemtoCell(ILcom/mediatek/internal/telephony/FemtoCellInfo;)Z
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "femtocell"    # Lcom/mediatek/internal/telephony/FemtoCellInfo;

    .line 1625
    const-string v0, "MtkTelephonyManagerEx"

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getIMtkTelephonyEx()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v2

    .line 1626
    .local v2, "telephonyEx":Lcom/mediatek/internal/telephony/IMtkTelephonyEx;
    if-nez v2, :cond_0

    .line 1627
    const-string v3, "selectFemtoCell error because telephony is null"

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1628
    return v1

    .line 1630
    :cond_0
    invoke-interface {v2, p1, p2}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->selectFemtoCell(ILcom/mediatek/internal/telephony/FemtoCellInfo;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1634
    .end local v2    # "telephonyEx":Lcom/mediatek/internal/telephony/IMtkTelephonyEx;
    :catch_0
    move-exception v2

    .line 1635
    .local v2, "ex":Ljava/lang/NullPointerException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "selectFemtoCell error due to NullPointerException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1636
    return v1

    .line 1631
    .end local v2    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v2

    .line 1632
    .local v2, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "selectFemtoCell error due to RemoteException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1633
    return v1
.end method

.method public sendAtCmd(IJLjava/lang/String;Landroid/os/Handler;I)V
    .locals 8
    .param p1, "slotId"    # I
    .param p2, "token"    # J
    .param p4, "atCmd"    # Ljava/lang/String;
    .param p5, "h"    # Landroid/os/Handler;
    .param p6, "event_id"    # I

    .line 1252
    const-string v0, "MtkTelephonyManagerEx"

    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getIMtkTelephonyEx()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v1

    .line 1253
    .local v1, "telephony":Lcom/mediatek/internal/telephony/IMtkTelephonyEx;
    if-eqz v1, :cond_0

    .line 1254
    new-instance v7, Lcom/mediatek/telephony/MtkTelephonyManagerEx$3;

    invoke-direct {v7, p0, p5, p6}, Lcom/mediatek/telephony/MtkTelephonyManagerEx$3;-><init>(Lcom/mediatek/telephony/MtkTelephonyManagerEx;Landroid/os/Handler;I)V

    move-object v2, v1

    move v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-interface/range {v2 .. v7}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->sendAtCmd(IJLjava/lang/String;Lcom/mediatek/telephony/IOemHookCallback;)V

    goto :goto_0

    .line 1292
    :cond_0
    const-string v2, "sendAtCmd service is null"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1296
    .end local v1    # "telephony":Lcom/mediatek/internal/telephony/IMtkTelephonyEx;
    :goto_0
    goto :goto_1

    .line 1294
    :catch_0
    move-exception v1

    .line 1295
    .local v1, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1297
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method

.method public sendAtCmd(IJLjava/lang/String;Ljava/util/concurrent/Executor;Lcom/mediatek/telephony/MtkTelephonyManagerEx$OemHookCallback;)V
    .locals 8
    .param p1, "slotId"    # I
    .param p2, "token"    # J
    .param p4, "atCmd"    # Ljava/lang/String;
    .param p5, "executor"    # Ljava/util/concurrent/Executor;
    .param p6, "cb"    # Lcom/mediatek/telephony/MtkTelephonyManagerEx$OemHookCallback;

    .line 1308
    const-string v0, "MtkTelephonyManagerEx"

    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getIMtkTelephonyEx()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v1

    .line 1309
    .local v1, "telephony":Lcom/mediatek/internal/telephony/IMtkTelephonyEx;
    if-eqz v1, :cond_0

    .line 1310
    new-instance v7, Lcom/mediatek/telephony/MtkTelephonyManagerEx$4;

    invoke-direct {v7, p0, p5, p6}, Lcom/mediatek/telephony/MtkTelephonyManagerEx$4;-><init>(Lcom/mediatek/telephony/MtkTelephonyManagerEx;Ljava/util/concurrent/Executor;Lcom/mediatek/telephony/MtkTelephonyManagerEx$OemHookCallback;)V

    move-object v2, v1

    move v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-interface/range {v2 .. v7}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->sendAtCmd(IJLjava/lang/String;Lcom/mediatek/telephony/IOemHookCallback;)V

    goto :goto_0

    .line 1331
    :cond_0
    const-string v2, "sendAtCmd service is null"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1335
    .end local v1    # "telephony":Lcom/mediatek/internal/telephony/IMtkTelephonyEx;
    :goto_0
    goto :goto_1

    .line 1333
    :catch_0
    move-exception v1

    .line 1334
    .local v1, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1336
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method

.method public setApcMode(IIZI)V
    .locals 4
    .param p1, "slotId"    # I
    .param p2, "mode"    # I
    .param p3, "reportOn"    # Z
    .param p4, "reportInterval"    # I

    .line 1084
    const-string v0, "MtkTelephonyManagerEx"

    if-ltz p1, :cond_4

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v1

    if-lt p1, v1, :cond_0

    goto :goto_1

    .line 1088
    :cond_0
    if-ltz p2, :cond_3

    const/4 v1, 0x2

    if-le p2, v1, :cond_1

    goto :goto_0

    .line 1094
    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getIMtkTelephonyEx()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v1

    .line 1095
    .local v1, "telephony":Lcom/mediatek/internal/telephony/IMtkTelephonyEx;
    if-nez v1, :cond_2

    .line 1096
    const-string v2, "setApcMode error because telephony is null"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    return-void

    .line 1099
    :cond_2
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->setApcModeUsingSlotId(IIZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1107
    .end local v1    # "telephony":Lcom/mediatek/internal/telephony/IMtkTelephonyEx;
    nop

    .line 1108
    return-void

    .line 1104
    :catch_0
    move-exception v1

    .line 1105
    .local v1, "ex":Ljava/lang/NullPointerException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setApcMode error due to NullPointerException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1106
    return-void

    .line 1101
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 1102
    .local v1, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setApcMode error due to RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    return-void

    .line 1089
    .end local v1    # "ex":Landroid/os/RemoteException;
    :cond_3
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setApcMode error with invalid mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    return-void

    .line 1085
    :cond_4
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setApcMode error with invalid slotId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    return-void
.end method

.method public setCallSubAddressEnabled(IZ)V
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "mode"    # Z

    .line 2688
    const-string v0, "MtkTelephonyManagerEx"

    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getIMtkTelephonyEx()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->setCallSubAddressEnabled(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2695
    nop

    .line 2696
    return-void

    .line 2692
    :catch_0
    move-exception v1

    .line 2693
    .local v1, "ex":Ljava/lang/NullPointerException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCallSubAddressEnabled IMtkTelephonyEx npe: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2694
    return-void

    .line 2689
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 2690
    .local v1, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCallSubAddressEnabled IMtkTelephonyEx re: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2691
    return-void
.end method

.method public setCallSubAddressEnabled(Z)V
    .locals 1
    .param p1, "mode"    # Z

    .line 2662
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 2663
    .local v0, "defaultPhoneId":I
    invoke-virtual {p0, v0, p1}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->setCallSubAddressEnabled(IZ)V

    .line 2664
    return-void
.end method

.method public setCallValidTimer(I)V
    .locals 1
    .param p1, "timer"    # I

    .line 2213
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    .line 2212
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 2214
    .local v0, "defDataPhoneId":I
    invoke-virtual {p0, v0, p1}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->setCallValidTimer(II)V

    .line 2215
    return-void
.end method

.method public setCallValidTimer(II)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "timer"    # I

    .line 2219
    :try_start_0
    const-string v0, "gwsd"

    .line 2220
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2219
    invoke-static {v0}, Lcom/mediatek/gwsd/IGwsdService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/gwsd/IGwsdService;

    move-result-object v0

    .line 2221
    .local v0, "iGwsdService":Lcom/mediatek/gwsd/IGwsdService;
    if-eqz v0, :cond_0

    .line 2222
    invoke-interface {v0, p1, p2}, Lcom/mediatek/gwsd/IGwsdService;->setCallValidTimer(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2226
    .end local v0    # "iGwsdService":Lcom/mediatek/gwsd/IGwsdService;
    :cond_0
    goto :goto_0

    .line 2224
    :catch_0
    move-exception v0

    .line 2225
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "MtkTelephonyManagerEx"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2227
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public setDisable2G(IZ)Z
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "mode"    # Z

    .line 1528
    const-string v0, "MtkTelephonyManagerEx"

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getIMtkTelephonyEx()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v2

    .line 1529
    .local v2, "telephonyEx":Lcom/mediatek/internal/telephony/IMtkTelephonyEx;
    if-nez v2, :cond_0

    .line 1530
    const-string v3, "setDisable2G error because telephony is null"

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1531
    return v1

    .line 1533
    :cond_0
    invoke-interface {v2, p1, p2}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->setDisable2G(IZ)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1537
    .end local v2    # "telephonyEx":Lcom/mediatek/internal/telephony/IMtkTelephonyEx;
    :catch_0
    move-exception v2

    .line 1538
    .local v2, "ex":Ljava/lang/NullPointerException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDisable2G error due to NullPointerException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1539
    return v1

    .line 1534
    .end local v2    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v2

    .line 1535
    .local v2, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDisable2G error due to RemoteException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1536
    return v1
.end method

.method public setFemtoCellSystemSelectionMode(II)Z
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "mode"    # I

    .line 1674
    const-string v0, "MtkTelephonyManagerEx"

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getIMtkTelephonyEx()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v2

    .line 1675
    .local v2, "telephonyEx":Lcom/mediatek/internal/telephony/IMtkTelephonyEx;
    if-nez v2, :cond_0

    .line 1676
    const-string v3, "setFemtoCellSystemSelectionMode error because telephony is null"

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1677
    return v1

    .line 1679
    :cond_0
    invoke-interface {v2, p1, p2}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->setFemtoCellSystemSelectionMode(II)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1683
    .end local v2    # "telephonyEx":Lcom/mediatek/internal/telephony/IMtkTelephonyEx;
    :catch_0
    move-exception v2

    .line 1684
    .local v2, "ex":Ljava/lang/NullPointerException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setFemtoCellSystemSelectionMode due to NullPointerException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1685
    return v1

    .line 1680
    .end local v2    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v2

    .line 1681
    .local v2, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setFemtoCellSystemSelectionMode error due to RemoteException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1682
    return v1
.end method

.method public setGwsdAutoRejectEnabled(IZ)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "action"    # Z

    .line 2183
    :try_start_0
    const-string v0, "gwsd"

    .line 2184
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2183
    invoke-static {v0}, Lcom/mediatek/gwsd/IGwsdService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/gwsd/IGwsdService;

    move-result-object v0

    .line 2185
    .local v0, "iGwsdService":Lcom/mediatek/gwsd/IGwsdService;
    if-eqz v0, :cond_0

    .line 2186
    invoke-interface {v0, p1, p2}, Lcom/mediatek/gwsd/IGwsdService;->setAutoRejectModeEnabled(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2190
    .end local v0    # "iGwsdService":Lcom/mediatek/gwsd/IGwsdService;
    :cond_0
    goto :goto_0

    .line 2188
    :catch_0
    move-exception v0

    .line 2189
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "MtkTelephonyManagerEx"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2191
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public setGwsdAutoRejectEnabled(Z)V
    .locals 1
    .param p1, "action"    # Z

    .line 2176
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    .line 2175
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 2177
    .local v0, "defDataPhoneId":I
    invoke-virtual {p0, v0, p1}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->setGwsdAutoRejectEnabled(IZ)V

    .line 2178
    return-void
.end method

.method public setGwsdDualSimEnabled(Z)V
    .locals 3
    .param p1, "action"    # Z

    .line 2505
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setGwsdDualSimEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkTelephonyManagerEx"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2507
    :try_start_0
    const-string v0, "gwsd"

    .line 2508
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2507
    invoke-static {v0}, Lcom/mediatek/gwsd/IGwsdService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/gwsd/IGwsdService;

    move-result-object v0

    .line 2509
    .local v0, "iGwsdService":Lcom/mediatek/gwsd/IGwsdService;
    if-eqz v0, :cond_0

    .line 2510
    invoke-interface {v0, p1}, Lcom/mediatek/gwsd/IGwsdService;->setGwsdDualSimEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2514
    .end local v0    # "iGwsdService":Lcom/mediatek/gwsd/IGwsdService;
    :cond_0
    goto :goto_0

    .line 2512
    :catch_0
    move-exception v0

    .line 2513
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2515
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public setGwsdEnabled(IZ)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "action"    # Z

    .line 2140
    :try_start_0
    const-string v0, "gwsd"

    .line 2141
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2140
    invoke-static {v0}, Lcom/mediatek/gwsd/IGwsdService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/gwsd/IGwsdService;

    move-result-object v0

    .line 2142
    .local v0, "iGwsdService":Lcom/mediatek/gwsd/IGwsdService;
    if-eqz v0, :cond_0

    .line 2143
    invoke-interface {v0, p1, p2}, Lcom/mediatek/gwsd/IGwsdService;->setUserModeEnabled(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2147
    .end local v0    # "iGwsdService":Lcom/mediatek/gwsd/IGwsdService;
    :cond_0
    goto :goto_0

    .line 2145
    :catch_0
    move-exception v0

    .line 2146
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "MtkTelephonyManagerEx"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2148
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public setGwsdEnabled(Z)V
    .locals 1
    .param p1, "action"    # Z

    .line 2134
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    .line 2133
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 2135
    .local v0, "defDataPhoneId":I
    invoke-virtual {p0, v0, p1}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->setGwsdEnabled(IZ)V

    .line 2136
    return-void
.end method

.method public setIgnoreSameNumberInterval(I)V
    .locals 1
    .param p1, "internal"    # I

    .line 2231
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    .line 2230
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 2232
    .local v0, "defDataPhoneId":I
    invoke-virtual {p0, v0, p1}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->setIgnoreSameNumberInterval(II)V

    .line 2233
    return-void
.end method

.method public setIgnoreSameNumberInterval(II)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "internal"    # I

    .line 2237
    :try_start_0
    const-string v0, "gwsd"

    .line 2238
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2237
    invoke-static {v0}, Lcom/mediatek/gwsd/IGwsdService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/gwsd/IGwsdService;

    move-result-object v0

    .line 2239
    .local v0, "iGwsdService":Lcom/mediatek/gwsd/IGwsdService;
    if-eqz v0, :cond_0

    .line 2240
    invoke-interface {v0, p1, p2}, Lcom/mediatek/gwsd/IGwsdService;->setIgnoreSameNumberInterval(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2244
    .end local v0    # "iGwsdService":Lcom/mediatek/gwsd/IGwsdService;
    :cond_0
    goto :goto_0

    .line 2242
    :catch_0
    move-exception v0

    .line 2243
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "MtkTelephonyManagerEx"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2245
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public setIsimGbabp(ILjava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "subId"    # I
    .param p2, "gbabp"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .line 942
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getMtkSubscriberInfoEx()Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx;->setIsimGbabpForSubscriber(ILjava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 948
    nop

    .line 949
    return-void

    .line 945
    :catch_0
    move-exception v0

    .line 947
    .local v0, "ex":Ljava/lang/NullPointerException;
    return-void

    .line 943
    .end local v0    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 944
    .local v0, "ex":Landroid/os/RemoteException;
    return-void
.end method

.method public setIsimGbabp(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "gbabp"    # Ljava/lang/String;
    .param p2, "onComplete"    # Landroid/os/Message;

    .line 927
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->setIsimGbabp(ILjava/lang/String;Landroid/os/Message;)V

    .line 928
    return-void
.end method

.method public setMobileDataUsageSum(IJJJJ)V
    .locals 12
    .param p1, "phoneId"    # I
    .param p2, "txBytes"    # J
    .param p4, "txPkts"    # J
    .param p6, "rxBytes"    # J
    .param p8, "rxPkts"    # J

    .line 2446
    const-string v1, "MtkTelephonyManagerEx"

    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getIMtkTelephonyEx()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v0

    .line 2447
    .local v0, "telephonyEx":Lcom/mediatek/internal/telephony/IMtkTelephonyEx;
    if-nez v0, :cond_0

    .line 2448
    const-string v2, "setMobileDataUsageSum : telephony is null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2449
    return-void

    .line 2451
    :cond_0
    move-object v2, v0

    move v3, p1

    move-wide v4, p2

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    invoke-interface/range {v2 .. v11}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->setMobileDataUsageSum(IJJJJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2458
    .end local v0    # "telephonyEx":Lcom/mediatek/internal/telephony/IMtkTelephonyEx;
    nop

    .line 2460
    return-void

    .line 2455
    :catch_0
    move-exception v0

    .line 2456
    .local v0, "ex":Ljava/lang/NullPointerException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMobileDataUsageSum : NullPointerException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2457
    return-void

    .line 2452
    .end local v0    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 2453
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMobileDataUsageSum : RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2454
    return-void
.end method

.method public setPreferredNetworkTypeBitmask(IJ)Z
    .locals 3
    .param p1, "subId"    # I
    .param p2, "networkTypeBitmask"    # J
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2576
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 2577
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_0

    .line 2578
    long-to-int v1, p2

    .line 2579
    invoke-static {v1}, Landroid/telephony/MtkRadioAccessFamily;->getNetworkTypeFromRaf(I)I

    move-result v1

    .line 2578
    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/ITelephony;->setPreferredNetworkType(II)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 2584
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    goto :goto_0

    .line 2582
    :catch_0
    move-exception v0

    .line 2583
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "MtkTelephonyManagerEx"

    const-string v2, "setPreferredNetworkTypeBitmask RemoteException"

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2586
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public setRoamingEnable(I[I)Z
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "config"    # [I

    .line 2338
    const-string v0, "MtkTelephonyManagerEx"

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getIMtkTelephonyEx()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v2

    .line 2339
    .local v2, "telephony":Lcom/mediatek/internal/telephony/IMtkTelephonyEx;
    if-nez v2, :cond_0

    .line 2340
    const-string v3, "setRoamingEnable error because telephony is null"

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2341
    return v1

    .line 2343
    :cond_0
    invoke-interface {v2, p1, p2}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->setRoamingEnable(I[I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2346
    .end local v2    # "telephony":Lcom/mediatek/internal/telephony/IMtkTelephonyEx;
    :catch_0
    move-exception v2

    .line 2347
    .local v2, "ex":Ljava/lang/NullPointerException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setRoamingEnable error due to NullPointerException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2344
    .end local v2    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v2

    .line 2345
    .local v2, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setRoamingEnable error due to RemoteException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2348
    .end local v2    # "ex":Landroid/os/RemoteException;
    nop

    .line 2349
    :goto_0
    return v1
.end method

.method public setRxTestConfig(I)[I
    .locals 3
    .param p1, "config"    # I

    .line 1041
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 1043
    .local v0, "defaultPhoneId":I
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getIMtkTelephonyEx()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v2

    invoke-interface {v2, v0, p1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->setRxTestConfig(II)[I

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1046
    :catch_0
    move-exception v2

    .line 1047
    .local v2, "ex":Ljava/lang/NullPointerException;
    return-object v1

    .line 1044
    .end local v2    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v2

    .line 1045
    .local v2, "ex":Landroid/os/RemoteException;
    return-object v1
.end method

.method public setSimPower(II)I
    .locals 4
    .param p1, "slotIndex"    # I
    .param p2, "state"    # I

    .line 2047
    const/4 v0, -0x1

    .line 2048
    .local v0, "result":I
    const-string v1, "MtkTelephonyManagerEx"

    if-ltz p1, :cond_2

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v2

    if-lt p1, v2, :cond_0

    goto :goto_2

    .line 2053
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getIMtkTelephonyEx()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v2

    .line 2054
    .local v2, "telephonyEx":Lcom/mediatek/internal/telephony/IMtkTelephonyEx;
    if-eqz v2, :cond_1

    .line 2055
    invoke-interface {v2, p1, p2}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->setSimPower(II)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 2061
    .end local v2    # "telephonyEx":Lcom/mediatek/internal/telephony/IMtkTelephonyEx;
    :cond_1
    :goto_0
    goto :goto_1

    .line 2059
    :catch_0
    move-exception v2

    .line 2060
    .local v2, "ex":Ljava/lang/SecurityException;
    const-string v3, "Permission error calling ITelephony#setSimOnOffState"

    invoke-static {v1, v3, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2057
    .end local v2    # "ex":Ljava/lang/SecurityException;
    :catch_1
    move-exception v2

    .line 2058
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v3, "Error calling ITelephony#setSimOnOffState"

    invoke-static {v1, v3, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2    # "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 2063
    :goto_1
    return v0

    .line 2049
    :cond_2
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSimPower error with invalid slotIndex "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2050
    return v0
.end method

.method public setUsimGbabp(ILjava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "subId"    # I
    .param p2, "gbabp"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .line 1004
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getMtkSubscriberInfoEx()Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx;->setUsimGbabpForSubscriber(ILjava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1010
    nop

    .line 1011
    return-void

    .line 1007
    :catch_0
    move-exception v0

    .line 1009
    .local v0, "ex":Ljava/lang/NullPointerException;
    return-void

    .line 1005
    .end local v0    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 1006
    .local v0, "ex":Landroid/os/RemoteException;
    return-void
.end method

.method public setUsimGbabp(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "gbabp"    # Ljava/lang/String;
    .param p2, "onComplete"    # Landroid/os/Message;

    .line 989
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->setUsimGbabp(ILjava/lang/String;Landroid/os/Message;)V

    .line 990
    return-void
.end method

.method public setVoDataEnabled(IZ)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "isEnable"    # Z

    .line 2152
    :try_start_0
    const-string v0, "vodata"

    .line 2153
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2152
    invoke-static {v0}, Lcom/mediatek/ims/internal/IVoDataService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/internal/IVoDataService;

    move-result-object v0

    .line 2154
    .local v0, "iVoDataService":Lcom/mediatek/ims/internal/IVoDataService;
    if-eqz v0, :cond_0

    .line 2155
    invoke-interface {v0, p1, p2}, Lcom/mediatek/ims/internal/IVoDataService;->setEnabled(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2159
    .end local v0    # "iVoDataService":Lcom/mediatek/ims/internal/IVoDataService;
    :cond_0
    goto :goto_0

    .line 2157
    :catch_0
    move-exception v0

    .line 2158
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "MtkTelephonyManagerEx"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2160
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public setupPdnByType(ILjava/lang/String;)Z
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "type"    # Ljava/lang/String;

    .line 2282
    const-string v0, "MtkTelephonyManagerEx"

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getIMtkTelephonyEx()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v2

    .line 2283
    .local v2, "telephony":Lcom/mediatek/internal/telephony/IMtkTelephonyEx;
    if-nez v2, :cond_0

    .line 2284
    const-string v3, "setupPdnByType: telephony = null"

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2285
    return v1

    .line 2287
    :cond_0
    invoke-interface {v2, p1, p2}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->setupPdnByType(ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2294
    nop

    .line 2295
    .end local v2    # "telephony":Lcom/mediatek/internal/telephony/IMtkTelephonyEx;
    const/4 v0, 0x1

    return v0

    .line 2291
    :catch_0
    move-exception v2

    .line 2292
    .local v2, "ex":Ljava/lang/NullPointerException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setupPdnByType: NullPointerException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2293
    return v1

    .line 2288
    .end local v2    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v2

    .line 2289
    .local v2, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setupPdnByType: RemoteException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2290
    return v1
.end method

.method public simSwitchMode()I
    .locals 4

    .line 1970
    const/4 v0, 0x1

    .line 1971
    .local v0, "result":I
    const-string v1, "vendor.ril.sim.onoff.support"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1972
    const-string v1, "ro.vendor.mtk_sim_card_onoff"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1973
    const/4 v0, 0x2

    goto :goto_0

    .line 1974
    :cond_0
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1975
    const/4 v0, 0x3

    goto :goto_0

    .line 1978
    :cond_1
    const/4 v0, 0x1

    .line 1981
    :cond_2
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "simSwitchMode result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MtkTelephonyManagerEx"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1982
    return v0
.end method

.method public switchNrMap(IZ)V
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "sw"    # Z

    .line 2591
    const-string v0, "MtkTelephonyManagerEx"

    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getIMtkTelephonyEx()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v1

    .line 2592
    .local v1, "telephony":Lcom/mediatek/internal/telephony/IMtkTelephonyEx;
    if-eqz v1, :cond_0

    .line 2593
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "switchNrMap id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " sw="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2594
    invoke-interface {v1, p1, p2}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->switchNrMap(IZ)V

    goto :goto_0

    .line 2596
    :cond_0
    const-string v2, "switchNrMap IMtkTelephonyEx is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2600
    .end local v1    # "telephony":Lcom/mediatek/internal/telephony/IMtkTelephonyEx;
    :goto_0
    goto :goto_1

    .line 2598
    :catch_0
    move-exception v1

    .line 2599
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "switchNrMap RemoteException"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2601
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method

.method public syncGwsdInfo(IZZ)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "userEnable"    # Z
    .param p3, "autoReject"    # Z

    .line 2201
    :try_start_0
    const-string v0, "gwsd"

    .line 2202
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2201
    invoke-static {v0}, Lcom/mediatek/gwsd/IGwsdService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/gwsd/IGwsdService;

    move-result-object v0

    .line 2203
    .local v0, "iGwsdService":Lcom/mediatek/gwsd/IGwsdService;
    if-eqz v0, :cond_0

    .line 2204
    invoke-interface {v0, p1, p2, p3}, Lcom/mediatek/gwsd/IGwsdService;->syncGwsdInfo(IZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2208
    .end local v0    # "iGwsdService":Lcom/mediatek/gwsd/IGwsdService;
    :cond_0
    goto :goto_0

    .line 2206
    :catch_0
    move-exception v0

    .line 2207
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "MtkTelephonyManagerEx"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2209
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public syncGwsdInfo(ZZ)V
    .locals 1
    .param p1, "userEnable"    # Z
    .param p2, "autoReject"    # Z

    .line 2195
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    .line 2194
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 2196
    .local v0, "defDataPhoneId":I
    invoke-virtual {p0, v0, p1, p2}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->syncGwsdInfo(IZZ)V

    .line 2197
    return-void
.end method

.method public tearDownPdnByType(ILjava/lang/String;)Z
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "type"    # Ljava/lang/String;

    .line 2257
    const-string v0, "MtkTelephonyManagerEx"

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getIMtkTelephonyEx()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v2

    .line 2258
    .local v2, "telephony":Lcom/mediatek/internal/telephony/IMtkTelephonyEx;
    if-nez v2, :cond_0

    .line 2259
    const-string v3, "tearDownPdnByType: telephony = null"

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2260
    return v1

    .line 2262
    :cond_0
    invoke-interface {v2, p1, p2}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->tearDownPdnByType(ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2269
    nop

    .line 2270
    .end local v2    # "telephony":Lcom/mediatek/internal/telephony/IMtkTelephonyEx;
    const/4 v0, 0x1

    return v0

    .line 2266
    :catch_0
    move-exception v2

    .line 2267
    .local v2, "ex":Ljava/lang/NullPointerException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tearDownPdnByType: NullPointerException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2268
    return v1

    .line 2263
    .end local v2    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v2

    .line 2264
    .local v2, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tearDownPdnByType: RemoteException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2265
    return v1
.end method

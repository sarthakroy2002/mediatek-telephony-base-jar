.class public abstract Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;
.super Landroid/os/Binder;
.source "IMtkTelephonyEx.java"

# interfaces
.implements Lcom/mediatek/internal/telephony/IMtkTelephonyEx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/IMtkTelephonyEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.mediatek.internal.telephony.IMtkTelephonyEx"

.field static final TRANSACTION_abortFemtoCellList:I = 0x38

.field static final TRANSACTION_cancelAvailableNetworks:I = 0x3c

.field static final TRANSACTION_exitEmergencyCallbackMode:I = 0x28

.field static final TRANSACTION_getAdnStorageInfo:I = 0x21

.field static final TRANSACTION_getAllCellInfo:I = 0x33

.field static final TRANSACTION_getApcInfoUsingSlotId:I = 0x2a

.field static final TRANSACTION_getCallSubAddressEnabled:I = 0x4d

.field static final TRANSACTION_getCdmaSubscriptionActStatus:I = 0x2b

.field static final TRANSACTION_getCellLocationUsingSlotId:I = 0x17

.field static final TRANSACTION_getDebuggingDsdaStatus:I = 0x48

.field static final TRANSACTION_getDisable2G:I = 0x36

.field static final TRANSACTION_getFemtoCellList:I = 0x37

.field static final TRANSACTION_getIccAppFamily:I = 0x2

.field static final TRANSACTION_getIccAtr:I = 0x6

.field static final TRANSACTION_getIccCardType:I = 0x3

.field static final TRANSACTION_getIsLastEccIms:I = 0x2d

.field static final TRANSACTION_getLocatedPlmn:I = 0x34

.field static final TRANSACTION_getMainCapabilityPhoneId:I = 0x1d

.field static final TRANSACTION_getMobileDataUsage:I = 0x45

.field static final TRANSACTION_getMvnoMatchType:I = 0x10

.field static final TRANSACTION_getMvnoPattern:I = 0x11

.field static final TRANSACTION_getNrMapStatus:I = 0x4c

.field static final TRANSACTION_getPCO520State:I = 0x27

.field static final TRANSACTION_getRoamingEnable:I = 0x43

.field static final TRANSACTION_getRxTestResult:I = 0x24

.field static final TRANSACTION_getSelfActivateState:I = 0x26

.field static final TRANSACTION_getServiceStateByPhoneId:I = 0x41

.field static final TRANSACTION_getSimLockStateForRSU:I = 0x3e

.field static final TRANSACTION_getSimOnOffExecutingState:I = 0xc

.field static final TRANSACTION_getSimOnOffState:I = 0xb

.field static final TRANSACTION_getSimOperatorNumericForPhoneEx:I = 0x1a

.field static final TRANSACTION_getSimSerialNumber:I = 0x19

.field static final TRANSACTION_getSuggestedPlmnList:I = 0x44

.field static final TRANSACTION_getUimSubscriberId:I = 0x18

.field static final TRANSACTION_iccExchangeSimIOEx:I = 0x7

.field static final TRANSACTION_invokeOemRilRequestRaw:I = 0x30

.field static final TRANSACTION_invokeOemRilRequestRawBySlot:I = 0x31

.field static final TRANSACTION_isAppTypeSupported:I = 0x4

.field static final TRANSACTION_isCapabilitySwitching:I = 0x1c

.field static final TRANSACTION_isEmergencyNumber:I = 0x47

.field static final TRANSACTION_isFdnEnabled:I = 0x16

.field static final TRANSACTION_isImsRegistered:I = 0x1e

.field static final TRANSACTION_isInCsCall:I = 0x32

.field static final TRANSACTION_isInHomeNetwork:I = 0x1

.field static final TRANSACTION_isNrMapEnabled:I = 0x4b

.field static final TRANSACTION_isPhbReady:I = 0x22

.field static final TRANSACTION_isRadioOffBySimManagement:I = 0x15

.field static final TRANSACTION_isTestIccCard:I = 0x5

.field static final TRANSACTION_isVolteEnabled:I = 0x1f

.field static final TRANSACTION_isWifiCallingEnabled:I = 0x20

.field static final TRANSACTION_loadEFLinearFixedAll:I = 0x9

.field static final TRANSACTION_loadEFTransparent:I = 0x8

.field static final TRANSACTION_manuallySetNrMap:I = 0x4a

.field static final TRANSACTION_queryFemtoCellSystemSelectionMode:I = 0x3a

.field static final TRANSACTION_queryNetworkLock:I = 0xd

.field static final TRANSACTION_registerAtUrcInd:I = 0x2e

.field static final TRANSACTION_repollIccStateForNetworkLock:I = 0xf

.field static final TRANSACTION_selectFemtoCell:I = 0x39

.field static final TRANSACTION_selfActivationAction:I = 0x25

.field static final TRANSACTION_sendAtCmd:I = 0x2f

.field static final TRANSACTION_setApcModeUsingSlotId:I = 0x29

.field static final TRANSACTION_setCallSubAddressEnabled:I = 0x4e

.field static final TRANSACTION_setDisable2G:I = 0x35

.field static final TRANSACTION_setFemtoCellSystemSelectionMode:I = 0x3b

.field static final TRANSACTION_setIsLastEccIms:I = 0x2c

.field static final TRANSACTION_setMobileDataUsageSum:I = 0x46

.field static final TRANSACTION_setRadioCapability:I = 0x1b

.field static final TRANSACTION_setRoamingEnable:I = 0x42

.field static final TRANSACTION_setRxTestConfig:I = 0x23

.field static final TRANSACTION_setSimPower:I = 0xa

.field static final TRANSACTION_setupPdnByType:I = 0x40

.field static final TRANSACTION_simAkaAuthentication:I = 0x12

.field static final TRANSACTION_simGbaAuthBootStrapMode:I = 0x13

.field static final TRANSACTION_simGbaAuthNafMode:I = 0x14

.field static final TRANSACTION_supplyDeviceNetworkDepersonalization:I = 0x3d

.field static final TRANSACTION_supplyNetworkDepersonalization:I = 0xe

.field static final TRANSACTION_switchNrMap:I = 0x49

.field static final TRANSACTION_tearDownPdnByType:I = 0x3f


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 873
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 874
    const-string v0, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 875
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/IMtkTelephonyEx;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 882
    if-nez p0, :cond_0

    .line 883
    const/4 v0, 0x0

    return-object v0

    .line 885
    :cond_0
    const-string v0, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 886
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    if-eqz v1, :cond_1

    .line 887
    move-object v1, v0

    check-cast v1, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    return-object v1

    .line 889
    :cond_1
    new-instance v1, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;
    .locals 1

    .line 4239
    sget-object v0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/mediatek/internal/telephony/IMtkTelephonyEx;)Z
    .locals 2
    .param p0, "impl"    # Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    .line 4229
    sget-object v0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    if-nez v0, :cond_1

    .line 4232
    if-eqz p0, :cond_0

    .line 4233
    sput-object p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    .line 4234
    const/4 v0, 0x1

    return v0

    .line 4236
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 4230
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 893
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 25
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 897
    move-object/from16 v10, p0

    move/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    const-string v14, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    .line 898
    .local v14, "descriptor":Ljava/lang/String;
    const v0, 0x5f4e5446

    const/4 v15, 0x1

    if-eq v11, v0, :cond_f

    const/4 v0, 0x0

    packed-switch v11, :pswitch_data_0

    .line 1854
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 1843
    :pswitch_0
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1845
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1847
    .local v1, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v15

    .line 1848
    .local v0, "_arg1":Z
    :cond_0
    invoke-virtual {v10, v1, v0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->setCallSubAddressEnabled(IZ)V

    .line 1849
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1850
    return v15

    .line 1833
    .end local v0    # "_arg1":Z
    .end local v1    # "_arg0":I
    :pswitch_1
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1835
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1836
    .local v0, "_arg0":I
    invoke-virtual {v10, v0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getCallSubAddressEnabled(I)Z

    move-result v1

    .line 1837
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1838
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1839
    return v15

    .line 1823
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_2
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1825
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1826
    .restart local v0    # "_arg0":I
    invoke-virtual {v10, v0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getNrMapStatus(I)Ljava/lang/String;

    move-result-object v1

    .line 1827
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1828
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1829
    return v15

    .line 1813
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_3
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1815
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1816
    .restart local v0    # "_arg0":I
    invoke-virtual {v10, v0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->isNrMapEnabled(I)Z

    move-result v1

    .line 1817
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1818
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1819
    return v15

    .line 1802
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_4
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1804
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1806
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1807
    .local v1, "_arg1":I
    invoke-virtual {v10, v0, v1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->manuallySetNrMap(II)V

    .line 1808
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1809
    return v15

    .line 1791
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_5
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1793
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1795
    .local v1, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    move v0, v15

    .line 1796
    .local v0, "_arg1":Z
    :cond_1
    invoke-virtual {v10, v1, v0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->switchNrMap(IZ)V

    .line 1797
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1798
    return v15

    .line 1783
    .end local v0    # "_arg1":Z
    .end local v1    # "_arg0":I
    :pswitch_6
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1784
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDebuggingDsdaStatus()I

    move-result v0

    .line 1785
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1786
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1787
    return v15

    .line 1771
    .end local v0    # "_result":I
    :pswitch_7
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1773
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1775
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1776
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {v10, v0, v1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->isEmergencyNumber(ILjava/lang/String;)Z

    move-result v2

    .line 1777
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1778
    invoke-virtual {v13, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1779
    return v15

    .line 1754
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_8
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1756
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 1758
    .local v16, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v17

    .line 1760
    .local v17, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v19

    .line 1762
    .local v19, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v21

    .line 1764
    .local v21, "_arg3":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v23

    .line 1765
    .local v23, "_arg4":J
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-wide/from16 v2, v17

    move-wide/from16 v4, v19

    move-wide/from16 v6, v21

    move-wide/from16 v8, v23

    invoke-virtual/range {v0 .. v9}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->setMobileDataUsageSum(IJJJJ)V

    .line 1766
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1767
    return v15

    .line 1738
    .end local v16    # "_arg0":I
    .end local v17    # "_arg1":J
    .end local v19    # "_arg2":J
    .end local v21    # "_arg3":J
    .end local v23    # "_arg4":J
    :pswitch_9
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1740
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1741
    .local v1, "_arg0":I
    invoke-virtual {v10, v1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getMobileDataUsage(I)Landroid/net/NetworkStats;

    move-result-object v2

    .line 1742
    .local v2, "_result":Landroid/net/NetworkStats;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1743
    if-eqz v2, :cond_2

    .line 1744
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 1745
    invoke-virtual {v2, v13, v15}, Landroid/net/NetworkStats;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1748
    :cond_2
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1750
    :goto_0
    return v15

    .line 1720
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Landroid/net/NetworkStats;
    :pswitch_a
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1722
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1724
    .local v6, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1726
    .local v7, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1728
    .local v8, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1730
    .local v9, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 1731
    .local v16, "_arg4":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v6

    move v2, v7

    move v3, v8

    move v4, v9

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getSuggestedPlmnList(IIIILjava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1732
    .local v0, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1733
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1734
    return v15

    .line 1710
    .end local v0    # "_result":[Ljava/lang/String;
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":I
    .end local v16    # "_arg4":Ljava/lang/String;
    :pswitch_b
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1712
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1713
    .local v0, "_arg0":I
    invoke-virtual {v10, v0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getRoamingEnable(I)[I

    move-result-object v1

    .line 1714
    .local v1, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1715
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1716
    return v15

    .line 1698
    .end local v0    # "_arg0":I
    .end local v1    # "_result":[I
    :pswitch_c
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1700
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1702
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 1703
    .local v1, "_arg1":[I
    invoke-virtual {v10, v0, v1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->setRoamingEnable(I[I)Z

    move-result v2

    .line 1704
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1705
    invoke-virtual {v13, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1706
    return v15

    .line 1678
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[I
    .end local v2    # "_result":Z
    :pswitch_d
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1680
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1682
    .local v1, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1684
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1685
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {v10, v1, v2, v3}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getServiceStateByPhoneId(ILjava/lang/String;Ljava/lang/String;)Landroid/telephony/ServiceState;

    move-result-object v4

    .line 1686
    .local v4, "_result":Landroid/telephony/ServiceState;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1687
    if-eqz v4, :cond_3

    .line 1688
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 1689
    invoke-virtual {v4, v13, v15}, Landroid/telephony/ServiceState;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 1692
    :cond_3
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1694
    :goto_1
    return v15

    .line 1666
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_result":Landroid/telephony/ServiceState;
    :pswitch_e
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1668
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1670
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1671
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {v10, v0, v1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->setupPdnByType(ILjava/lang/String;)Z

    move-result v2

    .line 1672
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1673
    invoke-virtual {v13, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1674
    return v15

    .line 1654
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_f
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1656
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1658
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1659
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {v10, v0, v1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->tearDownPdnByType(ILjava/lang/String;)Z

    move-result v2

    .line 1660
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1661
    invoke-virtual {v13, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1662
    return v15

    .line 1644
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_10
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1646
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1647
    .restart local v0    # "_arg0":I
    invoke-virtual {v10, v0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getSimLockStateForRSU(I)I

    move-result v1

    .line 1648
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1649
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1650
    return v15

    .line 1634
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_11
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1636
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1637
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {v10, v0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->supplyDeviceNetworkDepersonalization(Ljava/lang/String;)[I

    move-result-object v1

    .line 1638
    .local v1, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1639
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1640
    return v15

    .line 1624
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":[I
    :pswitch_12
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1626
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1627
    .local v0, "_arg0":I
    invoke-virtual {v10, v0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->cancelAvailableNetworks(I)Z

    move-result v1

    .line 1628
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1629
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1630
    return v15

    .line 1612
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_13
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1614
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1616
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1617
    .local v1, "_arg1":I
    invoke-virtual {v10, v0, v1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->setFemtoCellSystemSelectionMode(II)Z

    move-result v2

    .line 1618
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1619
    invoke-virtual {v13, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1620
    return v15

    .line 1602
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_14
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1604
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1605
    .restart local v0    # "_arg0":I
    invoke-virtual {v10, v0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->queryFemtoCellSystemSelectionMode(I)I

    move-result v1

    .line 1606
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1607
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1608
    return v15

    .line 1585
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_15
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1587
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1589
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4

    .line 1590
    sget-object v1, Lcom/mediatek/internal/telephony/FemtoCellInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/internal/telephony/FemtoCellInfo;

    .local v1, "_arg1":Lcom/mediatek/internal/telephony/FemtoCellInfo;
    goto :goto_2

    .line 1593
    .end local v1    # "_arg1":Lcom/mediatek/internal/telephony/FemtoCellInfo;
    :cond_4
    const/4 v1, 0x0

    .line 1595
    .restart local v1    # "_arg1":Lcom/mediatek/internal/telephony/FemtoCellInfo;
    :goto_2
    invoke-virtual {v10, v0, v1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->selectFemtoCell(ILcom/mediatek/internal/telephony/FemtoCellInfo;)Z

    move-result v2

    .line 1596
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1597
    invoke-virtual {v13, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1598
    return v15

    .line 1575
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Lcom/mediatek/internal/telephony/FemtoCellInfo;
    .end local v2    # "_result":Z
    :pswitch_16
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1577
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1578
    .restart local v0    # "_arg0":I
    invoke-virtual {v10, v0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->abortFemtoCellList(I)Z

    move-result v1

    .line 1579
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1580
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1581
    return v15

    .line 1565
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_17
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1567
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1568
    .restart local v0    # "_arg0":I
    invoke-virtual {v10, v0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getFemtoCellList(I)Ljava/util/List;

    move-result-object v1

    .line 1569
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/internal/telephony/FemtoCellInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1570
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1571
    return v15

    .line 1555
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/internal/telephony/FemtoCellInfo;>;"
    :pswitch_18
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1557
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1558
    .restart local v0    # "_arg0":I
    invoke-virtual {v10, v0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDisable2G(I)I

    move-result v1

    .line 1559
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1560
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1561
    return v15

    .line 1543
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_19
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1545
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1547
    .local v1, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_5

    move v0, v15

    .line 1548
    .local v0, "_arg1":Z
    :cond_5
    invoke-virtual {v10, v1, v0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->setDisable2G(IZ)Z

    move-result v2

    .line 1549
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1550
    invoke-virtual {v13, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1551
    return v15

    .line 1533
    .end local v0    # "_arg1":Z
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Z
    :pswitch_1a
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1535
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1536
    .local v0, "_arg0":I
    invoke-virtual {v10, v0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getLocatedPlmn(I)Ljava/lang/String;

    move-result-object v1

    .line 1537
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1538
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1539
    return v15

    .line 1521
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_1b
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1523
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1525
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1526
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {v10, v0, v1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getAllCellInfo(ILjava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 1527
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1528
    invoke-virtual {v13, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1529
    return v15

    .line 1511
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    :pswitch_1c
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1513
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1514
    .restart local v0    # "_arg0":I
    invoke-virtual {v10, v0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->isInCsCall(I)Z

    move-result v1

    .line 1515
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1516
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1517
    return v15

    .line 1490
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_1d
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1492
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1494
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 1496
    .local v1, "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1497
    .local v2, "_arg2_length":I
    if-gez v2, :cond_6

    .line 1498
    const/4 v3, 0x0

    .local v3, "_arg2":[B
    goto :goto_3

    .line 1501
    .end local v3    # "_arg2":[B
    :cond_6
    new-array v3, v2, [B

    .line 1503
    .restart local v3    # "_arg2":[B
    :goto_3
    invoke-virtual {v10, v0, v1, v3}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->invokeOemRilRequestRawBySlot(I[B[B)I

    move-result v4

    .line 1504
    .local v4, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1505
    invoke-virtual {v13, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1506
    invoke-virtual {v13, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1507
    return v15

    .line 1471
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[B
    .end local v2    # "_arg2_length":I
    .end local v3    # "_arg2":[B
    .end local v4    # "_result":I
    :pswitch_1e
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1473
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 1475
    .local v0, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1476
    .local v1, "_arg1_length":I
    if-gez v1, :cond_7

    .line 1477
    const/4 v2, 0x0

    .local v2, "_arg1":[B
    goto :goto_4

    .line 1480
    .end local v2    # "_arg1":[B
    :cond_7
    new-array v2, v1, [B

    .line 1482
    .restart local v2    # "_arg1":[B
    :goto_4
    invoke-virtual {v10, v0, v2}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->invokeOemRilRequestRaw([B[B)I

    move-result v3

    .line 1483
    .local v3, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1484
    invoke-virtual {v13, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1485
    invoke-virtual {v13, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1486
    return v15

    .line 1456
    .end local v0    # "_arg0":[B
    .end local v1    # "_arg1_length":I
    .end local v2    # "_arg1":[B
    .end local v3    # "_result":I
    :pswitch_1f
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1458
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1460
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 1462
    .local v7, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 1464
    .local v9, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/telephony/IOemHookCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/telephony/IOemHookCallback;

    move-result-object v16

    .line 1465
    .local v16, "_arg3":Lcom/mediatek/telephony/IOemHookCallback;
    move-object/from16 v0, p0

    move v1, v6

    move-wide v2, v7

    move-object v4, v9

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->sendAtCmd(IJLjava/lang/String;Lcom/mediatek/telephony/IOemHookCallback;)V

    .line 1466
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1467
    return v15

    .line 1445
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":J
    .end local v9    # "_arg2":Ljava/lang/String;
    .end local v16    # "_arg3":Lcom/mediatek/telephony/IOemHookCallback;
    :pswitch_20
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1447
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1449
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/telephony/IOemHookCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/telephony/IOemHookCallback;

    move-result-object v1

    .line 1450
    .local v1, "_arg1":Lcom/mediatek/telephony/IOemHookCallback;
    invoke-virtual {v10, v0, v1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->registerAtUrcInd(ILcom/mediatek/telephony/IOemHookCallback;)V

    .line 1451
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1452
    return v15

    .line 1437
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Lcom/mediatek/telephony/IOemHookCallback;
    :pswitch_21
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1438
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getIsLastEccIms()Z

    move-result v0

    .line 1439
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1440
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1441
    return v15

    .line 1428
    .end local v0    # "_result":Z
    :pswitch_22
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1430
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_8

    move v0, v15

    .line 1431
    .local v0, "_arg0":Z
    :cond_8
    invoke-virtual {v10, v0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->setIsLastEccIms(Z)V

    .line 1432
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1433
    return v15

    .line 1418
    .end local v0    # "_arg0":Z
    :pswitch_23
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1420
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1421
    .local v0, "_arg0":I
    invoke-virtual {v10, v0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getCdmaSubscriptionActStatus(I)I

    move-result v1

    .line 1422
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1423
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1424
    return v15

    .line 1402
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_24
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1404
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1405
    .local v1, "_arg0":I
    invoke-virtual {v10, v1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getApcInfoUsingSlotId(I)Lcom/mediatek/internal/telephony/PseudoCellInfo;

    move-result-object v2

    .line 1406
    .local v2, "_result":Lcom/mediatek/internal/telephony/PseudoCellInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1407
    if-eqz v2, :cond_9

    .line 1408
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 1409
    invoke-virtual {v2, v13, v15}, Lcom/mediatek/internal/telephony/PseudoCellInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_5

    .line 1412
    :cond_9
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1414
    :goto_5
    return v15

    .line 1387
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Lcom/mediatek/internal/telephony/PseudoCellInfo;
    :pswitch_25
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1389
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1391
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1393
    .local v2, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_a

    move v0, v15

    .line 1395
    .local v0, "_arg2":Z
    :cond_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1396
    .local v3, "_arg3":I
    invoke-virtual {v10, v1, v2, v0, v3}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->setApcModeUsingSlotId(IIZI)V

    .line 1397
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1398
    return v15

    .line 1377
    .end local v0    # "_arg2":Z
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg3":I
    :pswitch_26
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1379
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1380
    .local v0, "_arg0":I
    invoke-virtual {v10, v0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->exitEmergencyCallbackMode(I)Z

    move-result v1

    .line 1381
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1382
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1383
    return v15

    .line 1367
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_27
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1369
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1370
    .restart local v0    # "_arg0":I
    invoke-virtual {v10, v0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getPCO520State(I)I

    move-result v1

    .line 1371
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1372
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1373
    return v15

    .line 1357
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_28
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1359
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1360
    .restart local v0    # "_arg0":I
    invoke-virtual {v10, v0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getSelfActivateState(I)I

    move-result v1

    .line 1361
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1362
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1363
    return v15

    .line 1338
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_29
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1340
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1342
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_b

    .line 1343
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .local v1, "_arg1":Landroid/os/Bundle;
    goto :goto_6

    .line 1346
    .end local v1    # "_arg1":Landroid/os/Bundle;
    :cond_b
    const/4 v1, 0x0

    .line 1349
    .restart local v1    # "_arg1":Landroid/os/Bundle;
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1350
    .local v2, "_arg2":I
    invoke-virtual {v10, v0, v1, v2}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->selfActivationAction(ILandroid/os/Bundle;I)I

    move-result v3

    .line 1351
    .local v3, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1352
    invoke-virtual {v13, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1353
    return v15

    .line 1328
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/os/Bundle;
    .end local v2    # "_arg2":I
    .end local v3    # "_result":I
    :pswitch_2a
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1330
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1331
    .restart local v0    # "_arg0":I
    invoke-virtual {v10, v0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getRxTestResult(I)[I

    move-result-object v1

    .line 1332
    .local v1, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1333
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1334
    return v15

    .line 1316
    .end local v0    # "_arg0":I
    .end local v1    # "_result":[I
    :pswitch_2b
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1318
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1320
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1321
    .local v1, "_arg1":I
    invoke-virtual {v10, v0, v1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->setRxTestConfig(II)[I

    move-result-object v2

    .line 1322
    .local v2, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1323
    invoke-virtual {v13, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1324
    return v15

    .line 1306
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":[I
    :pswitch_2c
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1308
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1309
    .restart local v0    # "_arg0":I
    invoke-virtual {v10, v0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->isPhbReady(I)Z

    move-result v1

    .line 1310
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1311
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1312
    return v15

    .line 1296
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_2d
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1298
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1299
    .restart local v0    # "_arg0":I
    invoke-virtual {v10, v0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getAdnStorageInfo(I)[I

    move-result-object v1

    .line 1300
    .local v1, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1301
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1302
    return v15

    .line 1286
    .end local v0    # "_arg0":I
    .end local v1    # "_result":[I
    :pswitch_2e
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1288
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1289
    .restart local v0    # "_arg0":I
    invoke-virtual {v10, v0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->isWifiCallingEnabled(I)Z

    move-result v1

    .line 1290
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1291
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1292
    return v15

    .line 1276
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_2f
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1278
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1279
    .restart local v0    # "_arg0":I
    invoke-virtual {v10, v0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->isVolteEnabled(I)Z

    move-result v1

    .line 1280
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1281
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1282
    return v15

    .line 1266
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_30
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1268
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1269
    .restart local v0    # "_arg0":I
    invoke-virtual {v10, v0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->isImsRegistered(I)Z

    move-result v1

    .line 1270
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1271
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1272
    return v15

    .line 1258
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_31
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1259
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getMainCapabilityPhoneId()I

    move-result v0

    .line 1260
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1261
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1262
    return v15

    .line 1250
    .end local v0    # "_result":I
    :pswitch_32
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1251
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->isCapabilitySwitching()Z

    move-result v0

    .line 1252
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1253
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1254
    return v15

    .line 1240
    .end local v0    # "_result":Z
    :pswitch_33
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1242
    sget-object v0, Landroid/telephony/RadioAccessFamily;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/telephony/RadioAccessFamily;

    .line 1243
    .local v0, "_arg0":[Landroid/telephony/RadioAccessFamily;
    invoke-virtual {v10, v0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->setRadioCapability([Landroid/telephony/RadioAccessFamily;)Z

    move-result v1

    .line 1244
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1245
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1246
    return v15

    .line 1230
    .end local v0    # "_arg0":[Landroid/telephony/RadioAccessFamily;
    .end local v1    # "_result":Z
    :pswitch_34
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1232
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1233
    .local v0, "_arg0":I
    invoke-virtual {v10, v0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getSimOperatorNumericForPhoneEx(I)[Ljava/lang/String;

    move-result-object v1

    .line 1234
    .local v1, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1235
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1236
    return v15

    .line 1218
    .end local v0    # "_arg0":I
    .end local v1    # "_result":[Ljava/lang/String;
    :pswitch_35
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1220
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1222
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1223
    .local v1, "_arg1":I
    invoke-virtual {v10, v0, v1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getSimSerialNumber(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 1224
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1225
    invoke-virtual {v13, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1226
    return v15

    .line 1206
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_36
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1208
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1210
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1211
    .restart local v1    # "_arg1":I
    invoke-virtual {v10, v0, v1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getUimSubscriberId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 1212
    .restart local v2    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1213
    invoke-virtual {v13, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1214
    return v15

    .line 1190
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_37
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1192
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1193
    .local v1, "_arg0":I
    invoke-virtual {v10, v1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getCellLocationUsingSlotId(I)Landroid/os/Bundle;

    move-result-object v2

    .line 1194
    .local v2, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1195
    if-eqz v2, :cond_c

    .line 1196
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 1197
    invoke-virtual {v2, v13, v15}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_7

    .line 1200
    :cond_c
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1202
    :goto_7
    return v15

    .line 1180
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Landroid/os/Bundle;
    :pswitch_38
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1182
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1183
    .local v0, "_arg0":I
    invoke-virtual {v10, v0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->isFdnEnabled(I)Z

    move-result v1

    .line 1184
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1185
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1186
    return v15

    .line 1170
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_39
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1172
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1173
    .restart local v0    # "_arg0":I
    invoke-virtual {v10, v0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->isRadioOffBySimManagement(I)Z

    move-result v1

    .line 1174
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1175
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1176
    return v15

    .line 1154
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_3a
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1156
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1158
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1160
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 1162
    .local v2, "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 1163
    .local v3, "_arg3":[B
    invoke-virtual {v10, v0, v1, v2, v3}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->simGbaAuthNafMode(II[B[B)[B

    move-result-object v4

    .line 1164
    .local v4, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1165
    invoke-virtual {v13, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1166
    return v15

    .line 1138
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":[B
    .end local v3    # "_arg3":[B
    .end local v4    # "_result":[B
    :pswitch_3b
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1140
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1142
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1144
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 1146
    .restart local v2    # "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 1147
    .restart local v3    # "_arg3":[B
    invoke-virtual {v10, v0, v1, v2, v3}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->simGbaAuthBootStrapMode(II[B[B)[B

    move-result-object v4

    .line 1148
    .restart local v4    # "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1149
    invoke-virtual {v13, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1150
    return v15

    .line 1122
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":[B
    .end local v3    # "_arg3":[B
    .end local v4    # "_result":[B
    :pswitch_3c
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1124
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1126
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1128
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 1130
    .restart local v2    # "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 1131
    .restart local v3    # "_arg3":[B
    invoke-virtual {v10, v0, v1, v2, v3}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->simAkaAuthentication(II[B[B)[B

    move-result-object v4

    .line 1132
    .restart local v4    # "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1133
    invoke-virtual {v13, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1134
    return v15

    .line 1110
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":[B
    .end local v3    # "_arg3":[B
    .end local v4    # "_result":[B
    :pswitch_3d
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1112
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1114
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1115
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {v10, v0, v1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getMvnoPattern(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1116
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1117
    invoke-virtual {v13, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1118
    return v15

    .line 1100
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_3e
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1102
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1103
    .restart local v0    # "_arg0":I
    invoke-virtual {v10, v0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getMvnoMatchType(I)Ljava/lang/String;

    move-result-object v1

    .line 1104
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1105
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1106
    return v15

    .line 1089
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_3f
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1091
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1093
    .local v1, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_d

    move v0, v15

    .line 1094
    .local v0, "_arg1":Z
    :cond_d
    invoke-virtual {v10, v1, v0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->repollIccStateForNetworkLock(IZ)V

    .line 1095
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1096
    return v15

    .line 1077
    .end local v0    # "_arg1":Z
    .end local v1    # "_arg0":I
    :pswitch_40
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1079
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1081
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1082
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {v10, v0, v1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->supplyNetworkDepersonalization(ILjava/lang/String;)I

    move-result v2

    .line 1083
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1084
    invoke-virtual {v13, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1085
    return v15

    .line 1059
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":I
    :pswitch_41
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1061
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1063
    .local v1, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1064
    .local v2, "_arg1":I
    invoke-virtual {v10, v1, v2}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->queryNetworkLock(II)Landroid/os/Bundle;

    move-result-object v3

    .line 1065
    .local v3, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1066
    if-eqz v3, :cond_e

    .line 1067
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 1068
    invoke-virtual {v3, v13, v15}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_8

    .line 1071
    :cond_e
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1073
    :goto_8
    return v15

    .line 1049
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Landroid/os/Bundle;
    :pswitch_42
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1051
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1052
    .restart local v0    # "_arg0":I
    invoke-virtual {v10, v0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getSimOnOffExecutingState(I)I

    move-result v1

    .line 1053
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1054
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1055
    return v15

    .line 1039
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_43
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1041
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1042
    .restart local v0    # "_arg0":I
    invoke-virtual {v10, v0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getSimOnOffState(I)I

    move-result v1

    .line 1043
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1044
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1045
    return v15

    .line 1027
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_44
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1029
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1031
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1032
    .local v1, "_arg1":I
    invoke-virtual {v10, v0, v1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->setSimPower(II)I

    move-result v2

    .line 1033
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1034
    invoke-virtual {v13, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1035
    return v15

    .line 1011
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_45
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1013
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1015
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1017
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1019
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1020
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual {v10, v0, v1, v2, v3}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->loadEFLinearFixedAll(IIILjava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 1021
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1022
    invoke-virtual {v13, v4}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1023
    return v15

    .line 995
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Ljava/lang/String;
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_46
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 997
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 999
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1001
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1003
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1004
    .restart local v3    # "_arg3":Ljava/lang/String;
    invoke-virtual {v10, v0, v1, v2, v3}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->loadEFTransparent(IIILjava/lang/String;)[B

    move-result-object v4

    .line 1005
    .local v4, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1006
    invoke-virtual {v13, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1007
    return v15

    .line 969
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Ljava/lang/String;
    .end local v4    # "_result":[B
    :pswitch_47
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 971
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 973
    .local v16, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 975
    .local v17, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 977
    .local v18, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 979
    .local v19, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 981
    .local v20, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 983
    .local v21, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    .line 985
    .local v22, "_arg6":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 987
    .local v23, "_arg7":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .line 988
    .local v24, "_arg8":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v18

    move/from16 v4, v19

    move/from16 v5, v20

    move/from16 v6, v21

    move-object/from16 v7, v22

    move-object/from16 v8, v23

    move-object/from16 v9, v24

    invoke-virtual/range {v0 .. v9}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->iccExchangeSimIOEx(IIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 989
    .local v0, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 990
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 991
    return v15

    .line 959
    .end local v0    # "_result":[B
    .end local v16    # "_arg0":I
    .end local v17    # "_arg1":I
    .end local v18    # "_arg2":I
    .end local v19    # "_arg3":I
    .end local v20    # "_arg4":I
    .end local v21    # "_arg5":I
    .end local v22    # "_arg6":Ljava/lang/String;
    .end local v23    # "_arg7":Ljava/lang/String;
    .end local v24    # "_arg8":Ljava/lang/String;
    :pswitch_48
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 961
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 962
    .local v0, "_arg0":I
    invoke-virtual {v10, v0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getIccAtr(I)Ljava/lang/String;

    move-result-object v1

    .line 963
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 964
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 965
    return v15

    .line 949
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_49
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 951
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 952
    .restart local v0    # "_arg0":I
    invoke-virtual {v10, v0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->isTestIccCard(I)Z

    move-result v1

    .line 953
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 954
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 955
    return v15

    .line 937
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_4a
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 939
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 941
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 942
    .local v1, "_arg1":I
    invoke-virtual {v10, v0, v1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->isAppTypeSupported(II)Z

    move-result v2

    .line 943
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 944
    invoke-virtual {v13, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 945
    return v15

    .line 927
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_4b
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 929
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 930
    .restart local v0    # "_arg0":I
    invoke-virtual {v10, v0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getIccCardType(I)Ljava/lang/String;

    move-result-object v1

    .line 931
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 932
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 933
    return v15

    .line 917
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_4c
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 919
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 920
    .restart local v0    # "_arg0":I
    invoke-virtual {v10, v0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getIccAppFamily(I)I

    move-result v1

    .line 921
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 922
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 923
    return v15

    .line 907
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_4d
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 909
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 910
    .restart local v0    # "_arg0":I
    invoke-virtual {v10, v0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->isInHomeNetwork(I)Z

    move-result v1

    .line 911
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 912
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 913
    return v15

    .line 902
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :cond_f
    invoke-virtual {v13, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 903
    return v15

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
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
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

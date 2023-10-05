.class Lcom/mediatek/internal/telephony/IMtkSms$Stub$Proxy;
.super Ljava/lang/Object;
.source "IMtkSms.java"

# interfaces
.implements Lcom/mediatek/internal/telephony/IMtkSms;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/IMtkSms$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/mediatek/internal/telephony/IMtkSms;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 918
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 919
    iput-object p1, p0, Lcom/mediatek/internal/telephony/IMtkSms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 920
    return-void
.end method


# virtual methods
.method public activateCellBroadcastSmsForSubscriber(IZ)Z
    .locals 6
    .param p1, "subId"    # I
    .param p2, "activate"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1629
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1630
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1633
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.IMtkSms"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1634
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1635
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1636
    iget-object v4, p0, Lcom/mediatek/internal/telephony/IMtkSms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x11

    invoke-interface {v4, v5, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    .line 1637
    .local v4, "_status":Z
    if-nez v4, :cond_1

    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkSms;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 1638
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkSms;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/mediatek/internal/telephony/IMtkSms;->activateCellBroadcastSmsForSubscriber(IZ)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1644
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1645
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1638
    return v2

    .line 1640
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1641
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    .line 1644
    .end local v4    # "_status":Z
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1645
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1646
    nop

    .line 1647
    return v2

    .line 1644
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1645
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1646
    throw v2
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 923
    iget-object v0, p0, Lcom/mediatek/internal/telephony/IMtkSms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public copyTextMessageToIccCardForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IJ)I
    .locals 16
    .param p1, "subId"    # I
    .param p2, "callingPkg"    # Ljava/lang/String;
    .param p3, "scAddress"    # Ljava/lang/String;
    .param p4, "address"    # Ljava/lang/String;
    .param p6, "status"    # I
    .param p7, "timestamp"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;IJ)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 976
    .local p5, "text":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 977
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 980
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v0, "com.mediatek.internal.telephony.IMtkSms"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 981
    move/from16 v12, p1

    :try_start_1
    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 982
    move-object/from16 v13, p2

    :try_start_2
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 983
    move-object/from16 v14, p3

    :try_start_3
    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 984
    move-object/from16 v15, p4

    :try_start_4
    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 985
    move-object/from16 v10, p5

    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 986
    move/from16 v11, p6

    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 987
    move-wide/from16 v8, p7

    invoke-virtual {v1, v8, v9}, Landroid/os/Parcel;->writeLong(J)V

    .line 988
    move-object/from16 v7, p0

    iget-object v0, v7, Lcom/mediatek/internal/telephony/IMtkSms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 989
    .local v0, "_status":Z
    if-nez v0, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkSms;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 990
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkSms;

    move-result-object v3

    move/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move-wide/from16 v10, p7

    invoke-interface/range {v3 .. v11}, Lcom/mediatek/internal/telephony/IMtkSms;->copyTextMessageToIccCardForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IJ)I

    move-result v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 996
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 997
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 990
    return v3

    .line 992
    :cond_0
    :try_start_5
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 993
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move v0, v3

    .line 996
    .local v0, "_result":I
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 997
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 998
    nop

    .line 999
    return v0

    .line 996
    .end local v0    # "_result":I
    :catchall_0
    move-exception v0

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_2

    :catchall_2
    move-exception v0

    goto :goto_1

    :catchall_3
    move-exception v0

    goto :goto_0

    :catchall_4
    move-exception v0

    move/from16 v12, p1

    :goto_0
    move-object/from16 v13, p2

    :goto_1
    move-object/from16 v14, p3

    :goto_2
    move-object/from16 v15, p4

    :goto_3
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 997
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 998
    throw v0
.end method

.method public getAllMessagesFromIccEfByModeForSubscriber(ILjava/lang/String;I)Ljava/util/List;
    .locals 5
    .param p1, "subId"    # I
    .param p2, "callingPkg"    # Ljava/lang/String;
    .param p3, "mode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/SmsRawData;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 940
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 941
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 944
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.IMtkSms"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 945
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 946
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 947
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 948
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkSms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 949
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkSms;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 950
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkSms;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Lcom/mediatek/internal/telephony/IMtkSms;->getAllMessagesFromIccEfByModeForSubscriber(ILjava/lang/String;I)Ljava/util/List;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 956
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 957
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 950
    return-object v3

    .line 952
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 953
    sget-object v3, Lcom/android/internal/telephony/SmsRawData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v3

    .line 956
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 957
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 958
    nop

    .line 959
    return-object v2

    .line 956
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 957
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 958
    throw v2
.end method

.method public getCellBroadcastLangsForSubscriber(I)Ljava/lang/String;
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1778
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1779
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1782
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.IMtkSms"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1783
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1784
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkSms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x16

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1785
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkSms;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1786
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkSms;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/internal/telephony/IMtkSms;->getCellBroadcastLangsForSubscriber(I)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1792
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1793
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1786
    return-object v3

    .line 1788
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1789
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v3

    .line 1792
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1793
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1794
    nop

    .line 1795
    return-object v2

    .line 1792
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1793
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1794
    throw v2
.end method

.method public getCellBroadcastRangesForSubscriber(I)Ljava/lang/String;
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1719
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1720
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1723
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.IMtkSms"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1724
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1725
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkSms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x14

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1726
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkSms;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1727
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkSms;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/internal/telephony/IMtkSms;->getCellBroadcastRangesForSubscriber(I)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1733
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1734
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1727
    return-object v3

    .line 1729
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1730
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v3

    .line 1733
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1734
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1735
    nop

    .line 1736
    return-object v2

    .line 1733
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1734
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1735
    throw v2
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 927
    const-string v0, "com.mediatek.internal.telephony.IMtkSms"

    return-object v0
.end method

.method public getMessageFromIccEfForSubscriber(ILjava/lang/String;I)Lcom/android/internal/telephony/SmsRawData;
    .locals 5
    .param p1, "subId"    # I
    .param p2, "callingPkg"    # Ljava/lang/String;
    .param p3, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1565
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1566
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1569
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.IMtkSms"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1570
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1571
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1572
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1573
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkSms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1574
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkSms;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1575
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkSms;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Lcom/mediatek/internal/telephony/IMtkSms;->getMessageFromIccEfForSubscriber(ILjava/lang/String;I)Lcom/android/internal/telephony/SmsRawData;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1586
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1587
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1575
    return-object v3

    .line 1577
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1578
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 1579
    sget-object v3, Lcom/android/internal/telephony/SmsRawData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/SmsRawData;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local v3, "_result":Lcom/android/internal/telephony/SmsRawData;
    goto :goto_0

    .line 1582
    .end local v3    # "_result":Lcom/android/internal/telephony/SmsRawData;
    :cond_1
    const/4 v3, 0x0

    .line 1586
    .end local v2    # "_status":Z
    .restart local v3    # "_result":Lcom/android/internal/telephony/SmsRawData;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1587
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1588
    nop

    .line 1589
    return-object v3

    .line 1586
    .end local v3    # "_result":Lcom/android/internal/telephony/SmsRawData;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1587
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1588
    throw v2
.end method

.method public getScAddressForSubscriber(I)Ljava/lang/String;
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1806
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1807
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1810
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.IMtkSms"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1811
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1812
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkSms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x17

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1813
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkSms;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1814
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkSms;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/internal/telephony/IMtkSms;->getScAddressForSubscriber(I)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1820
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1821
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1814
    return-object v3

    .line 1816
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1817
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v3

    .line 1820
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1821
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1822
    nop

    .line 1823
    return-object v2

    .line 1820
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1821
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1822
    throw v2
.end method

.method public getScAddressWithErrorCodeForSubscriber(I)Landroid/os/Bundle;
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1834
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1835
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1838
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.IMtkSms"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1839
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1840
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkSms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x18

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1841
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkSms;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1842
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkSms;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/internal/telephony/IMtkSms;->getScAddressWithErrorCodeForSubscriber(I)Landroid/os/Bundle;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1853
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1854
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1842
    return-object v3

    .line 1844
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1845
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 1846
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local v3, "_result":Landroid/os/Bundle;
    goto :goto_0

    .line 1849
    .end local v3    # "_result":Landroid/os/Bundle;
    :cond_1
    const/4 v3, 0x0

    .line 1853
    .end local v2    # "_status":Z
    .restart local v3    # "_result":Landroid/os/Bundle;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1854
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1855
    nop

    .line 1856
    return-object v3

    .line 1853
    .end local v3    # "_result":Landroid/os/Bundle;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1854
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1855
    throw v2
.end method

.method public getSmsParametersForSubscriber(ILjava/lang/String;)Lmediatek/telephony/MtkSmsParameters;
    .locals 5
    .param p1, "subId"    # I
    .param p2, "callingPkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1496
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1497
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1500
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.IMtkSms"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1501
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1502
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1503
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkSms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1504
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkSms;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1505
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkSms;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/mediatek/internal/telephony/IMtkSms;->getSmsParametersForSubscriber(ILjava/lang/String;)Lmediatek/telephony/MtkSmsParameters;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1516
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1517
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1505
    return-object v3

    .line 1507
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1508
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 1509
    sget-object v3, Lmediatek/telephony/MtkSmsParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmediatek/telephony/MtkSmsParameters;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local v3, "_result":Lmediatek/telephony/MtkSmsParameters;
    goto :goto_0

    .line 1512
    .end local v3    # "_result":Lmediatek/telephony/MtkSmsParameters;
    :cond_1
    const/4 v3, 0x0

    .line 1516
    .end local v2    # "_status":Z
    .restart local v3    # "_result":Lmediatek/telephony/MtkSmsParameters;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1517
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1518
    nop

    .line 1519
    return-object v3

    .line 1516
    .end local v3    # "_result":Lmediatek/telephony/MtkSmsParameters;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1517
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1518
    throw v2
.end method

.method public getSmsSimMemoryStatusForSubscriber(ILjava/lang/String;)Lcom/mediatek/internal/telephony/MtkIccSmsStorageStatus;
    .locals 5
    .param p1, "subId"    # I
    .param p2, "callingPkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1133
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1134
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1137
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.IMtkSms"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1138
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1139
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1140
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkSms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1141
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkSms;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1142
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkSms;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/mediatek/internal/telephony/IMtkSms;->getSmsSimMemoryStatusForSubscriber(ILjava/lang/String;)Lcom/mediatek/internal/telephony/MtkIccSmsStorageStatus;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1153
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1154
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1142
    return-object v3

    .line 1144
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1145
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 1146
    sget-object v3, Lcom/mediatek/internal/telephony/MtkIccSmsStorageStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/internal/telephony/MtkIccSmsStorageStatus;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local v3, "_result":Lcom/mediatek/internal/telephony/MtkIccSmsStorageStatus;
    goto :goto_0

    .line 1149
    .end local v3    # "_result":Lcom/mediatek/internal/telephony/MtkIccSmsStorageStatus;
    :cond_1
    const/4 v3, 0x0

    .line 1153
    .end local v2    # "_status":Z
    .restart local v3    # "_result":Lcom/mediatek/internal/telephony/MtkIccSmsStorageStatus;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1154
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1155
    nop

    .line 1156
    return-object v3

    .line 1153
    .end local v3    # "_result":Lcom/mediatek/internal/telephony/MtkIccSmsStorageStatus;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1154
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1155
    throw v2
.end method

.method public insertRawMessageToIccCardForSubscriber(ILjava/lang/String;I[B[B)Lmediatek/telephony/MtkSimSmsInsertStatus;
    .locals 10
    .param p1, "subId"    # I
    .param p2, "callingPkg"    # Ljava/lang/String;
    .param p3, "status"    # I
    .param p4, "pdu"    # [B
    .param p5, "smsc"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1340
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1341
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1344
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.IMtkSms"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1345
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1346
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1347
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1348
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1349
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1350
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkSms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1351
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkSms;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1352
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkSms;

    move-result-object v4

    move v5, p1

    move-object v6, p2

    move v7, p3

    move-object v8, p4

    move-object v9, p5

    invoke-interface/range {v4 .. v9}, Lcom/mediatek/internal/telephony/IMtkSms;->insertRawMessageToIccCardForSubscriber(ILjava/lang/String;I[B[B)Lmediatek/telephony/MtkSimSmsInsertStatus;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1363
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1364
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1352
    return-object v3

    .line 1354
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1355
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 1356
    sget-object v3, Lmediatek/telephony/MtkSimSmsInsertStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmediatek/telephony/MtkSimSmsInsertStatus;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local v3, "_result":Lmediatek/telephony/MtkSimSmsInsertStatus;
    goto :goto_0

    .line 1359
    .end local v3    # "_result":Lmediatek/telephony/MtkSimSmsInsertStatus;
    :cond_1
    const/4 v3, 0x0

    .line 1363
    .end local v2    # "_status":Z
    .restart local v3    # "_result":Lmediatek/telephony/MtkSimSmsInsertStatus;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1364
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1365
    nop

    .line 1366
    return-object v3

    .line 1363
    .end local v3    # "_result":Lmediatek/telephony/MtkSimSmsInsertStatus;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1364
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1365
    throw v2
.end method

.method public insertTextMessageToIccCardForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IJ)Lmediatek/telephony/MtkSimSmsInsertStatus;
    .locals 16
    .param p1, "subId"    # I
    .param p2, "callingPkg"    # Ljava/lang/String;
    .param p3, "scAddress"    # Ljava/lang/String;
    .param p4, "address"    # Ljava/lang/String;
    .param p6, "status"    # I
    .param p7, "timestamp"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;IJ)",
            "Lmediatek/telephony/MtkSimSmsInsertStatus;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1297
    .local p5, "text":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1298
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1301
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v0, "com.mediatek.internal.telephony.IMtkSms"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 1302
    move/from16 v12, p1

    :try_start_1
    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 1303
    move-object/from16 v13, p2

    :try_start_2
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1304
    move-object/from16 v14, p3

    :try_start_3
    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1305
    move-object/from16 v15, p4

    :try_start_4
    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1306
    move-object/from16 v10, p5

    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1307
    move/from16 v11, p6

    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 1308
    move-wide/from16 v8, p7

    invoke-virtual {v1, v8, v9}, Landroid/os/Parcel;->writeLong(J)V

    .line 1309
    move-object/from16 v7, p0

    iget-object v0, v7, Lcom/mediatek/internal/telephony/IMtkSms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 1310
    .local v0, "_status":Z
    if-nez v0, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkSms;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1311
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkSms;

    move-result-object v3

    move/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move-wide/from16 v10, p7

    invoke-interface/range {v3 .. v11}, Lcom/mediatek/internal/telephony/IMtkSms;->insertTextMessageToIccCardForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IJ)Lmediatek/telephony/MtkSimSmsInsertStatus;

    move-result-object v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1322
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1323
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1311
    return-object v3

    .line 1313
    :cond_0
    :try_start_5
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 1314
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 1315
    sget-object v3, Lmediatek/telephony/MtkSimSmsInsertStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmediatek/telephony/MtkSimSmsInsertStatus;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .local v3, "_result":Lmediatek/telephony/MtkSimSmsInsertStatus;
    goto :goto_0

    .line 1318
    .end local v3    # "_result":Lmediatek/telephony/MtkSimSmsInsertStatus;
    :cond_1
    const/4 v3, 0x0

    .line 1322
    .end local v0    # "_status":Z
    .restart local v3    # "_result":Lmediatek/telephony/MtkSimSmsInsertStatus;
    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1323
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1324
    nop

    .line 1325
    return-object v3

    .line 1322
    .end local v3    # "_result":Lmediatek/telephony/MtkSimSmsInsertStatus;
    :catchall_0
    move-exception v0

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_2

    :catchall_3
    move-exception v0

    goto :goto_1

    :catchall_4
    move-exception v0

    move/from16 v12, p1

    :goto_1
    move-object/from16 v13, p2

    :goto_2
    move-object/from16 v14, p3

    :goto_3
    move-object/from16 v15, p4

    :goto_4
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1323
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1324
    throw v0
.end method

.method public isSmsReadyForSubscriber(I)Z
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1076
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1077
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1080
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.IMtkSms"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1081
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1082
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkSms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1083
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkSms;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1084
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkSms;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/internal/telephony/IMtkSms;->isSmsReadyForSubscriber(I)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1090
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1091
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1084
    return v3

    .line 1086
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1087
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    :cond_1
    move v2, v4

    .line 1090
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1091
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1092
    nop

    .line 1093
    return v2

    .line 1090
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1091
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1092
    throw v2
.end method

.method public queryCellBroadcastSmsActivationForSubscriber(I)Z
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1600
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1601
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1604
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.IMtkSms"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1605
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1606
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkSms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1607
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkSms;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1608
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkSms;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/internal/telephony/IMtkSms;->queryCellBroadcastSmsActivationForSubscriber(I)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1614
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1615
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1608
    return v3

    .line 1610
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1611
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    :cond_1
    move v2, v4

    .line 1614
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1615
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1616
    nop

    .line 1617
    return v2

    .line 1614
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1615
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1616
    throw v2
.end method

.method public removeCellBroadcastMsgForSubscriber(III)Z
    .locals 5
    .param p1, "subId"    # I
    .param p2, "channelId"    # I
    .param p3, "serialId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1659
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1660
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1663
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.IMtkSms"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1664
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1665
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1666
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1667
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkSms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x12

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1668
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkSms;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1669
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkSms;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Lcom/mediatek/internal/telephony/IMtkSms;->removeCellBroadcastMsgForSubscriber(III)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1675
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1676
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1669
    return v3

    .line 1671
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1672
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    :cond_1
    move v2, v4

    .line 1675
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1676
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1677
    nop

    .line 1678
    return v2

    .line 1675
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1676
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1677
    throw v2
.end method

.method public sendDataWithOriginalPortForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 16
    .param p1, "subId"    # I
    .param p2, "callingPkg"    # Ljava/lang/String;
    .param p3, "destAddr"    # Ljava/lang/String;
    .param p4, "scAddr"    # Ljava/lang/String;
    .param p5, "destPort"    # I
    .param p6, "originalPort"    # I
    .param p7, "data"    # [B
    .param p8, "sentIntent"    # Landroid/app/PendingIntent;
    .param p9, "deliveryIntent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1030
    move-object/from16 v11, p8

    move-object/from16 v12, p9

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v13

    .line 1031
    .local v13, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v14

    .line 1033
    .local v14, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v0, "com.mediatek.internal.telephony.IMtkSms"

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1034
    move/from16 v15, p1

    :try_start_1
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 1035
    move-object/from16 v10, p2

    invoke-virtual {v13, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1036
    move-object/from16 v9, p3

    invoke-virtual {v13, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1037
    move-object/from16 v8, p4

    invoke-virtual {v13, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1038
    move/from16 v7, p5

    invoke-virtual {v13, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 1039
    move/from16 v6, p6

    invoke-virtual {v13, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1040
    move-object/from16 v5, p7

    invoke-virtual {v13, v5}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1041
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz v11, :cond_0

    .line 1042
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1043
    invoke-virtual {v11, v13, v1}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1046
    :cond_0
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1048
    :goto_0
    if-eqz v12, :cond_1

    .line 1049
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1050
    invoke-virtual {v12, v13, v1}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 1053
    :cond_1
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1055
    :goto_1
    move-object/from16 v4, p0

    iget-object v0, v4, Lcom/mediatek/internal/telephony/IMtkSms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    invoke-interface {v0, v2, v13, v14, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 1056
    .local v0, "_status":Z
    if-nez v0, :cond_2

    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkSms;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1057
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkSms;

    move-result-object v1

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-interface/range {v1 .. v10}, Lcom/mediatek/internal/telephony/IMtkSms;->sendDataWithOriginalPortForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1063
    invoke-virtual {v14}, Landroid/os/Parcel;->recycle()V

    .line 1064
    invoke-virtual {v13}, Landroid/os/Parcel;->recycle()V

    .line 1058
    return-void

    .line 1060
    :cond_2
    :try_start_2
    invoke-virtual {v14}, Landroid/os/Parcel;->readException()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1063
    .end local v0    # "_status":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->recycle()V

    .line 1064
    invoke-virtual {v13}, Landroid/os/Parcel;->recycle()V

    .line 1065
    nop

    .line 1066
    return-void

    .line 1063
    :catchall_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move/from16 v15, p1

    :goto_2
    invoke-virtual {v14}, Landroid/os/Parcel;->recycle()V

    .line 1064
    invoke-virtual {v13}, Landroid/os/Parcel;->recycle()V

    .line 1065
    throw v0
.end method

.method public sendMultipartTextWithEncodingTypeForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/util/List;Ljava/util/List;Z)V
    .locals 16
    .param p1, "subId"    # I
    .param p2, "callingPkg"    # Ljava/lang/String;
    .param p3, "destAddr"    # Ljava/lang/String;
    .param p4, "scAddr"    # Ljava/lang/String;
    .param p6, "encodingType"    # I
    .param p9, "persistMessageForNonDefaultSmsApp"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1257
    .local p5, "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p7, "sentIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .local p8, "deliveryIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1258
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1260
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v0, "com.mediatek.internal.telephony.IMtkSms"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 1261
    move/from16 v13, p1

    :try_start_1
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1262
    move-object/from16 v14, p2

    :try_start_2
    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1263
    move-object/from16 v15, p3

    :try_start_3
    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1264
    move-object/from16 v12, p4

    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1265
    move-object/from16 v11, p5

    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1266
    move/from16 v10, p6

    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 1267
    move-object/from16 v9, p7

    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1268
    move-object/from16 v8, p8

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1269
    const/4 v0, 0x0

    if-eqz p9, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v0

    :goto_0
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1270
    move-object/from16 v7, p0

    iget-object v3, v7, Lcom/mediatek/internal/telephony/IMtkSms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x8

    invoke-interface {v3, v4, v1, v2, v0}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 1271
    .local v0, "_status":Z
    if-nez v0, :cond_1

    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkSms;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1272
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkSms;

    move-result-object v3

    move/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move/from16 v12, p9

    invoke-interface/range {v3 .. v12}, Lcom/mediatek/internal/telephony/IMtkSms;->sendMultipartTextWithEncodingTypeForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/util/List;Ljava/util/List;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1278
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1279
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1273
    return-void

    .line 1275
    :cond_1
    :try_start_4
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1278
    .end local v0    # "_status":Z
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1279
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1280
    nop

    .line 1281
    return-void

    .line 1278
    :catchall_0
    move-exception v0

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_2

    :catchall_2
    move-exception v0

    goto :goto_1

    :catchall_3
    move-exception v0

    move/from16 v13, p1

    :goto_1
    move-object/from16 v14, p2

    :goto_2
    move-object/from16 v15, p3

    :goto_3
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1279
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1280
    throw v0
.end method

.method public sendMultipartTextWithExtraParamsForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;Ljava/util/List;Ljava/util/List;Z)V
    .locals 16
    .param p1, "subId"    # I
    .param p2, "callingPkg"    # Ljava/lang/String;
    .param p3, "destAddr"    # Ljava/lang/String;
    .param p4, "scAddr"    # Ljava/lang/String;
    .param p6, "extraParams"    # Landroid/os/Bundle;
    .param p9, "persistMessageForNonDefaultSmsApp"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1457
    .local p5, "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p7, "sentIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .local p8, "deliveryIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    move-object/from16 v11, p6

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v12

    .line 1458
    .local v12, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v13

    .line 1460
    .local v13, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v0, "com.mediatek.internal.telephony.IMtkSms"

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1461
    move/from16 v14, p1

    :try_start_1
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1462
    move-object/from16 v15, p2

    :try_start_2
    invoke-virtual {v12, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1463
    move-object/from16 v10, p3

    invoke-virtual {v12, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1464
    move-object/from16 v9, p4

    invoke-virtual {v12, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1465
    move-object/from16 v8, p5

    invoke-virtual {v12, v8}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1466
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz v11, :cond_0

    .line 1467
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1468
    invoke-virtual {v11, v12, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1471
    :cond_0
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1473
    :goto_0
    move-object/from16 v7, p7

    invoke-virtual {v12, v7}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1474
    move-object/from16 v6, p8

    invoke-virtual {v12, v6}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1475
    if-eqz p9, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1476
    move-object/from16 v5, p0

    iget-object v0, v5, Lcom/mediatek/internal/telephony/IMtkSms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xc

    invoke-interface {v0, v2, v12, v13, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 1477
    .local v0, "_status":Z
    if-nez v0, :cond_2

    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkSms;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1478
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkSms;

    move-result-object v1

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    invoke-interface/range {v1 .. v10}, Lcom/mediatek/internal/telephony/IMtkSms;->sendMultipartTextWithExtraParamsForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;Ljava/util/List;Ljava/util/List;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1484
    invoke-virtual {v13}, Landroid/os/Parcel;->recycle()V

    .line 1485
    invoke-virtual {v12}, Landroid/os/Parcel;->recycle()V

    .line 1479
    return-void

    .line 1481
    :cond_2
    :try_start_3
    invoke-virtual {v13}, Landroid/os/Parcel;->readException()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1484
    .end local v0    # "_status":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->recycle()V

    .line 1485
    invoke-virtual {v12}, Landroid/os/Parcel;->recycle()V

    .line 1486
    nop

    .line 1487
    return-void

    .line 1484
    :catchall_0
    move-exception v0

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_2

    :catchall_2
    move-exception v0

    move/from16 v14, p1

    :goto_2
    move-object/from16 v15, p2

    :goto_3
    invoke-virtual {v13}, Landroid/os/Parcel;->recycle()V

    .line 1485
    invoke-virtual {v12}, Landroid/os/Parcel;->recycle()V

    .line 1486
    throw v0
.end method

.method public sendTextWithEncodingTypeForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V
    .locals 16
    .param p1, "subId"    # I
    .param p2, "callingPkg"    # Ljava/lang/String;
    .param p3, "destAddr"    # Ljava/lang/String;
    .param p4, "scAddr"    # Ljava/lang/String;
    .param p5, "text"    # Ljava/lang/String;
    .param p6, "encodingType"    # I
    .param p7, "sentIntent"    # Landroid/app/PendingIntent;
    .param p8, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p9, "persistMessageForNonDefaultSmsApp"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1190
    move-object/from16 v11, p7

    move-object/from16 v12, p8

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v13

    .line 1191
    .local v13, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v14

    .line 1193
    .local v14, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v0, "com.mediatek.internal.telephony.IMtkSms"

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1194
    move/from16 v15, p1

    :try_start_1
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 1195
    move-object/from16 v10, p2

    invoke-virtual {v13, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1196
    move-object/from16 v9, p3

    invoke-virtual {v13, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1197
    move-object/from16 v8, p4

    invoke-virtual {v13, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1198
    move-object/from16 v7, p5

    invoke-virtual {v13, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1199
    move/from16 v6, p6

    invoke-virtual {v13, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1200
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz v11, :cond_0

    .line 1201
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1202
    invoke-virtual {v11, v13, v1}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1205
    :cond_0
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1207
    :goto_0
    if-eqz v12, :cond_1

    .line 1208
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1209
    invoke-virtual {v12, v13, v1}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 1212
    :cond_1
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1214
    :goto_1
    if-eqz p9, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1215
    move-object/from16 v5, p0

    iget-object v0, v5, Lcom/mediatek/internal/telephony/IMtkSms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x7

    invoke-interface {v0, v2, v13, v14, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 1216
    .local v0, "_status":Z
    if-nez v0, :cond_3

    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkSms;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1217
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkSms;

    move-result-object v1

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    invoke-interface/range {v1 .. v10}, Lcom/mediatek/internal/telephony/IMtkSms;->sendTextWithEncodingTypeForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1223
    invoke-virtual {v14}, Landroid/os/Parcel;->recycle()V

    .line 1224
    invoke-virtual {v13}, Landroid/os/Parcel;->recycle()V

    .line 1218
    return-void

    .line 1220
    :cond_3
    :try_start_2
    invoke-virtual {v14}, Landroid/os/Parcel;->readException()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1223
    .end local v0    # "_status":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->recycle()V

    .line 1224
    invoke-virtual {v13}, Landroid/os/Parcel;->recycle()V

    .line 1225
    nop

    .line 1226
    return-void

    .line 1223
    :catchall_0
    move-exception v0

    goto :goto_3

    :catchall_1
    move-exception v0

    move/from16 v15, p1

    :goto_3
    invoke-virtual {v14}, Landroid/os/Parcel;->recycle()V

    .line 1224
    invoke-virtual {v13}, Landroid/os/Parcel;->recycle()V

    .line 1225
    throw v0
.end method

.method public sendTextWithExtraParamsForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V
    .locals 16
    .param p1, "subId"    # I
    .param p2, "callingPkg"    # Ljava/lang/String;
    .param p3, "destAddr"    # Ljava/lang/String;
    .param p4, "scAddr"    # Ljava/lang/String;
    .param p5, "text"    # Ljava/lang/String;
    .param p6, "extraParams"    # Landroid/os/Bundle;
    .param p7, "sentIntent"    # Landroid/app/PendingIntent;
    .param p8, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p9, "persistMessageForNonDefaultSmsApp"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1389
    move-object/from16 v11, p6

    move-object/from16 v12, p7

    move-object/from16 v13, p8

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v14

    .line 1390
    .local v14, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v15

    .line 1392
    .local v15, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v0, "com.mediatek.internal.telephony.IMtkSms"

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1393
    move/from16 v10, p1

    invoke-virtual {v14, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 1394
    move-object/from16 v9, p2

    invoke-virtual {v14, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1395
    move-object/from16 v8, p3

    invoke-virtual {v14, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1396
    move-object/from16 v7, p4

    invoke-virtual {v14, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1397
    move-object/from16 v6, p5

    invoke-virtual {v14, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1398
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz v11, :cond_0

    .line 1399
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1400
    invoke-virtual {v11, v14, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1403
    :cond_0
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1405
    :goto_0
    if-eqz v12, :cond_1

    .line 1406
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1407
    invoke-virtual {v12, v14, v1}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 1410
    :cond_1
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1412
    :goto_1
    if-eqz v13, :cond_2

    .line 1413
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1414
    invoke-virtual {v13, v14, v1}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 1417
    :cond_2
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1419
    :goto_2
    if-eqz p9, :cond_3

    goto :goto_3

    :cond_3
    move v0, v1

    :goto_3
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1420
    move-object/from16 v5, p0

    iget-object v0, v5, Lcom/mediatek/internal/telephony/IMtkSms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xb

    invoke-interface {v0, v2, v14, v15, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 1421
    .local v0, "_status":Z
    if-nez v0, :cond_4

    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkSms;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1422
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkSms;

    move-result-object v1

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    invoke-interface/range {v1 .. v10}, Lcom/mediatek/internal/telephony/IMtkSms;->sendTextWithExtraParamsForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1428
    invoke-virtual {v15}, Landroid/os/Parcel;->recycle()V

    .line 1429
    invoke-virtual {v14}, Landroid/os/Parcel;->recycle()V

    .line 1423
    return-void

    .line 1425
    :cond_4
    :try_start_1
    invoke-virtual {v15}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1428
    .end local v0    # "_status":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->recycle()V

    .line 1429
    invoke-virtual {v14}, Landroid/os/Parcel;->recycle()V

    .line 1430
    nop

    .line 1431
    return-void

    .line 1428
    :catchall_0
    move-exception v0

    invoke-virtual {v15}, Landroid/os/Parcel;->recycle()V

    .line 1429
    invoke-virtual {v14}, Landroid/os/Parcel;->recycle()V

    .line 1430
    throw v0
.end method

.method public setCellBroadcastLangsForSubscriber(ILjava/lang/String;)Z
    .locals 5
    .param p1, "subId"    # I
    .param p2, "lang"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1748
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1749
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1752
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.IMtkSms"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1753
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1754
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1755
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkSms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x15

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1756
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkSms;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1757
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkSms;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/mediatek/internal/telephony/IMtkSms;->setCellBroadcastLangsForSubscriber(ILjava/lang/String;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1763
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1764
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1757
    return v3

    .line 1759
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1760
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    :cond_1
    move v2, v4

    .line 1763
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1764
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1765
    nop

    .line 1766
    return v2

    .line 1763
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1764
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1765
    throw v2
.end method

.method public setEtwsConfigForSubscriber(II)Z
    .locals 5
    .param p1, "subId"    # I
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1690
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1691
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1694
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.IMtkSms"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1695
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1696
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1697
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkSms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x13

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1698
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkSms;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1699
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkSms;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/mediatek/internal/telephony/IMtkSms;->setEtwsConfigForSubscriber(II)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1705
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1706
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1699
    return v3

    .line 1701
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1702
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    :cond_1
    move v2, v4

    .line 1705
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1706
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1707
    nop

    .line 1708
    return v2

    .line 1705
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1706
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1707
    throw v2
.end method

.method public setScAddressForSubscriber(ILjava/lang/String;)Z
    .locals 5
    .param p1, "subId"    # I
    .param p2, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1868
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1869
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1872
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.IMtkSms"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1873
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1874
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1875
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkSms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x19

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1876
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkSms;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1877
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkSms;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/mediatek/internal/telephony/IMtkSms;->setScAddressForSubscriber(ILjava/lang/String;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1883
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1884
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1877
    return v3

    .line 1879
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1880
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    :cond_1
    move v2, v4

    .line 1883
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1884
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1885
    nop

    .line 1886
    return v2

    .line 1883
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1884
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1885
    throw v2
.end method

.method public setSmsMemoryStatusForSubscriber(IZ)V
    .locals 5
    .param p1, "subId"    # I
    .param p2, "status"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1105
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1106
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1108
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.IMtkSms"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1109
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1110
    const/4 v2, 0x0

    if-eqz p2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1111
    iget-object v3, p0, Lcom/mediatek/internal/telephony/IMtkSms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x5

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1112
    .local v2, "_status":Z
    if-nez v2, :cond_1

    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkSms;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1113
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkSms;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/mediatek/internal/telephony/IMtkSms;->setSmsMemoryStatusForSubscriber(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1119
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1120
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1114
    return-void

    .line 1116
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1119
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1120
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1121
    nop

    .line 1122
    return-void

    .line 1119
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1120
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1121
    throw v2
.end method

.method public setSmsParametersForSubscriber(ILjava/lang/String;Lmediatek/telephony/MtkSmsParameters;)Z
    .locals 6
    .param p1, "subId"    # I
    .param p2, "callingPkg"    # Ljava/lang/String;
    .param p3, "params"    # Lmediatek/telephony/MtkSmsParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1528
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1529
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1532
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.IMtkSms"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1533
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1534
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1535
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p3, :cond_0

    .line 1536
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1537
    invoke-virtual {p3, v0, v3}, Lmediatek/telephony/MtkSmsParameters;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1540
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1542
    :goto_0
    iget-object v4, p0, Lcom/mediatek/internal/telephony/IMtkSms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0xe

    invoke-interface {v4, v5, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    .line 1543
    .local v4, "_status":Z
    if-nez v4, :cond_1

    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkSms;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 1544
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkSms;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/mediatek/internal/telephony/IMtkSms;->setSmsParametersForSubscriber(ILjava/lang/String;Lmediatek/telephony/MtkSmsParameters;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1550
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1551
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1544
    return v2

    .line 1546
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1547
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    .line 1550
    .end local v4    # "_status":Z
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1551
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1552
    nop

    .line 1553
    return v2

    .line 1550
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1551
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1552
    throw v2
.end method

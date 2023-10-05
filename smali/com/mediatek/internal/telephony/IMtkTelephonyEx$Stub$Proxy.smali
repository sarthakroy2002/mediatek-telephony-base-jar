.class Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;
.super Ljava/lang/Object;
.source "IMtkTelephonyEx.java"

# interfaces
.implements Lcom/mediatek/internal/telephony/IMtkTelephonyEx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/mediatek/internal/telephony/IMtkTelephonyEx;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 1862
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1863
    iput-object p1, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 1864
    return-void
.end method


# virtual methods
.method public abortFemtoCellList(I)Z
    .locals 5
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3494
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3495
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3498
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3499
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3500
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x38

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3501
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3502
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->abortFemtoCellList(I)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3508
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3509
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3502
    return v3

    .line 3504
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3505
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    :cond_1
    move v2, v4

    .line 3508
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3509
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3510
    nop

    .line 3511
    return v2

    .line 3508
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3509
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3510
    throw v2
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 1867
    iget-object v0, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public cancelAvailableNetworks(I)Z
    .locals 5
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3608
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3609
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3612
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3613
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3614
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3615
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3616
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->cancelAvailableNetworks(I)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3622
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3623
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3616
    return v3

    .line 3618
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3619
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    :cond_1
    move v2, v4

    .line 3622
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3623
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3624
    nop

    .line 3625
    return v2

    .line 3622
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3623
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3624
    throw v2
.end method

.method public exitEmergencyCallbackMode(I)Z
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3052
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3053
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3056
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3057
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3058
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x28

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3059
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3060
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->exitEmergencyCallbackMode(I)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3066
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3067
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3060
    return v3

    .line 3062
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3063
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    :cond_1
    move v2, v4

    .line 3066
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3067
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3068
    nop

    .line 3069
    return v2

    .line 3066
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3067
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3068
    throw v2
.end method

.method public getAdnStorageInfo(I)[I
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2841
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2842
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2845
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2846
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2847
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x21

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2848
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2849
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->getAdnStorageInfo(I)[I

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2855
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2856
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2849
    return-object v3

    .line 2851
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2852
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v3

    .line 2855
    .local v2, "_result":[I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2856
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2857
    nop

    .line 2858
    return-object v2

    .line 2855
    .end local v2    # "_result":[I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2856
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2857
    throw v2
.end method

.method public getAllCellInfo(ILjava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3361
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3362
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3365
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3366
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3367
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3368
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x33

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3369
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3370
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->getAllCellInfo(ILjava/lang/String;)Ljava/util/List;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3376
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3377
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3370
    return-object v3

    .line 3372
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3373
    sget-object v3, Landroid/telephony/CellInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v3

    .line 3376
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3377
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3378
    nop

    .line 3379
    return-object v2

    .line 3376
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3377
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3378
    throw v2
.end method

.method public getApcInfoUsingSlotId(I)Lcom/mediatek/internal/telephony/PseudoCellInfo;
    .locals 5
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3111
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3112
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3115
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3116
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3117
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3118
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3119
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->getApcInfoUsingSlotId(I)Lcom/mediatek/internal/telephony/PseudoCellInfo;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3130
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3131
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3119
    return-object v3

    .line 3121
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3122
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 3123
    sget-object v3, Lcom/mediatek/internal/telephony/PseudoCellInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/internal/telephony/PseudoCellInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local v3, "_result":Lcom/mediatek/internal/telephony/PseudoCellInfo;
    goto :goto_0

    .line 3126
    .end local v3    # "_result":Lcom/mediatek/internal/telephony/PseudoCellInfo;
    :cond_1
    const/4 v3, 0x0

    .line 3130
    .end local v2    # "_status":Z
    .restart local v3    # "_result":Lcom/mediatek/internal/telephony/PseudoCellInfo;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3131
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3132
    nop

    .line 3133
    return-object v3

    .line 3130
    .end local v3    # "_result":Lcom/mediatek/internal/telephony/PseudoCellInfo;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3131
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3132
    throw v2
.end method

.method public getCallSubAddressEnabled(I)Z
    .locals 5
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4099
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4100
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4103
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4104
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4105
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4106
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 4107
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->getCallSubAddressEnabled(I)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4113
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4114
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4107
    return v3

    .line 4109
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4110
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    :cond_1
    move v2, v4

    .line 4113
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4114
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4115
    nop

    .line 4116
    return v2

    .line 4113
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4114
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4115
    throw v2
.end method

.method public getCdmaSubscriptionActStatus(I)I
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3142
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3143
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3146
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3147
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3148
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3149
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3150
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->getCdmaSubscriptionActStatus(I)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3156
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3157
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3150
    return v3

    .line 3152
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3153
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 3156
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3157
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3158
    nop

    .line 3159
    return v2

    .line 3156
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3157
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3158
    throw v2
.end method

.method public getCellLocationUsingSlotId(I)Landroid/os/Bundle;
    .locals 5
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2553
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2554
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2557
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2558
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2559
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x17

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2560
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2561
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->getCellLocationUsingSlotId(I)Landroid/os/Bundle;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2572
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2573
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2561
    return-object v3

    .line 2563
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2564
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 2565
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local v3, "_result":Landroid/os/Bundle;
    goto :goto_0

    .line 2568
    .end local v3    # "_result":Landroid/os/Bundle;
    :cond_1
    const/4 v3, 0x0

    .line 2572
    .end local v2    # "_status":Z
    .restart local v3    # "_result":Landroid/os/Bundle;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2573
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2574
    nop

    .line 2575
    return-object v3

    .line 2572
    .end local v3    # "_result":Landroid/os/Bundle;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2573
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2574
    throw v2
.end method

.method public getDebuggingDsdaStatus()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3972
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3973
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3976
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3977
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x48

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3978
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3979
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    invoke-interface {v3}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->getDebuggingDsdaStatus()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3985
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3986
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3979
    return v3

    .line 3981
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3982
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 3985
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3986
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3987
    nop

    .line 3988
    return v2

    .line 3985
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3986
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3987
    throw v2
.end method

.method public getDisable2G(I)I
    .locals 5
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3442
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3443
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3446
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3447
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3448
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x36

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3449
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3450
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->getDisable2G(I)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3456
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3457
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3450
    return v3

    .line 3452
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3453
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 3456
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3457
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3458
    nop

    .line 3459
    return v2

    .line 3456
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3457
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3458
    throw v2
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3468
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3469
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3472
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3473
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3474
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x37

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3475
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3476
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->getFemtoCellList(I)Ljava/util/List;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3482
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3483
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3476
    return-object v3

    .line 3478
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3479
    sget-object v3, Lcom/mediatek/internal/telephony/FemtoCellInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v3

    .line 3482
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/internal/telephony/FemtoCellInfo;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3483
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3484
    nop

    .line 3485
    return-object v2

    .line 3482
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/internal/telephony/FemtoCellInfo;>;"
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3483
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3484
    throw v2
.end method

.method public getIccAppFamily(I)I
    .locals 5
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1911
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1912
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1915
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1916
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1917
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1918
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1919
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->getIccAppFamily(I)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1925
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1926
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1919
    return v3

    .line 1921
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1922
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 1925
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1926
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1927
    nop

    .line 1928
    return v2

    .line 1925
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1926
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1927
    throw v2
.end method

.method public getIccAtr(I)Ljava/lang/String;
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2017
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2018
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2021
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2022
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2023
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2024
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2025
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->getIccAtr(I)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2031
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2032
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2025
    return-object v3

    .line 2027
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2028
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v3

    .line 2031
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2032
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2033
    nop

    .line 2034
    return-object v2

    .line 2031
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2032
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2033
    throw v2
.end method

.method public getIccCardType(I)Ljava/lang/String;
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1937
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1938
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1941
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1942
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1943
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1944
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1945
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->getIccCardType(I)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1951
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1952
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1945
    return-object v3

    .line 1947
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1948
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v3

    .line 1951
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1952
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1953
    nop

    .line 1954
    return-object v2

    .line 1951
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1952
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1953
    throw v2
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 1871
    const-string v0, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    return-object v0
.end method

.method public getIsLastEccIms()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3185
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3186
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3189
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3190
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3191
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3192
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    invoke-interface {v3}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->getIsLastEccIms()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3198
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3199
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3192
    return v3

    .line 3194
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3195
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    :cond_1
    move v2, v4

    .line 3198
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3199
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3200
    nop

    .line 3201
    return v2

    .line 3198
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3199
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3200
    throw v2
.end method

.method public getLocatedPlmn(I)Ljava/lang/String;
    .locals 5
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3388
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3389
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3392
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3393
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3394
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x34

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3395
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3396
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->getLocatedPlmn(I)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3402
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3403
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3396
    return-object v3

    .line 3398
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3399
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v3

    .line 3402
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3403
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3404
    nop

    .line 3405
    return-object v2

    .line 3402
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3403
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3404
    throw v2
.end method

.method public getMainCapabilityPhoneId()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2727
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2728
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2731
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2732
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2733
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2734
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    invoke-interface {v3}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->getMainCapabilityPhoneId()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2740
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2741
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2734
    return v3

    .line 2736
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2737
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 2740
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2741
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2742
    nop

    .line 2743
    return v2

    .line 2740
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2741
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2742
    throw v2
.end method

.method public getMobileDataUsage(I)Landroid/net/NetworkStats;
    .locals 5
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3872
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3873
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3876
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3877
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3878
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x45

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3879
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3880
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->getMobileDataUsage(I)Landroid/net/NetworkStats;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3891
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3892
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3880
    return-object v3

    .line 3882
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3883
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 3884
    sget-object v3, Landroid/net/NetworkStats;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkStats;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local v3, "_result":Landroid/net/NetworkStats;
    goto :goto_0

    .line 3887
    .end local v3    # "_result":Landroid/net/NetworkStats;
    :cond_1
    const/4 v3, 0x0

    .line 3891
    .end local v2    # "_status":Z
    .restart local v3    # "_result":Landroid/net/NetworkStats;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3892
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3893
    nop

    .line 3894
    return-object v3

    .line 3891
    .end local v3    # "_result":Landroid/net/NetworkStats;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3892
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3893
    throw v2
.end method

.method public getMvnoMatchType(I)Ljava/lang/String;
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2321
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2322
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2325
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2326
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2327
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2328
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2329
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->getMvnoMatchType(I)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2335
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2336
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2329
    return-object v3

    .line 2331
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2332
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v3

    .line 2335
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2336
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2337
    nop

    .line 2338
    return-object v2

    .line 2335
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2336
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2337
    throw v2
.end method

.method public getMvnoPattern(ILjava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "subId"    # I
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2348
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2349
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2352
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2353
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2354
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2355
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2356
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2357
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->getMvnoPattern(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2363
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2364
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2357
    return-object v3

    .line 2359
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2360
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v3

    .line 2363
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2364
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2365
    nop

    .line 2366
    return-object v2

    .line 2363
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2364
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2365
    throw v2
.end method

.method public getNrMapStatus(I)Ljava/lang/String;
    .locals 5
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4073
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4074
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4077
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4078
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4079
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4080
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 4081
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->getNrMapStatus(I)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4087
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4088
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4081
    return-object v3

    .line 4083
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4084
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v3

    .line 4087
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4088
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4089
    nop

    .line 4090
    return-object v2

    .line 4087
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4088
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4089
    throw v2
.end method

.method public getPCO520State(I)I
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3025
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3026
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3029
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3030
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3031
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x27

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3032
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3033
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->getPCO520State(I)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3039
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3040
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3033
    return v3

    .line 3035
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3036
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 3039
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3040
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3041
    nop

    .line 3042
    return v2

    .line 3039
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3040
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3041
    throw v2
.end method

.method public getRoamingEnable(I)[I
    .locals 5
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3815
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3816
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3819
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3820
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3821
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x43

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3822
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3823
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->getRoamingEnable(I)[I

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3829
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3830
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3823
    return-object v3

    .line 3825
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3826
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v3

    .line 3829
    .local v2, "_result":[I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3830
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3831
    nop

    .line 3832
    return-object v2

    .line 3829
    .end local v2    # "_result":[I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3830
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3831
    throw v2
.end method

.method public getRxTestResult(I)[I
    .locals 5
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2925
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2926
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2929
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2930
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2931
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x24

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2932
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2933
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->getRxTestResult(I)[I

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2939
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2940
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2933
    return-object v3

    .line 2935
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2936
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v3

    .line 2939
    .local v2, "_result":[I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2940
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2941
    nop

    .line 2942
    return-object v2

    .line 2939
    .end local v2    # "_result":[I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2940
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2941
    throw v2
.end method

.method public getSelfActivateState(I)I
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2995
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2996
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2999
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3000
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3001
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x26

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3002
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3003
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->getSelfActivateState(I)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3009
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3010
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3003
    return v3

    .line 3005
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3006
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 3009
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3010
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3011
    nop

    .line 3012
    return v2

    .line 3009
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3010
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3011
    throw v2
.end method

.method public getServiceStateByPhoneId(ILjava/lang/String;Ljava/lang/String;)Landroid/telephony/ServiceState;
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3745
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3746
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3749
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3750
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3751
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3752
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3753
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x41

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3754
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3755
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->getServiceStateByPhoneId(ILjava/lang/String;Ljava/lang/String;)Landroid/telephony/ServiceState;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3766
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3767
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3755
    return-object v3

    .line 3757
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3758
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 3759
    sget-object v3, Landroid/telephony/ServiceState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/ServiceState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local v3, "_result":Landroid/telephony/ServiceState;
    goto :goto_0

    .line 3762
    .end local v3    # "_result":Landroid/telephony/ServiceState;
    :cond_1
    const/4 v3, 0x0

    .line 3766
    .end local v2    # "_status":Z
    .restart local v3    # "_result":Landroid/telephony/ServiceState;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3767
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3768
    nop

    .line 3769
    return-object v3

    .line 3766
    .end local v3    # "_result":Landroid/telephony/ServiceState;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3767
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3768
    throw v2
.end method

.method public getSimLockStateForRSU(I)I
    .locals 5
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3661
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3662
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3665
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3666
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3667
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3668
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3669
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->getSimLockStateForRSU(I)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3675
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3676
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3669
    return v3

    .line 3671
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3672
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 3675
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3676
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3677
    nop

    .line 3678
    return v2

    .line 3675
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3676
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3677
    throw v2
.end method

.method public getSimOnOffExecutingState(I)I
    .locals 5
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2209
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2210
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2213
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2214
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2215
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2216
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2217
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->getSimOnOffExecutingState(I)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2223
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2224
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2217
    return v3

    .line 2219
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2220
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 2223
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2224
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2225
    nop

    .line 2226
    return v2

    .line 2223
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2224
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2225
    throw v2
.end method

.method public getSimOnOffState(I)I
    .locals 5
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2182
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2183
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2186
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2187
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2188
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2189
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2190
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->getSimOnOffState(I)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2196
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2197
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2190
    return v3

    .line 2192
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2193
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 2196
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2197
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2198
    nop

    .line 2199
    return v2

    .line 2196
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2197
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2198
    throw v2
.end method

.method public getSimOperatorNumericForPhoneEx(I)[Ljava/lang/String;
    .locals 5
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2648
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2649
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2652
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2653
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2654
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2655
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2656
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->getSimOperatorNumericForPhoneEx(I)[Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2662
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2663
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2656
    return-object v3

    .line 2658
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2659
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v3

    .line 2662
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2663
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2664
    nop

    .line 2665
    return-object v2

    .line 2662
    .end local v2    # "_result":[Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2663
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2664
    throw v2
.end method

.method public getSimSerialNumber(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "slotId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2615
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2616
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2619
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2620
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2621
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2622
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x19

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2623
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2624
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->getSimSerialNumber(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2630
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2631
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2624
    return-object v3

    .line 2626
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2627
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v3

    .line 2630
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2631
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2632
    nop

    .line 2633
    return-object v2

    .line 2630
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2631
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2632
    throw v2
.end method

.method public getSuggestedPlmnList(IIIILjava/lang/String;)[Ljava/lang/String;
    .locals 10
    .param p1, "phoneId"    # I
    .param p2, "rat"    # I
    .param p3, "num"    # I
    .param p4, "timer"    # I
    .param p5, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3843
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3844
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3847
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3848
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3849
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3850
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3851
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3852
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3853
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x44

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3854
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3855
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v4

    move v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    move-object v9, p5

    invoke-interface/range {v4 .. v9}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->getSuggestedPlmnList(IIIILjava/lang/String;)[Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3861
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3862
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3855
    return-object v3

    .line 3857
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3858
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v3

    .line 3861
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3862
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3863
    nop

    .line 3864
    return-object v2

    .line 3861
    .end local v2    # "_result":[Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3862
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3863
    throw v2
.end method

.method public getUimSubscriberId(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2586
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2587
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2590
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2591
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2592
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2593
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x18

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2594
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2595
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->getUimSubscriberId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2601
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2602
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2595
    return-object v3

    .line 2597
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2598
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v3

    .line 2601
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2602
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2603
    nop

    .line 2604
    return-object v2

    .line 2601
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2602
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2603
    throw v2
.end method

.method public iccExchangeSimIOEx(IIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 16
    .param p1, "subId"    # I
    .param p2, "fileID"    # I
    .param p3, "command"    # I
    .param p4, "p1"    # I
    .param p5, "p2"    # I
    .param p6, "p3"    # I
    .param p7, "filePath"    # Ljava/lang/String;
    .param p8, "data"    # Ljava/lang/String;
    .param p9, "pin2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2051
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2052
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2055
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v0, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 2056
    move/from16 v13, p1

    :try_start_1
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 2057
    move/from16 v14, p2

    :try_start_2
    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2058
    move/from16 v15, p3

    :try_start_3
    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 2059
    move/from16 v12, p4

    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 2060
    move/from16 v11, p5

    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 2061
    move/from16 v10, p6

    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 2062
    move-object/from16 v9, p7

    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2063
    move-object/from16 v8, p8

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2064
    move-object/from16 v7, p9

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2065
    move-object/from16 v6, p0

    iget-object v0, v6, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 2066
    .local v0, "_status":Z
    if-nez v0, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2067
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    move/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    invoke-interface/range {v3 .. v12}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->iccExchangeSimIOEx(IIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2073
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2074
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2067
    return-object v3

    .line 2069
    :cond_0
    :try_start_4
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 2070
    invoke-virtual {v2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v0, v3

    .line 2073
    .local v0, "_result":[B
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2074
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2075
    nop

    .line 2076
    return-object v0

    .line 2073
    .end local v0    # "_result":[B
    :catchall_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_1

    :catchall_2
    move-exception v0

    goto :goto_0

    :catchall_3
    move-exception v0

    move/from16 v13, p1

    :goto_0
    move/from16 v14, p2

    :goto_1
    move/from16 v15, p3

    :goto_2
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2074
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2075
    throw v0
.end method

.method public invokeOemRilRequestRaw([B[B)I
    .locals 5
    .param p1, "oemReq"    # [B
    .param p2, "oemResp"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3263
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3264
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3267
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3268
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 3269
    if-nez p2, :cond_0

    .line 3270
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 3273
    :cond_0
    array-length v2, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3275
    :goto_0
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x30

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3276
    .local v2, "_status":Z
    if-nez v2, :cond_1

    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 3277
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->invokeOemRilRequestRaw([B[B)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3284
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3285
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3277
    return v3

    .line 3279
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3280
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3281
    .local v3, "_result":I
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->readByteArray([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3284
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3285
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3286
    nop

    .line 3287
    return v3

    .line 3284
    .end local v3    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3285
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3286
    throw v2
.end method

.method public invokeOemRilRequestRawBySlot(I[B[B)I
    .locals 5
    .param p1, "slotId"    # I
    .param p2, "oemReq"    # [B
    .param p3, "oemResp"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3301
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3302
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3305
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3306
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3307
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 3308
    if-nez p3, :cond_0

    .line 3309
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 3312
    :cond_0
    array-length v2, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3314
    :goto_0
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x31

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3315
    .local v2, "_status":Z
    if-nez v2, :cond_1

    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 3316
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->invokeOemRilRequestRawBySlot(I[B[B)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3323
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3324
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3316
    return v3

    .line 3318
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3319
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3320
    .local v3, "_result":I
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->readByteArray([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3323
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3324
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3325
    nop

    .line 3326
    return v3

    .line 3323
    .end local v3    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3324
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3325
    throw v2
.end method

.method public isAppTypeSupported(II)Z
    .locals 5
    .param p1, "slotId"    # I
    .param p2, "appType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1964
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1965
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1968
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1969
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1970
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1971
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1972
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1973
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->isAppTypeSupported(II)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1979
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1980
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1973
    return v3

    .line 1975
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1976
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    :cond_1
    move v2, v4

    .line 1979
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1980
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1981
    nop

    .line 1982
    return v2

    .line 1979
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1980
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1981
    throw v2
.end method

.method public isCapabilitySwitching()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2703
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2704
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2707
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2708
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2709
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2710
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    invoke-interface {v3}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->isCapabilitySwitching()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2716
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2717
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2710
    return v3

    .line 2712
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2713
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    :cond_1
    move v2, v4

    .line 2716
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2717
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2718
    nop

    .line 2719
    return v2

    .line 2716
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2717
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2718
    throw v2
.end method

.method public isEmergencyNumber(ILjava/lang/String;)Z
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "number"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3946
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3947
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3950
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3951
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3952
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3953
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x47

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3954
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3955
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->isEmergencyNumber(ILjava/lang/String;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3961
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3962
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3955
    return v3

    .line 3957
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3958
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    :cond_1
    move v2, v4

    .line 3961
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3962
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3963
    nop

    .line 3964
    return v2

    .line 3961
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3962
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3963
    throw v2
.end method

.method public isFdnEnabled(I)Z
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2527
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2528
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2531
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2532
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2533
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x16

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2534
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2535
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->isFdnEnabled(I)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2541
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2542
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2535
    return v3

    .line 2537
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2538
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    :cond_1
    move v2, v4

    .line 2541
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2542
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2543
    nop

    .line 2544
    return v2

    .line 2541
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2542
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2543
    throw v2
.end method

.method public isImsRegistered(I)Z
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2753
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2754
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2757
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2758
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2759
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2760
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2761
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->isImsRegistered(I)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2767
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2768
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2761
    return v3

    .line 2763
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2764
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    :cond_1
    move v2, v4

    .line 2767
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2768
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2769
    nop

    .line 2770
    return v2

    .line 2767
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2768
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2769
    throw v2
.end method

.method public isInCsCall(I)Z
    .locals 5
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3333
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3334
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3337
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3338
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3339
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x32

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3340
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3341
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->isInCsCall(I)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3347
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3348
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3341
    return v3

    .line 3343
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3344
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    :cond_1
    move v2, v4

    .line 3347
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3348
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3349
    nop

    .line 3350
    return v2

    .line 3347
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3348
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3349
    throw v2
.end method

.method public isInHomeNetwork(I)Z
    .locals 6
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1882
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1883
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1886
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1887
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1888
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1889
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1890
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->isInHomeNetwork(I)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1896
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1897
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1890
    return v3

    .line 1892
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1893
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v5, :cond_1

    move v3, v4

    :cond_1
    move v2, v3

    .line 1896
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1897
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1898
    nop

    .line 1899
    return v2

    .line 1896
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1897
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1898
    throw v2
.end method

.method public isNrMapEnabled(I)Z
    .locals 5
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4047
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4048
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4051
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4052
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4053
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4054
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 4055
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->isNrMapEnabled(I)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4061
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4062
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4055
    return v3

    .line 4057
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4058
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    :cond_1
    move v2, v4

    .line 4061
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4062
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4063
    nop

    .line 4064
    return v2

    .line 4061
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4062
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4063
    throw v2
.end method

.method public isPhbReady(I)Z
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2869
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2870
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2873
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2874
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2875
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x22

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2876
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2877
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->isPhbReady(I)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2883
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2884
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2877
    return v3

    .line 2879
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2880
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    :cond_1
    move v2, v4

    .line 2883
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2884
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2885
    nop

    .line 2886
    return v2

    .line 2883
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2884
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2885
    throw v2
.end method

.method public isRadioOffBySimManagement(I)Z
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2497
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2498
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2501
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2502
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2503
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x15

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2504
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2505
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->isRadioOffBySimManagement(I)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2511
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2512
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2505
    return v3

    .line 2507
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2508
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    :cond_1
    move v2, v4

    .line 2511
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2512
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2513
    nop

    .line 2514
    return v2

    .line 2511
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2512
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2513
    throw v2
.end method

.method public isTestIccCard(I)Z
    .locals 5
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1991
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1992
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1995
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1996
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1997
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1998
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1999
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->isTestIccCard(I)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2005
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2006
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1999
    return v3

    .line 2001
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2002
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    :cond_1
    move v2, v4

    .line 2005
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2006
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2007
    nop

    .line 2008
    return v2

    .line 2005
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2006
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2007
    throw v2
.end method

.method public isVolteEnabled(I)Z
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2780
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2781
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2784
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2785
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2786
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2787
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2788
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->isVolteEnabled(I)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2794
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2795
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2788
    return v3

    .line 2790
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2791
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    :cond_1
    move v2, v4

    .line 2794
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2795
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2796
    nop

    .line 2797
    return v2

    .line 2794
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2795
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2796
    throw v2
.end method

.method public isWifiCallingEnabled(I)Z
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2807
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2808
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2811
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2812
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2813
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x20

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2814
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2815
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->isWifiCallingEnabled(I)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2821
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2822
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2815
    return v3

    .line 2817
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2818
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    :cond_1
    move v2, v4

    .line 2821
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2822
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2823
    nop

    .line 2824
    return v2

    .line 2821
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2822
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2823
    throw v2
.end method

.method public loadEFLinearFixedAll(IIILjava/lang/String;)Ljava/util/List;
    .locals 5
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2120
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2121
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2124
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2125
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2126
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2127
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2128
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2129
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2130
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2131
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3, p4}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->loadEFLinearFixedAll(IIILjava/lang/String;)Ljava/util/List;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2137
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2138
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2131
    return-object v3

    .line 2133
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2134
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v3

    .line 2137
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2138
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2139
    nop

    .line 2140
    return-object v2

    .line 2137
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2138
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2139
    throw v2
.end method

.method public loadEFTransparent(IIILjava/lang/String;)[B
    .locals 5
    .param p1, "slotId"    # I
    .param p2, "family"    # I
    .param p3, "fileID"    # I
    .param p4, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2088
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2089
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2092
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2093
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2094
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2095
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2096
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2097
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2098
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2099
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3, p4}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->loadEFTransparent(IIILjava/lang/String;)[B

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2105
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2106
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2099
    return-object v3

    .line 2101
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2102
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v3

    .line 2105
    .local v2, "_result":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2106
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2107
    nop

    .line 2108
    return-object v2

    .line 2105
    .end local v2    # "_result":[B
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2106
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2107
    throw v2
.end method

.method public manuallySetNrMap(II)V
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4022
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4023
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4025
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4026
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4027
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4028
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4029
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 4030
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->manuallySetNrMap(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4036
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4037
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4031
    return-void

    .line 4033
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4036
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4037
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4038
    nop

    .line 4039
    return-void

    .line 4036
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4037
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4038
    throw v2
.end method

.method public queryFemtoCellSystemSelectionMode(I)I
    .locals 5
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3554
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3555
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3558
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3559
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3560
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3561
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3562
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->queryFemtoCellSystemSelectionMode(I)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3568
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3569
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3562
    return v3

    .line 3564
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3565
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 3568
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3569
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3570
    nop

    .line 3571
    return v2

    .line 3568
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3569
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3570
    throw v2
.end method

.method public queryNetworkLock(II)Landroid/os/Bundle;
    .locals 5
    .param p1, "subId"    # I
    .param p2, "category"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2233
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2234
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2237
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2238
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2239
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2240
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2241
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2242
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->queryNetworkLock(II)Landroid/os/Bundle;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2253
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2254
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2242
    return-object v3

    .line 2244
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2245
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 2246
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local v3, "_result":Landroid/os/Bundle;
    goto :goto_0

    .line 2249
    .end local v3    # "_result":Landroid/os/Bundle;
    :cond_1
    const/4 v3, 0x0

    .line 2253
    .end local v2    # "_status":Z
    .restart local v3    # "_result":Landroid/os/Bundle;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2254
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2255
    nop

    .line 2256
    return-object v3

    .line 2253
    .end local v3    # "_result":Landroid/os/Bundle;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2254
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2255
    throw v2
.end method

.method public registerAtUrcInd(ILcom/mediatek/telephony/IOemHookCallback;)V
    .locals 5
    .param p1, "slotId"    # I
    .param p2, "cb"    # Lcom/mediatek/telephony/IOemHookCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3208
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3209
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3211
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3212
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3213
    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/mediatek/telephony/IOemHookCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3214
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3215
    .local v2, "_status":Z
    if-nez v2, :cond_1

    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 3216
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->registerAtUrcInd(ILcom/mediatek/telephony/IOemHookCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3222
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3223
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3217
    return-void

    .line 3219
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3222
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3223
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3224
    nop

    .line 3225
    return-void

    .line 3222
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3223
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3224
    throw v2
.end method

.method public repollIccStateForNetworkLock(IZ)V
    .locals 5
    .param p1, "subId"    # I
    .param p2, "needIntent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2294
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2295
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2297
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2298
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2299
    const/4 v2, 0x0

    if-eqz p2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2300
    iget-object v3, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xf

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2301
    .local v2, "_status":Z
    if-nez v2, :cond_1

    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 2302
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->repollIccStateForNetworkLock(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2308
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2309
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2303
    return-void

    .line 2305
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2308
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2309
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2310
    nop

    .line 2311
    return-void

    .line 2308
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2309
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2310
    throw v2
.end method

.method public selectFemtoCell(ILcom/mediatek/internal/telephony/FemtoCellInfo;)Z
    .locals 6
    .param p1, "phoneId"    # I
    .param p2, "femtocell"    # Lcom/mediatek/internal/telephony/FemtoCellInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3521
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3522
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3525
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3526
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3527
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    .line 3528
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3529
    invoke-virtual {p2, v0, v3}, Lcom/mediatek/internal/telephony/FemtoCellInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 3532
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3534
    :goto_0
    iget-object v4, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x39

    invoke-interface {v4, v5, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    .line 3535
    .local v4, "_status":Z
    if-nez v4, :cond_1

    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 3536
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->selectFemtoCell(ILcom/mediatek/internal/telephony/FemtoCellInfo;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3542
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3543
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3536
    return v2

    .line 3538
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3539
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    .line 3542
    .end local v4    # "_status":Z
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3543
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3544
    nop

    .line 3545
    return v2

    .line 3542
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3543
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3544
    throw v2
.end method

.method public selfActivationAction(ILandroid/os/Bundle;I)I
    .locals 5
    .param p1, "action"    # I
    .param p2, "param"    # Landroid/os/Bundle;
    .param p3, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2956
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2957
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2960
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2961
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2962
    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 2963
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2964
    invoke-virtual {p2, v0, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 2967
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2969
    :goto_0
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2970
    iget-object v3, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x25

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2971
    .local v2, "_status":Z
    if-nez v2, :cond_1

    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 2972
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->selfActivationAction(ILandroid/os/Bundle;I)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2978
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2979
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2972
    return v3

    .line 2974
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2975
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 2978
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2979
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2980
    nop

    .line 2981
    return v2

    .line 2978
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2979
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2980
    throw v2
.end method

.method public sendAtCmd(IJLjava/lang/String;Lcom/mediatek/telephony/IOemHookCallback;)V
    .locals 10
    .param p1, "slotId"    # I
    .param p2, "token"    # J
    .param p4, "atCmd"    # Ljava/lang/String;
    .param p5, "cb"    # Lcom/mediatek/telephony/IOemHookCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3231
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3232
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3234
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3235
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3236
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 3237
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3238
    if-eqz p5, :cond_0

    invoke-interface {p5}, Lcom/mediatek/telephony/IOemHookCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3239
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3240
    .local v2, "_status":Z
    if-nez v2, :cond_1

    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 3241
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v4

    move v5, p1

    move-wide v6, p2

    move-object v8, p4

    move-object v9, p5

    invoke-interface/range {v4 .. v9}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->sendAtCmd(IJLjava/lang/String;Lcom/mediatek/telephony/IOemHookCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3247
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3248
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3242
    return-void

    .line 3244
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3247
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3248
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3249
    nop

    .line 3250
    return-void

    .line 3247
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3248
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3249
    throw v2
.end method

.method public setApcModeUsingSlotId(IIZI)V
    .locals 5
    .param p1, "slotId"    # I
    .param p2, "mode"    # I
    .param p3, "reportOn"    # Z
    .param p4, "reportInterval"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3084
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3085
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3087
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3088
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3089
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3090
    const/4 v2, 0x0

    if-eqz p3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3091
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3092
    iget-object v3, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x29

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3093
    .local v2, "_status":Z
    if-nez v2, :cond_1

    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 3094
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3, p4}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->setApcModeUsingSlotId(IIZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3100
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3101
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3095
    return-void

    .line 3097
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3100
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3101
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3102
    nop

    .line 3103
    return-void

    .line 3100
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3101
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3102
    throw v2
.end method

.method public setCallSubAddressEnabled(IZ)V
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4127
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4128
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4130
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4131
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4132
    const/4 v2, 0x0

    if-eqz p2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4133
    iget-object v3, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x4e

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4134
    .local v2, "_status":Z
    if-nez v2, :cond_1

    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 4135
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->setCallSubAddressEnabled(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4141
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4142
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4136
    return-void

    .line 4138
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4141
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4142
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4143
    nop

    .line 4144
    return-void

    .line 4141
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4142
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4143
    throw v2
.end method

.method public setDisable2G(IZ)Z
    .locals 6
    .param p1, "phoneId"    # I
    .param p2, "mode"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3415
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3416
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3419
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3420
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3421
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3422
    iget-object v4, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x35

    invoke-interface {v4, v5, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    .line 3423
    .local v4, "_status":Z
    if-nez v4, :cond_1

    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 3424
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->setDisable2G(IZ)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3430
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3431
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3424
    return v2

    .line 3426
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3427
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    .line 3430
    .end local v4    # "_status":Z
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3431
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3432
    nop

    .line 3433
    return v2

    .line 3430
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3431
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3432
    throw v2
.end method

.method public setFemtoCellSystemSelectionMode(II)Z
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3581
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3582
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3585
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3586
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3587
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3588
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3589
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3590
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->setFemtoCellSystemSelectionMode(II)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3596
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3597
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3590
    return v3

    .line 3592
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3593
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    :cond_1
    move v2, v4

    .line 3596
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3597
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3598
    nop

    .line 3599
    return v2

    .line 3596
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3597
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3598
    throw v2
.end method

.method public setIsLastEccIms(Z)V
    .locals 5
    .param p1, "val"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3166
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3167
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3169
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3170
    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3171
    iget-object v3, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x2c

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3172
    .local v2, "_status":Z
    if-nez v2, :cond_1

    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 3173
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->setIsLastEccIms(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3179
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3180
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3174
    return-void

    .line 3176
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3179
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3180
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3181
    nop

    .line 3182
    return-void

    .line 3179
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3180
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3181
    throw v2
.end method

.method public setMobileDataUsageSum(IJJJJ)V
    .locals 16
    .param p1, "phoneId"    # I
    .param p2, "txBytes"    # J
    .param p4, "txPkts"    # J
    .param p6, "rxBytes"    # J
    .param p8, "rxPkts"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3906
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3907
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 3909
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v0, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 3910
    move/from16 v13, p1

    :try_start_1
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3911
    move-wide/from16 v14, p2

    :try_start_2
    invoke-virtual {v1, v14, v15}, Landroid/os/Parcel;->writeLong(J)V

    .line 3912
    move-wide/from16 v11, p4

    invoke-virtual {v1, v11, v12}, Landroid/os/Parcel;->writeLong(J)V

    .line 3913
    move-wide/from16 v9, p6

    invoke-virtual {v1, v9, v10}, Landroid/os/Parcel;->writeLong(J)V

    .line 3914
    move-wide/from16 v7, p8

    invoke-virtual {v1, v7, v8}, Landroid/os/Parcel;->writeLong(J)V

    .line 3915
    move-object/from16 v5, p0

    iget-object v0, v5, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x46

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 3916
    .local v0, "_status":Z
    if-nez v0, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3917
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    move/from16 v4, p1

    move-wide/from16 v5, p2

    move-wide/from16 v7, p4

    move-wide/from16 v9, p6

    move-wide/from16 v11, p8

    invoke-interface/range {v3 .. v12}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->setMobileDataUsageSum(IJJJJ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3923
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3924
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3918
    return-void

    .line 3920
    :cond_0
    :try_start_3
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3923
    .end local v0    # "_status":Z
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3924
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3925
    nop

    .line 3926
    return-void

    .line 3923
    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_0

    :catchall_2
    move-exception v0

    move/from16 v13, p1

    :goto_0
    move-wide/from16 v14, p2

    :goto_1
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3924
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3925
    throw v0
.end method

.method public setRadioCapability([Landroid/telephony/RadioAccessFamily;)Z
    .locals 5
    .param p1, "rafs"    # [Landroid/telephony/RadioAccessFamily;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2677
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2678
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2681
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2682
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 2683
    iget-object v3, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1b

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    .line 2684
    .local v3, "_status":Z
    if-nez v3, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 2685
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->setRadioCapability([Landroid/telephony/RadioAccessFamily;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2691
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2692
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2685
    return v2

    .line 2687
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2688
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_1

    const/4 v2, 0x1

    .line 2691
    .end local v3    # "_status":Z
    .local v2, "_result":Z
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2692
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2693
    nop

    .line 2694
    return v2

    .line 2691
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2692
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2693
    throw v2
.end method

.method public setRoamingEnable(I[I)Z
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "config"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3787
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3788
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3791
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3792
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3793
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 3794
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x42

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3795
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3796
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->setRoamingEnable(I[I)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3802
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3803
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3796
    return v3

    .line 3798
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3799
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    :cond_1
    move v2, v4

    .line 3802
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3803
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3804
    nop

    .line 3805
    return v2

    .line 3802
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3803
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3804
    throw v2
.end method

.method public setRxTestConfig(II)[I
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "config"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2900
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2901
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2904
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2905
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2906
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2907
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x23

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2908
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2909
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->setRxTestConfig(II)[I

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2915
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2916
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2909
    return-object v3

    .line 2911
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2912
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v3

    .line 2915
    .local v2, "_result":[I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2916
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2917
    nop

    .line 2918
    return-object v2

    .line 2915
    .end local v2    # "_result":[I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2916
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2917
    throw v2
.end method

.method public setSimPower(II)I
    .locals 5
    .param p1, "slotId"    # I
    .param p2, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2155
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2156
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2159
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2160
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2161
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2162
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2163
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2164
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->setSimPower(II)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2170
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2171
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2164
    return v3

    .line 2166
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2167
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 2170
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2171
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2172
    nop

    .line 2173
    return v2

    .line 2170
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2171
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2172
    throw v2
.end method

.method public setupPdnByType(ILjava/lang/String;)Z
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3718
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3719
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3722
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3723
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3724
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3725
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x40

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3726
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3727
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->setupPdnByType(ILjava/lang/String;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3733
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3734
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3727
    return v3

    .line 3729
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3730
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    :cond_1
    move v2, v4

    .line 3733
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3734
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3735
    nop

    .line 3736
    return v2

    .line 3733
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3734
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3735
    throw v2
.end method

.method public simAkaAuthentication(II[B[B)[B
    .locals 5
    .param p1, "slotId"    # I
    .param p2, "family"    # I
    .param p3, "byteRand"    # [B
    .param p4, "byteAutn"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2385
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2386
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2389
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2390
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2391
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2392
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 2393
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 2394
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x12

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2395
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2396
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3, p4}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->simAkaAuthentication(II[B[B)[B

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2402
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2403
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2396
    return-object v3

    .line 2398
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2399
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v3

    .line 2402
    .local v2, "_result":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2403
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2404
    nop

    .line 2405
    return-object v2

    .line 2402
    .end local v2    # "_result":[B
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2403
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2404
    throw v2
.end method

.method public simGbaAuthBootStrapMode(II[B[B)[B
    .locals 5
    .param p1, "slotId"    # I
    .param p2, "family"    # I
    .param p3, "byteRand"    # [B
    .param p4, "byteAutn"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2424
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2425
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2428
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2429
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2430
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2431
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 2432
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 2433
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x13

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2434
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2435
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3, p4}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->simGbaAuthBootStrapMode(II[B[B)[B

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2441
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2442
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2435
    return-object v3

    .line 2437
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2438
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v3

    .line 2441
    .local v2, "_result":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2442
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2443
    nop

    .line 2444
    return-object v2

    .line 2441
    .end local v2    # "_result":[B
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2442
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2443
    throw v2
.end method

.method public simGbaAuthNafMode(II[B[B)[B
    .locals 5
    .param p1, "slotId"    # I
    .param p2, "family"    # I
    .param p3, "byteNafId"    # [B
    .param p4, "byteImpi"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2463
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2464
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2467
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2468
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2469
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2470
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 2471
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 2472
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x14

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2473
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2474
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3, p4}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->simGbaAuthNafMode(II[B[B)[B

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2480
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2481
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2474
    return-object v3

    .line 2476
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2477
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v3

    .line 2480
    .local v2, "_result":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2481
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2482
    nop

    .line 2483
    return-object v2

    .line 2480
    .end local v2    # "_result":[B
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2481
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2482
    throw v2
.end method

.method public supplyDeviceNetworkDepersonalization(Ljava/lang/String;)[I
    .locals 5
    .param p1, "pwd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3634
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3635
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3638
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3639
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3640
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3641
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3642
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->supplyDeviceNetworkDepersonalization(Ljava/lang/String;)[I

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3648
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3649
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3642
    return-object v3

    .line 3644
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3645
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v3

    .line 3648
    .local v2, "_result":[I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3649
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3650
    nop

    .line 3651
    return-object v2

    .line 3648
    .end local v2    # "_result":[I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3649
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3650
    throw v2
.end method

.method public supplyNetworkDepersonalization(ILjava/lang/String;)I
    .locals 5
    .param p1, "subId"    # I
    .param p2, "strPasswd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2260
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2261
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2264
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2265
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2266
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2267
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2268
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2269
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->supplyNetworkDepersonalization(ILjava/lang/String;)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2275
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2276
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2269
    return v3

    .line 2271
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2272
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 2275
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2276
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2277
    nop

    .line 2278
    return v2

    .line 2275
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2276
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2277
    throw v2
.end method

.method public switchNrMap(IZ)V
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "sw"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3997
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3998
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4000
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4001
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4002
    const/4 v2, 0x0

    if-eqz p2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4003
    iget-object v3, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x49

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4004
    .local v2, "_status":Z
    if-nez v2, :cond_1

    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 4005
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->switchNrMap(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4011
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4012
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4006
    return-void

    .line 4008
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4011
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4012
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4013
    nop

    .line 4014
    return-void

    .line 4011
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4012
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4013
    throw v2
.end method

.method public tearDownPdnByType(ILjava/lang/String;)Z
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3689
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3690
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3693
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3694
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3695
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3696
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3697
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3698
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->tearDownPdnByType(ILjava/lang/String;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3704
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3705
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3698
    return v3

    .line 3700
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3701
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    :cond_1
    move v2, v4

    .line 3704
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3705
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3706
    nop

    .line 3707
    return v2

    .line 3704
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3705
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3706
    throw v2
.end method

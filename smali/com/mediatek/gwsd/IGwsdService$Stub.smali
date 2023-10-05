.class public abstract Lcom/mediatek/gwsd/IGwsdService$Stub;
.super Landroid/os/Binder;
.source "IGwsdService.java"

# interfaces
.implements Lcom/mediatek/gwsd/IGwsdService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/gwsd/IGwsdService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/gwsd/IGwsdService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.mediatek.gwsd.IGwsdService"

.field static final TRANSACTION_addListener:I = 0x1

.field static final TRANSACTION_isDataAvailableForGwsdDualSim:I = 0x9

.field static final TRANSACTION_removeListener:I = 0x2

.field static final TRANSACTION_setAutoRejectModeEnabled:I = 0x4

.field static final TRANSACTION_setCallValidTimer:I = 0x6

.field static final TRANSACTION_setGwsdDualSimEnabled:I = 0x8

.field static final TRANSACTION_setIgnoreSameNumberInterval:I = 0x7

.field static final TRANSACTION_setUserModeEnabled:I = 0x3

.field static final TRANSACTION_syncGwsdInfo:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 96
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 97
    const-string v0, "com.mediatek.gwsd.IGwsdService"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/gwsd/IGwsdService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/gwsd/IGwsdService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 105
    if-nez p0, :cond_0

    .line 106
    const/4 v0, 0x0

    return-object v0

    .line 108
    :cond_0
    const-string v0, "com.mediatek.gwsd.IGwsdService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 109
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mediatek/gwsd/IGwsdService;

    if-eqz v1, :cond_1

    .line 110
    move-object v1, v0

    check-cast v1, Lcom/mediatek/gwsd/IGwsdService;

    return-object v1

    .line 112
    :cond_1
    new-instance v1, Lcom/mediatek/gwsd/IGwsdService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/gwsd/IGwsdService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/mediatek/gwsd/IGwsdService;
    .locals 1

    .line 497
    sget-object v0, Lcom/mediatek/gwsd/IGwsdService$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/gwsd/IGwsdService;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/mediatek/gwsd/IGwsdService;)Z
    .locals 2
    .param p0, "impl"    # Lcom/mediatek/gwsd/IGwsdService;

    .line 487
    sget-object v0, Lcom/mediatek/gwsd/IGwsdService$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/gwsd/IGwsdService;

    if-nez v0, :cond_1

    .line 490
    if-eqz p0, :cond_0

    .line 491
    sput-object p0, Lcom/mediatek/gwsd/IGwsdService$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/gwsd/IGwsdService;

    .line 492
    const/4 v0, 0x1

    return v0

    .line 494
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 488
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 116
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 120
    const-string v0, "com.mediatek.gwsd.IGwsdService"

    .line 121
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_6

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 226
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 216
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 218
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    .line 219
    .local v1, "_arg0":Z
    :cond_0
    invoke-virtual {p0, v1}, Lcom/mediatek/gwsd/IGwsdService$Stub;->isDataAvailableForGwsdDualSim(Z)Z

    move-result v3

    .line 220
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 221
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 222
    return v2

    .line 207
    .end local v1    # "_arg0":Z
    .end local v3    # "_result":Z
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 209
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    .line 210
    .restart local v1    # "_arg0":Z
    :cond_1
    invoke-virtual {p0, v1}, Lcom/mediatek/gwsd/IGwsdService$Stub;->setGwsdDualSimEnabled(Z)V

    .line 211
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 212
    return v2

    .line 196
    .end local v1    # "_arg0":Z
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 198
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 200
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 201
    .local v3, "_arg1":I
    invoke-virtual {p0, v1, v3}, Lcom/mediatek/gwsd/IGwsdService$Stub;->setIgnoreSameNumberInterval(II)V

    .line 202
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 203
    return v2

    .line 185
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 189
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 190
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v1, v3}, Lcom/mediatek/gwsd/IGwsdService$Stub;->setCallValidTimer(II)V

    .line 191
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 192
    return v2

    .line 172
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 176
    .local v3, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    move v4, v2

    goto :goto_0

    :cond_2
    move v4, v1

    .line 178
    .local v4, "_arg1":Z
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3

    move v1, v2

    .line 179
    .local v1, "_arg2":Z
    :cond_3
    invoke-virtual {p0, v3, v4, v1}, Lcom/mediatek/gwsd/IGwsdService$Stub;->syncGwsdInfo(IZZ)V

    .line 180
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 181
    return v2

    .line 161
    .end local v1    # "_arg2":Z
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Z
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 165
    .restart local v3    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4

    move v1, v2

    .line 166
    .local v1, "_arg1":Z
    :cond_4
    invoke-virtual {p0, v3, v1}, Lcom/mediatek/gwsd/IGwsdService$Stub;->setAutoRejectModeEnabled(IZ)V

    .line 167
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    return v2

    .line 150
    .end local v1    # "_arg1":Z
    .end local v3    # "_arg0":I
    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 154
    .restart local v3    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5

    move v1, v2

    .line 155
    .restart local v1    # "_arg1":Z
    :cond_5
    invoke-virtual {p0, v3, v1}, Lcom/mediatek/gwsd/IGwsdService$Stub;->setUserModeEnabled(IZ)V

    .line 156
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    return v2

    .line 141
    .end local v1    # "_arg1":Z
    .end local v3    # "_arg0":I
    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 144
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lcom/mediatek/gwsd/IGwsdService$Stub;->removeListener(I)V

    .line 145
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    return v2

    .line 130
    .end local v1    # "_arg0":I
    :pswitch_8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 134
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/gwsd/IGwsdListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/gwsd/IGwsdListener;

    move-result-object v3

    .line 135
    .local v3, "_arg1":Lcom/mediatek/gwsd/IGwsdListener;
    invoke-virtual {p0, v1, v3}, Lcom/mediatek/gwsd/IGwsdService$Stub;->addListener(ILcom/mediatek/gwsd/IGwsdListener;)V

    .line 136
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    return v2

    .line 125
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":Lcom/mediatek/gwsd/IGwsdListener;
    :cond_6
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 126
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

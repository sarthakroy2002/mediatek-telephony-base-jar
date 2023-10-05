.class public abstract Lcom/mediatek/smartratswitch/ISmartRatSwitch$Stub;
.super Landroid/os/Binder;
.source "ISmartRatSwitch.java"

# interfaces
.implements Lcom/mediatek/smartratswitch/ISmartRatSwitch;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/smartratswitch/ISmartRatSwitch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/smartratswitch/ISmartRatSwitch$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.mediatek.smartratswitch.ISmartRatSwitch"

.field static final TRANSACTION_configWokingMode:I = 0x5

.field static final TRANSACTION_forceDisable5G:I = 0x4

.field static final TRANSACTION_forceEnable5G:I = 0x3

.field static final TRANSACTION_getLastOperation:I = 0x2

.field static final TRANSACTION_resetKeepRatDuration:I = 0x7

.field static final TRANSACTION_resetNextTput:I = 0x9

.field static final TRANSACTION_setCustAppProperty:I = 0x1

.field static final TRANSACTION_setKeepRatDuration:I = 0x6

.field static final TRANSACTION_setNextTput:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 80
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 81
    const-string v0, "com.mediatek.smartratswitch.ISmartRatSwitch"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/smartratswitch/ISmartRatSwitch$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/smartratswitch/ISmartRatSwitch;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 89
    if-nez p0, :cond_0

    .line 90
    const/4 v0, 0x0

    return-object v0

    .line 92
    :cond_0
    const-string v0, "com.mediatek.smartratswitch.ISmartRatSwitch"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 93
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mediatek/smartratswitch/ISmartRatSwitch;

    if-eqz v1, :cond_1

    .line 94
    move-object v1, v0

    check-cast v1, Lcom/mediatek/smartratswitch/ISmartRatSwitch;

    return-object v1

    .line 96
    :cond_1
    new-instance v1, Lcom/mediatek/smartratswitch/ISmartRatSwitch$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/smartratswitch/ISmartRatSwitch$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/mediatek/smartratswitch/ISmartRatSwitch;
    .locals 1

    .line 443
    sget-object v0, Lcom/mediatek/smartratswitch/ISmartRatSwitch$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/smartratswitch/ISmartRatSwitch;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/mediatek/smartratswitch/ISmartRatSwitch;)Z
    .locals 2
    .param p0, "impl"    # Lcom/mediatek/smartratswitch/ISmartRatSwitch;

    .line 433
    sget-object v0, Lcom/mediatek/smartratswitch/ISmartRatSwitch$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/smartratswitch/ISmartRatSwitch;

    if-nez v0, :cond_1

    .line 436
    if-eqz p0, :cond_0

    .line 437
    sput-object p0, Lcom/mediatek/smartratswitch/ISmartRatSwitch$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/smartratswitch/ISmartRatSwitch;

    .line 438
    const/4 v0, 0x1

    return v0

    .line 440
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 434
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 100
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 104
    const-string v0, "com.mediatek.smartratswitch.ISmartRatSwitch"

    .line 105
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 198
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 189
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 192
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/mediatek/smartratswitch/ISmartRatSwitch$Stub;->resetNextTput(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    return v2

    .line 176
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 178
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 180
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 182
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 183
    .local v4, "_arg2":I
    invoke-virtual {p0, v1, v3, v4}, Lcom/mediatek/smartratswitch/ISmartRatSwitch$Stub;->setNextTput(Ljava/lang/String;II)V

    .line 184
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    return v2

    .line 169
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p0}, Lcom/mediatek/smartratswitch/ISmartRatSwitch$Stub;->resetKeepRatDuration()V

    .line 171
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 172
    return v2

    .line 160
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 163
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lcom/mediatek/smartratswitch/ISmartRatSwitch$Stub;->setKeepRatDuration(I)V

    .line 164
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    return v2

    .line 151
    .end local v1    # "_arg0":I
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 154
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/mediatek/smartratswitch/ISmartRatSwitch$Stub;->configWokingMode(I)V

    .line 155
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    return v2

    .line 142
    .end local v1    # "_arg0":I
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    .line 145
    .local v1, "_arg0":Z
    :cond_0
    invoke-virtual {p0, v1}, Lcom/mediatek/smartratswitch/ISmartRatSwitch$Stub;->forceDisable5G(Z)V

    .line 146
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    return v2

    .line 133
    .end local v1    # "_arg0":Z
    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    .line 136
    .restart local v1    # "_arg0":Z
    :cond_1
    invoke-virtual {p0, v1}, Lcom/mediatek/smartratswitch/ISmartRatSwitch$Stub;->forceEnable5G(Z)V

    .line 137
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    return v2

    .line 125
    .end local v1    # "_arg0":Z
    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0}, Lcom/mediatek/smartratswitch/ISmartRatSwitch$Stub;->getLastOperation()I

    move-result v1

    .line 127
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    return v2

    .line 114
    .end local v1    # "_result":I
    :pswitch_8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 118
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 119
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v1, v3}, Lcom/mediatek/smartratswitch/ISmartRatSwitch$Stub;->setCustAppProperty(Ljava/lang/String;I)V

    .line 120
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    return v2

    .line 109
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :cond_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 110
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

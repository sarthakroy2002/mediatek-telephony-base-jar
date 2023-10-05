.class public abstract Lcom/mediatek/internal/telephony/IMtkSub$Stub;
.super Landroid/os/Binder;
.source "IMtkSub.java"

# interfaces
.implements Lcom/mediatek/internal/telephony/IMtkSub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/IMtkSub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/IMtkSub$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.mediatek.internal.telephony.IMtkSub"

.field static final TRANSACTION_getSubIdUsingPhoneId:I = 0x3

.field static final TRANSACTION_getSubInfo:I = 0x1

.field static final TRANSACTION_getSubInfoForIccId:I = 0x2

.field static final TRANSACTION_setDefaultDataSubIdWithoutCapabilitySwitch:I = 0x5

.field static final TRANSACTION_setDefaultFallbackSubId:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 54
    const-string v0, "com.mediatek.internal.telephony.IMtkSub"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/internal/telephony/IMtkSub$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/IMtkSub;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 62
    if-nez p0, :cond_0

    .line 63
    const/4 v0, 0x0

    return-object v0

    .line 65
    :cond_0
    const-string v0, "com.mediatek.internal.telephony.IMtkSub"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 66
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mediatek/internal/telephony/IMtkSub;

    if-eqz v1, :cond_1

    .line 67
    move-object v1, v0

    check-cast v1, Lcom/mediatek/internal/telephony/IMtkSub;

    return-object v1

    .line 69
    :cond_1
    new-instance v1, Lcom/mediatek/internal/telephony/IMtkSub$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/internal/telephony/IMtkSub$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkSub;
    .locals 1

    .line 327
    sget-object v0, Lcom/mediatek/internal/telephony/IMtkSub$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/internal/telephony/IMtkSub;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/mediatek/internal/telephony/IMtkSub;)Z
    .locals 2
    .param p0, "impl"    # Lcom/mediatek/internal/telephony/IMtkSub;

    .line 317
    sget-object v0, Lcom/mediatek/internal/telephony/IMtkSub$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/internal/telephony/IMtkSub;

    if-nez v0, :cond_1

    .line 320
    if-eqz p0, :cond_0

    .line 321
    sput-object p0, Lcom/mediatek/internal/telephony/IMtkSub$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/internal/telephony/IMtkSub;

    .line 322
    const/4 v0, 0x1

    return v0

    .line 324
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 318
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 73
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 77
    const-string v0, "com.mediatek.internal.telephony.IMtkSub"

    .line 78
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v2, :cond_6

    const/4 v3, 0x2

    if-eq p1, v3, :cond_4

    const/4 v1, 0x3

    if-eq p1, v1, :cond_3

    const/4 v1, 0x4

    if-eq p1, v1, :cond_2

    const/4 v1, 0x5

    if-eq p1, v1, :cond_1

    const v1, 0x5f4e5446

    if-eq p1, v1, :cond_0

    .line 157
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 82
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 83
    return v2

    .line 148
    :cond_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 151
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/IMtkSub$Stub;->setDefaultDataSubIdWithoutCapabilitySwitch(I)V

    .line 152
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 153
    return v2

    .line 137
    .end local v1    # "_arg0":I
    :cond_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 141
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 142
    .local v3, "_arg1":I
    invoke-virtual {p0, v1, v3}, Lcom/mediatek/internal/telephony/IMtkSub$Stub;->setDefaultFallbackSubId(II)V

    .line 143
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    return v2

    .line 127
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    :cond_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 130
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/IMtkSub$Stub;->getSubIdUsingPhoneId(I)I

    move-result v3

    .line 131
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    return v2

    .line 107
    .end local v1    # "_arg0":I
    .end local v3    # "_result":I
    :cond_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 111
    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 113
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 114
    .local v5, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v3, v4, v5}, Lcom/mediatek/internal/telephony/IMtkSub$Stub;->getSubInfoForIccId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/mediatek/internal/telephony/MtkSubscriptionInfo;

    move-result-object v6

    .line 115
    .local v6, "_result":Lcom/mediatek/internal/telephony/MtkSubscriptionInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 116
    if-eqz v6, :cond_5

    .line 117
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    invoke-virtual {v6, p3, v2}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 121
    :cond_5
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    :goto_0
    return v2

    .line 87
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v6    # "_result":Lcom/mediatek/internal/telephony/MtkSubscriptionInfo;
    :cond_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 91
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 93
    .local v4, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 94
    .restart local v5    # "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v3, v4, v5}, Lcom/mediatek/internal/telephony/IMtkSub$Stub;->getSubInfo(Ljava/lang/String;ILjava/lang/String;)Lcom/mediatek/internal/telephony/MtkSubscriptionInfo;

    move-result-object v6

    .line 95
    .restart local v6    # "_result":Lcom/mediatek/internal/telephony/MtkSubscriptionInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    if-eqz v6, :cond_7

    .line 97
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    invoke-virtual {v6, p3, v2}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 101
    :cond_7
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    :goto_1
    return v2
.end method

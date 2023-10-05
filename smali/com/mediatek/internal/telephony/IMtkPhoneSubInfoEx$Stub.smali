.class public abstract Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub;
.super Landroid/os/Binder;
.source "IMtkPhoneSubInfoEx.java"

# interfaces
.implements Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.mediatek.internal.telephony.IMtkPhoneSubInfoEx"

.field static final TRANSACTION_getIsimDomainForSubscriber:I = 0x12

.field static final TRANSACTION_getIsimGbabp:I = 0x6

.field static final TRANSACTION_getIsimGbabpForSubscriber:I = 0x7

.field static final TRANSACTION_getIsimImpiForSubscriber:I = 0x11

.field static final TRANSACTION_getIsimImpuForSubscriber:I = 0x13

.field static final TRANSACTION_getIsimIstForSubscriber:I = 0x14

.field static final TRANSACTION_getIsimPcscfForSubscriber:I = 0x15

.field static final TRANSACTION_getIsimPsismsc:I = 0x16

.field static final TRANSACTION_getIsimPsismscForSubscriber:I = 0x17

.field static final TRANSACTION_getLine1PhoneNumberForSubscriber:I = 0x18

.field static final TRANSACTION_getMncLength:I = 0xf

.field static final TRANSACTION_getMncLengthForSubscriber:I = 0x10

.field static final TRANSACTION_getUsimGbabp:I = 0x2

.field static final TRANSACTION_getUsimGbabpForSubscriber:I = 0x3

.field static final TRANSACTION_getUsimPsismsc:I = 0xb

.field static final TRANSACTION_getUsimPsismscForSubscriber:I = 0xc

.field static final TRANSACTION_getUsimService:I = 0x1

.field static final TRANSACTION_getUsimServiceForSubscriber:I = 0xa

.field static final TRANSACTION_getUsimSmsp:I = 0xd

.field static final TRANSACTION_getUsimSmspForSubscriber:I = 0xe

.field static final TRANSACTION_setIsimGbabp:I = 0x8

.field static final TRANSACTION_setIsimGbabpForSubscriber:I = 0x9

.field static final TRANSACTION_setUsimGbabp:I = 0x4

.field static final TRANSACTION_setUsimGbabpForSubscriber:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 255
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 256
    const-string v0, "com.mediatek.internal.telephony.IMtkPhoneSubInfoEx"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 257
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 264
    if-nez p0, :cond_0

    .line 265
    const/4 v0, 0x0

    return-object v0

    .line 267
    :cond_0
    const-string v0, "com.mediatek.internal.telephony.IMtkPhoneSubInfoEx"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 268
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx;

    if-eqz v1, :cond_1

    .line 269
    move-object v1, v0

    check-cast v1, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx;

    return-object v1

    .line 271
    :cond_1
    new-instance v1, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx;
    .locals 1

    .line 1276
    sget-object v0, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx;)Z
    .locals 2
    .param p0, "impl"    # Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx;

    .line 1266
    sget-object v0, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx;

    if-nez v0, :cond_1

    .line 1269
    if-eqz p0, :cond_0

    .line 1270
    sput-object p0, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx;

    .line 1271
    const/4 v0, 0x1

    return v0

    .line 1273
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 1267
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 275
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

    .line 279
    const-string v0, "com.mediatek.internal.telephony.IMtkPhoneSubInfoEx"

    .line 280
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_4

    packed-switch p1, :pswitch_data_0

    .line 555
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 541
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 543
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 545
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 547
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 548
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v1, v3, v4}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub;->getLine1PhoneNumberForSubscriber(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 549
    .local v5, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 550
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 551
    return v2

    .line 531
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":Ljava/lang/String;
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 533
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 534
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub;->getIsimPsismscForSubscriber(I)[B

    move-result-object v3

    .line 535
    .local v3, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 536
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 537
    return v2

    .line 523
    .end local v1    # "_arg0":I
    .end local v3    # "_result":[B
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 524
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub;->getIsimPsismsc()[B

    move-result-object v1

    .line 525
    .local v1, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 526
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 527
    return v2

    .line 513
    .end local v1    # "_result":[B
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 515
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 516
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub;->getIsimPcscfForSubscriber(I)[Ljava/lang/String;

    move-result-object v3

    .line 517
    .local v3, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 518
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 519
    return v2

    .line 503
    .end local v1    # "_arg0":I
    .end local v3    # "_result":[Ljava/lang/String;
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 505
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 506
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub;->getIsimIstForSubscriber(I)Ljava/lang/String;

    move-result-object v3

    .line 507
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 508
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 509
    return v2

    .line 493
    .end local v1    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 495
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 496
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub;->getIsimImpuForSubscriber(I)[Ljava/lang/String;

    move-result-object v3

    .line 497
    .local v3, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 498
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 499
    return v2

    .line 483
    .end local v1    # "_arg0":I
    .end local v3    # "_result":[Ljava/lang/String;
    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 485
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 486
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub;->getIsimDomainForSubscriber(I)Ljava/lang/String;

    move-result-object v3

    .line 487
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 488
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 489
    return v2

    .line 473
    .end local v1    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 475
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 476
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub;->getIsimImpiForSubscriber(I)Ljava/lang/String;

    move-result-object v3

    .line 477
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 478
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 479
    return v2

    .line 463
    .end local v1    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 465
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 466
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub;->getMncLengthForSubscriber(I)I

    move-result v3

    .line 467
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 468
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 469
    return v2

    .line 455
    .end local v1    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 456
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub;->getMncLength()I

    move-result v1

    .line 457
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 458
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 459
    return v2

    .line 445
    .end local v1    # "_result":I
    :pswitch_a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 447
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 448
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub;->getUsimSmspForSubscriber(I)[B

    move-result-object v3

    .line 449
    .local v3, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 450
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 451
    return v2

    .line 437
    .end local v1    # "_arg0":I
    .end local v3    # "_result":[B
    :pswitch_b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 438
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub;->getUsimSmsp()[B

    move-result-object v1

    .line 439
    .local v1, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 440
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 441
    return v2

    .line 427
    .end local v1    # "_result":[B
    :pswitch_c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 429
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 430
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub;->getUsimPsismscForSubscriber(I)[B

    move-result-object v3

    .line 431
    .restart local v3    # "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 432
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 433
    return v2

    .line 419
    .end local v1    # "_arg0":I
    .end local v3    # "_result":[B
    :pswitch_d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 420
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub;->getUsimPsismsc()[B

    move-result-object v1

    .line 421
    .local v1, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 422
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 423
    return v2

    .line 405
    .end local v1    # "_result":[B
    :pswitch_e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 407
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 409
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 411
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 412
    .restart local v4    # "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v1, v3, v4}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub;->getUsimServiceForSubscriber(IILjava/lang/String;)Z

    move-result v5

    .line 413
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 414
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 415
    return v2

    .line 387
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":Z
    :pswitch_f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 389
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 391
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 393
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    .line 394
    sget-object v4, Landroid/os/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Message;

    .local v4, "_arg2":Landroid/os/Message;
    goto :goto_0

    .line 397
    .end local v4    # "_arg2":Landroid/os/Message;
    :cond_0
    const/4 v4, 0x0

    .line 399
    .restart local v4    # "_arg2":Landroid/os/Message;
    :goto_0
    invoke-virtual {p0, v1, v3, v4}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub;->setIsimGbabpForSubscriber(ILjava/lang/String;Landroid/os/Message;)V

    .line 400
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 401
    return v2

    .line 371
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Landroid/os/Message;
    :pswitch_10
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 373
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 375
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 376
    sget-object v3, Landroid/os/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Message;

    .local v3, "_arg1":Landroid/os/Message;
    goto :goto_1

    .line 379
    .end local v3    # "_arg1":Landroid/os/Message;
    :cond_1
    const/4 v3, 0x0

    .line 381
    .restart local v3    # "_arg1":Landroid/os/Message;
    :goto_1
    invoke-virtual {p0, v1, v3}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub;->setIsimGbabp(Ljava/lang/String;Landroid/os/Message;)V

    .line 382
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 383
    return v2

    .line 361
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/os/Message;
    :pswitch_11
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 363
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 364
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub;->getIsimGbabpForSubscriber(I)Ljava/lang/String;

    move-result-object v3

    .line 365
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 366
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 367
    return v2

    .line 353
    .end local v1    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_12
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 354
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub;->getIsimGbabp()Ljava/lang/String;

    move-result-object v1

    .line 355
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 356
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 357
    return v2

    .line 335
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_13
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 337
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 339
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 341
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    .line 342
    sget-object v4, Landroid/os/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Message;

    .restart local v4    # "_arg2":Landroid/os/Message;
    goto :goto_2

    .line 345
    .end local v4    # "_arg2":Landroid/os/Message;
    :cond_2
    const/4 v4, 0x0

    .line 347
    .restart local v4    # "_arg2":Landroid/os/Message;
    :goto_2
    invoke-virtual {p0, v1, v3, v4}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub;->setUsimGbabpForSubscriber(ILjava/lang/String;Landroid/os/Message;)V

    .line 348
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 349
    return v2

    .line 319
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Landroid/os/Message;
    :pswitch_14
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 321
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 323
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    .line 324
    sget-object v3, Landroid/os/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Message;

    .local v3, "_arg1":Landroid/os/Message;
    goto :goto_3

    .line 327
    .end local v3    # "_arg1":Landroid/os/Message;
    :cond_3
    const/4 v3, 0x0

    .line 329
    .restart local v3    # "_arg1":Landroid/os/Message;
    :goto_3
    invoke-virtual {p0, v1, v3}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub;->setUsimGbabp(Ljava/lang/String;Landroid/os/Message;)V

    .line 330
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 331
    return v2

    .line 309
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/os/Message;
    :pswitch_15
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 311
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 312
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub;->getUsimGbabpForSubscriber(I)Ljava/lang/String;

    move-result-object v3

    .line 313
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 314
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 315
    return v2

    .line 301
    .end local v1    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_16
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 302
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub;->getUsimGbabp()Ljava/lang/String;

    move-result-object v1

    .line 303
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 304
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 305
    return v2

    .line 289
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_17
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 291
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 293
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 294
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v3}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub;->getUsimService(ILjava/lang/String;)Z

    move-result v4

    .line 295
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 296
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 297
    return v2

    .line 284
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :cond_4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 285
    return v2

    :pswitch_data_0
    .packed-switch 0x1
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

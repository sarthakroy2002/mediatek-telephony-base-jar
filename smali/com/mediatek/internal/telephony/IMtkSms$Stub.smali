.class public abstract Lcom/mediatek/internal/telephony/IMtkSms$Stub;
.super Landroid/os/Binder;
.source "IMtkSms.java"

# interfaces
.implements Lcom/mediatek/internal/telephony/IMtkSms;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/IMtkSms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/IMtkSms$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.mediatek.internal.telephony.IMtkSms"

.field static final TRANSACTION_activateCellBroadcastSmsForSubscriber:I = 0x11

.field static final TRANSACTION_copyTextMessageToIccCardForSubscriber:I = 0x2

.field static final TRANSACTION_getAllMessagesFromIccEfByModeForSubscriber:I = 0x1

.field static final TRANSACTION_getCellBroadcastLangsForSubscriber:I = 0x16

.field static final TRANSACTION_getCellBroadcastRangesForSubscriber:I = 0x14

.field static final TRANSACTION_getMessageFromIccEfForSubscriber:I = 0xf

.field static final TRANSACTION_getScAddressForSubscriber:I = 0x17

.field static final TRANSACTION_getScAddressWithErrorCodeForSubscriber:I = 0x18

.field static final TRANSACTION_getSmsParametersForSubscriber:I = 0xd

.field static final TRANSACTION_getSmsSimMemoryStatusForSubscriber:I = 0x6

.field static final TRANSACTION_insertRawMessageToIccCardForSubscriber:I = 0xa

.field static final TRANSACTION_insertTextMessageToIccCardForSubscriber:I = 0x9

.field static final TRANSACTION_isSmsReadyForSubscriber:I = 0x4

.field static final TRANSACTION_queryCellBroadcastSmsActivationForSubscriber:I = 0x10

.field static final TRANSACTION_removeCellBroadcastMsgForSubscriber:I = 0x12

.field static final TRANSACTION_sendDataWithOriginalPortForSubscriber:I = 0x3

.field static final TRANSACTION_sendMultipartTextWithEncodingTypeForSubscriber:I = 0x8

.field static final TRANSACTION_sendMultipartTextWithExtraParamsForSubscriber:I = 0xc

.field static final TRANSACTION_sendTextWithEncodingTypeForSubscriber:I = 0x7

.field static final TRANSACTION_sendTextWithExtraParamsForSubscriber:I = 0xb

.field static final TRANSACTION_setCellBroadcastLangsForSubscriber:I = 0x15

.field static final TRANSACTION_setEtwsConfigForSubscriber:I = 0x13

.field static final TRANSACTION_setScAddressForSubscriber:I = 0x19

.field static final TRANSACTION_setSmsMemoryStatusForSubscriber:I = 0x5

.field static final TRANSACTION_setSmsParametersForSubscriber:I = 0xe


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 409
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 410
    const-string v0, "com.mediatek.internal.telephony.IMtkSms"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 411
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/IMtkSms;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 418
    if-nez p0, :cond_0

    .line 419
    const/4 v0, 0x0

    return-object v0

    .line 421
    :cond_0
    const-string v0, "com.mediatek.internal.telephony.IMtkSms"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 422
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mediatek/internal/telephony/IMtkSms;

    if-eqz v1, :cond_1

    .line 423
    move-object v1, v0

    check-cast v1, Lcom/mediatek/internal/telephony/IMtkSms;

    return-object v1

    .line 425
    :cond_1
    new-instance v1, Lcom/mediatek/internal/telephony/IMtkSms$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/internal/telephony/IMtkSms$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkSms;
    .locals 1

    .line 1929
    sget-object v0, Lcom/mediatek/internal/telephony/IMtkSms$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/internal/telephony/IMtkSms;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/mediatek/internal/telephony/IMtkSms;)Z
    .locals 2
    .param p0, "impl"    # Lcom/mediatek/internal/telephony/IMtkSms;

    .line 1919
    sget-object v0, Lcom/mediatek/internal/telephony/IMtkSms$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/internal/telephony/IMtkSms;

    if-nez v0, :cond_1

    .line 1922
    if-eqz p0, :cond_0

    .line 1923
    sput-object p0, Lcom/mediatek/internal/telephony/IMtkSms$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/internal/telephony/IMtkSms;

    .line 1924
    const/4 v0, 0x1

    return v0

    .line 1926
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 1920
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 429
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

    .line 433
    move-object/from16 v10, p0

    move/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    const-string v14, "com.mediatek.internal.telephony.IMtkSms"

    .line 434
    .local v14, "descriptor":Ljava/lang/String;
    const v0, 0x5f4e5446

    const/4 v15, 0x1

    if-eq v11, v0, :cond_15

    const/4 v9, 0x0

    packed-switch v11, :pswitch_data_0

    .line 910
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 898
    :pswitch_0
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 900
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 902
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 903
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {v10, v0, v1}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->setScAddressForSubscriber(ILjava/lang/String;)Z

    move-result v2

    .line 904
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 905
    invoke-virtual {v13, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 906
    return v15

    .line 882
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_1
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 884
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 885
    .restart local v0    # "_arg0":I
    invoke-virtual {v10, v0}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->getScAddressWithErrorCodeForSubscriber(I)Landroid/os/Bundle;

    move-result-object v1

    .line 886
    .local v1, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 887
    if-eqz v1, :cond_0

    .line 888
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 889
    invoke-virtual {v1, v13, v15}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 892
    :cond_0
    invoke-virtual {v13, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 894
    :goto_0
    return v15

    .line 872
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Landroid/os/Bundle;
    :pswitch_2
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 874
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 875
    .restart local v0    # "_arg0":I
    invoke-virtual {v10, v0}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->getScAddressForSubscriber(I)Ljava/lang/String;

    move-result-object v1

    .line 876
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 877
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 878
    return v15

    .line 862
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_3
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 864
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 865
    .restart local v0    # "_arg0":I
    invoke-virtual {v10, v0}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->getCellBroadcastLangsForSubscriber(I)Ljava/lang/String;

    move-result-object v1

    .line 866
    .restart local v1    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 867
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 868
    return v15

    .line 850
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_4
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 852
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 854
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 855
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {v10, v0, v1}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->setCellBroadcastLangsForSubscriber(ILjava/lang/String;)Z

    move-result v2

    .line 856
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 857
    invoke-virtual {v13, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 858
    return v15

    .line 840
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_5
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 842
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 843
    .restart local v0    # "_arg0":I
    invoke-virtual {v10, v0}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->getCellBroadcastRangesForSubscriber(I)Ljava/lang/String;

    move-result-object v1

    .line 844
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 845
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 846
    return v15

    .line 828
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_6
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 830
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 832
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 833
    .local v1, "_arg1":I
    invoke-virtual {v10, v0, v1}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->setEtwsConfigForSubscriber(II)Z

    move-result v2

    .line 834
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 835
    invoke-virtual {v13, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 836
    return v15

    .line 814
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_7
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 816
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 818
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 820
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 821
    .local v2, "_arg2":I
    invoke-virtual {v10, v0, v1, v2}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->removeCellBroadcastMsgForSubscriber(III)Z

    move-result v3

    .line 822
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 823
    invoke-virtual {v13, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 824
    return v15

    .line 802
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Z
    :pswitch_8
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 804
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 806
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    move v9, v15

    :cond_1
    move v1, v9

    .line 807
    .local v1, "_arg1":Z
    invoke-virtual {v10, v0, v1}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->activateCellBroadcastSmsForSubscriber(IZ)Z

    move-result v2

    .line 808
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 809
    invoke-virtual {v13, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 810
    return v15

    .line 792
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    .end local v2    # "_result":Z
    :pswitch_9
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 794
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 795
    .restart local v0    # "_arg0":I
    invoke-virtual {v10, v0}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->queryCellBroadcastSmsActivationForSubscriber(I)Z

    move-result v1

    .line 796
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 797
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 798
    return v15

    .line 772
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_a
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 774
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 776
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 778
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 779
    .local v2, "_arg2":I
    invoke-virtual {v10, v0, v1, v2}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->getMessageFromIccEfForSubscriber(ILjava/lang/String;I)Lcom/android/internal/telephony/SmsRawData;

    move-result-object v3

    .line 780
    .local v3, "_result":Lcom/android/internal/telephony/SmsRawData;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 781
    if-eqz v3, :cond_2

    .line 782
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 783
    invoke-virtual {v3, v13, v15}, Lcom/android/internal/telephony/SmsRawData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 786
    :cond_2
    invoke-virtual {v13, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 788
    :goto_1
    return v15

    .line 753
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Lcom/android/internal/telephony/SmsRawData;
    :pswitch_b
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 755
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 757
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 759
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3

    .line 760
    sget-object v2, Lmediatek/telephony/MtkSmsParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmediatek/telephony/MtkSmsParameters;

    .local v2, "_arg2":Lmediatek/telephony/MtkSmsParameters;
    goto :goto_2

    .line 763
    .end local v2    # "_arg2":Lmediatek/telephony/MtkSmsParameters;
    :cond_3
    const/4 v2, 0x0

    .line 765
    .restart local v2    # "_arg2":Lmediatek/telephony/MtkSmsParameters;
    :goto_2
    invoke-virtual {v10, v0, v1, v2}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->setSmsParametersForSubscriber(ILjava/lang/String;Lmediatek/telephony/MtkSmsParameters;)Z

    move-result v3

    .line 766
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 767
    invoke-virtual {v13, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 768
    return v15

    .line 735
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Lmediatek/telephony/MtkSmsParameters;
    .end local v3    # "_result":Z
    :pswitch_c
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 737
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 739
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 740
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {v10, v0, v1}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->getSmsParametersForSubscriber(ILjava/lang/String;)Lmediatek/telephony/MtkSmsParameters;

    move-result-object v2

    .line 741
    .local v2, "_result":Lmediatek/telephony/MtkSmsParameters;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 742
    if-eqz v2, :cond_4

    .line 743
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 744
    invoke-virtual {v2, v13, v15}, Lmediatek/telephony/MtkSmsParameters;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3

    .line 747
    :cond_4
    invoke-virtual {v13, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 749
    :goto_3
    return v15

    .line 705
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Lmediatek/telephony/MtkSmsParameters;
    :pswitch_d
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 707
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 709
    .local v16, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 711
    .local v17, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 713
    .local v18, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 715
    .local v19, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v20

    .line 717
    .local v20, "_arg4":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    .line 718
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    move-object/from16 v21, v0

    .local v0, "_arg5":Landroid/os/Bundle;
    goto :goto_4

    .line 721
    .end local v0    # "_arg5":Landroid/os/Bundle;
    :cond_5
    const/4 v0, 0x0

    move-object/from16 v21, v0

    .line 724
    .local v21, "_arg5":Landroid/os/Bundle;
    :goto_4
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v22

    .line 726
    .local v22, "_arg6":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v23

    .line 728
    .local v23, "_arg7":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    move v9, v15

    .line 729
    .local v9, "_arg8":Z
    :cond_6
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    move-object/from16 v5, v20

    move-object/from16 v6, v21

    move-object/from16 v7, v22

    move-object/from16 v8, v23

    invoke-virtual/range {v0 .. v9}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->sendMultipartTextWithExtraParamsForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;Ljava/util/List;Ljava/util/List;Z)V

    .line 730
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 731
    return v15

    .line 665
    .end local v9    # "_arg8":Z
    .end local v16    # "_arg0":I
    .end local v17    # "_arg1":Ljava/lang/String;
    .end local v18    # "_arg2":Ljava/lang/String;
    .end local v19    # "_arg3":Ljava/lang/String;
    .end local v20    # "_arg4":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v21    # "_arg5":Landroid/os/Bundle;
    .end local v22    # "_arg6":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .end local v23    # "_arg7":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    :pswitch_e
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 667
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 669
    .restart local v16    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 671
    .restart local v17    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 673
    .restart local v18    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 675
    .restart local v19    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 677
    .local v20, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7

    .line 678
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    move-object/from16 v21, v0

    .restart local v0    # "_arg5":Landroid/os/Bundle;
    goto :goto_5

    .line 681
    .end local v0    # "_arg5":Landroid/os/Bundle;
    :cond_7
    const/4 v0, 0x0

    move-object/from16 v21, v0

    .line 684
    .restart local v21    # "_arg5":Landroid/os/Bundle;
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_8

    .line 685
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    move-object/from16 v22, v0

    .local v0, "_arg6":Landroid/app/PendingIntent;
    goto :goto_6

    .line 688
    .end local v0    # "_arg6":Landroid/app/PendingIntent;
    :cond_8
    const/4 v0, 0x0

    move-object/from16 v22, v0

    .line 691
    .local v22, "_arg6":Landroid/app/PendingIntent;
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_9

    .line 692
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    move-object/from16 v23, v0

    .local v0, "_arg7":Landroid/app/PendingIntent;
    goto :goto_7

    .line 695
    .end local v0    # "_arg7":Landroid/app/PendingIntent;
    :cond_9
    const/4 v0, 0x0

    move-object/from16 v23, v0

    .line 698
    .local v23, "_arg7":Landroid/app/PendingIntent;
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a

    move v9, v15

    .line 699
    .restart local v9    # "_arg8":Z
    :cond_a
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    move-object/from16 v5, v20

    move-object/from16 v6, v21

    move-object/from16 v7, v22

    move-object/from16 v8, v23

    invoke-virtual/range {v0 .. v9}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->sendTextWithExtraParamsForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V

    .line 700
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 701
    return v15

    .line 641
    .end local v9    # "_arg8":Z
    .end local v16    # "_arg0":I
    .end local v17    # "_arg1":Ljava/lang/String;
    .end local v18    # "_arg2":Ljava/lang/String;
    .end local v19    # "_arg3":Ljava/lang/String;
    .end local v20    # "_arg4":Ljava/lang/String;
    .end local v21    # "_arg5":Landroid/os/Bundle;
    .end local v22    # "_arg6":Landroid/app/PendingIntent;
    .end local v23    # "_arg7":Landroid/app/PendingIntent;
    :pswitch_f
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 643
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 645
    .local v6, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 647
    .local v7, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 649
    .local v8, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v16

    .line 651
    .local v16, "_arg3":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v17

    .line 652
    .local v17, "_arg4":[B
    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v7

    move v3, v8

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->insertRawMessageToIccCardForSubscriber(ILjava/lang/String;I[B[B)Lmediatek/telephony/MtkSimSmsInsertStatus;

    move-result-object v0

    .line 653
    .local v0, "_result":Lmediatek/telephony/MtkSimSmsInsertStatus;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 654
    if-eqz v0, :cond_b

    .line 655
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 656
    invoke-virtual {v0, v13, v15}, Lmediatek/telephony/MtkSimSmsInsertStatus;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_8

    .line 659
    :cond_b
    invoke-virtual {v13, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 661
    :goto_8
    return v15

    .line 613
    .end local v0    # "_result":Lmediatek/telephony/MtkSimSmsInsertStatus;
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":I
    .end local v16    # "_arg3":[B
    .end local v17    # "_arg4":[B
    :pswitch_10
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 615
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 617
    .local v16, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 619
    .local v17, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 621
    .restart local v18    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 623
    .restart local v19    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v20

    .line 625
    .local v20, "_arg4":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 627
    .local v21, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v22

    .line 628
    .local v22, "_arg6":J
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    move-object/from16 v5, v20

    move/from16 v6, v21

    move-wide/from16 v7, v22

    invoke-virtual/range {v0 .. v8}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->insertTextMessageToIccCardForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IJ)Lmediatek/telephony/MtkSimSmsInsertStatus;

    move-result-object v0

    .line 629
    .restart local v0    # "_result":Lmediatek/telephony/MtkSimSmsInsertStatus;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 630
    if-eqz v0, :cond_c

    .line 631
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 632
    invoke-virtual {v0, v13, v15}, Lmediatek/telephony/MtkSimSmsInsertStatus;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_9

    .line 635
    :cond_c
    invoke-virtual {v13, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 637
    :goto_9
    return v15

    .line 588
    .end local v0    # "_result":Lmediatek/telephony/MtkSimSmsInsertStatus;
    .end local v16    # "_arg0":I
    .end local v17    # "_arg1":Ljava/lang/String;
    .end local v18    # "_arg2":Ljava/lang/String;
    .end local v19    # "_arg3":Ljava/lang/String;
    .end local v20    # "_arg4":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v21    # "_arg5":I
    .end local v22    # "_arg6":J
    :pswitch_11
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 590
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 592
    .restart local v16    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 594
    .restart local v17    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 596
    .restart local v18    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 598
    .restart local v19    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v20

    .line 600
    .restart local v20    # "_arg4":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 602
    .restart local v21    # "_arg5":I
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v22

    .line 604
    .local v22, "_arg6":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v23

    .line 606
    .local v23, "_arg7":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_d

    move v9, v15

    .line 607
    .restart local v9    # "_arg8":Z
    :cond_d
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    move-object/from16 v5, v20

    move/from16 v6, v21

    move-object/from16 v7, v22

    move-object/from16 v8, v23

    invoke-virtual/range {v0 .. v9}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->sendMultipartTextWithEncodingTypeForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/util/List;Ljava/util/List;Z)V

    .line 608
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 609
    return v15

    .line 553
    .end local v9    # "_arg8":Z
    .end local v16    # "_arg0":I
    .end local v17    # "_arg1":Ljava/lang/String;
    .end local v18    # "_arg2":Ljava/lang/String;
    .end local v19    # "_arg3":Ljava/lang/String;
    .end local v20    # "_arg4":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v21    # "_arg5":I
    .end local v22    # "_arg6":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .end local v23    # "_arg7":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    :pswitch_12
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 555
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 557
    .restart local v16    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 559
    .restart local v17    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 561
    .restart local v18    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 563
    .restart local v19    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 565
    .local v20, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 567
    .restart local v21    # "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_e

    .line 568
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    move-object/from16 v22, v0

    .local v0, "_arg6":Landroid/app/PendingIntent;
    goto :goto_a

    .line 571
    .end local v0    # "_arg6":Landroid/app/PendingIntent;
    :cond_e
    const/4 v0, 0x0

    move-object/from16 v22, v0

    .line 574
    .local v22, "_arg6":Landroid/app/PendingIntent;
    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_f

    .line 575
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    move-object/from16 v23, v0

    .local v0, "_arg7":Landroid/app/PendingIntent;
    goto :goto_b

    .line 578
    .end local v0    # "_arg7":Landroid/app/PendingIntent;
    :cond_f
    const/4 v0, 0x0

    move-object/from16 v23, v0

    .line 581
    .local v23, "_arg7":Landroid/app/PendingIntent;
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_10

    move v9, v15

    .line 582
    .restart local v9    # "_arg8":Z
    :cond_10
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    move-object/from16 v5, v20

    move/from16 v6, v21

    move-object/from16 v7, v22

    move-object/from16 v8, v23

    invoke-virtual/range {v0 .. v9}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->sendTextWithEncodingTypeForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V

    .line 583
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 584
    return v15

    .line 535
    .end local v9    # "_arg8":Z
    .end local v16    # "_arg0":I
    .end local v17    # "_arg1":Ljava/lang/String;
    .end local v18    # "_arg2":Ljava/lang/String;
    .end local v19    # "_arg3":Ljava/lang/String;
    .end local v20    # "_arg4":Ljava/lang/String;
    .end local v21    # "_arg5":I
    .end local v22    # "_arg6":Landroid/app/PendingIntent;
    .end local v23    # "_arg7":Landroid/app/PendingIntent;
    :pswitch_13
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 537
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 539
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 540
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {v10, v0, v1}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->getSmsSimMemoryStatusForSubscriber(ILjava/lang/String;)Lcom/mediatek/internal/telephony/MtkIccSmsStorageStatus;

    move-result-object v2

    .line 541
    .local v2, "_result":Lcom/mediatek/internal/telephony/MtkIccSmsStorageStatus;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 542
    if-eqz v2, :cond_11

    .line 543
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 544
    invoke-virtual {v2, v13, v15}, Lcom/mediatek/internal/telephony/MtkIccSmsStorageStatus;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_c

    .line 547
    :cond_11
    invoke-virtual {v13, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 549
    :goto_c
    return v15

    .line 524
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Lcom/mediatek/internal/telephony/MtkIccSmsStorageStatus;
    :pswitch_14
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 526
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 528
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_12

    move v9, v15

    :cond_12
    move v1, v9

    .line 529
    .local v1, "_arg1":Z
    invoke-virtual {v10, v0, v1}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->setSmsMemoryStatusForSubscriber(IZ)V

    .line 530
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 531
    return v15

    .line 514
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    :pswitch_15
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 516
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 517
    .restart local v0    # "_arg0":I
    invoke-virtual {v10, v0}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->isSmsReadyForSubscriber(I)Z

    move-result v1

    .line 518
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 519
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 520
    return v15

    .line 479
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_16
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 481
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 483
    .restart local v16    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 485
    .restart local v17    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 487
    .restart local v18    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 489
    .restart local v19    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 491
    .local v20, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 493
    .restart local v21    # "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v22

    .line 495
    .local v22, "_arg6":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_13

    .line 496
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    move-object/from16 v23, v0

    .local v0, "_arg7":Landroid/app/PendingIntent;
    goto :goto_d

    .line 499
    .end local v0    # "_arg7":Landroid/app/PendingIntent;
    :cond_13
    const/4 v0, 0x0

    move-object/from16 v23, v0

    .line 502
    .restart local v23    # "_arg7":Landroid/app/PendingIntent;
    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_14

    .line 503
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    move-object/from16 v24, v0

    .local v0, "_arg8":Landroid/app/PendingIntent;
    goto :goto_e

    .line 506
    .end local v0    # "_arg8":Landroid/app/PendingIntent;
    :cond_14
    const/4 v0, 0x0

    move-object/from16 v24, v0

    .line 508
    .local v24, "_arg8":Landroid/app/PendingIntent;
    :goto_e
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    move/from16 v5, v20

    move/from16 v6, v21

    move-object/from16 v7, v22

    move-object/from16 v8, v23

    move-object/from16 v9, v24

    invoke-virtual/range {v0 .. v9}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->sendDataWithOriginalPortForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 509
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 510
    return v15

    .line 457
    .end local v16    # "_arg0":I
    .end local v17    # "_arg1":Ljava/lang/String;
    .end local v18    # "_arg2":Ljava/lang/String;
    .end local v19    # "_arg3":Ljava/lang/String;
    .end local v20    # "_arg4":I
    .end local v21    # "_arg5":I
    .end local v22    # "_arg6":[B
    .end local v23    # "_arg7":Landroid/app/PendingIntent;
    .end local v24    # "_arg8":Landroid/app/PendingIntent;
    :pswitch_17
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 459
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 461
    .local v9, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 463
    .local v16, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 465
    .local v17, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 467
    .local v18, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v19

    .line 469
    .local v19, "_arg4":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 471
    .local v20, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v21

    .line 472
    .local v21, "_arg6":J
    move-object/from16 v0, p0

    move v1, v9

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move-object/from16 v5, v19

    move/from16 v6, v20

    move-wide/from16 v7, v21

    invoke-virtual/range {v0 .. v8}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->copyTextMessageToIccCardForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IJ)I

    move-result v0

    .line 473
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 474
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 475
    return v15

    .line 443
    .end local v0    # "_result":I
    .end local v9    # "_arg0":I
    .end local v16    # "_arg1":Ljava/lang/String;
    .end local v17    # "_arg2":Ljava/lang/String;
    .end local v18    # "_arg3":Ljava/lang/String;
    .end local v19    # "_arg4":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v20    # "_arg5":I
    .end local v21    # "_arg6":J
    :pswitch_18
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 445
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 447
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 449
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 450
    .local v2, "_arg2":I
    invoke-virtual {v10, v0, v1, v2}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->getAllMessagesFromIccEfByModeForSubscriber(ILjava/lang/String;I)Ljava/util/List;

    move-result-object v3

    .line 451
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 452
    invoke-virtual {v13, v3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 453
    return v15

    .line 438
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    :cond_15
    invoke-virtual {v13, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 439
    return v15

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

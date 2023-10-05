.class public final enum Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;
.super Ljava/lang/Enum;
.source "MtkIccCardConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/MtkIccCardConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CardType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;

.field public static final enum CARD_NOT_INSERTED:Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;

.field public static final enum CT_3G_UIM_CARD:Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;

.field public static final enum CT_4G_UICC_CARD:Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;

.field public static final enum CT_EXCEL_GG_CARD:Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;

.field public static final enum CT_UIM_SIM_CARD:Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;

.field public static final enum LOCKED_CARD:Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;

.field public static final enum NOT_CT_UICC_CARD:Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;

.field public static final enum PIN_LOCK_CARD:Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;

.field public static final enum SIM_CARD:Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;

.field public static final enum UIM_CARD:Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;

.field public static final enum UIM_SIM_CARD:Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;

.field public static final enum UNKNOW_CARD:Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 229
    new-instance v0, Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;

    const-string v1, "UIM_CARD"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;->UIM_CARD:Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;

    .line 230
    new-instance v0, Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;

    const-string v1, "SIM_CARD"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;->SIM_CARD:Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;

    .line 231
    new-instance v0, Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;

    const-string v1, "UIM_SIM_CARD"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v4, v5}, Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;->UIM_SIM_CARD:Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;

    .line 232
    new-instance v0, Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;

    const-string v1, "UNKNOW_CARD"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v5, v6}, Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;->UNKNOW_CARD:Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;

    .line 233
    new-instance v0, Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;

    const-string v1, "CT_3G_UIM_CARD"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v6, v7}, Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;->CT_3G_UIM_CARD:Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;

    .line 234
    new-instance v0, Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;

    const-string v1, "CT_UIM_SIM_CARD"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v7, v8}, Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;->CT_UIM_SIM_CARD:Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;

    .line 235
    new-instance v0, Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;

    const-string v1, "PIN_LOCK_CARD"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v8, v9}, Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;->PIN_LOCK_CARD:Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;

    .line 236
    new-instance v0, Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;

    const-string v1, "CT_4G_UICC_CARD"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v9, v10}, Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;->CT_4G_UICC_CARD:Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;

    .line 237
    new-instance v0, Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;

    const-string v1, "NOT_CT_UICC_CARD"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v10, v11}, Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;->NOT_CT_UICC_CARD:Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;

    .line 238
    new-instance v0, Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;

    const-string v1, "CT_EXCEL_GG_CARD"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v11, v12}, Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;->CT_EXCEL_GG_CARD:Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;

    .line 239
    new-instance v0, Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;

    const-string v1, "LOCKED_CARD"

    const/16 v13, 0x12

    invoke-direct {v0, v1, v12, v13}, Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;->LOCKED_CARD:Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;

    .line 240
    new-instance v0, Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;

    const-string v1, "CARD_NOT_INSERTED"

    const/16 v13, 0xb

    const/16 v14, 0xff

    invoke-direct {v0, v1, v13, v14}, Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;->CARD_NOT_INSERTED:Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;

    .line 227
    const/16 v1, 0xc

    new-array v1, v1, [Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;

    sget-object v14, Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;->UIM_CARD:Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;

    aput-object v14, v1, v2

    sget-object v2, Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;->SIM_CARD:Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;

    aput-object v2, v1, v3

    sget-object v2, Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;->UIM_SIM_CARD:Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;

    aput-object v2, v1, v4

    sget-object v2, Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;->UNKNOW_CARD:Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;

    aput-object v2, v1, v5

    sget-object v2, Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;->CT_3G_UIM_CARD:Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;

    aput-object v2, v1, v6

    sget-object v2, Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;->CT_UIM_SIM_CARD:Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;

    aput-object v2, v1, v7

    sget-object v2, Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;->PIN_LOCK_CARD:Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;

    aput-object v2, v1, v8

    sget-object v2, Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;->CT_4G_UICC_CARD:Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;

    aput-object v2, v1, v9

    sget-object v2, Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;->NOT_CT_UICC_CARD:Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;

    aput-object v2, v1, v10

    sget-object v2, Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;->CT_EXCEL_GG_CARD:Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;

    aput-object v2, v1, v11

    sget-object v2, Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;->LOCKED_CARD:Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;

    aput-object v2, v1, v12

    aput-object v0, v1, v13

    sput-object v1, Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;->$VALUES:[Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 276
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 277
    iput p3, p0, Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;->mValue:I

    .line 278
    return-void
.end method

.method public static getCardTypeFromInt(I)Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;
    .locals 4
    .param p0, "cardTypeInt"    # I

    .line 255
    sget-object v0, Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;->UNKNOW_CARD:Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;

    .line 256
    .local v0, "cardType":Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;
    invoke-static {}, Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;->values()[Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;

    move-result-object v1

    .line 257
    .local v1, "cardTypes":[Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;
    if-eqz v1, :cond_1

    .line 258
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 259
    aget-object v3, v1, v2

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;->getValue()I

    move-result v3

    if-ne v3, p0, :cond_0

    .line 260
    aget-object v0, v1, v2

    .line 261
    goto :goto_1

    .line 258
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 265
    .end local v2    # "i":I
    :cond_1
    :goto_1
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 227
    const-class v0, Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;

    return-object v0
.end method

.method public static values()[Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;
    .locals 1

    .line 227
    sget-object v0, Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;->$VALUES:[Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;

    invoke-virtual {v0}, [Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 245
    iget v0, p0, Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;->mValue:I

    return v0
.end method

.method public is4GCard()Z
    .locals 1

    .line 273
    sget-object v0, Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;->CT_4G_UICC_CARD:Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;->NOT_CT_UICC_CARD:Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

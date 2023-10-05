.class public final enum Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;
.super Ljava/lang/Enum;
.source "MtkIccCardConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/MtkIccCardConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VsimType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;

.field public static final enum LOCAL_SIM:Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;

.field public static final enum PHYSICAL_AKA_SIM:Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;

.field public static final enum PHYSICAL_SIM:Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;

.field public static final enum REMOTE_SIM:Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;

.field public static final enum SOFT_AKA_SIM:Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 286
    new-instance v0, Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;

    const-string v1, "LOCAL_SIM"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;->LOCAL_SIM:Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;

    .line 287
    new-instance v0, Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;

    const-string v1, "REMOTE_SIM"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;->REMOTE_SIM:Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;

    .line 288
    new-instance v0, Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;

    const-string v1, "SOFT_AKA_SIM"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;->SOFT_AKA_SIM:Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;

    .line 289
    new-instance v0, Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;

    const-string v1, "PHYSICAL_AKA_SIM"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;->PHYSICAL_AKA_SIM:Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;

    .line 290
    new-instance v0, Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;

    const-string v1, "PHYSICAL_SIM"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;->PHYSICAL_SIM:Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;

    .line 285
    const/4 v1, 0x5

    new-array v1, v1, [Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;

    sget-object v7, Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;->LOCAL_SIM:Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;

    aput-object v7, v1, v2

    sget-object v2, Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;->REMOTE_SIM:Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;

    aput-object v2, v1, v3

    sget-object v2, Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;->SOFT_AKA_SIM:Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;

    aput-object v2, v1, v4

    sget-object v2, Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;->PHYSICAL_AKA_SIM:Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;->$VALUES:[Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 285
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 285
    const-class v0, Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;

    return-object v0
.end method

.method public static values()[Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;
    .locals 1

    .line 285
    sget-object v0, Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;->$VALUES:[Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;

    invoke-virtual {v0}, [Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;

    return-object v0
.end method


# virtual methods
.method public isAllowOnlyVsimNetwork()Z
    .locals 1

    .line 309
    sget-object v0, Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;->SOFT_AKA_SIM:Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAllowReqNonVsimNetwork()Z
    .locals 1

    .line 305
    sget-object v0, Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;->SOFT_AKA_SIM:Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAllowVsimConnection()Z
    .locals 1

    .line 301
    sget-object v0, Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;->SOFT_AKA_SIM:Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;->PHYSICAL_AKA_SIM:Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;

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

.method public isDataRoamingAllowed()Z
    .locals 1

    .line 297
    sget-object v0, Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;->SOFT_AKA_SIM:Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;->REMOTE_SIM:Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;

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

.method public isUserDataAllowed()Z
    .locals 1

    .line 293
    sget-object v0, Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;->SOFT_AKA_SIM:Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;->PHYSICAL_AKA_SIM:Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;

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

.method public isVsimCard()Z
    .locals 1

    .line 313
    sget-object v0, Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;->PHYSICAL_SIM:Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;->PHYSICAL_AKA_SIM:Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.class public final synthetic Lcom/mediatek/telephony/-$$Lambda$MtkTelephonyManagerEx$2$noxEqqN26hX1Uxc3hW55IuY7dxY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/mediatek/telephony/MtkTelephonyManagerEx$OemHookCallback;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/mediatek/telephony/MtkTelephonyManagerEx$OemHookCallback;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mediatek/telephony/-$$Lambda$MtkTelephonyManagerEx$2$noxEqqN26hX1Uxc3hW55IuY7dxY;->f$0:Lcom/mediatek/telephony/MtkTelephonyManagerEx$OemHookCallback;

    iput p2, p0, Lcom/mediatek/telephony/-$$Lambda$MtkTelephonyManagerEx$2$noxEqqN26hX1Uxc3hW55IuY7dxY;->f$1:I

    iput-object p3, p0, Lcom/mediatek/telephony/-$$Lambda$MtkTelephonyManagerEx$2$noxEqqN26hX1Uxc3hW55IuY7dxY;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/mediatek/telephony/-$$Lambda$MtkTelephonyManagerEx$2$noxEqqN26hX1Uxc3hW55IuY7dxY;->f$0:Lcom/mediatek/telephony/MtkTelephonyManagerEx$OemHookCallback;

    iget v1, p0, Lcom/mediatek/telephony/-$$Lambda$MtkTelephonyManagerEx$2$noxEqqN26hX1Uxc3hW55IuY7dxY;->f$1:I

    iget-object v2, p0, Lcom/mediatek/telephony/-$$Lambda$MtkTelephonyManagerEx$2$noxEqqN26hX1Uxc3hW55IuY7dxY;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/mediatek/telephony/MtkTelephonyManagerEx$2;->lambda$onAtUrcInd$0(Lcom/mediatek/telephony/MtkTelephonyManagerEx$OemHookCallback;ILjava/lang/String;)V

    return-void
.end method

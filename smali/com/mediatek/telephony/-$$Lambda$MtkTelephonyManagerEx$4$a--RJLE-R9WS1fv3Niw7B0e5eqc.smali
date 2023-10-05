.class public final synthetic Lcom/mediatek/telephony/-$$Lambda$MtkTelephonyManagerEx$4$a--RJLE-R9WS1fv3Niw7B0e5eqc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/mediatek/telephony/MtkTelephonyManagerEx$OemHookCallback;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/mediatek/telephony/MtkTelephonyManagerEx$OemHookCallback;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mediatek/telephony/-$$Lambda$MtkTelephonyManagerEx$4$a--RJLE-R9WS1fv3Niw7B0e5eqc;->f$0:Lcom/mediatek/telephony/MtkTelephonyManagerEx$OemHookCallback;

    iput-object p2, p0, Lcom/mediatek/telephony/-$$Lambda$MtkTelephonyManagerEx$4$a--RJLE-R9WS1fv3Niw7B0e5eqc;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/mediatek/telephony/-$$Lambda$MtkTelephonyManagerEx$4$a--RJLE-R9WS1fv3Niw7B0e5eqc;->f$0:Lcom/mediatek/telephony/MtkTelephonyManagerEx$OemHookCallback;

    iget-object v1, p0, Lcom/mediatek/telephony/-$$Lambda$MtkTelephonyManagerEx$4$a--RJLE-R9WS1fv3Niw7B0e5eqc;->f$1:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mediatek/telephony/MtkTelephonyManagerEx$4;->lambda$onError$1(Lcom/mediatek/telephony/MtkTelephonyManagerEx$OemHookCallback;Ljava/lang/String;)V

    return-void
.end method

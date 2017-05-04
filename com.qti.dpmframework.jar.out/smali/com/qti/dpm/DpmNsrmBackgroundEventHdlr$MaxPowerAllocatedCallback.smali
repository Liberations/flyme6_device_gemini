.class Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$MaxPowerAllocatedCallback;
.super Ljava/lang/Object;
.source "DpmNsrmBackgroundEventHdlr.java"

# interfaces
.implements Lcom/qti/location/sdk/IZatTestService$IFlpMaxPowerAllocatedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MaxPowerAllocatedCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;


# direct methods
.method constructor <init>(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;)V
    .locals 0

    .prologue
    .line 500
    iput-object p1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$MaxPowerAllocatedCallback;->this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMaxPowerAllocatedChanged(D)V
    .locals 3
    .param p1, "power_mW"    # D

    .prologue
    .line 503
    const-string v0, "DPM:NSRM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMaxPowerAllocatedChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qti/dpm/DpmMsg;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    const-wide/16 v0, 0x0

    cmpl-double v0, p1, v0

    if-lez v0, :cond_0

    .line 505
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$MaxPowerAllocatedCallback;->this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    const/4 v1, 0x1

    # setter for: Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->gps_flp_On:Z
    invoke-static {v0, v1}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->access$1202(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;Z)Z

    .line 509
    :goto_0
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$MaxPowerAllocatedCallback;->this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    # invokes: Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->sendGpsTrigger()V
    invoke-static {v0}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->access$1100(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;)V

    .line 510
    return-void

    .line 507
    :cond_0
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$MaxPowerAllocatedCallback;->this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    const/4 v1, 0x0

    # setter for: Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->gps_flp_On:Z
    invoke-static {v0, v1}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->access$1202(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;Z)Z

    goto :goto_0
.end method

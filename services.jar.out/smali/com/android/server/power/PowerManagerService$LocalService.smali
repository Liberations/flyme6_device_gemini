.class final Lcom/android/server/power/PowerManagerService$LocalService;
.super Landroid/os/PowerManagerInternal;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 3700
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Landroid/os/PowerManagerInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$LocalService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService$LocalService;-><init>(Lcom/android/server/power/PowerManagerService;)V

    return-void
.end method


# virtual methods
.method public getLowPowerModeEnabled()Z
    .locals 2

    .prologue
    .line 3755
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get9(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 3756
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get10(Lcom/android/server/power/PowerManagerService;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 3755
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public powerHint(II)V
    .locals 1
    .param p1, "hintId"    # I
    .param p2, "data"    # I

    .prologue
    .line 3794
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/power/PowerManagerService;->-wrap26(Lcom/android/server/power/PowerManagerService;II)V

    .line 3793
    return-void
.end method

.method public registerLowPowerModeObserver(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/os/PowerManagerInternal$LowPowerModeListener;

    .prologue
    .line 3762
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get9(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 3763
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get11(Lcom/android/server/power/PowerManagerService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 3761
    return-void

    .line 3762
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setButtonBrightnessOverrideFromWindowManager(I)V
    .locals 5
    .param p1, "screenBrightness"    # I

    .prologue
    .line 3712
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->-get1(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "android.permission.DEVICE_POWER"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3714
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3716
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2, p1}, Lcom/android/server/power/PowerManagerService;->-wrap30(Lcom/android/server/power/PowerManagerService;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3718
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3711
    return-void

    .line 3717
    :catchall_0
    move-exception v2

    .line 3718
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3717
    throw v2
.end method

.method public setDeviceIdleMode(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 3769
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/power/PowerManagerService;->setDeviceIdleModeInternal(Z)V

    .line 3768
    return-void
.end method

.method public setDeviceIdleTempWhitelist([I)V
    .locals 1
    .param p1, "appids"    # [I

    .prologue
    .line 3779
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/power/PowerManagerService;->setDeviceIdleTempWhitelistInternal([I)V

    .line 3778
    return-void
.end method

.method public setDeviceIdleWhitelist([I)V
    .locals 1
    .param p1, "appids"    # [I

    .prologue
    .line 3774
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/power/PowerManagerService;->setDeviceIdleWhitelistInternal([I)V

    .line 3773
    return-void
.end method

.method public setDozeOverrideFromDreamManager(II)V
    .locals 1
    .param p1, "screenState"    # I
    .param p2, "screenBrightness"    # I

    .prologue
    .line 3725
    packed-switch p1, :pswitch_data_0

    .line 3733
    const/4 p1, 0x0

    .line 3736
    :pswitch_0
    const/4 v0, -0x1

    if-lt p2, v0, :cond_0

    .line 3737
    const/16 v0, 0xff

    if-le p2, v0, :cond_1

    .line 3738
    :cond_0
    const/4 p2, -0x1

    .line 3740
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/power/PowerManagerService;->-wrap31(Lcom/android/server/power/PowerManagerService;II)V

    .line 3724
    return-void

    .line 3725
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setMaximumScreenOffTimeoutFromDeviceAdmin(I)V
    .locals 1
    .param p1, "timeMs"    # I

    .prologue
    .line 3750
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/power/PowerManagerService;->setMaximumScreenOffTimeoutFromDeviceAdminInternal(I)V

    .line 3749
    return-void
.end method

.method public setScreenBrightnessOverrideFromWindowManager(I)V
    .locals 1
    .param p1, "screenBrightness"    # I

    .prologue
    .line 3703
    const/4 v0, -0x1

    if-lt p1, v0, :cond_0

    .line 3704
    const/16 v0, 0xff

    if-le p1, v0, :cond_1

    .line 3705
    :cond_0
    const/4 p1, -0x1

    .line 3707
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0, p1}, Lcom/android/server/power/PowerManagerService;->-wrap34(Lcom/android/server/power/PowerManagerService;I)V

    .line 3702
    return-void
.end method

.method public setUserActivityTimeoutOverrideFromWindowManager(J)V
    .locals 1
    .param p1, "timeoutMillis"    # J

    .prologue
    .line 3745
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/power/PowerManagerService;->-wrap37(Lcom/android/server/power/PowerManagerService;J)V

    .line 3744
    return-void
.end method

.method public uidGone(I)V
    .locals 1
    .param p1, "uid"    # I

    .prologue
    .line 3789
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/power/PowerManagerService;->uidGoneInternal(I)V

    .line 3788
    return-void
.end method

.method public updateUidProcState(II)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "procState"    # I

    .prologue
    .line 3784
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/power/PowerManagerService;->updateUidProcStateInternal(II)V

    .line 3783
    return-void
.end method

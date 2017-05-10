.class Lcom/android/server/power/PowerManagerService$BinderService$2;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/PowerManagerService$BinderService;->runPostProximityCheck(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/power/PowerManagerService$BinderService;

.field final synthetic val$r:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/server/power/PowerManagerService$BinderService;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/power/PowerManagerService$BinderService;
    .param p2, "val$r"    # Ljava/lang/Runnable;

    .prologue
    .line 3339
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$BinderService$2;->this$1:Lcom/android/server/power/PowerManagerService$BinderService;

    iput-object p2, p0, Lcom/android/server/power/PowerManagerService$BinderService$2;->val$r:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 3356
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v2, 0x5

    .line 3342
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$BinderService$2;->this$1:Lcom/android/server/power/PowerManagerService$BinderService;

    iget-object v1, v1, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->-wrap12(Lcom/android/server/power/PowerManagerService;)V

    .line 3343
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$BinderService$2;->this$1:Lcom/android/server/power/PowerManagerService$BinderService;

    iget-object v1, v1, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->-get7(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3344
    const-string/jumbo v1, "PowerManagerService"

    const-string/jumbo v2, "The proximity sensor took too long, wake event already triggered!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3345
    return-void

    .line 3347
    :cond_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$BinderService$2;->this$1:Lcom/android/server/power/PowerManagerService$BinderService;

    iget-object v1, v1, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->-get7(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->removeMessages(I)V

    .line 3348
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v0, v1, v2

    .line 3349
    .local v0, "distance":F
    const/high16 v1, 0x40a00000    # 5.0f

    cmpl-float v1, v0, v1

    if-gez v1, :cond_1

    .line 3350
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$BinderService$2;->this$1:Lcom/android/server/power/PowerManagerService$BinderService;

    iget-object v1, v1, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->-get12(Lcom/android/server/power/PowerManagerService;)Landroid/hardware/Sensor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v1

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_2

    .line 3351
    :cond_1
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$BinderService$2;->val$r:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 3341
    :cond_2
    return-void
.end method

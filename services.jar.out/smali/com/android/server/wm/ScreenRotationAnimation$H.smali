.class final Lcom/android/server/wm/ScreenRotationAnimation$H;
.super Landroid/os/Handler;
.source "ScreenRotationAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ScreenRotationAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "H"
.end annotation


# static fields
.field public static final FREEZE_TIMEOUT_VAL:I = 0x1770

.field public static final SCREENSHOT_FREEZE_TIMEOUT:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/ScreenRotationAnimation;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ScreenRotationAnimation;Landroid/os/Looper;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/wm/ScreenRotationAnimation;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1023
    iput-object p1, p0, Lcom/android/server/wm/ScreenRotationAnimation$H;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    .line 1024
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 1023
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    .line 1029
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1043
    const-string/jumbo v0, "ScreenRotationAnimation"

    const-string/jumbo v1, "No Valid Message To Handle"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    :cond_0
    :goto_0
    return-void

    .line 1031
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation$H;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    iget-object v0, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation$H;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-virtual {v0}, Lcom/android/server/wm/ScreenRotationAnimation;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1032
    const-string/jumbo v0, "ScreenRotationAnimation"

    const-string/jumbo v1, "Exceeded Freeze timeout. Destroy layers"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation$H;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-virtual {v0}, Lcom/android/server/wm/ScreenRotationAnimation;->kill()V

    goto :goto_0

    .line 1034
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation$H;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    iget-object v0, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    .line 1035
    const-string/jumbo v0, "ScreenRotationAnimation"

    .line 1036
    const-string/jumbo v1, "No animation, exceeded freeze timeout. Destroy Screenshot layer"

    .line 1035
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation$H;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    iget-object v0, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    .line 1038
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation$H;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    iput-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    goto :goto_0

    .line 1029
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

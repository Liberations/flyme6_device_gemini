.class Lcom/qualcomm/qcrilhook/QcRilHook$2;
.super Ljava/lang/Object;
.source "QcRilHook.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qcrilhook/QcRilHook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/qcrilhook/QcRilHook;


# direct methods
.method constructor <init>(Lcom/qualcomm/qcrilhook/QcRilHook;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qualcomm/qcrilhook/QcRilHook;

    .prologue
    .line 1597
    iput-object p1, p0, Lcom/qualcomm/qcrilhook/QcRilHook$2;->this$0:Lcom/qualcomm/qcrilhook/QcRilHook;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 1600
    iget-object v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook$2;->this$0:Lcom/qualcomm/qcrilhook/QcRilHook;

    invoke-static {p2}, Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel$Stub;->asInterface(Landroid/os/IBinder;)Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->-set1(Lcom/qualcomm/qcrilhook/QcRilHook;Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel;)Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel;

    .line 1601
    iget-object v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook$2;->this$0:Lcom/qualcomm/qcrilhook/QcRilHook;

    invoke-static {v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->-get2(Lcom/qualcomm/qcrilhook/QcRilHook;)Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1602
    const-string/jumbo v0, "QC_RIL_OEM_HOOK"

    const-string/jumbo v1, "QcrilMsgTunnelService Connect Failed (onServiceConnected)"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1606
    :goto_0
    iget-object v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook$2;->this$0:Lcom/qualcomm/qcrilhook/QcRilHook;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->-set0(Lcom/qualcomm/qcrilhook/QcRilHook;Z)Z

    .line 1607
    iget-object v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook$2;->this$0:Lcom/qualcomm/qcrilhook/QcRilHook;

    invoke-static {v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->-get1(Lcom/qualcomm/qcrilhook/QcRilHook;)Lcom/qualcomm/qcrilhook/QcRilHookCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1608
    const-string/jumbo v0, "QC_RIL_OEM_HOOK"

    const-string/jumbo v1, "Calling onQcRilHookReady callback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1609
    iget-object v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook$2;->this$0:Lcom/qualcomm/qcrilhook/QcRilHook;

    invoke-static {v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->-get1(Lcom/qualcomm/qcrilhook/QcRilHook;)Lcom/qualcomm/qcrilhook/QcRilHookCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/qualcomm/qcrilhook/QcRilHookCallback;->onQcRilHookReady()V

    .line 1599
    :cond_0
    return-void

    .line 1604
    :cond_1
    const-string/jumbo v0, "QC_RIL_OEM_HOOK"

    const-string/jumbo v1, "QcrilMsgTunnelService Connected Successfully (onServiceConnected)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    const/4 v2, 0x0

    .line 1615
    const-string/jumbo v0, "QC_RIL_OEM_HOOK"

    const-string/jumbo v1, "The connection to the service got disconnected unexpectedly!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1616
    iget-object v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook$2;->this$0:Lcom/qualcomm/qcrilhook/QcRilHook;

    invoke-static {v0, v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->-set1(Lcom/qualcomm/qcrilhook/QcRilHook;Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel;)Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel;

    .line 1617
    iget-object v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook$2;->this$0:Lcom/qualcomm/qcrilhook/QcRilHook;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->-set0(Lcom/qualcomm/qcrilhook/QcRilHook;Z)Z

    .line 1618
    iget-object v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook$2;->this$0:Lcom/qualcomm/qcrilhook/QcRilHook;

    invoke-static {v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->-get1(Lcom/qualcomm/qcrilhook/QcRilHook;)Lcom/qualcomm/qcrilhook/QcRilHookCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1619
    const-string/jumbo v0, "QC_RIL_OEM_HOOK"

    const-string/jumbo v1, "Calling onQcRilHookDisconnected callback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1620
    iget-object v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook$2;->this$0:Lcom/qualcomm/qcrilhook/QcRilHook;

    invoke-static {v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->-get1(Lcom/qualcomm/qcrilhook/QcRilHook;)Lcom/qualcomm/qcrilhook/QcRilHookCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/qualcomm/qcrilhook/QcRilHookCallback;->onQcRilHookDisconnected()V

    .line 1614
    :cond_0
    return-void
.end method

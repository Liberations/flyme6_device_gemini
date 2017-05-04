.class Lcom/qti/internal/telephony/dataconnection/QtiDctController$1;
.super Ljava/lang/Object;
.source "QtiDctController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qti/internal/telephony/dataconnection/QtiDctController;->onConnectResponse(ILandroid/os/AsyncResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qti/internal/telephony/dataconnection/QtiDctController;

.field final synthetic val$phoneId:I


# direct methods
.method constructor <init>(Lcom/qti/internal/telephony/dataconnection/QtiDctController;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/qti/internal/telephony/dataconnection/QtiDctController;
    .param p2, "val$phoneId"    # I

    .prologue
    .line 525
    iput-object p1, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController$1;->this$0:Lcom/qti/internal/telephony/dataconnection/QtiDctController;

    iput p2, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController$1;->val$phoneId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 528
    const-string/jumbo v0, "Running retry connect/allow_data"

    invoke-static {v0}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->-wrap1(Ljava/lang/String;)V

    .line 530
    iget v0, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController$1;->val$phoneId:I

    iget-object v1, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController$1;->this$0:Lcom/qti/internal/telephony/dataconnection/QtiDctController;

    invoke-static {v1}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->-wrap0(Lcom/qti/internal/telephony/dataconnection/QtiDctController;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 531
    iget-object v0, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController$1;->this$0:Lcom/qti/internal/telephony/dataconnection/QtiDctController;

    invoke-static {v0}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->-get0(Lcom/qti/internal/telephony/dataconnection/QtiDctController;)[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    move-result-object v0

    iget v1, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController$1;->val$phoneId:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->retryConnect()V

    .line 527
    :goto_0
    return-void

    .line 533
    :cond_0
    iget-object v0, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController$1;->this$0:Lcom/qti/internal/telephony/dataconnection/QtiDctController;

    invoke-static {v0}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->-wrap2(Lcom/qti/internal/telephony/dataconnection/QtiDctController;)V

    goto :goto_0
.end method

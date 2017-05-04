.class public Lorg/codeaurora/ims/QtiImsExtListenerBaseImpl;
.super Lorg/codeaurora/ims/internal/IQtiImsExtListener$Stub;
.source "QtiImsExtListenerBaseImpl.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lorg/codeaurora/ims/internal/IQtiImsExtListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyRefreshViceInfo(Lorg/codeaurora/ims/QtiViceInfo;)V
    .locals 0
    .param p1, "viceInfo"    # Lorg/codeaurora/ims/QtiViceInfo;

    .prologue
    .line 66
    return-void
.end method

.method public onGetCallForwardUncondTimer(IIIIIILjava/lang/String;I)V
    .locals 0
    .param p1, "startHour"    # I
    .param p2, "endHour"    # I
    .param p3, "startMinute"    # I
    .param p4, "endMinute"    # I
    .param p5, "reason"    # I
    .param p6, "status"    # I
    .param p7, "number"    # Ljava/lang/String;
    .param p8, "service"    # I

    .prologue
    .line 46
    return-void
.end method

.method public onGetPacketCount(IJ)V
    .locals 0
    .param p1, "status"    # I
    .param p2, "packetCount"    # J

    .prologue
    .line 54
    return-void
.end method

.method public onGetPacketErrorCount(IJ)V
    .locals 0
    .param p1, "status"    # I
    .param p2, "packetErrorCount"    # J

    .prologue
    .line 58
    return-void
.end method

.method public onSetCallForwardUncondTimer(I)V
    .locals 0
    .param p1, "status"    # I

    .prologue
    .line 41
    return-void
.end method

.method public onUTReqFailed(ILjava/lang/String;)V
    .locals 0
    .param p1, "errCode"    # I
    .param p2, "errString"    # Ljava/lang/String;

    .prologue
    .line 50
    return-void
.end method

.method public receiveCallDeflectResponse(I)V
    .locals 0
    .param p1, "result"    # I

    .prologue
    .line 62
    return-void
.end method

.method public receiveCallTransferResponse(I)V
    .locals 0
    .param p1, "result"    # I

    .prologue
    .line 70
    return-void
.end method

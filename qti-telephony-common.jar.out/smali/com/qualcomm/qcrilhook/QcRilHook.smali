.class public Lcom/qualcomm/qcrilhook/QcRilHook;
.super Ljava/lang/Object;
.source "QcRilHook.java"

# interfaces
.implements Lcom/qualcomm/qcrilhook/IQcRilHook;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qcrilhook/QcRilHook$1;,
        Lcom/qualcomm/qcrilhook/QcRilHook$2;
    }
.end annotation


# static fields
.field public static final ACTION_UNSOL_RESPONSE_OEM_HOOK_RAW:Ljava/lang/String; = "com.qualcomm.intent.action.ACTION_UNSOL_RESPONSE_OEM_HOOK_RAW"

.field private static final AVOIDANCE_BUFF_LEN:I = 0xa4

.field private static final BYTE_SIZE:I = 0x1

.field private static final DEFAULT_PHONE:I = 0x0

.field private static final INT_SIZE:I = 0x4

.field private static final LOG_TAG:Ljava/lang/String; = "QC_RIL_OEM_HOOK"

.field private static final MAX_PDC_ID_LEN:I = 0x7c

.field private static final MAX_REQUEST_BUFFER_SIZE:I = 0x400

.field private static final MAX_SPC_LEN:I = 0x6

.field public static final QCRIL_MSG_TUNNEL_PACKAGE_NAME:Ljava/lang/String; = "com.qualcomm.qcrilmsgtunnel"

.field public static final QCRIL_MSG_TUNNEL_SERVICE_NAME:Ljava/lang/String; = "com.qualcomm.qcrilmsgtunnel.QcrilMsgTunnelService"

.field private static final RESPONSE_BUFFER_SIZE:I = 0x800

.field private static mRegistrants:Landroid/os/RegistrantList;


# instance fields
.field private final ENCODING:Ljava/lang/String;

.field private mBound:Z

.field private mContext:Landroid/content/Context;

.field private final mHeaderSize:I

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private final mOemIdentifier:Ljava/lang/String;

.field private mQcrilHookCb:Lcom/qualcomm/qcrilhook/QcRilHookCallback;

.field private mQcrilMsgTunnelConnection:Landroid/content/ServiceConnection;

.field private mService:Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel;


# direct methods
.method static synthetic -get0(Lcom/qualcomm/qcrilhook/QcRilHook;)I
    .locals 1

    iget v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    return v0
.end method

.method static synthetic -get1(Lcom/qualcomm/qcrilhook/QcRilHook;)Lcom/qualcomm/qcrilhook/QcRilHookCallback;
    .locals 1

    iget-object v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mQcrilHookCb:Lcom/qualcomm/qcrilhook/QcRilHookCallback;

    return-object v0
.end method

.method static synthetic -get2(Lcom/qualcomm/qcrilhook/QcRilHook;)Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel;
    .locals 1

    iget-object v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mService:Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel;

    return-object v0
.end method

.method static synthetic -set0(Lcom/qualcomm/qcrilhook/QcRilHook;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mBound:Z

    return p1
.end method

.method static synthetic -set1(Lcom/qualcomm/qcrilhook/QcRilHook;Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel;)Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel;
    .locals 0

    iput-object p1, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mService:Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel;

    return-object p1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/qualcomm/qcrilhook/QcRilHook;-><init>(Landroid/content/Context;Lcom/qualcomm/qcrilhook/QcRilHookCallback;)V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/qualcomm/qcrilhook/QcRilHookCallback;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cb"    # Lcom/qualcomm/qcrilhook/QcRilHookCallback;

    .prologue
    const/4 v4, 0x0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const-string/jumbo v3, "QOEMHOOK"

    iput-object v3, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mOemIdentifier:Ljava/lang/String;

    .line 60
    const-string/jumbo v3, "QOEMHOOK"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    .line 70
    iput-object v4, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mService:Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel;

    .line 75
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mBound:Z

    .line 76
    iput-object v4, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mQcrilHookCb:Lcom/qualcomm/qcrilhook/QcRilHookCallback;

    .line 78
    const-string/jumbo v3, "ISO-8859-1"

    iput-object v3, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->ENCODING:Ljava/lang/String;

    .line 118
    new-instance v3, Lcom/qualcomm/qcrilhook/QcRilHook$1;

    invoke-direct {v3, p0}, Lcom/qualcomm/qcrilhook/QcRilHook$1;-><init>(Lcom/qualcomm/qcrilhook/QcRilHook;)V

    iput-object v3, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 1597
    new-instance v3, Lcom/qualcomm/qcrilhook/QcRilHook$2;

    invoke-direct {v3, p0}, Lcom/qualcomm/qcrilhook/QcRilHook$2;-><init>(Lcom/qualcomm/qcrilhook/QcRilHook;)V

    iput-object v3, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mQcrilMsgTunnelConnection:Landroid/content/ServiceConnection;

    .line 94
    iput-object p2, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mQcrilHookCb:Lcom/qualcomm/qcrilhook/QcRilHookCallback;

    .line 95
    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    sput-object v3, Lcom/qualcomm/qcrilhook/QcRilHook;->mRegistrants:Landroid/os/RegistrantList;

    .line 97
    iput-object p1, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mContext:Landroid/content/Context;

    .line 98
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 99
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "com.qualcomm.qcrilmsgtunnel"

    const-string/jumbo v4, "com.qualcomm.qcrilmsgtunnel.QcrilMsgTunnelService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    const-string/jumbo v3, "QC_RIL_OEM_HOOK"

    const-string/jumbo v4, "Starting QcrilMsgTunnel Service"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v3, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 104
    iget-object v3, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mQcrilMsgTunnelConnection:Landroid/content/ServiceConnection;

    const/4 v5, 0x1

    invoke-virtual {v3, v2, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 105
    const-string/jumbo v3, "QC_RIL_OEM_HOOK"

    const-string/jumbo v4, "The QcrilMsgTunnelService will be connected soon "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :try_start_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 109
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v3, "com.qualcomm.intent.action.ACTION_UNSOL_RESPONSE_OEM_HOOK_RAW"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 110
    iget-object v3, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 111
    const-string/jumbo v3, "QC_RIL_OEM_HOOK"

    const-string/jumbo v4, "Registering for intent ACTION_UNSOL_RESPONSE_OEM_HOOK_RAW"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    .end local v1    # "filter":Landroid/content/IntentFilter;
    :goto_0
    return-void

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "QC_RIL_OEM_HOOK"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Uncaught Exception while while registering ACTION_UNSOL_RESPONSE_OEM_HOOK_RAW intent. Reason: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V
    .locals 1
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "requestId"    # I
    .param p3, "requestSize"    # I

    .prologue
    .line 210
    const-string/jumbo v0, "QOEMHOOK"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 213
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 216
    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 208
    return-void
.end method

.method public static createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;
    .locals 2
    .param p0, "bytes"    # [B

    .prologue
    .line 193
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 194
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 195
    return-object v0
.end method

.method public static notifyRegistrants(Landroid/os/AsyncResult;)V
    .locals 2
    .param p0, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 1590
    sget-object v0, Lcom/qualcomm/qcrilhook/QcRilHook;->mRegistrants:Landroid/os/RegistrantList;

    if-eqz v0, :cond_0

    .line 1591
    sget-object v0, Lcom/qualcomm/qcrilhook/QcRilHook;->mRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1589
    :goto_0
    return-void

    .line 1593
    :cond_0
    const-string/jumbo v0, "QC_RIL_OEM_HOOK"

    const-string/jumbo v1, "QcRilOemHook notifyRegistrants Failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static register(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p0, "h"    # Landroid/os/Handler;
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1553
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p0, p1, p2}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1554
    .local v0, "r":Landroid/os/Registrant;
    sget-object v2, Lcom/qualcomm/qcrilhook/QcRilHook;->mRegistrants:Landroid/os/RegistrantList;

    monitor-enter v2

    .line 1555
    :try_start_0
    sget-object v1, Lcom/qualcomm/qcrilhook/QcRilHook;->mRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 1552
    return-void

    .line 1554
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;
    .locals 1
    .param p1, "requestId"    # I
    .param p2, "request"    # [B

    .prologue
    .line 227
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[BI)Landroid/os/AsyncResult;

    move-result-object v0

    return-object v0
.end method

.method private sendRilOemHookMsg(I[BI)Landroid/os/AsyncResult;
    .locals 11
    .param p1, "requestId"    # I
    .param p2, "request"    # [B
    .param p3, "phoneId"    # I

    .prologue
    const/4 v10, 0x0

    .line 233
    const/16 v7, 0x800

    new-array v4, v7, [B

    .line 235
    .local v4, "response":[B
    const-string/jumbo v7, "QC_RIL_OEM_HOOK"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "sendRilOemHookMsg: Outgoing Data is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p2}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :try_start_0
    iget-object v7, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mService:Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel;

    invoke-interface {v7, p2, v4, p3}, Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel;->sendOemRilRequestRaw([B[BI)I

    move-result v5

    .line 239
    .local v5, "retVal":I
    const-string/jumbo v7, "QC_RIL_OEM_HOOK"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "sendOemRilRequestRaw returns value = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    if-ltz v5, :cond_1

    .line 241
    const/4 v6, 0x0

    .line 243
    .local v6, "validResponseBytes":[B
    if-lez v5, :cond_0

    .line 244
    new-array v6, v5, [B

    .line 245
    .local v6, "validResponseBytes":[B
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v4, v7, v6, v8, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 247
    .end local v6    # "validResponseBytes":[B
    :cond_0
    new-instance v0, Landroid/os/AsyncResult;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v0, v7, v6, v8}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 270
    .end local v5    # "retVal":I
    .local v0, "ar":Landroid/os/AsyncResult;
    :goto_0
    return-object v0

    .line 254
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .restart local v5    # "retVal":I
    :cond_1
    array-length v7, v4

    new-array v6, v7, [B

    .line 255
    .restart local v6    # "validResponseBytes":[B
    array-length v7, v4

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v4, v8, v6, v9, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 256
    mul-int/lit8 v7, v5, -0x1

    invoke-static {v7}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v3

    .line 257
    .local v3, "ex":Lcom/android/internal/telephony/CommandException;
    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, p2, v6, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v0    # "ar":Landroid/os/AsyncResult;
    goto :goto_0

    .line 264
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "ex":Lcom/android/internal/telephony/CommandException;
    .end local v5    # "retVal":I
    .end local v6    # "validResponseBytes":[B
    :catch_0
    move-exception v2

    .line 265
    .local v2, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v7, "QC_RIL_OEM_HOOK"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "NullPointerException caught at sendOemRilRequestRaw.RequestID = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 266
    const-string/jumbo v9, ". Return Error"

    .line 265
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    new-instance v0, Landroid/os/AsyncResult;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v0, v7, v10, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .restart local v0    # "ar":Landroid/os/AsyncResult;
    goto :goto_0

    .line 259
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 260
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v7, "QC_RIL_OEM_HOOK"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "sendOemRilRequestRaw RequestID = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 261
    const-string/jumbo v9, " exception, unable to send RIL request from this application"

    .line 260
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 263
    new-instance v0, Landroid/os/AsyncResult;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v0, v7, v10, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .restart local v0    # "ar":Landroid/os/AsyncResult;
    goto :goto_0
.end method

.method private sendRilOemHookMsgAsync(I[BLcom/qualcomm/qcrilhook/IOemHookCallback;I)V
    .locals 5
    .param p1, "requestId"    # I
    .param p2, "request"    # [B
    .param p3, "oemHookCb"    # Lcom/qualcomm/qcrilhook/IOemHookCallback;
    .param p4, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 283
    const-string/jumbo v2, "QC_RIL_OEM_HOOK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendRilOemHookMsgAsync: Outgoing Data is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 284
    invoke-static {p2}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    .line 283
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :try_start_0
    iget-object v2, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mService:Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel;

    invoke-interface {v2, p2, p3, p4}, Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel;->sendOemRilRequestRawAsync([BLcom/qualcomm/qcrilhook/IOemHookCallback;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    :goto_0
    return-void

    .line 291
    :catch_0
    move-exception v1

    .line 292
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v2, "QC_RIL_OEM_HOOK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "NullPointerException caught at sendOemRilRequestRawAsync.RequestID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 293
    const-string/jumbo v4, ". Throw to the caller"

    .line 292
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    throw v1

    .line 288
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 289
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "QC_RIL_OEM_HOOK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendOemRilRequestRawAsync RequestID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 290
    const-string/jumbo v4, " exception, unable to send RIL request from this application"

    .line 289
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static unregister(Landroid/os/Handler;)V
    .locals 2
    .param p0, "h"    # Landroid/os/Handler;

    .prologue
    .line 1560
    sget-object v1, Lcom/qualcomm/qcrilhook/QcRilHook;->mRegistrants:Landroid/os/RegistrantList;

    monitor-enter v1

    .line 1561
    :try_start_0
    sget-object v0, Lcom/qualcomm/qcrilhook/QcRilHook;->mRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p0}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1559
    return-void

    .line 1560
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 175
    iget-boolean v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mBound:Z

    if-eqz v0, :cond_0

    .line 176
    const-string/jumbo v0, "QC_RIL_OEM_HOOK"

    const-string/jumbo v1, "dispose(): Unbinding service"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mQcrilMsgTunnelConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 178
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mBound:Z

    .line 180
    :cond_0
    const-string/jumbo v0, "QC_RIL_OEM_HOOK"

    const-string/jumbo v1, "dispose(): Unregistering receiver"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 173
    :cond_1
    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 1586
    const-string/jumbo v0, "QC_RIL_OEM_HOOK"

    const-string/jumbo v1, "is destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1585
    return-void
.end method

.method public qcRilActivateConfig(I)Z
    .locals 1
    .param p1, "phoneId"    # I

    .prologue
    .line 622
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->qcRilActivateConfig(II)Z

    move-result v0

    return v0
.end method

.method public qcRilActivateConfig(II)Z
    .locals 6
    .param p1, "phoneId"    # I
    .param p2, "mbnType"    # I

    .prologue
    const v4, 0x80032

    .line 636
    iget v3, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    add-int/lit8 v3, v3, 0x4

    add-int/lit8 v3, v3, 0x1

    new-array v1, v3, [B

    .line 637
    .local v1, "payload":[B
    invoke-static {v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 638
    .local v2, "reqBuffer":Ljava/nio/ByteBuffer;
    const/4 v3, 0x5

    invoke-direct {p0, v2, v4, v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 639
    int-to-byte v3, p1

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 640
    invoke-virtual {v2, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 642
    invoke-direct {p0, v4, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;

    move-result-object v0

    .line 643
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_0

    .line 644
    const-string/jumbo v3, "QC_RIL_OEM_HOOK"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "QCRIL_EVT_HOOK_ACT_CONFIGS failed w/ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 645
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 644
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    const/4 v3, 0x0

    return v3

    .line 648
    :cond_0
    const/4 v3, 0x1

    return v3
.end method

.method public qcRilCdmaAvoidCurNwk()Z
    .locals 5

    .prologue
    .line 1076
    const/4 v1, 0x0

    .line 1077
    .local v1, "retval":Z
    const v2, 0x8000e

    invoke-virtual {p0, v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsg(I)Landroid/os/AsyncResult;

    move-result-object v0

    .line 1079
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 1080
    const/4 v1, 0x1

    .line 1085
    :goto_0
    return v1

    .line 1082
    :cond_0
    const-string/jumbo v2, "QC_RIL_OEM_HOOK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "QCRIL Avoid the current cdma network Command returned Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1083
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1082
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public qcRilCdmaClearAvoidanceList()Z
    .locals 5

    .prologue
    .line 1110
    const/4 v1, 0x0

    .line 1111
    .local v1, "retval":Z
    const v2, 0x8000f

    invoke-virtual {p0, v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsg(I)Landroid/os/AsyncResult;

    move-result-object v0

    .line 1113
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 1114
    const/4 v1, 0x1

    .line 1119
    :goto_0
    return v1

    .line 1116
    :cond_0
    const-string/jumbo v2, "QC_RIL_OEM_HOOK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "QCRIL Clear the cdma avoidance list Command returned Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1117
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1116
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public qcRilCdmaGetAvoidanceList()[B
    .locals 6

    .prologue
    .line 1123
    const/4 v2, 0x0

    .line 1124
    .local v2, "retval":[B
    const v3, 0x80010

    invoke-virtual {p0, v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsg(I)Landroid/os/AsyncResult;

    move-result-object v0

    .line 1126
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_2

    .line 1127
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_1

    .line 1132
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [B

    .line 1133
    .local v1, "result":[B
    array-length v3, v1

    const/16 v4, 0xa4

    if-ne v3, v4, :cond_0

    .line 1136
    move-object v2, v1

    .line 1150
    .end local v1    # "result":[B
    .end local v2    # "retval":[B
    :goto_0
    return-object v2

    .line 1138
    .restart local v1    # "result":[B
    .restart local v2    # "retval":[B
    :cond_0
    const-string/jumbo v3, "QC_RIL_OEM_HOOK"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "QCRIL Get unexpected cdma avoidance list buffer length: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1139
    array-length v5, v1

    .line 1138
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1142
    .end local v1    # "result":[B
    :cond_1
    const-string/jumbo v3, "QC_RIL_OEM_HOOK"

    const-string/jumbo v4, "QCRIL Get cdma avoidance list command returned a null result."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1146
    :cond_2
    const-string/jumbo v3, "QC_RIL_OEM_HOOK"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "QCRIL Get the cdma avoidance list Command returned Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1147
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1146
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public qcRilCleanupConfigs()Z
    .locals 5

    .prologue
    .line 764
    const/4 v1, 0x0

    .line 765
    .local v1, "retval":Z
    const v2, 0x8001f

    invoke-virtual {p0, v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsg(I)Landroid/os/AsyncResult;

    move-result-object v0

    .line 767
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 768
    const/4 v1, 0x1

    .line 774
    :goto_0
    return v1

    .line 770
    :cond_0
    const-string/jumbo v2, "QC_RIL_OEM_HOOK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "QCRIL_EVT_HOOK_DELETE_ALL_CONFIGS failed w/ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 771
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 770
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public qcRilDeactivateConfigs()Z
    .locals 1

    .prologue
    .line 777
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->qcRilDeactivateConfigs(I)Z

    move-result v0

    return v0
.end method

.method public qcRilDeactivateConfigs(I)Z
    .locals 7
    .param p1, "mbnType"    # I

    .prologue
    const v5, 0x8002c

    .line 790
    const/4 v3, 0x0

    .line 791
    .local v3, "retval":Z
    iget v4, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    add-int/lit8 v4, v4, 0x4

    new-array v1, v4, [B

    .line 792
    .local v1, "payload":[B
    invoke-static {v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 794
    .local v2, "reqBuffer":Ljava/nio/ByteBuffer;
    const/4 v4, 0x4

    invoke-direct {p0, v2, v5, v4}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 795
    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 797
    invoke-direct {p0, v5, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;

    move-result-object v0

    .line 799
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_0

    .line 800
    const/4 v3, 0x1

    .line 806
    :goto_0
    return v3

    .line 802
    :cond_0
    const-string/jumbo v4, "QC_RIL_OEM_HOOK"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "QCRIL_EVT_HOOK_DEACT_CONFIGS failed w/ "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 803
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 802
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public qcRilGetAvailableConfigs(Ljava/lang/String;)[Ljava/lang/String;
    .locals 13
    .param p1, "device"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x0

    .line 698
    const/4 v7, 0x0

    .line 700
    .local v7, "result":[Ljava/lang/String;
    const v9, 0x80017

    invoke-virtual {p0, v9}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsg(I)Landroid/os/AsyncResult;

    move-result-object v0

    .line 701
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v9, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v9, :cond_0

    .line 702
    const-string/jumbo v9, "QC_RIL_OEM_HOOK"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "QCRIL_EVT_HOOK_GET_AVAILABLE_CONFIGS failed w/ "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 703
    iget-object v11, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 702
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    return-object v12

    .line 707
    :cond_0
    iget-object v9, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v9, :cond_1

    .line 708
    const-string/jumbo v9, "QC_RIL_OEM_HOOK"

    const-string/jumbo v10, "QCRIL_EVT_HOOK_GET_AVAILABLE_CONFIGS failed w/ null result"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    return-object v7

    .line 714
    :cond_1
    const-string/jumbo v10, "QC_RIL_OEM_HOOK"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "QCRIL_EVT_HOOK_GET_AVAILABLE_CONFIGS raw: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 715
    iget-object v9, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v9, [B

    invoke-static {v9}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v9

    .line 714
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    :try_start_0
    iget-object v9, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v9, [B

    invoke-static {v9}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 720
    .local v6, "payload":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 722
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    .line 723
    .local v5, "numStrings":I
    const-string/jumbo v9, "QC_RIL_OEM_HOOK"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "QCRIL_EVT_HOOK_GET_AVAILABLE_CONFIGS success: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    if-gtz v5, :cond_2

    .line 727
    const-string/jumbo v9, "QC_RIL_OEM_HOOK"

    const-string/jumbo v10, "QCRIL_EVT_HOOK_GET_AVAILABLE_CONFIGS failed w/invalid payload, numStrings = 0"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    return-object v12

    .line 733
    :cond_2
    new-array v7, v5, [Ljava/lang/String;

    .line 734
    .local v7, "result":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v5, :cond_3

    .line 735
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->get()B

    move-result v8

    .line 736
    .local v8, "stringLen":B
    new-array v1, v8, [B

    .line 737
    .local v1, "data":[B
    invoke-virtual {v6, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_1

    .line 739
    :try_start_1
    new-instance v9, Ljava/lang/String;

    const-string/jumbo v10, "ISO-8859-1"

    invoke-direct {v9, v1, v10}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    aput-object v9, v7, v4
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_1 .. :try_end_1} :catch_1

    .line 745
    :try_start_2
    const-string/jumbo v9, "QC_RIL_OEM_HOOK"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "QCRIL_EVT_HOOK_GET_AVAILABLE_CONFIGS string "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 746
    const-string/jumbo v11, " "

    .line 745
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 746
    aget-object v11, v7, v4

    .line 745
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 740
    :catch_0
    move-exception v2

    .line 741
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v9, "QC_RIL_OEM_HOOK"

    const-string/jumbo v10, "unsupport ISO-8859-1"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/nio/BufferUnderflowException; {:try_start_2 .. :try_end_2} :catch_1

    .line 742
    return-object v12

    .line 748
    .end local v1    # "data":[B
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v4    # "i":I
    .end local v5    # "numStrings":I
    .end local v6    # "payload":Ljava/nio/ByteBuffer;
    .end local v7    # "result":[Ljava/lang/String;
    .end local v8    # "stringLen":B
    :catch_1
    move-exception v3

    .line 749
    .local v3, "e":Ljava/nio/BufferUnderflowException;
    const-string/jumbo v9, "QC_RIL_OEM_HOOK"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "QCRIL_EVT_HOOK_GET_AVAILABLE_CONFIGS failed to parse payload w/ "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    .end local v3    # "e":Ljava/nio/BufferUnderflowException;
    :cond_3
    return-object v7
.end method

.method public qcRilGetConfig()Ljava/lang/String;
    .locals 1

    .prologue
    .line 350
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->qcRilGetConfig(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public qcRilGetConfig(I)Ljava/lang/String;
    .locals 1
    .param p1, "phoneId"    # I

    .prologue
    .line 362
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->qcRilGetConfig(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public qcRilGetConfig(II)Ljava/lang/String;
    .locals 8
    .param p1, "phoneId"    # I
    .param p2, "mbnType"    # I

    .prologue
    const v6, 0x80016

    const/4 v7, 0x0

    .line 309
    const/4 v4, 0x0

    .line 310
    .local v4, "result":Ljava/lang/String;
    iget v5, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    add-int/lit8 v5, v5, 0x4

    add-int/lit8 v5, v5, 0x1

    new-array v2, v5, [B

    .line 311
    .local v2, "payload":[B
    invoke-static {v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 313
    .local v3, "reqBuffer":Ljava/nio/ByteBuffer;
    const/4 v5, 0x5

    invoke-direct {p0, v3, v6, v5}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 314
    int-to-byte v5, p1

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 315
    invoke-virtual {v3, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 317
    invoke-direct {p0, v6, v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;

    move-result-object v0

    .line 319
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_0

    .line 320
    const-string/jumbo v5, "QC_RIL_OEM_HOOK"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "QCRIL_EVT_HOOK_GET_CONFIG failed w/ "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 321
    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 320
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    return-object v4

    .line 325
    :cond_0
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v5, :cond_1

    .line 326
    const-string/jumbo v5, "QC_RIL_OEM_HOOK"

    const-string/jumbo v6, "QCRIL_EVT_HOOK_GET_CONFIG failed w/ null result"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    return-object v4

    .line 332
    :cond_1
    :try_start_0
    new-instance v4, Ljava/lang/String;

    .end local v4    # "result":Ljava/lang/String;
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [B

    const-string/jumbo v6, "ISO-8859-1"

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    .local v4, "result":Ljava/lang/String;
    const-string/jumbo v5, "QC_RIL_OEM_HOOK"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "QCRIL_EVT_HOOK_GET_CONFIG returned w/ "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    return-object v4

    .line 333
    .end local v4    # "result":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 334
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v5, "QC_RIL_OEM_HOOK"

    const-string/jumbo v6, "unsupport ISO-8859-1"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    return-object v7
.end method

.method public qcRilGetMetaInfoForConfig(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "config"    # Ljava/lang/String;

    .prologue
    .line 855
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->qcRilGetMetaInfoForConfig(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public qcRilGetMetaInfoForConfig(Ljava/lang/String;I)Ljava/lang/String;
    .locals 9
    .param p1, "config"    # Ljava/lang/String;
    .param p2, "mbnType"    # I

    .prologue
    const v8, 0x80021

    const/4 v7, 0x0

    .line 860
    const/4 v4, 0x0

    .line 861
    .local v4, "result":Ljava/lang/String;
    const/4 v3, 0x0

    .line 863
    .local v3, "payload":[B
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x7c

    if-gt v5, v6, :cond_2

    .line 865
    :try_start_0
    iget v5, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    add-int/lit8 v5, v5, 0x4

    const-string/jumbo v6, "ISO-8859-1"

    invoke-virtual {p1, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    array-length v6, v6

    add-int/2addr v5, v6

    new-array v3, v5, [B

    .line 866
    .local v3, "payload":[B
    invoke-static {v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 868
    .local v1, "buf":Ljava/nio/ByteBuffer;
    const-string/jumbo v5, "ISO-8859-1"

    invoke-virtual {p1, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    array-length v5, v5

    add-int/lit8 v5, v5, 0x4

    .line 867
    const v6, 0x80021

    invoke-direct {p0, v1, v6, v5}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 869
    invoke-virtual {v1, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 870
    const-string/jumbo v5, "ISO-8859-1"

    invoke-virtual {p1, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 876
    invoke-direct {p0, v8, v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;

    move-result-object v0

    .line 878
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_0

    .line 879
    const-string/jumbo v5, "QC_RIL_OEM_HOOK"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "QCRIL_EVT_HOOK_GET_META_INFO failed w/ "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 880
    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 879
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    return-object v4

    .line 871
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "buf":Ljava/nio/ByteBuffer;
    .end local v3    # "payload":[B
    :catch_0
    move-exception v2

    .line 872
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v5, "QC_RIL_OEM_HOOK"

    const-string/jumbo v6, "unsupport ISO-8859-1"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    return-object v7

    .line 884
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    .restart local v1    # "buf":Ljava/nio/ByteBuffer;
    .restart local v3    # "payload":[B
    :cond_0
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v5, :cond_1

    .line 885
    const-string/jumbo v5, "QC_RIL_OEM_HOOK"

    const-string/jumbo v6, "QCRIL_EVT_HOOK_GET_META_INFO failed w/ null result"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    return-object v4

    .line 891
    :cond_1
    :try_start_1
    new-instance v4, Ljava/lang/String;

    .end local v4    # "result":Ljava/lang/String;
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [B

    const-string/jumbo v6, "ISO-8859-1"

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 896
    .local v4, "result":Ljava/lang/String;
    const-string/jumbo v5, "QC_RIL_OEM_HOOK"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "QCRIL_EVT_HOOK_GET_META_INFO returned w/ "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "buf":Ljava/nio/ByteBuffer;
    .end local v3    # "payload":[B
    .end local v4    # "result":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 892
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    .restart local v1    # "buf":Ljava/nio/ByteBuffer;
    .restart local v3    # "payload":[B
    :catch_1
    move-exception v2

    .line 893
    .restart local v2    # "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v5, "QC_RIL_OEM_HOOK"

    const-string/jumbo v6, "unsupport ISO-8859-1"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    return-object v7

    .line 898
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "buf":Ljava/nio/ByteBuffer;
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    .local v3, "payload":[B
    .local v4, "result":Ljava/lang/String;
    :cond_2
    const-string/jumbo v5, "QC_RIL_OEM_HOOK"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "get meta info with incorrect config id: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public qcRilGetOemVersionOfFile(Ljava/lang/String;)[B
    .locals 7
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    const v5, 0x80030

    const/4 v6, 0x0

    .line 504
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 505
    return-object v6

    .line 507
    :cond_0
    iget v3, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    add-int/2addr v3, v4

    new-array v2, v3, [B

    .line 508
    .local v2, "payload":[B
    invoke-static {v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 509
    .local v1, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    invoke-direct {p0, v1, v5, v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 510
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 512
    invoke-direct {p0, v5, v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;

    move-result-object v0

    .line 513
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_1

    .line 514
    const-string/jumbo v3, "QC_RIL_OEM_HOOK"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "QCRIL_EVT_HOOK_GET_OEM_VERSION_OF_FILE failed w/ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 515
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 514
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    return-object v6

    .line 518
    :cond_1
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v3, :cond_2

    .line 519
    const-string/jumbo v3, "QC_RIL_OEM_HOOK"

    const-string/jumbo v4, "QCRIL_EVT_HOOK_GET_OEM_VERSION_OF_FILE failed w/ null result"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    return-object v6

    .line 524
    :cond_2
    const-string/jumbo v4, "QC_RIL_OEM_HOOK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "QCRIL_EVT_HOOK_GET_OEM_VERSION_OF_FILE returned w/ "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    return-object v3
.end method

.method public qcRilGetOemVersionOfID(Ljava/lang/String;)[B
    .locals 8
    .param p1, "config_id"    # Ljava/lang/String;

    .prologue
    const v6, 0x80031

    const/4 v7, 0x0

    .line 580
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x7c

    if-le v4, v5, :cond_1

    .line 581
    :cond_0
    const-string/jumbo v4, "QC_RIL_OEM_HOOK"

    const-string/jumbo v5, "invalid config_id"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    return-object v7

    .line 585
    :cond_1
    iget v4, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    new-array v3, v4, [B

    .line 586
    .local v3, "payload":[B
    invoke-static {v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 588
    .local v1, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 587
    invoke-direct {p0, v1, v6, v4}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 590
    :try_start_0
    const-string/jumbo v4, "ISO-8859-1"

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 596
    invoke-direct {p0, v6, v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;

    move-result-object v0

    .line 597
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_2

    .line 598
    const-string/jumbo v4, "QC_RIL_OEM_HOOK"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "QCRIL_EVT_HOOK_GET_OEM_VERSION_OF_ID failed w/ "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 599
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 598
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    return-object v7

    .line 591
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :catch_0
    move-exception v2

    .line 592
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v4, "QC_RIL_OEM_HOOK"

    const-string/jumbo v5, "unsupport ISO-8859-1"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    return-object v7

    .line 602
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    :cond_2
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v4, :cond_3

    .line 603
    const-string/jumbo v4, "QC_RIL_OEM_HOOK"

    const-string/jumbo v5, "QCRIL_EVT_HOOK_GET_OEM_VERSION_OF_ID failed w/ null result"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    return-object v7

    .line 608
    :cond_3
    const-string/jumbo v5, "QC_RIL_OEM_HOOK"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "QCRIL_EVT_HOOK_GET_OEM_VERSION_OF_ID returned w/ "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    return-object v4
.end method

.method public qcRilGetPreferredNetworkAcqOrder(I)B
    .locals 10
    .param p1, "phoneId"    # I

    .prologue
    .line 1239
    const/4 v0, 0x0

    .line 1240
    .local v0, "acq_order":B
    const v5, 0x8001c

    .line 1241
    .local v5, "requestId":I
    iget v7, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    new-array v4, v7, [B

    .line 1242
    .local v4, "request":[B
    invoke-static {v4}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 1244
    .local v3, "reqBuffer":Ljava/nio/ByteBuffer;
    const/4 v7, 0x4

    invoke-direct {p0, v3, v5, v7}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 1245
    invoke-direct {p0, v5, v4, p1}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[BI)Landroid/os/AsyncResult;

    move-result-object v1

    .line 1247
    .local v1, "ar":Landroid/os/AsyncResult;
    iget-object v7, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v7, :cond_1

    .line 1248
    iget-object v7, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v7, :cond_0

    .line 1249
    iget-object v6, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, [B

    .line 1250
    .local v6, "result":[B
    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 1251
    .local v2, "byteBuf":Ljava/nio/ByteBuffer;
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 1252
    .local v0, "acq_order":B
    const-string/jumbo v7, "QC_RIL_OEM_HOOK"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "acq order is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1260
    .end local v0    # "acq_order":B
    .end local v2    # "byteBuf":Ljava/nio/ByteBuffer;
    .end local v6    # "result":[B
    :goto_0
    return v0

    .line 1254
    .local v0, "acq_order":B
    :cond_0
    const-string/jumbo v7, "QC_RIL_OEM_HOOK"

    const-string/jumbo v8, "no acq order result return"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1257
    :cond_1
    const-string/jumbo v7, "QC_RIL_OEM_HOOK"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "QCRIL set acq order cmd returned exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public qcRilGetPreferredNetworkBandPref(II)B
    .locals 10
    .param p1, "bandType"    # I
    .param p2, "phoneId"    # I

    .prologue
    .line 1450
    const/4 v1, 0x0

    .line 1451
    .local v1, "band_pref":B
    const v5, 0x80026

    .line 1452
    .local v5, "requestId":I
    iget v7, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    new-array v4, v7, [B

    .line 1453
    .local v4, "request":[B
    invoke-static {v4}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 1455
    .local v3, "reqBuffer":Ljava/nio/ByteBuffer;
    const/4 v7, 0x4

    invoke-direct {p0, v3, v5, v7}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 1456
    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1458
    invoke-direct {p0, v5, v4, p2}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[BI)Landroid/os/AsyncResult;

    move-result-object v0

    .line 1460
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v7, :cond_1

    .line 1461
    iget-object v7, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v7, :cond_0

    .line 1462
    iget-object v6, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, [B

    .line 1463
    .local v6, "result":[B
    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 1464
    .local v2, "byteBuf":Ljava/nio/ByteBuffer;
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    .line 1465
    .local v1, "band_pref":B
    const-string/jumbo v7, "QC_RIL_OEM_HOOK"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "band pref is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1473
    .end local v1    # "band_pref":B
    .end local v2    # "byteBuf":Ljava/nio/ByteBuffer;
    .end local v6    # "result":[B
    :goto_0
    return v1

    .line 1467
    .local v1, "band_pref":B
    :cond_0
    const-string/jumbo v7, "QC_RIL_OEM_HOOK"

    const-string/jumbo v8, "no band pref result return"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1470
    :cond_1
    const-string/jumbo v7, "QC_RIL_OEM_HOOK"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "QCRIL get band perf cmd returned exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public qcRilGetPrioritySubscription()I
    .locals 6

    .prologue
    .line 1045
    const/4 v2, 0x0

    .line 1046
    .local v2, "subscriptionIndex":I
    const v3, 0x80008

    invoke-virtual {p0, v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsg(I)Landroid/os/AsyncResult;

    move-result-object v0

    .line 1047
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_1

    .line 1048
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_0

    .line 1049
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [B

    .line 1050
    .local v1, "response":[B
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    .line 1051
    const-string/jumbo v3, "QC_RIL_OEM_HOOK"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "qcRilGetPrioritySubscription: subscriptionIndex "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1059
    .end local v1    # "response":[B
    :goto_0
    return v2

    .line 1054
    :cond_0
    const-string/jumbo v3, "QC_RIL_OEM_HOOK"

    const-string/jumbo v4, "qcRilGetPrioritySubscription: Null Response"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1057
    :cond_1
    const-string/jumbo v3, "QC_RIL_OEM_HOOK"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "qcRilGetPrioritySubscription: Exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public qcRilGetQcVersionOfFile(Ljava/lang/String;)[B
    .locals 7
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    const v5, 0x8002d

    const/4 v6, 0x0

    .line 470
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 471
    return-object v6

    .line 473
    :cond_0
    iget v3, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    add-int/2addr v3, v4

    new-array v2, v3, [B

    .line 474
    .local v2, "payload":[B
    invoke-static {v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 475
    .local v1, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    invoke-direct {p0, v1, v5, v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 476
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 478
    invoke-direct {p0, v5, v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;

    move-result-object v0

    .line 479
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_1

    .line 480
    const-string/jumbo v3, "QC_RIL_OEM_HOOK"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "QCRIL_EVT_HOOK_GET_QC_VERSION_OF_FILE failed w/ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 481
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 480
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    return-object v6

    .line 484
    :cond_1
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v3, :cond_2

    .line 485
    const-string/jumbo v3, "QC_RIL_OEM_HOOK"

    const-string/jumbo v4, "QCRIL_EVT_HOOK_GET_QC_VERSION_OF_FILE failed w/ null result"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    return-object v6

    .line 490
    :cond_2
    const-string/jumbo v4, "QC_RIL_OEM_HOOK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "QCRIL_EVT_HOOK_GET_QC_VERSION_OF_FILE returned w/ "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    return-object v3
.end method

.method public qcRilGetQcVersionOfID(Ljava/lang/String;)[B
    .locals 8
    .param p1, "configId"    # Ljava/lang/String;

    .prologue
    const v6, 0x8002f

    const/4 v7, 0x0

    .line 538
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x7c

    if-le v4, v5, :cond_1

    .line 539
    :cond_0
    const-string/jumbo v4, "QC_RIL_OEM_HOOK"

    const-string/jumbo v5, "invalid config id"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    return-object v7

    .line 543
    :cond_1
    iget v4, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    new-array v3, v4, [B

    .line 544
    .local v3, "payload":[B
    invoke-static {v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 546
    .local v1, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 545
    invoke-direct {p0, v1, v6, v4}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 548
    :try_start_0
    const-string/jumbo v4, "ISO-8859-1"

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 554
    invoke-direct {p0, v6, v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;

    move-result-object v0

    .line 555
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_2

    .line 556
    const-string/jumbo v4, "QC_RIL_OEM_HOOK"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "QCRIL_EVT_HOOK_GET_QC_VERSION_OF_ID failed w/ "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 557
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 556
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    return-object v7

    .line 549
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :catch_0
    move-exception v2

    .line 550
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v4, "QC_RIL_OEM_HOOK"

    const-string/jumbo v5, "unsupport ISO-8859-1"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    return-object v7

    .line 560
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    :cond_2
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v4, :cond_3

    .line 561
    const-string/jumbo v4, "QC_RIL_OEM_HOOK"

    const-string/jumbo v5, "QCRIL_EVT_HOOK_GET_QC_VERSION_OF_ID failed w/ null result"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    return-object v7

    .line 566
    :cond_3
    const-string/jumbo v5, "QC_RIL_OEM_HOOK"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "QCRIL_EVT_HOOK_GET_QC_VERSION_OF_ID returned w/ "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    return-object v4
.end method

.method public qcRilGetTuneAway()Z
    .locals 8

    .prologue
    .line 1003
    const/4 v3, 0x0

    .line 1005
    .local v3, "tuneAway":Z
    const v5, 0x80006

    invoke-virtual {p0, v5}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsg(I)Landroid/os/AsyncResult;

    move-result-object v0

    .line 1007
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_2

    .line 1008
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v5, :cond_1

    .line 1009
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    .line 1010
    .local v2, "response":[B
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1011
    .local v1, "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    .line 1012
    .local v4, "tuneAwayValue":B
    const-string/jumbo v5, "QC_RIL_OEM_HOOK"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "qcRilGetTuneAway: tuneAwayValue "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 1015
    const/4 v3, 0x1

    .line 1023
    .end local v1    # "byteBuffer":Ljava/nio/ByteBuffer;
    .end local v2    # "response":[B
    .end local v4    # "tuneAwayValue":B
    :cond_0
    :goto_0
    return v3

    .line 1018
    :cond_1
    const-string/jumbo v5, "QC_RIL_OEM_HOOK"

    const-string/jumbo v6, "qcRilGetTuneAway: Null Response"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1021
    :cond_2
    const-string/jumbo v5, "QC_RIL_OEM_HOOK"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "qcRilGetTuneAway: Exception "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public qcRilGoDormant(Ljava/lang/String;)Z
    .locals 5
    .param p1, "interfaceName"    # Ljava/lang/String;

    .prologue
    .line 911
    const/4 v1, 0x0

    .line 912
    .local v1, "retval":Z
    const v2, 0x80003

    invoke-virtual {p0, v2, p1}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsg(ILjava/lang/String;)Landroid/os/AsyncResult;

    move-result-object v0

    .line 914
    .local v0, "result":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 916
    const/4 v1, 0x1

    .line 921
    :goto_0
    return v1

    .line 918
    :cond_0
    const-string/jumbo v2, "QC_RIL_OEM_HOOK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Go Dormant Command returned Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public qcRilInformShutDown(I)Z
    .locals 5
    .param p1, "phoneId"    # I

    .prologue
    const/4 v4, 0x0

    .line 1063
    const-string/jumbo v1, "QC_RIL_OEM_HOOK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "QCRIL Inform shutdown for phoneId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    new-instance v0, Lcom/qualcomm/qcrilhook/QcRilHook$3;

    invoke-direct {v0, p0, v4}, Lcom/qualcomm/qcrilhook/QcRilHook$3;-><init>(Lcom/qualcomm/qcrilhook/QcRilHook;Landroid/os/Message;)V

    .line 1070
    .local v0, "oemHookCb":Lcom/qualcomm/qcrilhook/OemHookCallback;
    const v1, 0x8000a

    invoke-virtual {p0, v1, v4, v0, p1}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsgAsync(I[BLcom/qualcomm/qcrilhook/OemHookCallback;I)V

    .line 1072
    const/4 v1, 0x1

    return v1
.end method

.method public qcRilPerformIncrManualScan(I)Z
    .locals 7
    .param p1, "phoneId"    # I

    .prologue
    const v5, 0x80012

    .line 1154
    const/4 v3, 0x0

    .line 1155
    .local v3, "retval":Z
    iget v4, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    new-array v2, v4, [B

    .line 1157
    .local v2, "request":[B
    invoke-static {v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1159
    .local v1, "reqBuffer":Ljava/nio/ByteBuffer;
    invoke-direct {p0, v1, v5, p1}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 1161
    invoke-direct {p0, v5, v2, p1}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[BI)Landroid/os/AsyncResult;

    move-result-object v0

    .line 1164
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_0

    .line 1165
    const/4 v3, 0x1

    .line 1170
    :goto_0
    return v3

    .line 1167
    :cond_0
    const-string/jumbo v4, "QC_RIL_OEM_HOOK"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "QCRIL perform incr manual scan returned exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1168
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1167
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public qcRilSelectConfig(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "config"    # Ljava/lang/String;
    .param p2, "subMask"    # I

    .prologue
    .line 810
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->qcRilSelectConfig(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public qcRilSelectConfig(Ljava/lang/String;II)Z
    .locals 8
    .param p1, "config"    # Ljava/lang/String;
    .param p2, "subMask"    # I
    .param p3, "mbnType"    # I

    .prologue
    const v6, 0x80020

    const/4 v7, 0x0

    .line 825
    const/4 v3, 0x0

    .line 826
    .local v3, "payload":[B
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x7c

    if-gt v4, v5, :cond_0

    .line 828
    :try_start_0
    iget v4, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v4, v4, 0x4

    .line 829
    const-string/jumbo v5, "ISO-8859-1"

    invoke-virtual {p1, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    array-length v5, v5

    .line 828
    add-int/2addr v4, v5

    new-array v3, v4, [B

    .line 830
    .local v3, "payload":[B
    invoke-static {v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 832
    .local v1, "buf":Ljava/nio/ByteBuffer;
    const-string/jumbo v4, "ISO-8859-1"

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    array-length v4, v4

    .line 831
    add-int/lit8 v4, v4, 0x5

    const v5, 0x80020

    invoke-direct {p0, v1, v5, v4}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 833
    int-to-byte v4, p2

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 834
    invoke-virtual {v1, p3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 835
    const-string/jumbo v4, "ISO-8859-1"

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 841
    invoke-direct {p0, v6, v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;

    move-result-object v0

    .line 842
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_1

    .line 843
    const-string/jumbo v4, "QC_RIL_OEM_HOOK"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "QCRIL_EVT_HOOK_SEL_CONFIG failed w/ "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 844
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 843
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    return v7

    .line 836
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "buf":Ljava/nio/ByteBuffer;
    .end local v3    # "payload":[B
    :catch_0
    move-exception v2

    .line 837
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v4, "QC_RIL_OEM_HOOK"

    const-string/jumbo v5, "unsupport ISO-8859-1"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    return v7

    .line 848
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    .local v3, "payload":[B
    :cond_0
    const-string/jumbo v4, "QC_RIL_OEM_HOOK"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "select with incorrect config id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    return v7

    .line 851
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    .restart local v1    # "buf":Ljava/nio/ByteBuffer;
    .local v3, "payload":[B
    :cond_1
    const/4 v4, 0x1

    return v4
.end method

.method public qcRilSendApnInfo(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 8
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "apn"    # Ljava/lang/String;
    .param p3, "isValid"    # I
    .param p4, "phoneId"    # I

    .prologue
    const/4 v7, 0x0

    .line 1364
    const v4, 0x8002a

    .line 1365
    .local v4, "requestId":I
    new-instance v0, Lcom/qualcomm/qcrilhook/QcRilHook$6;

    const/4 v5, 0x0

    invoke-direct {v0, p0, v5}, Lcom/qualcomm/qcrilhook/QcRilHook$6;-><init>(Lcom/qualcomm/qcrilhook/QcRilHook;Landroid/os/Message;)V

    .line 1371
    .local v0, "oemHookCb":Lcom/qualcomm/qcrilhook/OemHookCallback;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0xc

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v1, v5, 0x2

    .line 1372
    .local v1, "payloadSize":I
    const/16 v5, 0x400

    if-le v1, v5, :cond_0

    .line 1373
    const-string/jumbo v5, "QC_RIL_OEM_HOOK"

    const-string/jumbo v6, "APN sent is larger than maximum buffer. Bail out"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1374
    return-void

    .line 1376
    :cond_0
    iget v5, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    add-int/2addr v5, v1

    new-array v3, v5, [B

    .line 1377
    .local v3, "request":[B
    invoke-static {v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 1378
    .local v2, "reqBuffer":Ljava/nio/ByteBuffer;
    invoke-direct {p0, v2, v4, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 1379
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1380
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1381
    invoke-virtual {v2, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1382
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1383
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1384
    invoke-virtual {v2, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1385
    invoke-virtual {v2, p3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1386
    invoke-direct {p0, v4, v3, v0, p4}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsgAsync(I[BLcom/qualcomm/qcrilhook/IOemHookCallback;I)V

    .line 1363
    return-void
.end method

.method public qcRilSendDDSInfo(II)Z
    .locals 8
    .param p1, "dds"    # I
    .param p2, "phoneId"    # I

    .prologue
    .line 1390
    const/4 v4, 0x0

    .line 1391
    .local v4, "retval":Z
    const v3, 0x80027

    .line 1392
    .local v3, "requestId":I
    iget v5, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    add-int/lit8 v5, v5, 0x4

    new-array v2, v5, [B

    .line 1393
    .local v2, "request":[B
    invoke-static {v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1395
    .local v1, "reqBuffer":Ljava/nio/ByteBuffer;
    const-string/jumbo v5, "QC_RIL_OEM_HOOK"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "dds phoneId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1396
    const/4 v5, 0x4

    invoke-direct {p0, v1, v3, v5}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 1397
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1399
    invoke-direct {p0, v3, v2, p2}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[BI)Landroid/os/AsyncResult;

    move-result-object v0

    .line 1400
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_0

    .line 1401
    const/4 v4, 0x1

    .line 1405
    :goto_0
    return v4

    .line 1403
    :cond_0
    const-string/jumbo v5, "QC_RIL_OEM_HOOK"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "QCRIL send dds sub info returned exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public qcRilSendDataEnableStatus(II)V
    .locals 5
    .param p1, "enable"    # I
    .param p2, "phoneId"    # I

    .prologue
    .line 1306
    const v3, 0x80028

    .line 1307
    .local v3, "requestId":I
    new-instance v0, Lcom/qualcomm/qcrilhook/QcRilHook$4;

    const/4 v4, 0x0

    invoke-direct {v0, p0, v4}, Lcom/qualcomm/qcrilhook/QcRilHook$4;-><init>(Lcom/qualcomm/qcrilhook/QcRilHook;Landroid/os/Message;)V

    .line 1313
    .local v0, "oemHookCb":Lcom/qualcomm/qcrilhook/OemHookCallback;
    iget v4, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    add-int/lit8 v4, v4, 0x4

    new-array v2, v4, [B

    .line 1314
    .local v2, "request":[B
    invoke-static {v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1315
    .local v1, "reqBuffer":Ljava/nio/ByteBuffer;
    const/4 v4, 0x4

    invoke-direct {p0, v1, v3, v4}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 1316
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1317
    invoke-direct {p0, v3, v2, v0, p2}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsgAsync(I[BLcom/qualcomm/qcrilhook/IOemHookCallback;I)V

    .line 1305
    return-void
.end method

.method public qcRilSendDataRoamingEnableStatus(II)V
    .locals 5
    .param p1, "enable"    # I
    .param p2, "phoneId"    # I

    .prologue
    .line 1331
    const v3, 0x80029

    .line 1332
    .local v3, "requestId":I
    new-instance v0, Lcom/qualcomm/qcrilhook/QcRilHook$5;

    const/4 v4, 0x0

    invoke-direct {v0, p0, v4}, Lcom/qualcomm/qcrilhook/QcRilHook$5;-><init>(Lcom/qualcomm/qcrilhook/QcRilHook;Landroid/os/Message;)V

    .line 1338
    .local v0, "oemHookCb":Lcom/qualcomm/qcrilhook/OemHookCallback;
    iget v4, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    add-int/lit8 v4, v4, 0x4

    new-array v2, v4, [B

    .line 1339
    .local v2, "request":[B
    invoke-static {v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1340
    .local v1, "reqBuffer":Ljava/nio/ByteBuffer;
    const/4 v4, 0x4

    invoke-direct {p0, v1, v3, v4}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 1341
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1342
    invoke-direct {p0, v3, v2, v0, p2}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsgAsync(I[BLcom/qualcomm/qcrilhook/IOemHookCallback;I)V

    .line 1330
    return-void
.end method

.method public qcRilSendProtocolBufferMessage([BI)[B
    .locals 5
    .param p1, "protocolBuffer"    # [B
    .param p2, "phoneId"    # I

    .prologue
    .line 966
    const/4 v1, 0x0

    .line 967
    .local v1, "returnValue":[B
    const-string/jumbo v2, "QC_RIL_OEM_HOOK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "qcRilSendProtoBufMessage: protocolBuffer"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    const v2, 0x80065

    invoke-virtual {p0, v2, p1, p2}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsg(I[BI)Landroid/os/AsyncResult;

    move-result-object v0

    .line 971
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    .line 972
    const-string/jumbo v2, "QC_RIL_OEM_HOOK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "qcRilSendProtoBufMessage: Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    return-object v1

    .line 975
    :cond_0
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v2, :cond_1

    .line 976
    const-string/jumbo v2, "QC_RIL_OEM_HOOK"

    const-string/jumbo v3, "QCRIL_EVT_HOOK_PROTOBUF_MSG returned null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    return-object v1

    .line 979
    :cond_1
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    return-object v2
.end method

.method public qcRilSetCdmaSubSrcWithSpc(ILjava/lang/String;)Z
    .locals 11
    .param p1, "cdmaSubscription"    # I
    .param p2, "spc"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    .line 925
    const/4 v5, 0x0

    .line 927
    .local v5, "retval":Z
    const-string/jumbo v7, "QC_RIL_OEM_HOOK"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "qcRilSetCdmaSubSrcWithSpc: Set Cdma Subscription to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x6

    if-gt v7, v8, :cond_4

    .line 931
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    new-array v3, v7, [B

    .line 936
    .local v3, "payload":[B
    invoke-static {v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 937
    .local v1, "buf":Ljava/nio/ByteBuffer;
    int-to-byte v7, p1

    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 938
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 940
    const v7, 0x8000b

    invoke-virtual {p0, v7, v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsg(I[B)Landroid/os/AsyncResult;

    move-result-object v0

    .line 942
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v7, :cond_3

    .line 943
    iget-object v7, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v7, :cond_0

    .line 944
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    .line 945
    .local v4, "result":[B
    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 946
    .local v2, "byteBuf":Ljava/nio/ByteBuffer;
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    .line 947
    .local v6, "succeed":B
    const-string/jumbo v8, "QC_RIL_OEM_HOOK"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "QCRIL Set Cdma Subscription Source Command "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 948
    if-ne v6, v10, :cond_1

    const-string/jumbo v7, "Succeed."

    .line 947
    :goto_0
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    if-ne v6, v10, :cond_2

    .line 950
    const/4 v5, 0x1

    .line 962
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "buf":Ljava/nio/ByteBuffer;
    .end local v2    # "byteBuf":Ljava/nio/ByteBuffer;
    .end local v3    # "payload":[B
    .end local v4    # "result":[B
    .end local v6    # "succeed":B
    :cond_0
    :goto_1
    return v5

    .line 948
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    .restart local v1    # "buf":Ljava/nio/ByteBuffer;
    .restart local v2    # "byteBuf":Ljava/nio/ByteBuffer;
    .restart local v3    # "payload":[B
    .restart local v4    # "result":[B
    .restart local v6    # "succeed":B
    :cond_1
    const-string/jumbo v7, "Failed."

    goto :goto_0

    .line 952
    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    .line 956
    .end local v2    # "byteBuf":Ljava/nio/ByteBuffer;
    .end local v4    # "result":[B
    .end local v6    # "succeed":B
    :cond_3
    const-string/jumbo v7, "QC_RIL_OEM_HOOK"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "QCRIL Set Cdma Subscription Source Command returned Exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 957
    iget-object v9, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 956
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 960
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "buf":Ljava/nio/ByteBuffer;
    .end local v3    # "payload":[B
    :cond_4
    const-string/jumbo v7, "QC_RIL_OEM_HOOK"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "QCRIL Set Cdma Subscription Source Command incorrect SPC: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public qcRilSetConfig(Ljava/lang/String;)Z
    .locals 1
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    .line 442
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p1, v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->qcRilSetConfig(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public qcRilSetConfig(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "subMask"    # I

    .prologue
    .line 457
    invoke-virtual {p0, p1, p1, p2}, Lcom/qualcomm/qcrilhook/QcRilHook;->qcRilSetConfig(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public qcRilSetConfig(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "config"    # Ljava/lang/String;
    .param p3, "subMask"    # I

    .prologue
    .line 377
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->qcRilSetConfig(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public qcRilSetConfig(Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 8
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "config"    # Ljava/lang/String;
    .param p3, "subMask"    # I
    .param p4, "mbnType"    # I

    .prologue
    const v6, 0x80015

    const/4 v7, 0x0

    .line 394
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x7c

    if-gt v4, v5, :cond_0

    .line 395
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 424
    :cond_0
    const-string/jumbo v4, "QC_RIL_OEM_HOOK"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "set with incorrect config id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    return v7

    .line 396
    :cond_1
    iget v4, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    add-int/lit8 v4, v4, 0x3

    add-int/lit8 v4, v4, 0x4

    .line 397
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 396
    add-int/2addr v4, v5

    .line 397
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    .line 396
    add-int/2addr v4, v5

    new-array v3, v4, [B

    .line 398
    .local v3, "payload":[B
    invoke-static {v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 404
    .local v1, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x7

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    .line 403
    invoke-direct {p0, v1, v6, v4}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 405
    int-to-byte v4, p3

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 406
    invoke-virtual {v1, p4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 407
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 408
    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 410
    :try_start_0
    const-string/jumbo v4, "ISO-8859-1"

    invoke-virtual {p2, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 415
    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 417
    invoke-direct {p0, v6, v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;

    move-result-object v0

    .line 418
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_2

    .line 419
    const-string/jumbo v4, "QC_RIL_OEM_HOOK"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "QCRIL_EVT_HOOK_SET_CONFIG failed w/ "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 420
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 419
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    return v7

    .line 411
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :catch_0
    move-exception v2

    .line 412
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v4, "QC_RIL_OEM_HOOK"

    const-string/jumbo v5, "unsupport ISO-8859-1"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    return v7

    .line 428
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    :cond_2
    const/4 v4, 0x1

    return v4
.end method

.method public qcRilSetFieldTestMode(IBI)Z
    .locals 8
    .param p1, "phoneId"    # I
    .param p2, "ratType"    # B
    .param p3, "enable"    # I

    .prologue
    const v7, 0x80013

    .line 1089
    const/4 v3, 0x0

    .line 1091
    .local v3, "retval":Z
    iget v4, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    add-int/lit8 v4, v4, 0x8

    new-array v2, v4, [B

    .line 1092
    .local v2, "request":[B
    invoke-static {v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1094
    .local v1, "reqBuffer":Ljava/nio/ByteBuffer;
    const/4 v4, 0x0

    invoke-direct {p0, v1, v7, v4}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 1095
    invoke-virtual {v1, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1096
    invoke-virtual {v1, p3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1097
    const-string/jumbo v4, "QC_RIL_OEM_HOOK"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "enable = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "ratType ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    invoke-direct {p0, v7, v2, p1}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[BI)Landroid/os/AsyncResult;

    move-result-object v0

    .line 1100
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_0

    .line 1101
    const/4 v3, 0x1

    .line 1106
    :goto_0
    return v3

    .line 1103
    :cond_0
    const-string/jumbo v4, "QC_RIL_OEM_HOOK"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "QCRIL enable engineer mode cmd returned exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1104
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1103
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public qcRilSetLteTuneaway(II)Z
    .locals 8
    .param p1, "enable"    # I
    .param p2, "phoneId"    # I

    .prologue
    .line 1275
    const/4 v4, 0x0

    .line 1276
    .local v4, "retval":Z
    const v3, 0x8002b

    .line 1277
    .local v3, "requestId":I
    iget v5, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    add-int/lit8 v5, v5, 0x4

    new-array v2, v5, [B

    .line 1278
    .local v2, "request":[B
    invoke-static {v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1281
    .local v1, "reqBuffer":Ljava/nio/ByteBuffer;
    const-string/jumbo v5, "QC_RIL_OEM_HOOK"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "qcRilSetLteTuneaway enable :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1282
    const/4 v5, 0x4

    invoke-direct {p0, v1, v3, v5}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 1283
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1285
    invoke-direct {p0, v3, v2, p2}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[BI)Landroid/os/AsyncResult;

    move-result-object v0

    .line 1286
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_0

    .line 1287
    const/4 v4, 0x1

    .line 1292
    :goto_0
    return v4

    .line 1289
    :cond_0
    const-string/jumbo v5, "QC_RIL_OEM_HOOK"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "QCRIL set lte tune away returned exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public qcRilSetPreferredNetworkAcqOrder(II)Z
    .locals 8
    .param p1, "acqOrder"    # I
    .param p2, "phoneId"    # I

    .prologue
    .line 1209
    const/4 v4, 0x0

    .line 1210
    .local v4, "retval":Z
    const v3, 0x8001b

    .line 1211
    .local v3, "requestId":I
    iget v5, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    add-int/lit8 v5, v5, 0x4

    new-array v2, v5, [B

    .line 1212
    .local v2, "request":[B
    invoke-static {v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1215
    .local v1, "reqBuffer":Ljava/nio/ByteBuffer;
    const-string/jumbo v5, "QC_RIL_OEM_HOOK"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "acq order: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    const/4 v5, 0x4

    invoke-direct {p0, v1, v3, v5}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 1217
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1219
    invoke-direct {p0, v3, v2, p2}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[BI)Landroid/os/AsyncResult;

    move-result-object v0

    .line 1220
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_0

    .line 1221
    const/4 v4, 0x1

    .line 1226
    :goto_0
    return v4

    .line 1223
    :cond_0
    const-string/jumbo v5, "QC_RIL_OEM_HOOK"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "QCRIL set acq order cmd returned exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public qcRilSetPreferredNetworkBandPref(II)Z
    .locals 8
    .param p1, "bandPref"    # I
    .param p2, "phoneId"    # I

    .prologue
    .line 1419
    const/4 v4, 0x0

    .line 1420
    .local v4, "retval":Z
    const v3, 0x80025

    .line 1421
    .local v3, "requestId":I
    iget v5, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    add-int/lit8 v5, v5, 0x4

    new-array v2, v5, [B

    .line 1422
    .local v2, "request":[B
    invoke-static {v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1425
    .local v1, "reqBuffer":Ljava/nio/ByteBuffer;
    const-string/jumbo v5, "QC_RIL_OEM_HOOK"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "band pref: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1426
    const/4 v5, 0x4

    invoke-direct {p0, v1, v3, v5}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 1427
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1429
    invoke-direct {p0, v3, v2, p2}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[BI)Landroid/os/AsyncResult;

    move-result-object v0

    .line 1430
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_0

    .line 1431
    const/4 v4, 0x1

    .line 1436
    :goto_0
    return v4

    .line 1433
    :cond_0
    const-string/jumbo v5, "QC_RIL_OEM_HOOK"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "QCRIL set band pref cmd returned exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public qcRilSetPrioritySubscription(I)Z
    .locals 6
    .param p1, "priorityIndex"    # I

    .prologue
    .line 1027
    const/4 v2, 0x0

    .line 1028
    .local v2, "returnValue":Z
    const-string/jumbo v3, "QC_RIL_OEM_HOOK"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "qcRilSetPrioritySubscription: PrioritySubscription to be set to"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    int-to-byte v1, p1

    .line 1032
    .local v1, "payload":B
    const-string/jumbo v3, "QC_RIL_OEM_HOOK"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "qcRilSetPrioritySubscription: PrioritySubscription payload "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    const v3, 0x80007

    invoke-virtual {p0, v3, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsg(IB)Landroid/os/AsyncResult;

    move-result-object v0

    .line 1036
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_0

    .line 1037
    const/4 v2, 0x1

    .line 1041
    :goto_0
    return v2

    .line 1039
    :cond_0
    const-string/jumbo v3, "QC_RIL_OEM_HOOK"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "qcRilSetPrioritySubscription: Exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public qcRilSetTuneAway(Z)Z
    .locals 6
    .param p1, "tuneAway"    # Z

    .prologue
    .line 983
    const/4 v2, 0x0

    .line 984
    .local v2, "returnValue":Z
    const-string/jumbo v3, "QC_RIL_OEM_HOOK"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "qcRilSetTuneAway: tuneAway Value to be set to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    const/4 v1, 0x0

    .line 987
    .local v1, "payload":B
    if-eqz p1, :cond_0

    .line 988
    const/4 v1, 0x1

    .line 990
    :cond_0
    const-string/jumbo v3, "QC_RIL_OEM_HOOK"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "qcRilSetTuneAway: tuneAway payload "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    const v3, 0x80005

    invoke-virtual {p0, v3, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsg(IB)Landroid/os/AsyncResult;

    move-result-object v0

    .line 994
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_1

    .line 995
    const/4 v2, 0x1

    .line 999
    :goto_0
    return v2

    .line 997
    :cond_1
    const-string/jumbo v3, "QC_RIL_OEM_HOOK"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "qcRilSetTuneAway: Exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public qcRilValidateConfig(Ljava/lang/String;I)Z
    .locals 8
    .param p1, "configId"    # Ljava/lang/String;
    .param p2, "phoneId"    # I

    .prologue
    const/4 v7, 0x0

    .line 663
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x7c

    if-le v4, v5, :cond_1

    .line 664
    :cond_0
    const-string/jumbo v4, "QC_RIL_OEM_HOOK"

    const-string/jumbo v5, "invalid config id"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    return v7

    .line 667
    :cond_1
    iget v4, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    new-array v3, v4, [B

    .line 668
    .local v3, "payload":[B
    invoke-static {v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 670
    .local v1, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    .line 669
    const v5, 0x8002e

    invoke-direct {p0, v1, v5, v4}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 671
    int-to-byte v4, p2

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 673
    :try_start_0
    const-string/jumbo v4, "ISO-8859-1"

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 678
    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 680
    const v4, 0x80021

    invoke-direct {p0, v4, v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;

    move-result-object v0

    .line 681
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_2

    .line 682
    const-string/jumbo v4, "QC_RIL_OEM_HOOK"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "QCRIL_EVT_HOOK_VALIDATE_CONFIG failed w/ "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 683
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 682
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    return v7

    .line 674
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :catch_0
    move-exception v2

    .line 675
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v4, "QC_RIL_OEM_HOOK"

    const-string/jumbo v5, "unsupport ISO-8859-1"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    return v7

    .line 686
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    :cond_2
    const/4 v4, 0x1

    return v4
.end method

.method public qcrilSetBuiltInPLMNList([BI)Z
    .locals 7
    .param p1, "payload"    # [B
    .param p2, "phoneId"    # I

    .prologue
    const v6, 0x80011

    .line 1174
    const/4 v3, 0x0

    .line 1175
    .local v3, "retval":Z
    if-nez p1, :cond_0

    .line 1176
    const-string/jumbo v4, "QC_RIL_OEM_HOOK"

    const-string/jumbo v5, "payload is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1177
    const/4 v4, 0x0

    return v4

    .line 1180
    :cond_0
    iget v4, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    array-length v5, p1

    add-int/2addr v4, v5

    new-array v2, v4, [B

    .line 1181
    .local v2, "request":[B
    invoke-static {v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1184
    .local v1, "reqBuffer":Ljava/nio/ByteBuffer;
    array-length v4, p1

    .line 1183
    invoke-direct {p0, v1, v6, v4}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 1185
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1187
    invoke-direct {p0, v6, v2, p2}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[BI)Landroid/os/AsyncResult;

    move-result-object v0

    .line 1189
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_1

    .line 1190
    const/4 v3, 0x1

    .line 1195
    :goto_0
    return v3

    .line 1192
    :cond_1
    const-string/jumbo v4, "QC_RIL_OEM_HOOK"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "QCRIL set builtin PLMN list returned exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1193
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1192
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public registerForExtendedDbmIntl(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1575
    return-void
.end method

.method public registerForFieldTestData(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1565
    return-void
.end method

.method public sendQcRilHookMsg(I)Landroid/os/AsyncResult;
    .locals 3
    .param p1, "requestId"    # I

    .prologue
    .line 1477
    iget v2, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    new-array v1, v2, [B

    .line 1478
    .local v1, "request":[B
    invoke-static {v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1480
    .local v0, "reqBuffer":Ljava/nio/ByteBuffer;
    const/4 v2, 0x0

    invoke-direct {p0, v0, p1, v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 1482
    invoke-direct {p0, p1, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;

    move-result-object v2

    return-object v2
.end method

.method public sendQcRilHookMsg(IB)Landroid/os/AsyncResult;
    .locals 1
    .param p1, "requestId"    # I
    .param p2, "payload"    # B

    .prologue
    .line 1486
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsg(IBI)Landroid/os/AsyncResult;

    move-result-object v0

    return-object v0
.end method

.method public sendQcRilHookMsg(IBI)Landroid/os/AsyncResult;
    .locals 3
    .param p1, "requestId"    # I
    .param p2, "payload"    # B
    .param p3, "phoneId"    # I

    .prologue
    .line 1489
    iget v2, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    add-int/lit8 v2, v2, 0x1

    new-array v1, v2, [B

    .line 1490
    .local v1, "request":[B
    invoke-static {v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1492
    .local v0, "reqBuffer":Ljava/nio/ByteBuffer;
    const/4 v2, 0x1

    invoke-direct {p0, v0, p1, v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 1493
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1495
    invoke-direct {p0, p1, v1, p3}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[BI)Landroid/os/AsyncResult;

    move-result-object v2

    return-object v2
.end method

.method public sendQcRilHookMsg(II)Landroid/os/AsyncResult;
    .locals 3
    .param p1, "requestId"    # I
    .param p2, "payload"    # I

    .prologue
    .line 1512
    iget v2, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    add-int/lit8 v2, v2, 0x4

    new-array v1, v2, [B

    .line 1513
    .local v1, "request":[B
    invoke-static {v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1515
    .local v0, "reqBuffer":Ljava/nio/ByteBuffer;
    const/4 v2, 0x4

    invoke-direct {p0, v0, p1, v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 1516
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1518
    invoke-direct {p0, p1, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;

    move-result-object v2

    return-object v2
.end method

.method public sendQcRilHookMsg(ILjava/lang/String;)Landroid/os/AsyncResult;
    .locals 4
    .param p1, "requestId"    # I
    .param p2, "payload"    # Ljava/lang/String;

    .prologue
    .line 1522
    iget v2, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-array v1, v2, [B

    .line 1523
    .local v1, "request":[B
    invoke-static {v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1525
    .local v0, "reqBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {p0, v0, p1, v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 1526
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1528
    invoke-direct {p0, p1, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;

    move-result-object v2

    return-object v2
.end method

.method public sendQcRilHookMsg(I[B)Landroid/os/AsyncResult;
    .locals 1
    .param p1, "requestId"    # I
    .param p2, "payload"    # [B

    .prologue
    .line 1499
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsg(I[BI)Landroid/os/AsyncResult;

    move-result-object v0

    return-object v0
.end method

.method public sendQcRilHookMsg(I[BI)Landroid/os/AsyncResult;
    .locals 4
    .param p1, "requestId"    # I
    .param p2, "payload"    # [B
    .param p3, "phoneId"    # I

    .prologue
    .line 1502
    iget v2, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    array-length v3, p2

    add-int/2addr v2, v3

    new-array v1, v2, [B

    .line 1503
    .local v1, "request":[B
    invoke-static {v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1505
    .local v0, "reqBuffer":Ljava/nio/ByteBuffer;
    array-length v2, p2

    invoke-direct {p0, v0, p1, v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 1506
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1508
    invoke-direct {p0, p1, v1, p3}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[BI)Landroid/os/AsyncResult;

    move-result-object v2

    return-object v2
.end method

.method public sendQcRilHookMsgAsync(I[BLcom/qualcomm/qcrilhook/OemHookCallback;)V
    .locals 1
    .param p1, "requestId"    # I
    .param p2, "payload"    # [B
    .param p3, "oemHookCb"    # Lcom/qualcomm/qcrilhook/OemHookCallback;

    .prologue
    .line 1532
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsgAsync(I[BLcom/qualcomm/qcrilhook/OemHookCallback;I)V

    .line 1531
    return-void
.end method

.method public sendQcRilHookMsgAsync(I[BLcom/qualcomm/qcrilhook/OemHookCallback;I)V
    .locals 4
    .param p1, "requestId"    # I
    .param p2, "payload"    # [B
    .param p3, "oemHookCb"    # Lcom/qualcomm/qcrilhook/OemHookCallback;
    .param p4, "phoneId"    # I

    .prologue
    .line 1537
    const/4 v0, 0x0

    .line 1538
    .local v0, "payloadLength":I
    if-eqz p2, :cond_0

    .line 1539
    array-length v0, p2

    .line 1542
    :cond_0
    iget v3, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    add-int/2addr v3, v0

    new-array v2, v3, [B

    .line 1543
    .local v2, "request":[B
    invoke-static {v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1545
    .local v1, "reqBuffer":Ljava/nio/ByteBuffer;
    invoke-direct {p0, v1, p1, v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 1546
    if-eqz p2, :cond_1

    .line 1547
    invoke-virtual {v1, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1549
    :cond_1
    invoke-direct {p0, p1, v2, p3, p4}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsgAsync(I[BLcom/qualcomm/qcrilhook/IOemHookCallback;I)V

    .line 1536
    return-void
.end method

.method public unregisterForExtendedDbmIntl(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1580
    return-void
.end method

.method public unregisterForFieldTestData(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1570
    return-void
.end method

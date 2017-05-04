.class public abstract Lcom/android/internal/telephony/InboundSmsHandler;
.super Lcom/android/internal/util/StateMachine;
.source "InboundSmsHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;,
        Lcom/android/internal/telephony/InboundSmsHandler$StartupState;,
        Lcom/android/internal/telephony/InboundSmsHandler$IdleState;,
        Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;,
        Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;,
        Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;,
        Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;,
        Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;
    }
.end annotation


# static fields
.field static final ADDRESS_COLUMN:I = 0x6

.field private static final BLOCK_RECORD_CONTENT:Ljava/lang/String; = "content"

.field private static final BLOCK_RECORD_NUMBER:Ljava/lang/String; = "number"

.field static final COUNT_COLUMN:I = 0x5

.field static final DATE_COLUMN:I = 0x3

.field protected static final DBG:Z = true

.field static final DESTINATION_PORT_COLUMN:I = 0x2

.field static final EVENT_BROADCAST_COMPLETE:I = 0x3

.field static final EVENT_BROADCAST_SMS:I = 0x2

.field public static final EVENT_INJECT_SMS:I = 0x8

.field public static final EVENT_NEW_SMS:I = 0x1

.field static final EVENT_RELEASE_WAKELOCK:I = 0x5

.field static final EVENT_RETURN_TO_IDLE:I = 0x4

.field static final EVENT_START_ACCEPTING_SMS:I = 0x6

.field static final EVENT_UPDATE_PHONE_OBJECT:I = 0x7

.field static final EVENT_WAKE_LOCK_TIMEOUT:I = 0x9

.field private static final EXTRA_NUMBER:Ljava/lang/String; = "phonenumber"

.field private static final FIREWALL_PROVIDER_URI:Landroid/net/Uri;

.field static final ID_COLUMN:I = 0x7

.field private static final IS_FORBIDDEN:Ljava/lang/String; = "isForbidden"

.field private static final MMS_BLOCK_RECORD_INTENT:Ljava/lang/String; = "com.android.firewall.ADD_MMS_BLOCK_RECORD"

.field static final PDU_COLUMN:I = 0x0

.field private static final PDU_PROJECTION:[Ljava/lang/String;

.field private static final PDU_SEQUENCE_PORT_PROJECTION:[Ljava/lang/String;

.field static final REFERENCE_NUMBER_COLUMN:I = 0x4

.field static final SELECT_BY_ID:Ljava/lang/String; = "_id=?"

.field static final SELECT_BY_REFERENCE:Ljava/lang/String; = "address=? AND reference_number=? AND count=?"

.field static final SEQUENCE_COLUMN:I = 0x1

.field private static final SMS_BLOCK_RECORD_INTENT:Ljava/lang/String; = "com.android.firewall.ADD_SMS_BLOCK_RECORD"

.field private static final VDBG:Z = false

.field private static final WAKELOCK_TIMEOUT:I = 0xbb8

.field private static final sRawUri:Landroid/net/Uri;


# instance fields
.field protected mCellBroadcastHandler:Lcom/android/internal/telephony/CellBroadcastHandler;

.field protected final mContext:Landroid/content/Context;

.field final mDefaultState:Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;

.field final mDeliveringState:Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;

.field mDeviceIdleController:Landroid/os/IDeviceIdleController;

.field final mIdleState:Lcom/android/internal/telephony/InboundSmsHandler$IdleState;

.field protected mPhone:Lcom/android/internal/telephony/PhoneBase;

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mSmsReceiveDisabled:Z

.field final mStartupState:Lcom/android/internal/telephony/InboundSmsHandler$StartupState;

.field protected mStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

.field private mUserManager:Landroid/os/UserManager;

.field final mWaitingState:Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;

.field final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field mWakeLockCount:I

.field private final mWapPush:Lcom/android/internal/telephony/WapPushOverSms;


# direct methods
.method static synthetic -wrap0(Lcom/android/internal/telephony/InboundSmsHandler;)Lcom/android/internal/util/IState;
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/internal/telephony/InboundSmsHandler;Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/internal/telephony/InboundSmsHandler;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->logv(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p1, "destState"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 106
    new-array v0, v3, [Ljava/lang/String;

    .line 107
    const-string/jumbo v1, "pdu"

    aput-object v1, v0, v2

    .line 106
    sput-object v0, Lcom/android/internal/telephony/InboundSmsHandler;->PDU_PROJECTION:[Ljava/lang/String;

    .line 111
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 112
    const-string/jumbo v1, "pdu"

    aput-object v1, v0, v2

    .line 113
    const-string/jumbo v1, "sequence"

    aput-object v1, v0, v3

    .line 114
    const-string/jumbo v1, "destination_port"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 111
    sput-object v0, Lcom/android/internal/telephony/InboundSmsHandler;->PDU_SEQUENCE_PORT_PROJECTION:[Ljava/lang/String;

    .line 160
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "raw"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/InboundSmsHandler;->sRawUri:Landroid/net/Uri;

    .line 204
    const-string/jumbo v0, "content://com.android.firewall"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/InboundSmsHandler;->FIREWALL_PROVIDER_URI:Landroid/net/Uri;

    .line 101
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/CellBroadcastHandler;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "storageMonitor"    # Lcom/android/internal/telephony/SmsStorageMonitor;
    .param p4, "phone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p5, "cellBroadcastHandler"    # Lcom/android/internal/telephony/CellBroadcastHandler;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 223
    invoke-direct {p0, p1}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    .line 172
    iput v3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWakeLockCount:I

    .line 175
    new-instance v2, Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;)V

    iput-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDefaultState:Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;

    .line 178
    new-instance v2, Lcom/android/internal/telephony/InboundSmsHandler$StartupState;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/InboundSmsHandler$StartupState;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;)V

    iput-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mStartupState:Lcom/android/internal/telephony/InboundSmsHandler$StartupState;

    .line 181
    new-instance v2, Lcom/android/internal/telephony/InboundSmsHandler$IdleState;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/InboundSmsHandler$IdleState;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;)V

    iput-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mIdleState:Lcom/android/internal/telephony/InboundSmsHandler$IdleState;

    .line 184
    new-instance v2, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;)V

    iput-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDeliveringState:Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;

    .line 187
    new-instance v2, Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;)V

    iput-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWaitingState:Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;

    .line 225
    iput-object p2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    .line 226
    iput-object p3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    .line 227
    iput-object p4, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 228
    iput-object p5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mCellBroadcastHandler:Lcom/android/internal/telephony/CellBroadcastHandler;

    .line 229
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    .line 230
    new-instance v2, Lcom/android/internal/telephony/WapPushOverSms;

    invoke-direct {v2, p2}, Lcom/android/internal/telephony/WapPushOverSms;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    .line 232
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 233
    const v5, 0x112005c

    .line 232
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 234
    .local v1, "smsCapable":Z
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    .line 235
    iget-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v5

    .line 234
    invoke-virtual {v2, v5, v1}, Landroid/telephony/TelephonyManager;->getSmsReceiveCapableForPhone(IZ)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mSmsReceiveDisabled:Z

    .line 237
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "power"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 238
    .local v0, "pm":Landroid/os/PowerManager;
    invoke-virtual {v0, v4, p1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 239
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 240
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->acquireWakeLock()V

    .line 241
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "user"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    iput-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mUserManager:Landroid/os/UserManager;

    .line 243
    const-string/jumbo v2, "deviceidle"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 242
    invoke-static {v2}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    .line 245
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDefaultState:Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->addState(Lcom/android/internal/util/State;)V

    .line 246
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mStartupState:Lcom/android/internal/telephony/InboundSmsHandler$StartupState;

    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDefaultState:Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 247
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mIdleState:Lcom/android/internal/telephony/InboundSmsHandler$IdleState;

    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDefaultState:Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 248
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDeliveringState:Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;

    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDefaultState:Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 249
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWaitingState:Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;

    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDeliveringState:Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 251
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mStartupState:Lcom/android/internal/telephony/InboundSmsHandler$StartupState;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->setInitialState(Lcom/android/internal/util/State;)V

    .line 252
    const-string/jumbo v2, "created InboundSmsHandler"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 222
    return-void

    .end local v0    # "pm":Landroid/os/PowerManager;
    :cond_0
    move v2, v4

    .line 234
    goto :goto_0
.end method

.method private addTrackerToRawTable(Lcom/android/internal/telephony/InboundSmsTracker;)I
    .locals 24
    .param p1, "tracker"    # Lcom/android/internal/telephony/InboundSmsTracker;

    .prologue
    .line 1044
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    .line 1046
    const/4 v10, 0x0

    .line 1049
    .local v10, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getSequenceNumber()I

    move-result v22

    .line 1052
    .local v22, "sequence":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getAddress()Ljava/lang/String;

    move-result-object v8

    .line 1053
    .local v8, "address":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getReferenceNumber()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    .line 1054
    .local v18, "refNumber":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    .line 1056
    .local v9, "count":Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    .line 1059
    .local v19, "seqNumber":Ljava/lang/String;
    const/4 v2, 0x3

    new-array v11, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v8, v11, v2

    const/4 v2, 0x1

    aput-object v18, v11, v2

    const/4 v2, 0x2

    aput-object v9, v11, v2

    .line 1060
    .local v11, "deleteWhereArgs":[Ljava/lang/String;
    const-string/jumbo v2, "address=? AND reference_number=? AND count=?"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v11}, Lcom/android/internal/telephony/InboundSmsTracker;->setDeleteWhere(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1063
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/internal/telephony/InboundSmsHandler;->sRawUri:Landroid/net/Uri;

    sget-object v4, Lcom/android/internal/telephony/InboundSmsHandler;->PDU_PROJECTION:[Ljava/lang/String;

    .line 1064
    const-string/jumbo v5, "address=? AND reference_number=? AND count=? AND sequence=?"

    .line 1065
    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v18, v6, v7

    const/4 v7, 0x2

    aput-object v9, v6, v7

    const/4 v7, 0x3

    aput-object v19, v6, v7

    const/4 v7, 0x0

    .line 1063
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1068
    .local v10, "cursor":Landroid/database/Cursor;
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1069
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Discarding duplicate message segment, refNumber="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1070
    const-string/jumbo v3, " seqNumber="

    .line 1069
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    .line 1071
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 1072
    .local v16, "oldPduString":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getPdu()[B

    move-result-object v17

    .line 1073
    .local v17, "pdu":[B
    invoke-static/range {v16 .. v16}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v15

    .line 1074
    .local v15, "oldPdu":[B
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getPdu()[B

    move-result-object v2

    invoke-static {v15, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1075
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Warning: dup message segment PDU of length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v17

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1076
    const-string/jumbo v3, " is different from existing PDU of length "

    .line 1075
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1076
    array-length v3, v15

    .line 1075
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1078
    :cond_0
    const/4 v2, 0x5

    .line 1085
    if-eqz v10, :cond_1

    .line 1086
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1078
    :cond_1
    return v2

    .line 1080
    .end local v15    # "oldPdu":[B
    .end local v16    # "oldPduString":Ljava/lang/String;
    .end local v17    # "pdu":[B
    :cond_2
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1085
    if-eqz v10, :cond_3

    .line 1086
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1091
    .end local v8    # "address":Ljava/lang/String;
    .end local v9    # "count":Ljava/lang/String;
    .end local v10    # "cursor":Landroid/database/Cursor;
    .end local v11    # "deleteWhereArgs":[Ljava/lang/String;
    .end local v18    # "refNumber":Ljava/lang/String;
    .end local v19    # "seqNumber":Ljava/lang/String;
    .end local v22    # "sequence":I
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getContentValues()Landroid/content/ContentValues;

    move-result-object v23

    .line 1094
    .local v23, "values":Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/internal/telephony/InboundSmsHandler;->sRawUri:Landroid/net/Uri;

    move-object/from16 v0, v23

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v14

    .line 1095
    .local v14, "newUri":Landroid/net/Uri;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "URI of new row -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1098
    :try_start_2
    invoke-static {v14}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v20

    .line 1099
    .local v20, "rowId":J
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 1101
    const-string/jumbo v2, "_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/InboundSmsTracker;->setDeleteWhere(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1103
    :cond_4
    const/4 v2, 0x1

    return v2

    .line 1081
    .end local v14    # "newUri":Landroid/net/Uri;
    .end local v20    # "rowId":J
    .end local v23    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v12

    .line 1082
    .local v12, "e":Landroid/database/SQLException;
    :try_start_3
    const-string/jumbo v2, "Can\'t access multipart SMS database"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v12}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1083
    const/4 v2, 0x2

    .line 1085
    if-eqz v10, :cond_5

    .line 1086
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1083
    :cond_5
    return v2

    .line 1084
    .end local v12    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v2

    .line 1085
    if-eqz v10, :cond_6

    .line 1086
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1084
    :cond_6
    throw v2

    .line 1104
    .restart local v14    # "newUri":Landroid/net/Uri;
    .restart local v23    # "values":Landroid/content/ContentValues;
    :catch_1
    move-exception v13

    .line 1105
    .local v13, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "error parsing URI for new row: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v13}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1106
    const/4 v2, 0x2

    return v2
.end method

.method private static buildMessageBodyFromPdus([Landroid/telephony/SmsMessage;)Ljava/lang/String;
    .locals 5
    .param p0, "msgs"    # [Landroid/telephony/SmsMessage;

    .prologue
    const/4 v2, 0x0

    .line 1413
    array-length v3, p0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1415
    aget-object v2, p0, v2

    invoke-virtual {v2}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/InboundSmsHandler;->replaceFormFeeds(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1418
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1419
    .local v0, "body":Ljava/lang/StringBuilder;
    array-length v3, p0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, p0, v2

    .line 1421
    .local v1, "msg":Landroid/telephony/SmsMessage;
    invoke-virtual {v1}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1419
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1423
    .end local v1    # "msg":Landroid/telephony/SmsMessage;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/InboundSmsHandler;->replaceFormFeeds(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getSystemAppForIntent(Landroid/content/Intent;)Ljava/util/List;
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 881
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 882
    .local v5, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 883
    .local v3, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v3, p1, v8}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 884
    .local v6, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const-string/jumbo v0, "android.permission.CARRIER_FILTER_SMS"

    .line 886
    .local v0, "carrierFilterSmsPerm":Ljava/lang/String;
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "info$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 887
    .local v1, "info":Landroid/content/pm/ResolveInfo;
    iget-object v7, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v7, :cond_1

    .line 888
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Can\'t get service information from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 891
    :cond_1
    iget-object v7, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 892
    .local v4, "packageName":Ljava/lang/String;
    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_0

    .line 894
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 895
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getSystemAppForIntent: added package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 898
    .end local v1    # "info":Landroid/content/pm/ResolveInfo;
    .end local v4    # "packageName":Ljava/lang/String;
    :cond_2
    return-object v5
.end method

.method private isBlockedByFirewall(Ljava/lang/String;)Z
    .locals 6
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 1485
    const/4 v2, 0x0

    .line 1487
    .local v2, "isForbidden":Z
    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1488
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v3, Lcom/android/internal/telephony/InboundSmsHandler;->FIREWALL_PROVIDER_URI:Landroid/net/Uri;

    invoke-virtual {v0, v3}, Landroid/content/ContentResolver;->acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    move-result-object v3

    if-eqz v3, :cond_0

    if-eqz p1, :cond_0

    .line 1489
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1490
    .local v1, "extras":Landroid/os/Bundle;
    const-string/jumbo v3, "phonenumber"

    invoke-virtual {v1, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1491
    const-string/jumbo v3, "subscription"

    iget-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getSubId()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1492
    sget-object v3, Lcom/android/internal/telephony/InboundSmsHandler;->FIREWALL_PROVIDER_URI:Landroid/net/Uri;

    const-string/jumbo v4, "isForbidden"

    invoke-virtual {v0, v3, v4, v5, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 1493
    if-eqz v1, :cond_0

    .line 1494
    const-string/jumbo v3, "isForbidden"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 1497
    .end local v1    # "extras":Landroid/os/Bundle;
    .end local v2    # "isForbidden":Z
    :cond_0
    return v2
.end method

.method static isCurrentFormat3gpp2()Z
    .locals 2

    .prologue
    .line 1115
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    .line 1116
    .local v0, "activePhone":I
    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isSmsBlockedByFirewall(Landroid/content/Intent;)Z
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 1475
    invoke-static {p1}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v0

    .line 1476
    .local v0, "messages":[Landroid/telephony/SmsMessage;
    if-eqz v0, :cond_0

    array-length v2, v0

    const/4 v3, 0x1

    if-ge v2, v3, :cond_1

    .line 1477
    :cond_0
    const-string/jumbo v2, "Failed to parse SMS pdu"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    .line 1478
    return v4

    .line 1480
    :cond_1
    aget-object v2, v0, v4

    invoke-virtual {v2}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v1

    .line 1481
    .local v1, "number":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->isBlockedByFirewall(Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method private static parseSmsMessage([Landroid/telephony/SmsMessage;)Landroid/content/ContentValues;
    .locals 8
    .param p0, "msgs"    # [Landroid/telephony/SmsMessage;

    .prologue
    const/4 v3, 0x0

    .line 1388
    aget-object v0, p0, v3

    .line 1389
    .local v0, "sms":Landroid/telephony/SmsMessage;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1390
    .local v2, "values":Landroid/content/ContentValues;
    const-string/jumbo v4, "address"

    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1391
    const-string/jumbo v4, "body"

    invoke-static {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->buildMessageBodyFromPdus([Landroid/telephony/SmsMessage;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1392
    const-string/jumbo v4, "date_sent"

    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getTimestampMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1393
    const-string/jumbo v4, "date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1394
    const-string/jumbo v4, "protocol"

    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getProtocolIdentifier()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1395
    const-string/jumbo v4, "seen"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1396
    const-string/jumbo v4, "read"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1397
    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getPseudoSubject()Ljava/lang/String;

    move-result-object v1

    .line 1398
    .local v1, "subject":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1399
    const-string/jumbo v4, "subject"

    invoke-virtual {v2, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1401
    :cond_0
    const-string/jumbo v4, "reply_path_present"

    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->isReplyPathPresent()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v3, 0x1

    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1402
    const-string/jumbo v3, "service_center"

    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getServiceCenterAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1403
    return-object v2
.end method

.method private static replaceFormFeeds(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 1429
    if-nez p0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    const/16 v0, 0xc

    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private writeInboxMessage(Landroid/content/Intent;)Landroid/net/Uri;
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x0

    .line 1353
    invoke-static {p1}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v4

    .line 1354
    .local v4, "messages":[Landroid/telephony/SmsMessage;
    if-eqz v4, :cond_0

    array-length v7, v4

    const/4 v8, 0x1

    if-ge v7, v8, :cond_1

    .line 1355
    :cond_0
    const-string/jumbo v7, "Failed to parse SMS pdu"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    .line 1356
    return-object v9

    .line 1361
    :cond_1
    const/4 v7, 0x0

    array-length v8, v4

    :goto_0
    if-ge v7, v8, :cond_2

    aget-object v5, v4, v7

    .line 1363
    .local v5, "sms":Landroid/telephony/SmsMessage;
    :try_start_0
    invoke-virtual {v5}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1361
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1364
    :catch_0
    move-exception v1

    .line 1365
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v7, "NPE inside SmsMessage"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    .line 1366
    return-object v9

    .line 1369
    .end local v1    # "e":Ljava/lang/NullPointerException;
    .end local v5    # "sms":Landroid/telephony/SmsMessage;
    :cond_2
    invoke-static {v4}, Lcom/android/internal/telephony/InboundSmsHandler;->parseSmsMessage([Landroid/telephony/SmsMessage;)Landroid/content/ContentValues;

    move-result-object v6

    .line 1370
    .local v6, "values":Landroid/content/ContentValues;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1372
    .local v2, "identity":J
    :try_start_1
    iget-object v7, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7, v8, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v7

    .line 1376
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1372
    return-object v7

    .line 1373
    :catch_1
    move-exception v0

    .line 1374
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v7, "Failed to persist inbox message"

    invoke-virtual {p0, v7, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1376
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1378
    return-object v9

    .line 1375
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 1376
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1375
    throw v7
.end method


# virtual methods
.method protected abstract acknowledgeLastIncomingSms(ZILandroid/os/Message;)V
.end method

.method acquireWakeLock()V
    .locals 4

    .prologue
    .line 290
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v1

    .line 291
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 292
    iget v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWakeLockCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWakeLockCount:I

    .line 293
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->removeMessages(I)V

    .line 294
    const-wide/16 v2, 0xbb8

    const/16 v0, 0x9

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->sendMessageDelayed(IJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 289
    return-void

    .line 290
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected addTrackerToRawTableAndSendMessage(Lcom/android/internal/telephony/InboundSmsTracker;)I
    .locals 3
    .param p1, "tracker"    # Lcom/android/internal/telephony/InboundSmsTracker;

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 731
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->addTrackerToRawTable(Lcom/android/internal/telephony/InboundSmsTracker;)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 741
    return v2

    .line 733
    :sswitch_0
    invoke-virtual {p0, v2, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->sendMessage(ILjava/lang/Object;)V

    .line 734
    return v1

    .line 737
    :sswitch_1
    return v1

    .line 731
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch
.end method

.method decrementWakeLock()V
    .locals 2

    .prologue
    .line 302
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v1

    .line 303
    :try_start_0
    iget v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWakeLockCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWakeLockCount:I

    .line 304
    iget v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWakeLockCount:I

    if-nez v0, :cond_0

    .line 305
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->releaseWakeLock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 301
    return-void

    .line 302
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method deleteFromRawTable(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .param p1, "deleteWhere"    # Ljava/lang/String;
    .param p2, "deleteWhereArgs"    # [Ljava/lang/String;

    .prologue
    .line 954
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/internal/telephony/InboundSmsHandler;->sRawUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, p1, p2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 955
    .local v0, "rows":I
    if-nez v0, :cond_0

    .line 956
    const-string/jumbo v1, "No rows were deleted from raw table!"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    .line 953
    :goto_0
    return-void

    .line 958
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Deleted "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " rows from raw table."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;)V
    .locals 19
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "appOp"    # I
    .param p4, "opts"    # Landroid/os/Bundle;
    .param p5, "resultReceiver"    # Landroid/content/BroadcastReceiver;
    .param p6, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 912
    const/high16 v1, 0x8000000

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 913
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v1

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 914
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, p6

    invoke-virtual {v0, v1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 916
    const/16 v18, 0x0

    .line 918
    .local v18, "users":[I
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getRunningUserIds()[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v18

    .line 921
    .end local v18    # "users":[I
    :goto_0
    if-nez v18, :cond_0

    .line 922
    const/4 v1, 0x1

    new-array v0, v1, [I

    move-object/from16 v18, v0

    invoke-virtual/range {p6 .. p6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    const/4 v2, 0x0

    aput v1, v18, v2

    .line 926
    :cond_0
    move-object/from16 v0, v18

    array-length v1, v0

    add-int/lit8 v15, v1, -0x1

    .local v15, "i":I
    :goto_1
    if-ltz v15, :cond_6

    .line 927
    new-instance v3, Landroid/os/UserHandle;

    aget v1, v18, v15

    invoke-direct {v3, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 928
    .local v3, "targetUser":Landroid/os/UserHandle;
    aget v1, v18, v15

    if-eqz v1, :cond_3

    .line 930
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v2, "no_sms"

    invoke-virtual {v1, v2, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 926
    :cond_1
    :goto_2
    add-int/lit8 v15, v15, -0x1

    goto :goto_1

    .line 934
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mUserManager:Landroid/os/UserManager;

    aget v2, v18, v15

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v16

    .line 935
    .local v16, "info":Landroid/content/pm/UserInfo;
    if-eqz v16, :cond_1

    invoke-virtual/range {v16 .. v16}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v1

    if-nez v1, :cond_1

    .line 940
    .end local v16    # "info":Landroid/content/pm/UserInfo;
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    .line 941
    aget v2, v18, v15

    if-nez v2, :cond_4

    move-object/from16 v7, p5

    .line 942
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/InboundSmsHandler;->getHandler()Landroid/os/Handler;

    move-result-object v8

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    .line 940
    invoke-virtual/range {v1 .. v11}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_2

    .line 941
    :cond_4
    const/4 v7, 0x0

    goto :goto_3

    .line 945
    .end local v3    # "targetUser":Landroid/os/UserHandle;
    .end local v15    # "i":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    .line 946
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/InboundSmsHandler;->getHandler()Landroid/os/Handler;

    move-result-object v11

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v5, p1

    move-object/from16 v6, p6

    move-object/from16 v7, p2

    move/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    .line 945
    invoke-virtual/range {v4 .. v14}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 911
    :cond_6
    return-void

    .line 919
    .restart local v18    # "users":[I
    :catch_0
    move-exception v17

    .local v17, "re":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I
    .locals 1
    .param p1, "smsb"    # Lcom/android/internal/telephony/SmsMessageBase;

    .prologue
    .line 612
    if-nez p1, :cond_0

    .line 613
    const-string/jumbo v0, "dispatchSmsMessage: message is null"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    .line 614
    const/4 v0, 0x2

    return v0

    .line 617
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mSmsReceiveDisabled:Z

    if-eqz v0, :cond_1

    .line 619
    const-string/jumbo v0, "Received short message on device which doesn\'t support receiving SMS. Ignored."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 621
    const/4 v0, 0x1

    return v0

    .line 624
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchMessageRadioSpecific(Lcom/android/internal/telephony/SmsMessageBase;)I

    move-result v0

    return v0
.end method

.method protected abstract dispatchMessageRadioSpecific(Lcom/android/internal/telephony/SmsMessageBase;)I
.end method

.method protected dispatchNormalMessage(Lcom/android/internal/telephony/SmsMessageBase;)I
    .locals 14
    .param p1, "sms"    # Lcom/android/internal/telephony/SmsMessageBase;

    .prologue
    .line 694
    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v13

    .line 697
    .local v13, "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    if-eqz v13, :cond_0

    iget-object v1, v13, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    if-nez v1, :cond_2

    .line 699
    :cond_0
    const/4 v4, -0x1

    .line 700
    .local v4, "destPort":I
    if-eqz v13, :cond_1

    iget-object v1, v13, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    if-eqz v1, :cond_1

    .line 702
    iget-object v1, v13, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v4, v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    .line 703
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "destination port: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 706
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/InboundSmsTracker;

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getTimestampMillis()J

    move-result-wide v2

    .line 707
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->is3gpp2()Z

    move-result v5

    const/4 v6, 0x0

    .line 706
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/InboundSmsTracker;-><init>([BJIZZ)V

    .line 720
    .local v0, "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->addTrackerToRawTableAndSendMessage(Lcom/android/internal/telephony/InboundSmsTracker;)I

    move-result v1

    return v1

    .line 710
    .end local v0    # "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    .end local v4    # "destPort":I
    :cond_2
    iget-object v11, v13, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 711
    .local v11, "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    iget-object v12, v13, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    .line 712
    .local v12, "portAddrs":Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    if-eqz v12, :cond_3

    iget v4, v12, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    .line 714
    .restart local v4    # "destPort":I
    :goto_1
    new-instance v0, Lcom/android/internal/telephony/InboundSmsTracker;

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getTimestampMillis()J

    move-result-wide v2

    .line 715
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->is3gpp2()Z

    move-result v5

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v6

    iget v7, v11, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    .line 716
    iget v8, v11, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    iget v9, v11, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    const/4 v10, 0x0

    .line 714
    invoke-direct/range {v0 .. v10}, Lcom/android/internal/telephony/InboundSmsTracker;-><init>([BJIZLjava/lang/String;IIIZ)V

    .restart local v0    # "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    goto :goto_0

    .line 712
    .end local v0    # "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    .end local v4    # "destPort":I
    :cond_3
    const/4 v4, -0x1

    .restart local v4    # "destPort":I
    goto :goto_1
.end method

.method dispatchSmsDeliveryIntent([[BLjava/lang/String;ILandroid/content/BroadcastReceiver;)V
    .locals 9
    .param p1, "pdus"    # [[B
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "destPort"    # I
    .param p4, "resultReceiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    const/4 v3, 0x0

    .line 994
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 995
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v0, "pdus"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 996
    const-string/jumbo v0, "format"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 998
    const/4 v0, -0x1

    if-ne p3, v0, :cond_2

    .line 999
    const-string/jumbo v0, "android.provider.Telephony.SMS_DELIVER"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1003
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v7

    .line 1004
    .local v7, "componentName":Landroid/content/ComponentName;
    if-eqz v7, :cond_1

    .line 1006
    invoke-virtual {v1, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1007
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Delivering SMS to: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1008
    const-string/jumbo v2, " "

    .line 1007
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1008
    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 1007
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1014
    :goto_0
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SmsManager;->getAutoPersisting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1015
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->writeInboxMessage(Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object v8

    .line 1016
    .local v8, "uri":Landroid/net/Uri;
    if-eqz v8, :cond_0

    .line 1018
    const-string/jumbo v0, "uri"

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1028
    .end local v7    # "componentName":Landroid/content/ComponentName;
    .end local v8    # "uri":Landroid/net/Uri;
    :cond_0
    :goto_1
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->handleSmsWhitelisting(Landroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v4

    .line 1029
    .local v4, "options":Landroid/os/Bundle;
    const-string/jumbo v2, "android.permission.RECEIVE_SMS"

    .line 1030
    sget-object v6, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    const/16 v3, 0x10

    move-object v0, p0

    move-object v5, p4

    .line 1029
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;)V

    .line 993
    return-void

    .line 1010
    .end local v4    # "options":Landroid/os/Bundle;
    .restart local v7    # "componentName":Landroid/content/ComponentName;
    :cond_1
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    .line 1022
    .end local v7    # "componentName":Landroid/content/ComponentName;
    :cond_2
    const-string/jumbo v0, "android.intent.action.DATA_SMS_RECEIVED"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1023
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sms://localhost:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 1024
    .restart local v8    # "uri":Landroid/net/Uri;
    invoke-virtual {v1, v8}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1025
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_1
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 259
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->quit()V

    .line 258
    return-void
.end method

.method public getPhone()Lcom/android/internal/telephony/PhoneBase;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method handleInjectSms(Landroid/os/AsyncResult;)V
    .locals 7
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 581
    const/4 v3, 0x0

    .line 583
    .local v3, "receivedIntent":Landroid/app/PendingIntent;
    :try_start_0
    iget-object v6, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v0, v6

    check-cast v0, Landroid/app/PendingIntent;

    move-object v3, v0

    .line 584
    .local v3, "receivedIntent":Landroid/app/PendingIntent;
    iget-object v5, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Landroid/telephony/SmsMessage;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 585
    .local v5, "sms":Landroid/telephony/SmsMessage;
    if-nez v5, :cond_1

    .line 586
    const/4 v4, 0x2

    .line 595
    .end local v3    # "receivedIntent":Landroid/app/PendingIntent;
    .end local v5    # "sms":Landroid/telephony/SmsMessage;
    .local v4, "result":I
    :goto_0
    if-eqz v3, :cond_0

    .line 597
    :try_start_1
    invoke-virtual {v3, v4}, Landroid/app/PendingIntent;->send(I)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_1

    .line 579
    :cond_0
    :goto_1
    return-void

    .line 588
    .end local v4    # "result":I
    .restart local v3    # "receivedIntent":Landroid/app/PendingIntent;
    .restart local v5    # "sms":Landroid/telephony/SmsMessage;
    :cond_1
    :try_start_2
    iget-object v6, v5, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v4

    .restart local v4    # "result":I
    goto :goto_0

    .line 590
    .end local v3    # "receivedIntent":Landroid/app/PendingIntent;
    .end local v4    # "result":I
    .end local v5    # "sms":Landroid/telephony/SmsMessage;
    :catch_0
    move-exception v2

    .line 591
    .local v2, "ex":Ljava/lang/RuntimeException;
    const-string/jumbo v6, "Exception dispatching message"

    invoke-virtual {p0, v6, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 592
    const/4 v4, 0x2

    .restart local v4    # "result":I
    goto :goto_0

    .line 598
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v1

    .local v1, "e":Landroid/app/PendingIntent$CanceledException;
    goto :goto_1
.end method

.method handleNewSms(Landroid/os/AsyncResult;)V
    .locals 6
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v5, 0x0

    .line 553
    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_0

    .line 554
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception processing incoming SMS: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    .line 555
    return-void

    .line 560
    :cond_0
    :try_start_0
    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Landroid/telephony/SmsMessage;

    .line 561
    .local v3, "sms":Landroid/telephony/SmsMessage;
    iget-object v4, v3, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 569
    .end local v3    # "sms":Landroid/telephony/SmsMessage;
    .local v2, "result":I
    :goto_0
    const/4 v4, -0x1

    if-eq v2, v4, :cond_1

    .line 570
    const/4 v4, 0x1

    if-ne v2, v4, :cond_2

    const/4 v1, 0x1

    .line 571
    .local v1, "handled":Z
    :goto_1
    invoke-virtual {p0, v1, v2, v5}, Lcom/android/internal/telephony/InboundSmsHandler;->notifyAndAcknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    .line 552
    .end local v1    # "handled":Z
    :cond_1
    return-void

    .line 562
    .end local v2    # "result":I
    :catch_0
    move-exception v0

    .line 563
    .local v0, "ex":Ljava/lang/RuntimeException;
    const-string/jumbo v4, "Exception dispatching message"

    invoke-virtual {p0, v4, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 564
    const/4 v2, 0x2

    .restart local v2    # "result":I
    goto :goto_0

    .line 570
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "handled":Z
    goto :goto_1
.end method

.method handleSmsWhitelisting(Landroid/content/ComponentName;)Landroid/os/Bundle;
    .locals 9
    .param p1, "target"    # Landroid/content/ComponentName;

    .prologue
    const/4 v8, 0x0

    .line 965
    if-eqz p1, :cond_0

    .line 966
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 967
    .local v4, "pkgName":Ljava/lang/String;
    const-string/jumbo v5, "sms-app"

    .line 973
    .local v5, "reason":Ljava/lang/String;
    :goto_0
    :try_start_0
    iget-object v6, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    .line 974
    const/4 v7, 0x0

    .line 973
    invoke-interface {v6, v4, v7, v5}, Landroid/os/IDeviceIdleController;->addPowerSaveTempWhitelistAppForSms(Ljava/lang/String;ILjava/lang/String;)J

    move-result-wide v2

    .line 975
    .local v2, "duration":J
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v0

    .line 976
    .local v0, "bopts":Landroid/app/BroadcastOptions;
    invoke-virtual {v0, v2, v3}, Landroid/app/BroadcastOptions;->setTemporaryAppWhitelistDuration(J)V

    .line 977
    invoke-virtual {v0}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    return-object v6

    .line 969
    .end local v0    # "bopts":Landroid/app/BroadcastOptions;
    .end local v2    # "duration":J
    .end local v4    # "pkgName":Ljava/lang/String;
    .end local v5    # "reason":Ljava/lang/String;
    :cond_0
    iget-object v6, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 970
    .restart local v4    # "pkgName":Ljava/lang/String;
    const-string/jumbo v5, "sms-broadcast"

    .restart local v5    # "reason":Ljava/lang/String;
    goto :goto_0

    .line 978
    :catch_0
    move-exception v1

    .line 981
    .local v1, "e":Landroid/os/RemoteException;
    return-object v8
.end method

.method protected abstract is3gpp2()Z
.end method

.method public isMmsBlockedByFirewall(Ljava/lang/String;)Z
    .locals 1
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 1471
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->isBlockedByFirewall(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1324
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1323
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1333
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1332
    return-void
.end method

.method protected loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 1343
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1342
    return-void
.end method

.method notifyAndAcknowledgeLastIncomingSms(ZILandroid/os/Message;)V
    .locals 3
    .param p1, "success"    # Z
    .param p2, "result"    # I
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 669
    if-nez p1, :cond_0

    .line 671
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.provider.Telephony.SMS_REJECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 672
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "result"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 673
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.RECEIVE_SMS"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 675
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/InboundSmsHandler;->acknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    .line 668
    return-void
.end method

.method protected onQuitting()V
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    invoke-virtual {v0}, Lcom/android/internal/telephony/WapPushOverSms;->dispose()V

    .line 276
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 273
    :cond_0
    return-void
.end method

.method protected onUpdatePhoneObject(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 2
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 655
    iput-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 656
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mSmsStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    iput-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    .line 657
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onUpdatePhoneObject: phone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 654
    return-void
.end method

.method processMessagePart(Lcom/android/internal/telephony/InboundSmsTracker;)Z
    .locals 34
    .param p1, "tracker"    # Lcom/android/internal/telephony/InboundSmsTracker;

    .prologue
    .line 753
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v25

    .line 755
    .local v25, "messageCount":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDestPort()I

    move-result v14

    .line 757
    .local v14, "destPort":I
    const/4 v2, 0x1

    move/from16 v0, v25

    if-ne v0, v2, :cond_2

    .line 759
    const/4 v2, 0x1

    new-array v13, v2, [[B

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getPdu()[B

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v13, v3

    .line 813
    .local v13, "pdus":[[B
    :cond_0
    :goto_0
    new-instance v10, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v10, v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/telephony/InboundSmsTracker;)V

    .line 815
    .local v10, "resultReceiver":Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;
    const/16 v2, 0xb84

    if-ne v14, v2, :cond_b

    .line 817
    new-instance v27, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v27 .. v27}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 818
    .local v27, "output":Ljava/io/ByteArrayOutputStream;
    const/4 v2, 0x0

    array-length v3, v13

    :goto_1
    if-ge v2, v3, :cond_9

    aget-object v28, v13, v2

    .line 820
    .local v28, "pdu":[B
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->is3gpp2()Z

    move-result v4

    if-nez v4, :cond_1

    .line 821
    const-string/jumbo v4, "3gpp"

    move-object/from16 v0, v28

    invoke-static {v0, v4}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v26

    .line 822
    .local v26, "msg":Landroid/telephony/SmsMessage;
    invoke-virtual/range {v26 .. v26}, Landroid/telephony/SmsMessage;->getUserData()[B

    move-result-object v28

    .line 824
    .end local v26    # "msg":Landroid/telephony/SmsMessage;
    :cond_1
    move-object/from16 v0, v28

    array-length v4, v0

    const/4 v5, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 818
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 762
    .end local v10    # "resultReceiver":Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;
    .end local v13    # "pdus":[[B
    .end local v27    # "output":Ljava/io/ByteArrayOutputStream;
    .end local v28    # "pdu":[B
    :cond_2
    const/16 v21, 0x0

    .line 765
    .local v21, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getAddress()Ljava/lang/String;

    move-result-object v17

    .line 766
    .local v17, "address":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getReferenceNumber()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v30

    .line 767
    .local v30, "refNumber":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    .line 770
    .local v20, "count":Ljava/lang/String;
    const/4 v2, 0x3

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v17, v6, v2

    const/4 v2, 0x1

    aput-object v30, v6, v2

    const/4 v2, 0x2

    aput-object v20, v6, v2

    .line 771
    .local v6, "whereArgs":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/internal/telephony/InboundSmsHandler;->sRawUri:Landroid/net/Uri;

    sget-object v4, Lcom/android/internal/telephony/InboundSmsHandler;->PDU_SEQUENCE_PORT_PROJECTION:[Ljava/lang/String;

    .line 772
    const-string/jumbo v5, "address=? AND reference_number=? AND count=?"

    const/4 v7, 0x0

    .line 771
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v21

    .line 774
    .local v21, "cursor":Landroid/database/Cursor;
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v22

    .line 775
    .local v22, "cursorCount":I
    move/from16 v0, v22

    move/from16 v1, v25

    if-ge v0, v1, :cond_4

    .line 781
    const/4 v2, 0x0

    .line 807
    if-eqz v21, :cond_3

    .line 808
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 781
    :cond_3
    return v2

    .line 785
    :cond_4
    :try_start_1
    move/from16 v0, v25

    new-array v13, v0, [[B

    .line 786
    .restart local v13    # "pdus":[[B
    :cond_5
    :goto_2
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 788
    const/4 v2, 0x1

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getIndexOffset()I

    move-result v3

    sub-int v24, v2, v3

    .line 790
    .local v24, "index":I
    const/4 v2, 0x0

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v13, v24

    .line 794
    if-nez v24, :cond_5

    const/4 v2, 0x2

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_5

    .line 795
    const/4 v2, 0x2

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    .line 797
    .local v29, "port":I
    invoke-static/range {v29 .. v29}, Lcom/android/internal/telephony/InboundSmsTracker;->getRealDestPort(I)I
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v29

    .line 798
    const/4 v2, -0x1

    move/from16 v0, v29

    if-eq v0, v2, :cond_5

    .line 799
    move/from16 v14, v29

    goto :goto_2

    .line 807
    .end local v24    # "index":I
    .end local v29    # "port":I
    :cond_6
    if-eqz v21, :cond_0

    .line 808
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 803
    .end local v6    # "whereArgs":[Ljava/lang/String;
    .end local v13    # "pdus":[[B
    .end local v17    # "address":Ljava/lang/String;
    .end local v20    # "count":Ljava/lang/String;
    .end local v21    # "cursor":Landroid/database/Cursor;
    .end local v22    # "cursorCount":I
    .end local v30    # "refNumber":Ljava/lang/String;
    :catch_0
    move-exception v23

    .line 804
    .local v23, "e":Landroid/database/SQLException;
    :try_start_2
    const-string/jumbo v2, "Can\'t access multipart SMS database"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 805
    const/4 v2, 0x0

    .line 807
    if-eqz v21, :cond_7

    .line 808
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 805
    :cond_7
    return v2

    .line 806
    .end local v23    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v2

    .line 807
    if-eqz v21, :cond_8

    .line 808
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 806
    :cond_8
    throw v2

    .line 826
    .restart local v10    # "resultReceiver":Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;
    .restart local v13    # "pdus":[[B
    .restart local v27    # "output":Ljava/io/ByteArrayOutputStream;
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    invoke-virtual/range {v27 .. v27}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v2, v3, v10, v0}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu([BLandroid/content/BroadcastReceiver;Lcom/android/internal/telephony/InboundSmsHandler;)I

    move-result v31

    .line 827
    .local v31, "result":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "dispatchWapPdu() returned "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v31

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 829
    const/4 v2, -0x1

    move/from16 v0, v31

    if-ne v0, v2, :cond_a

    .line 830
    const/4 v2, 0x1

    return v2

    .line 832
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhere()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhereArgs()[Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->deleteFromRawTable(Ljava/lang/String;[Ljava/lang/String;)V

    .line 833
    const/4 v2, 0x0

    return v2

    .line 837
    .end local v27    # "output":Ljava/io/ByteArrayOutputStream;
    .end local v31    # "result":I
    :cond_b
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 838
    .local v8, "blockItent":Landroid/content/Intent;
    const-string/jumbo v2, "pdus"

    invoke-virtual {v8, v2, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 839
    const-string/jumbo v2, "format"

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getFormat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 840
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/internal/telephony/InboundSmsHandler;->isSmsBlockedByFirewall(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 842
    const-string/jumbo v11, ""

    const/4 v9, 0x1

    const/4 v12, -0x1

    move-object/from16 v7, p0

    invoke-virtual/range {v7 .. v12}, Lcom/android/internal/telephony/InboundSmsHandler;->sendBlockRecordBroadcast(Landroid/content/Intent;ZLandroid/content/BroadcastReceiver;Ljava/lang/String;I)V

    .line 843
    const/4 v2, 0x1

    return v2

    .line 846
    :cond_c
    const/16 v19, 0x0

    .line 847
    .local v19, "carrierPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v18

    .line 848
    .local v18, "card":Lcom/android/internal/telephony/uicc/UiccCard;
    if-eqz v18, :cond_d

    .line 850
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 851
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "android.service.carrier.CarrierMessagingService"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 849
    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/uicc/UiccCard;->getCarrierPackageNamesForIntent(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Ljava/util/List;

    move-result-object v19

    .line 857
    .end local v19    # "carrierPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_3
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.service.carrier.CarrierMessagingService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->getSystemAppForIntent(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v33

    .line 859
    .local v33, "systemPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v19, :cond_e

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_e

    .line 860
    const-string/jumbo v2, "Found carrier package."

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 861
    new-instance v11, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;

    .line 862
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getFormat()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v12, p0

    move-object/from16 v16, v10

    .line 861
    invoke-direct/range {v11 .. v16}, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;[[BILjava/lang/String;Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;)V

    .line 863
    .local v11, "smsFilter":Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;
    new-instance v32, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v11}, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;)V

    .line 864
    .local v32, "smsFilterCallback":Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;
    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, v32

    invoke-virtual {v11, v2, v0}, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;->filterSms(Ljava/lang/String;Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;)V

    .line 877
    .end local v11    # "smsFilter":Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;
    .end local v32    # "smsFilterCallback":Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;
    :goto_4
    const/4 v2, 0x1

    return v2

    .line 853
    .end local v33    # "systemPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v19    # "carrierPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_d
    const-string/jumbo v2, "UiccCard not initialized."

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    goto :goto_3

    .line 865
    .end local v19    # "carrierPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v33    # "systemPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_e
    if-eqz v33, :cond_f

    invoke-interface/range {v33 .. v33}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_f

    .line 866
    const-string/jumbo v2, "Found system package."

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 867
    new-instance v11, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;

    .line 868
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getFormat()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v12, p0

    move-object/from16 v16, v10

    .line 867
    invoke-direct/range {v11 .. v16}, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;[[BILjava/lang/String;Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;)V

    .line 869
    .restart local v11    # "smsFilter":Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;
    new-instance v32, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v11}, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;)V

    .line 870
    .restart local v32    # "smsFilterCallback":Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;
    const/4 v2, 0x0

    move-object/from16 v0, v33

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, v32

    invoke-virtual {v11, v2, v0}, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;->filterSms(Ljava/lang/String;Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;)V

    goto :goto_4

    .line 872
    .end local v11    # "smsFilter":Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;
    .end local v32    # "smsFilterCallback":Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;
    :cond_f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to find carrier package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 873
    const-string/jumbo v3, ", nor systemPackages: "

    .line 872
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v33

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->logv(Ljava/lang/String;)V

    .line 874
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getFormat()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v2, v14, v10}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchSmsDeliveryIntent([[BLjava/lang/String;ILandroid/content/BroadcastReceiver;)V

    goto :goto_4
.end method

.method releaseWakeLock()V
    .locals 2

    .prologue
    .line 314
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v1

    .line 315
    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWakeLockCount:I

    .line 316
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 317
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->removeMessages(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 313
    return-void

    .line 314
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public sendBlockRecordBroadcast(Landroid/content/Intent;ZLandroid/content/BroadcastReceiver;Ljava/lang/String;I)V
    .locals 16
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "isSms"    # Z
    .param p3, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p4, "permission"    # Ljava/lang/String;
    .param p5, "appOp"    # I

    .prologue
    .line 1443
    if-eqz p2, :cond_1

    .line 1444
    invoke-static/range {p1 .. p1}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v14

    .line 1445
    .local v14, "messages":[Landroid/telephony/SmsMessage;
    if-eqz v14, :cond_0

    .line 1446
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.firewall.ADD_SMS_BLOCK_RECORD"

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1448
    .local v2, "sendIntent":Landroid/content/Intent;
    const-string/jumbo v1, "number"

    const/4 v3, 0x0

    aget-object v3, v14, v3

    invoke-virtual {v3}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v3

    .line 1447
    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1449
    const-string/jumbo v1, "content"

    invoke-static {v14}, Lcom/android/internal/telephony/InboundSmsHandler;->buildMessageBodyFromPdus([Landroid/telephony/SmsMessage;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1450
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->handleSmsWhitelisting(Landroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v5

    .line 1451
    .local v5, "options":Landroid/os/Bundle;
    const-string/jumbo v3, "android.permission.RECEIVE_SMS"

    .line 1452
    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/16 v4, 0x10

    move-object/from16 v1, p0

    move-object/from16 v6, p3

    .line 1451
    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;)V

    .line 1441
    .end local v2    # "sendIntent":Landroid/content/Intent;
    .end local v5    # "options":Landroid/os/Bundle;
    .end local v14    # "messages":[Landroid/telephony/SmsMessage;
    :cond_0
    :goto_0
    return-void

    .line 1455
    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.firewall.ADD_MMS_BLOCK_RECORD"

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1456
    .restart local v2    # "sendIntent":Landroid/content/Intent;
    const-string/jumbo v1, "block_number"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1457
    .local v13, "blockNumber":Ljava/lang/String;
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->handleSmsWhitelisting(Landroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v5

    .line 1458
    .restart local v5    # "options":Landroid/os/Bundle;
    if-nez v13, :cond_2

    .line 1459
    sget-object v12, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p4

    move/from16 v9, p5

    move-object v10, v5

    move-object/from16 v11, p3

    invoke-virtual/range {v6 .. v12}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;)V

    .line 1460
    return-void

    .line 1462
    :cond_2
    const-string/jumbo v1, "data"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v15

    .line 1463
    .local v15, "pushData":[B
    const-string/jumbo v1, "number"

    invoke-virtual {v2, v1, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1464
    const-string/jumbo v1, "data"

    invoke-virtual {v2, v1, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 1465
    const-string/jumbo v1, "subid"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getSubId()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1466
    sget-object v7, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    move-object/from16 v1, p0

    move-object/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v6, p3

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;)V

    goto :goto_0
.end method

.method protected storeVoiceMailCount()V
    .locals 6

    .prologue
    .line 1121
    iget-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .line 1122
    .local v1, "imsi":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getVoiceMessageCount()I

    move-result v2

    .line 1124
    .local v2, "mwi":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Storing Voice Mail Count = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1125
    const-string/jumbo v5, " for mVmCountKey = "

    .line 1124
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1125
    const-string/jumbo v5, "vm_count_key"

    .line 1124
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1126
    const-string/jumbo v5, " vmId = "

    .line 1124
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1126
    const-string/jumbo v5, "vm_id_key"

    .line 1124
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1127
    const-string/jumbo v5, " in preferences."

    .line 1124
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1129
    iget-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1130
    .local v3, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1131
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v4, "vm_count_key"

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1132
    const-string/jumbo v4, "vm_id_key"

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1133
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1119
    return-void
.end method

.method public updatePhoneObject(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 266
    const/4 v0, 0x7

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->sendMessage(ILjava/lang/Object;)V

    .line 265
    return-void
.end method

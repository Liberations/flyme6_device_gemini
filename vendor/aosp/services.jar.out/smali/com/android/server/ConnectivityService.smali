.class public Lcom/android/server/ConnectivityService;
.super Landroid/net/IConnectivityManager$Stub;
.source "ConnectivityService.java"

# interfaces
.implements Landroid/app/PendingIntent$OnFinished;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;,
        Lcom/android/server/ConnectivityService$LegacyTypeTracker;,
        Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;,
        Lcom/android/server/ConnectivityService$InternalHandler;,
        Lcom/android/server/ConnectivityService$SettingsObserver;,
        Lcom/android/server/ConnectivityService$NotificationType;,
        Lcom/android/server/ConnectivityService$NetworkFactoryInfo;,
        Lcom/android/server/ConnectivityService$NetworkRequestInfo;,
        Lcom/android/server/ConnectivityService$1;,
        Lcom/android/server/ConnectivityService$2;,
        Lcom/android/server/ConnectivityService$3;,
        Lcom/android/server/ConnectivityService$4;
    }
.end annotation


# static fields
.field private static final ATTR_MCC:Ljava/lang/String; = "mcc"

.field private static final ATTR_MNC:Ljava/lang/String; = "mnc"

.field private static final DBG:Z = true

.field private static final DEFAULT_TCP_BUFFER_SIZES:Ljava/lang/String; = "4096,87380,110208,4096,16384,110208"

.field private static final DEFAULT_TCP_RWND_KEY:Ljava/lang/String; = "net.tcp.default_init_rwnd"

.field private static final DISABLED:I = 0x0

.field private static final ENABLED:I = 0x1

.field private static final EVENT_APPLY_GLOBAL_HTTP_PROXY:I = 0x9

.field private static final EVENT_CHANGE_MOBILE_DATA_ENABLED:I = 0x2

.field private static final EVENT_CLEAR_NET_TRANSITION_WAKELOCK:I = 0x8

.field private static final EVENT_CONFIGURE_MOBILE_DATA_ALWAYS_ON:I = 0x1e

.field private static final EVENT_EXPIRE_NET_TRANSITION_WAKELOCK:I = 0x18

.field private static final EVENT_PROMPT_UNVALIDATED:I = 0x1d

.field private static final EVENT_PROXY_HAS_CHANGED:I = 0x10

.field private static final EVENT_REGISTER_NETWORK_AGENT:I = 0x12

.field private static final EVENT_REGISTER_NETWORK_FACTORY:I = 0x11

.field private static final EVENT_REGISTER_NETWORK_LISTENER:I = 0x15

.field private static final EVENT_REGISTER_NETWORK_LISTENER_WITH_INTENT:I = 0x1f

.field private static final EVENT_REGISTER_NETWORK_REQUEST:I = 0x13

.field private static final EVENT_REGISTER_NETWORK_REQUEST_WITH_INTENT:I = 0x1a

.field private static final EVENT_RELEASE_NETWORK_REQUEST:I = 0x16

.field private static final EVENT_RELEASE_NETWORK_REQUEST_WITH_INTENT:I = 0x1b

.field private static final EVENT_SEND_STICKY_BROADCAST_INTENT:I = 0xb

.field private static final EVENT_SET_ACCEPT_UNVALIDATED:I = 0x1c

.field private static final EVENT_SYSTEM_READY:I = 0x19

.field private static final EVENT_TIMEOUT_NETWORK_REQUEST:I = 0x14

.field private static final EVENT_UNREGISTER_NETWORK_FACTORY:I = 0x17

.field private static final INET_CONDITION_LOG_MAX_SIZE:I = 0xf

.field private static final LOGD_RULES:Z = false

.field private static final MAX_NETWORK_REQUEST_LOGS:I = 0x14

.field private static final MAX_NET_ID:I = 0xffff

.field private static final MAX_VALIDATION_LOGS:I = 0xa

.field private static final MIN_NET_ID:I = 0x64

.field private static final NETWORK_RESTORE_DELAY_PROP_NAME:Ljava/lang/String; = "android.telephony.apn-restore"

.field private static final NOTIFICATION_ID:Ljava/lang/String; = "CaptivePortal.Notification"

.field private static final PROMPT_UNVALIDATED_DELAY_MS:I = 0x1f40

.field private static final PROVISIONING_URL_PATH:Ljava/lang/String; = "/data/misc/radio/provisioning_urls.xml"

.field private static final RESTORE_DEFAULT_NETWORK_DELAY:I = 0xea60

.field private static final TAG:Ljava/lang/String; = "ConnectivityService"

.field private static final TAG_PROVISIONING_URL:Ljava/lang/String; = "provisioningUrl"

.field private static final TAG_PROVISIONING_URLS:Ljava/lang/String; = "provisioningUrls"

.field private static final VDBG:Z

.field private static sServiceInstance:Lcom/android/server/ConnectivityService;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrentTcpBufferSizes:Ljava/lang/String;

.field private mCurrentTcpDelayedAckSegments:I

.field private mCurrentTcpUserCfg:I

.field private mDataActivityObserver:Landroid/net/INetworkManagementEventObserver;

.field private mDataConnectionStats:Lcom/android/server/connectivity/DataConnectionStats;

.field private mDefaultDns:Ljava/net/InetAddress;

.field private mDefaultInetConditionPublished:I

.field private final mDefaultMobileDataRequest:Landroid/net/NetworkRequest;

.field private volatile mDefaultProxy:Landroid/net/ProxyInfo;

.field private mDefaultProxyDisabled:Z

.field private final mDefaultRequest:Landroid/net/NetworkRequest;

.field private mGlobalProxy:Landroid/net/ProxyInfo;

.field private final mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

.field protected final mHandlerThread:Landroid/os/HandlerThread;

.field private mInetLog:Ljava/util/ArrayList;

.field private mInitialBroadcast:Landroid/content/Intent;

.field private mKeepaliveTracker:Lcom/android/server/connectivity/KeepaliveTracker;

.field private mKeyStore:Landroid/security/KeyStore;

.field private mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

.field private mLockdownEnabled:Z

.field private mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

.field private mMeteredIfaces:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mNetConfigs:[Landroid/net/NetworkConfig;

.field private final mNetIdInUse:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNetworkForNetId"
    .end annotation
.end field

.field private mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mNetTransitionWakeLockCausedBy:Ljava/lang/String;

.field private mNetTransitionWakeLockSerialNumber:I

.field private mNetTransitionWakeLockTimeout:I

.field private mNetd:Landroid/os/INetworkManagementService;

.field private final mNetworkAgentInfos:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/Messenger;",
            "Lcom/android/server/connectivity/NetworkAgentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mNetworkFactoryInfos:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/Messenger;",
            "Lcom/android/server/ConnectivityService$NetworkFactoryInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mNetworkForNetId:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNetworkForNetId"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/connectivity/NetworkAgentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mNetworkForRequestId:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/connectivity/NetworkAgentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mNetworkPreference:I

.field private final mNetworkRequestInfoLogs:Landroid/util/LocalLog;

.field private final mNetworkRequests:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/NetworkRequest;",
            "Lcom/android/server/ConnectivityService$NetworkRequestInfo;",
            ">;"
        }
    .end annotation
.end field

.field mNetworksDefined:I

.field private mNextNetId:I

.field private mNextNetworkRequestId:I

.field private mNumDnsEntries:I

.field private mPacManager:Lcom/android/server/connectivity/PacManager;

.field private final mPendingIntentWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mPermissionMonitor:Lcom/android/server/connectivity/PermissionMonitor;

.field private mPolicyListener:Landroid/net/INetworkPolicyListener;

.field private mPolicyManager:Landroid/net/INetworkPolicyManager;

.field mProtectedNetworks:Ljava/util/List;

.field private final mProvisioningUrlFile:Ljava/io/File;

.field private mProxyLock:Ljava/lang/Object;

.field private final mReleasePendingIntentDelayMs:I

.field private mRulesLock:Ljava/lang/Object;

.field private final mSettingsObserver:Lcom/android/server/ConnectivityService$SettingsObserver;

.field private mStatsService:Landroid/net/INetworkStatsService;

.field private mSystemReady:Z

.field mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTestMode:Z

.field private mTethering:Lcom/android/server/connectivity/Tethering;

.field private final mTrackerHandler:Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;

.field private mUidRules:Landroid/util/SparseIntArray;

.field private mUserIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mUserManager:Landroid/os/UserManager;

.field private mUserPresentReceiver:Landroid/content/BroadcastReceiver;

.field private final mValidationLogs:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Landroid/util/Pair",
            "<",
            "Landroid/net/Network;",
            "Landroid/util/LocalLog$ReadOnlyLocalLog;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mVpns:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mVpns"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/connectivity/Vpn;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/server/ConnectivityService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/KeepaliveTracker;
    .locals 1

    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mKeepaliveTracker:Lcom/android/server/connectivity/KeepaliveTracker;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/server/ConnectivityService;)Landroid/util/SparseIntArray;
    .locals 1

    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mUidRules:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/ConnectivityService;)Ljava/util/HashSet;
    .locals 1

    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mMeteredIfaces:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/ConnectivityService;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/ConnectivityService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockCausedBy:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/ConnectivityService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockSerialNumber:I

    return v0
.end method

.method static synthetic -get6(Lcom/android/server/ConnectivityService;)Landroid/os/INetworkManagementService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/ConnectivityService;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/ConnectivityService;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/server/ConnectivityService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mRulesLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)Z
    .locals 1
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->isDefaultNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Ljava/lang/String;)Z
    .locals 1
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->isLiveNetworkAgent(Lcom/android/server/connectivity/NetworkAgentInfo;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .locals 0
    .param p1, "na"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleRegisterNetworkAgent(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/server/ConnectivityService;Lcom/android/server/ConnectivityService$NetworkFactoryInfo;)V
    .locals 0
    .param p1, "nfi"    # Lcom/android/server/ConnectivityService$NetworkFactoryInfo;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleRegisterNetworkFactory(Lcom/android/server/ConnectivityService$NetworkFactoryInfo;)V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/server/ConnectivityService;Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleRegisterNetworkRequestWithIntent(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic -wrap13(Lcom/android/server/ConnectivityService;Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V
    .locals 0
    .param p1, "nri"    # Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleRegisterNetworkRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V

    return-void
.end method

.method static synthetic -wrap14(Lcom/android/server/ConnectivityService;Landroid/app/PendingIntent;I)V
    .locals 0
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p2, "callingUid"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->handleReleaseNetworkRequestWithIntent(Landroid/app/PendingIntent;I)V

    return-void
.end method

.method static synthetic -wrap15(Lcom/android/server/ConnectivityService;Landroid/net/NetworkRequest;I)V
    .locals 0
    .param p1, "request"    # Landroid/net/NetworkRequest;
    .param p2, "callingUid"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->handleReleaseNetworkRequest(Landroid/net/NetworkRequest;I)V

    return-void
.end method

.method static synthetic -wrap16(Lcom/android/server/ConnectivityService;Landroid/net/Network;ZZ)V
    .locals 0
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "accept"    # Z
    .param p3, "always"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/ConnectivityService;->handleSetAcceptUnvalidated(Landroid/net/Network;ZZ)V

    return-void
.end method

.method static synthetic -wrap17(Lcom/android/server/ConnectivityService;Landroid/os/Messenger;)V
    .locals 0
    .param p1, "messenger"    # Landroid/os/Messenger;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleUnregisterNetworkFactory(Landroid/os/Messenger;)V

    return-void
.end method

.method static synthetic -wrap18(Ljava/lang/String;)V
    .locals 0
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap19(Ljava/lang/String;)V
    .locals 0
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/ConnectivityService;Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;
    .locals 1
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap20(Lcom/android/server/ConnectivityService;I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->onUserStart(I)V

    return-void
.end method

.method static synthetic -wrap21(Lcom/android/server/ConnectivityService;I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->onUserStop(I)V

    return-void
.end method

.method static synthetic -wrap22(Lcom/android/server/ConnectivityService;IZJ)V
    .locals 1
    .param p1, "deviceType"    # I
    .param p2, "active"    # Z
    .param p3, "tsNanos"    # J

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/ConnectivityService;->sendDataActivityBroadcast(IZJ)V

    return-void
.end method

.method static synthetic -wrap23(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo$DetailedState;I)V
    .locals 0
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "state"    # Landroid/net/NetworkInfo$DetailedState;
    .param p3, "type"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/ConnectivityService;->sendLegacyNetworkBroadcast(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo$DetailedState;I)V

    return-void
.end method

.method static synthetic -wrap24(Lcom/android/server/ConnectivityService;Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->sendStickyBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic -wrap25(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .locals 0
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->sendUpdatedScoreToFactories(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    return-void
.end method

.method static synthetic -wrap26(Lcom/android/server/ConnectivityService;ZILcom/android/server/ConnectivityService$NotificationType;ILjava/lang/String;Landroid/app/PendingIntent;Z)V
    .locals 0
    .param p1, "visible"    # Z
    .param p2, "id"    # I
    .param p3, "notifyType"    # Lcom/android/server/ConnectivityService$NotificationType;
    .param p4, "networkType"    # I
    .param p5, "extraInfo"    # Ljava/lang/String;
    .param p6, "intent"    # Landroid/app/PendingIntent;
    .param p7, "highPriority"    # Z

    .prologue
    invoke-direct/range {p0 .. p7}, Lcom/android/server/ConnectivityService;->setProvNotificationVisibleIntent(ZILcom/android/server/ConnectivityService$NotificationType;ILjava/lang/String;Landroid/app/PendingIntent;Z)V

    return-void
.end method

.method static synthetic -wrap27(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;)V
    .locals 0
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "networkCapabilities"    # Landroid/net/NetworkCapabilities;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->updateCapabilities(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;)V

    return-void
.end method

.method static synthetic -wrap28(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .locals 0
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->updateInetCondition(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    return-void
.end method

.method static synthetic -wrap29(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/LinkProperties;)V
    .locals 0
    .param p1, "networkAgent"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "oldLp"    # Landroid/net/LinkProperties;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->updateLinkProperties(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/LinkProperties;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/ConnectivityService;Landroid/net/ProxyInfo;)V
    .locals 0
    .param p1, "proxy"    # Landroid/net/ProxyInfo;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleApplyDefaultProxy(Landroid/net/ProxyInfo;)V

    return-void
.end method

.method static synthetic -wrap30(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo;)V
    .locals 0
    .param p1, "networkAgent"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "newInfo"    # Landroid/net/NetworkInfo;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->updateNetworkInfo(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo;)V

    return-void
.end method

.method static synthetic -wrap31(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;I)V
    .locals 0
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "score"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->updateNetworkScore(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/ConnectivityService;Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleAsyncChannelDisconnected(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/ConnectivityService;Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleAsyncChannelHalfConnect(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/ConnectivityService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->handleDeprecatedGlobalHttpProxy()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .locals 0
    .param p1, "oldNetwork"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleLingerComplete(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/ConnectivityService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->handleMobileDataAlwaysOn()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/ConnectivityService;Landroid/net/Network;)V
    .locals 0
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handlePromptUnvalidated(Landroid/net/Network;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    .locals 21
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "netManager"    # Landroid/os/INetworkManagementService;
    .param p3, "statsService"    # Landroid/net/INetworkStatsService;
    .param p4, "policyManager"    # Landroid/net/INetworkPolicyManager;

    .prologue
    .line 629
    invoke-direct/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;-><init>()V

    .line 198
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    .line 204
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mRulesLock:Ljava/lang/Object;

    .line 206
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mUidRules:Landroid/util/SparseIntArray;

    .line 208
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mMeteredIfaces:Ljava/util/HashSet;

    .line 213
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    .line 378
    const-string/jumbo v2, ""

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockCausedBy:Ljava/lang/String;

    .line 390
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mDefaultProxy:Landroid/net/ProxyInfo;

    .line 391
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mProxyLock:Ljava/lang/Object;

    .line 392
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/ConnectivityService;->mDefaultProxyDisabled:Z

    .line 395
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyInfo;

    .line 397
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mPacManager:Lcom/android/server/connectivity/PacManager;

    .line 418
    const/16 v2, 0x64

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/ConnectivityService;->mNextNetId:I

    .line 421
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/ConnectivityService;->mNextNetworkRequestId:I

    .line 425
    new-instance v2, Landroid/util/LocalLog;

    const/16 v3, 0x14

    invoke-direct {v2, v3}, Landroid/util/LocalLog;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mNetworkRequestInfoLogs:Landroid/util/LocalLog;

    .line 430
    new-instance v2, Ljava/util/ArrayDeque;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Ljava/util/ArrayDeque;-><init>(I)V

    .line 429
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mValidationLogs:Ljava/util/ArrayDeque;

    .line 622
    new-instance v2, Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;-><init>(Lcom/android/server/ConnectivityService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    .line 1279
    new-instance v2, Lcom/android/server/ConnectivityService$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/ConnectivityService$1;-><init>(Lcom/android/server/ConnectivityService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mDataActivityObserver:Landroid/net/INetworkManagementEventObserver;

    .line 1382
    new-instance v2, Lcom/android/server/ConnectivityService$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/ConnectivityService$2;-><init>(Lcom/android/server/ConnectivityService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mPolicyListener:Landroid/net/INetworkPolicyListener;

    .line 1585
    new-instance v2, Lcom/android/server/ConnectivityService$3;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/ConnectivityService$3;-><init>(Lcom/android/server/ConnectivityService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mUserPresentReceiver:Landroid/content/BroadcastReceiver;

    .line 3434
    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "/data/misc/radio/provisioning_urls.xml"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mProvisioningUrlFile:Ljava/io/File;

    .line 3571
    new-instance v2, Lcom/android/server/ConnectivityService$4;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/ConnectivityService$4;-><init>(Lcom/android/server/ConnectivityService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mUserIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 3587
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 3586
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mNetworkFactoryInfos:Ljava/util/HashMap;

    .line 3589
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 3588
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mNetworkRequests:Ljava/util/HashMap;

    .line 3908
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 3907
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mNetworkForRequestId:Landroid/util/SparseArray;

    .line 3913
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 3912
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    .line 3918
    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mNetIdInUse:Landroid/util/SparseBooleanArray;

    .line 3924
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 3923
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    .line 631
    const-string/jumbo v2, "ConnectivityService starting up"

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 633
    const/4 v2, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/ConnectivityService;->createInternetRequestForTransport(I)Landroid/net/NetworkRequest;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mDefaultRequest:Landroid/net/NetworkRequest;

    .line 634
    new-instance v1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/ConnectivityService;->mDefaultRequest:Landroid/net/NetworkRequest;

    .line 635
    new-instance v5, Landroid/os/Binder;

    invoke-direct {v5}, Landroid/os/Binder;-><init>()V

    .line 634
    const/4 v3, 0x0

    .line 635
    const/4 v6, 0x1

    move-object/from16 v2, p0

    .line 634
    invoke-direct/range {v1 .. v6}, Lcom/android/server/ConnectivityService$NetworkRequestInfo;-><init>(Lcom/android/server/ConnectivityService;Landroid/os/Messenger;Landroid/net/NetworkRequest;Landroid/os/IBinder;Z)V

    .line 636
    .local v1, "defaultNRI":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mNetworkRequests:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mDefaultRequest:Landroid/net/NetworkRequest;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 637
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mNetworkRequestInfoLogs:Landroid/util/LocalLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "REGISTER "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 640
    const/4 v2, 0x0

    .line 639
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/ConnectivityService;->createInternetRequestForTransport(I)Landroid/net/NetworkRequest;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mDefaultMobileDataRequest:Landroid/net/NetworkRequest;

    .line 642
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/ConnectivityService;->createHandlerThread()Landroid/os/HandlerThread;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 643
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 644
    new-instance v2, Lcom/android/server/ConnectivityService$InternalHandler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/android/server/ConnectivityService$InternalHandler;-><init>(Lcom/android/server/ConnectivityService;Landroid/os/Looper;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    .line 645
    new-instance v2, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;-><init>(Lcom/android/server/ConnectivityService;Landroid/os/Looper;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mTrackerHandler:Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;

    .line 648
    const-string/jumbo v2, "net.hostname"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 649
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 650
    const-string/jumbo v3, "android_id"

    .line 649
    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 651
    .local v12, "id":Ljava/lang/String;
    if-eqz v12, :cond_0

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 652
    new-instance v2, Ljava/lang/String;

    const-string/jumbo v3, "android-"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 653
    .local v16, "name":Ljava/lang/String;
    const-string/jumbo v2, "net.hostname"

    move-object/from16 v0, v16

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    .end local v12    # "id":Ljava/lang/String;
    .end local v16    # "name":Ljava/lang/String;
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 659
    const-string/jumbo v3, "default_dns_server"

    .line 658
    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 660
    .local v8, "dns":Ljava/lang/String;
    if-eqz v8, :cond_1

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 661
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 662
    const v3, 0x104002f

    .line 661
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 665
    :cond_2
    :try_start_0
    invoke-static {v8}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mDefaultDns:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 670
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 671
    const-string/jumbo v3, "connectivity_release_pending_intent_delay_ms"

    const/16 v4, 0x1388

    .line 670
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/ConnectivityService;->mReleasePendingIntentDelayMs:I

    .line 673
    const-string/jumbo v2, "missing Context"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/android/server/ConnectivityService;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    .line 674
    const-string/jumbo v2, "missing INetworkManagementService"

    move-object/from16 v0, p2

    invoke-static {v0, v2}, Lcom/android/server/ConnectivityService;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/INetworkManagementService;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    .line 675
    const-string/jumbo v2, "missing INetworkStatsService"

    move-object/from16 v0, p3

    invoke-static {v0, v2}, Lcom/android/server/ConnectivityService;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/INetworkStatsService;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mStatsService:Landroid/net/INetworkStatsService;

    .line 676
    const-string/jumbo v2, "missing INetworkPolicyManager"

    move-object/from16 v0, p4

    invoke-static {v0, v2}, Lcom/android/server/ConnectivityService;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/INetworkPolicyManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mPolicyManager:Landroid/net/INetworkPolicyManager;

    .line 677
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mKeyStore:Landroid/security/KeyStore;

    .line 678
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 681
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mPolicyManager:Landroid/net/INetworkPolicyManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mPolicyListener:Landroid/net/INetworkPolicyListener;

    invoke-interface {v2, v3}, Landroid/net/INetworkPolicyManager;->registerListener(Landroid/net/INetworkPolicyListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 688
    :goto_1
    const-string/jumbo v2, "power"

    .line 687
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/os/PowerManager;

    .line 689
    .local v18, "powerManager":Landroid/os/PowerManager;
    const-string/jumbo v2, "ConnectivityService"

    const/4 v3, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 690
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 691
    const v3, 0x10e000d

    .line 690
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockTimeout:I

    .line 692
    const-string/jumbo v2, "ConnectivityService"

    const/4 v3, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mPendingIntentWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 694
    const/16 v2, 0x12

    new-array v2, v2, [Landroid/net/NetworkConfig;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    .line 697
    const-string/jumbo v2, "ro.radio.noril"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v20

    .line 698
    .local v20, "wifiOnly":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "wifiOnly="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 699
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 700
    const v3, 0x107000c

    .line 699
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v15

    .line 701
    .local v15, "naStrings":[Ljava/lang/String;
    const/4 v2, 0x0

    array-length v3, v15

    :goto_2
    if-ge v2, v3, :cond_6

    aget-object v14, v15, v2

    .line 703
    .local v14, "naString":Ljava/lang/String;
    :try_start_2
    new-instance v13, Landroid/net/NetworkConfig;

    invoke-direct {v13, v14}, Landroid/net/NetworkConfig;-><init>(Ljava/lang/String;)V

    .line 705
    .local v13, "n":Landroid/net/NetworkConfig;
    iget v4, v13, Landroid/net/NetworkConfig;->type:I

    const/16 v6, 0x11

    if-le v4, v6, :cond_3

    .line 706
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Error in networkAttributes - ignoring attempt to define type "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 707
    iget v6, v13, Landroid/net/NetworkConfig;->type:I

    .line 706
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 701
    .end local v13    # "n":Landroid/net/NetworkConfig;
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 666
    .end local v14    # "naString":Ljava/lang/String;
    .end local v15    # "naStrings":[Ljava/lang/String;
    .end local v18    # "powerManager":Landroid/os/PowerManager;
    .end local v20    # "wifiOnly":Z
    :catch_0
    move-exception v11

    .line 667
    .local v11, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error setting defaultDns using "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 682
    .end local v11    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v9

    .line 684
    .local v9, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unable to register INetworkPolicyListener"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 710
    .end local v9    # "e":Landroid/os/RemoteException;
    .restart local v13    # "n":Landroid/net/NetworkConfig;
    .restart local v14    # "naString":Ljava/lang/String;
    .restart local v15    # "naStrings":[Ljava/lang/String;
    .restart local v18    # "powerManager":Landroid/os/PowerManager;
    .restart local v20    # "wifiOnly":Z
    :cond_3
    if-eqz v20, :cond_4

    :try_start_3
    iget v4, v13, Landroid/net/NetworkConfig;->type:I

    invoke-static {v4}, Landroid/net/ConnectivityManager;->isNetworkTypeMobile(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 711
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "networkAttributes - ignoring mobile as this dev is wifiOnly "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 712
    iget v6, v13, Landroid/net/NetworkConfig;->type:I

    .line 711
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 724
    .end local v13    # "n":Landroid/net/NetworkConfig;
    :catch_2
    move-exception v10

    .local v10, "e":Ljava/lang/Exception;
    goto :goto_3

    .line 715
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v13    # "n":Landroid/net/NetworkConfig;
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    iget v6, v13, Landroid/net/NetworkConfig;->type:I

    aget-object v4, v4, v6

    if-eqz v4, :cond_5

    .line 716
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Error in networkAttributes - ignoring attempt to redefine type "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 717
    iget v6, v13, Landroid/net/NetworkConfig;->type:I

    .line 716
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 720
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    iget v6, v13, Landroid/net/NetworkConfig;->type:I

    invoke-virtual {v4, v6}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->addSupportedType(I)V

    .line 722
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    iget v6, v13, Landroid/net/NetworkConfig;->type:I

    aput-object v13, v4, v6

    .line 723
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/ConnectivityService;->mNetworksDefined:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/ConnectivityService;->mNetworksDefined:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_3

    .line 730
    .end local v13    # "n":Landroid/net/NetworkConfig;
    .end local v14    # "naString":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    const/16 v3, 0x11

    aget-object v2, v2, v3

    if-nez v2, :cond_7

    .line 733
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->addSupportedType(I)V

    .line 734
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/ConnectivityService;->mNetworksDefined:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/ConnectivityService;->mNetworksDefined:I

    .line 739
    :cond_7
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mProtectedNetworks:Ljava/util/List;

    .line 740
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 741
    const v3, 0x107000d

    .line 740
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v19

    .line 742
    .local v19, "protectedNetworks":[I
    const/4 v2, 0x0

    move-object/from16 v0, v19

    array-length v3, v0

    :goto_4
    if-ge v2, v3, :cond_9

    aget v17, v19, v2

    .line 743
    .local v17, "p":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v4, v4, v17

    if-eqz v4, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/ConnectivityService;->mProtectedNetworks:Ljava/util/List;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 744
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/ConnectivityService;->mProtectedNetworks:Ljava/util/List;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 742
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 746
    :cond_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Ignoring protectedNetwork "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto :goto_5

    .line 750
    .end local v17    # "p":I
    :cond_9
    const-string/jumbo v2, "cm.test.mode"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 751
    const-string/jumbo v2, "ro.build.type"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "eng"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 750
    :goto_6
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/ConnectivityService;->mTestMode:Z

    .line 753
    new-instance v2, Lcom/android/server/connectivity/Tethering;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    invoke-virtual {v6}, Lcom/android/server/ConnectivityService$InternalHandler;->getLooper()Landroid/os/Looper;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-direct {v2, v3, v4, v0, v6}, Lcom/android/server/connectivity/Tethering;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/os/Looper;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    .line 755
    new-instance v2, Lcom/android/server/connectivity/PermissionMonitor;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-direct {v2, v3, v4}, Lcom/android/server/connectivity/PermissionMonitor;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mPermissionMonitor:Lcom/android/server/connectivity/PermissionMonitor;

    .line 758
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 759
    .local v5, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "android.intent.action.USER_STARTING"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 760
    const-string/jumbo v2, "android.intent.action.USER_STOPPING"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 761
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    .line 762
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mUserIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 761
    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 765
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V

    .line 766
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mDataActivityObserver:Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3

    .line 772
    :goto_7
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mInetLog:Ljava/util/ArrayList;

    .line 775
    new-instance v2, Lcom/android/server/ConnectivityService$SettingsObserver;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    invoke-direct {v2, v3, v4}, Lcom/android/server/ConnectivityService$SettingsObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mSettingsObserver:Lcom/android/server/ConnectivityService$SettingsObserver;

    .line 776
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ConnectivityService;->registerSettingsCallbacks()V

    .line 778
    new-instance v2, Lcom/android/server/connectivity/DataConnectionStats;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/connectivity/DataConnectionStats;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mDataConnectionStats:Lcom/android/server/connectivity/DataConnectionStats;

    .line 779
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mDataConnectionStats:Lcom/android/server/connectivity/DataConnectionStats;

    invoke-virtual {v2}, Lcom/android/server/connectivity/DataConnectionStats;->startMonitoring()V

    .line 781
    new-instance v2, Lcom/android/server/connectivity/PacManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v6, 0x10

    invoke-direct {v2, v3, v4, v6}, Lcom/android/server/connectivity/PacManager;-><init>(Landroid/content/Context;Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mPacManager:Lcom/android/server/connectivity/PacManager;

    .line 783
    const-string/jumbo v2, "user"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mUserManager:Landroid/os/UserManager;

    .line 785
    new-instance v2, Lcom/android/server/connectivity/KeepaliveTracker;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    invoke-direct {v2, v3}, Lcom/android/server/connectivity/KeepaliveTracker;-><init>(Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mKeepaliveTracker:Lcom/android/server/connectivity/KeepaliveTracker;

    .line 630
    return-void

    .line 750
    .end local v5    # "intentFilter":Landroid/content/IntentFilter;
    :cond_a
    const/4 v2, 0x0

    goto/16 :goto_6

    .line 767
    .restart local v5    # "intentFilter":Landroid/content/IntentFilter;
    :catch_3
    move-exception v9

    .line 768
    .restart local v9    # "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error registering observer :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto :goto_7
.end method

.method private addLegacyRouteToHost(Landroid/net/LinkProperties;Ljava/net/InetAddress;II)Z
    .locals 5
    .param p1, "lp"    # Landroid/net/LinkProperties;
    .param p2, "addr"    # Ljava/net/InetAddress;
    .param p3, "netId"    # I
    .param p4, "uid"    # I

    .prologue
    .line 1357
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getAllRoutes()Ljava/util/List;

    move-result-object v3

    invoke-static {v3, p2}, Landroid/net/RouteInfo;->selectBestRoute(Ljava/util/Collection;Ljava/net/InetAddress;)Landroid/net/RouteInfo;

    move-result-object v0

    .line 1358
    .local v0, "bestRoute":Landroid/net/RouteInfo;
    if-nez v0, :cond_0

    .line 1359
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Landroid/net/RouteInfo;->makeHostRoute(Ljava/net/InetAddress;Ljava/lang/String;)Landroid/net/RouteInfo;

    move-result-object v0

    .line 1371
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Adding "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " for interface "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 1373
    :try_start_0
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v3, p3, v0, p4}, Landroid/os/INetworkManagementService;->addLegacyRouteForNetId(ILandroid/net/RouteInfo;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1379
    const/4 v3, 0x1

    return v3

    .line 1361
    :cond_0
    invoke-virtual {v0}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    move-result-object v2

    .line 1362
    .local v2, "iface":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1364
    invoke-static {p2, v2}, Landroid/net/RouteInfo;->makeHostRoute(Ljava/net/InetAddress;Ljava/lang/String;)Landroid/net/RouteInfo;

    move-result-object v0

    goto :goto_0

    .line 1368
    :cond_1
    invoke-virtual {v0}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v3

    invoke-static {p2, v3, v2}, Landroid/net/RouteInfo;->makeHostRoute(Ljava/net/InetAddress;Ljava/net/InetAddress;Ljava/lang/String;)Landroid/net/RouteInfo;

    move-result-object v0

    goto :goto_0

    .line 1374
    .end local v2    # "iface":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1376
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception trying to add a route: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 1377
    const/4 v3, 0x0

    return v3
.end method

.method private addValidationLogs(Landroid/util/LocalLog$ReadOnlyLocalLog;Landroid/net/Network;)V
    .locals 3
    .param p1, "log"    # Landroid/util/LocalLog$ReadOnlyLocalLog;
    .param p2, "network"    # Landroid/net/Network;

    .prologue
    .line 433
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mValidationLogs:Ljava/util/ArrayDeque;

    monitor-enter v1

    .line 434
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mValidationLogs:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    const/16 v2, 0xa

    if-lt v0, v2, :cond_0

    .line 435
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mValidationLogs:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeLast()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 433
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 437
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mValidationLogs:Ljava/util/ArrayDeque;

    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, p2, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 432
    return-void
.end method

.method private argsContain([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "args"    # [Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1803
    array-length v3, p1

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, p1, v1

    .line 1804
    .local v0, "arg":Ljava/lang/String;
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x1

    return v1

    .line 1803
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1806
    .end local v0    # "arg":Ljava/lang/String;
    :cond_1
    return v2
.end method

.method private callCallbackForRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;Lcom/android/server/connectivity/NetworkAgentInfo;I)V
    .locals 6
    .param p1, "nri"    # Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    .param p2, "networkAgent"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p3, "notificationType"    # I

    .prologue
    .line 4245
    iget-object v3, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->messenger:Landroid/os/Messenger;

    if-nez v3, :cond_0

    return-void

    .line 4246
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4247
    .local v0, "bundle":Landroid/os/Bundle;
    const-class v3, Landroid/net/NetworkRequest;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    .line 4248
    new-instance v4, Landroid/net/NetworkRequest;

    iget-object v5, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-direct {v4, v5}, Landroid/net/NetworkRequest;-><init>(Landroid/net/NetworkRequest;)V

    .line 4247
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 4249
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 4250
    .local v2, "msg":Landroid/os/Message;
    const v3, 0x80005

    if-eq p3, v3, :cond_1

    .line 4251
    const v3, 0x80008

    if-eq p3, v3, :cond_1

    .line 4252
    const-class v3, Landroid/net/Network;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p2, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 4254
    :cond_1
    packed-switch p3, :pswitch_data_0

    .line 4270
    :goto_0
    :pswitch_0
    iput p3, v2, Landroid/os/Message;->what:I

    .line 4271
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 4277
    :try_start_0
    iget-object v3, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->messenger:Landroid/os/Messenger;

    invoke-virtual {v3, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4244
    :goto_1
    return-void

    .line 4256
    :pswitch_1
    const/16 v3, 0x7530

    iput v3, v2, Landroid/os/Message;->arg1:I

    goto :goto_0

    .line 4260
    :pswitch_2
    const-class v3, Landroid/net/NetworkCapabilities;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    .line 4261
    new-instance v4, Landroid/net/NetworkCapabilities;

    iget-object v5, p2, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {v4, v5}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    .line 4260
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    .line 4265
    :pswitch_3
    const-class v3, Landroid/net/LinkProperties;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    .line 4266
    new-instance v4, Landroid/net/LinkProperties;

    iget-object v5, p2, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-direct {v4, v5}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    .line 4265
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    .line 4278
    :catch_0
    move-exception v1

    .line 4280
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "RemoteException caught trying to send a callback msg for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 4254
    nop

    :pswitch_data_0
    .packed-switch 0x80003
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private canonicalizeProxyInfo(Landroid/net/ProxyInfo;)Landroid/net/ProxyInfo;
    .locals 2
    .param p1, "proxy"    # Landroid/net/ProxyInfo;

    .prologue
    .line 2817
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2818
    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 2817
    if-eqz v0, :cond_1

    .line 2819
    :cond_0
    const/4 p1, 0x0

    .line 2821
    .end local p1    # "proxy":Landroid/net/ProxyInfo;
    :cond_1
    return-object p1
.end method

.method private static checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 3054
    .local p0, "value":Ljava/lang/Object;, "TT;"
    if-nez p0, :cond_0

    .line 3055
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3057
    :cond_0
    return-object p0
.end method

.method private createInternetRequestForTransport(I)Landroid/net/NetworkRequest;
    .locals 4
    .param p1, "transportType"    # I

    .prologue
    const/4 v3, -0x1

    .line 789
    new-instance v0, Landroid/net/NetworkCapabilities;

    invoke-direct {v0}, Landroid/net/NetworkCapabilities;-><init>()V

    .line 790
    .local v0, "netCap":Landroid/net/NetworkCapabilities;
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 791
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 792
    if-le p1, v3, :cond_0

    .line 793
    invoke-virtual {v0, p1}, Landroid/net/NetworkCapabilities;->addTransportType(I)Landroid/net/NetworkCapabilities;

    .line 795
    :cond_0
    new-instance v1, Landroid/net/NetworkRequest;

    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->nextNetworkRequestId()I

    move-result v2

    invoke-direct {v1, v0, v3, v2}, Landroid/net/NetworkRequest;-><init>(Landroid/net/NetworkCapabilities;II)V

    return-object v1
.end method

.method private createVpnInfo(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnInfo;
    .locals 7
    .param p1, "vpn"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 3194
    invoke-virtual {p1}, Lcom/android/server/connectivity/Vpn;->getVpnInfo()Lcom/android/internal/net/VpnInfo;

    move-result-object v1

    .line 3195
    .local v1, "info":Lcom/android/internal/net/VpnInfo;
    if-nez v1, :cond_0

    .line 3196
    return-object v4

    .line 3198
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/connectivity/Vpn;->getUnderlyingNetworks()[Landroid/net/Network;

    move-result-object v3

    .line 3201
    .local v3, "underlyingNetworks":[Landroid/net/Network;
    if-nez v3, :cond_3

    .line 3202
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getDefaultNetwork()Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    .line 3203
    .local v0, "defaultNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v0, :cond_1

    iget-object v5, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    if-eqz v5, :cond_1

    .line 3204
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getDefaultNetwork()Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v5}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/android/internal/net/VpnInfo;->primaryUnderlyingIface:Ljava/lang/String;

    .line 3212
    .end local v0    # "defaultNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_1
    :goto_0
    iget-object v5, v1, Lcom/android/internal/net/VpnInfo;->primaryUnderlyingIface:Ljava/lang/String;

    if-nez v5, :cond_2

    move-object v1, v4

    .end local v1    # "info":Lcom/android/internal/net/VpnInfo;
    :cond_2
    return-object v1

    .line 3206
    .restart local v1    # "info":Lcom/android/internal/net/VpnInfo;
    :cond_3
    array-length v5, v3

    if-lez v5, :cond_1

    .line 3207
    aget-object v5, v3, v6

    invoke-virtual {p0, v5}, Lcom/android/server/ConnectivityService;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v2

    .line 3208
    .local v2, "linkProperties":Landroid/net/LinkProperties;
    if-eqz v2, :cond_1

    .line 3209
    invoke-virtual {v2}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/android/internal/net/VpnInfo;->primaryUnderlyingIface:Ljava/lang/String;

    goto :goto_0
.end method

.method private enforceAccessPermission()V
    .locals 3

    .prologue
    .line 1448
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    .line 1449
    const-string/jumbo v1, "android.permission.ACCESS_NETWORK_STATE"

    .line 1450
    const-string/jumbo v2, "ConnectivityService"

    .line 1448
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1447
    return-void
.end method

.method private enforceChangePermission()V
    .locals 1

    .prologue
    .line 1454
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/ConnectivityManager;->enforceChangePermission(Landroid/content/Context;)V

    .line 1453
    return-void
.end method

.method private enforceConnectivityInternalPermission()V
    .locals 3

    .prologue
    .line 1464
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    .line 1465
    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    .line 1466
    const-string/jumbo v2, "ConnectivityService"

    .line 1464
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1463
    return-void
.end method

.method private enforceCrossUserPermission(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 1432
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 1434
    return-void

    .line 1436
    :cond_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    .line 1437
    const-string/jumbo v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 1438
    const-string/jumbo v2, "ConnectivityService"

    .line 1436
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1431
    return-void
.end method

.method private enforceInternetPermission()V
    .locals 3

    .prologue
    .line 1442
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    .line 1443
    const-string/jumbo v1, "android.permission.INTERNET"

    .line 1444
    const-string/jumbo v2, "ConnectivityService"

    .line 1442
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1441
    return-void
.end method

.method private enforceKeepalivePermission()V
    .locals 3

    .prologue
    .line 1470
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.PACKET_KEEPALIVE_OFFLOAD"

    const-string/jumbo v2, "ConnectivityService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1469
    return-void
.end method

.method private enforceMeteredApnPolicy(Landroid/net/NetworkCapabilities;)V
    .locals 6
    .param p1, "networkCapabilities"    # Landroid/net/NetworkCapabilities;

    .prologue
    const/16 v5, 0xb

    .line 3764
    invoke-virtual {p1, v5}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3766
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3767
    .local v0, "uid":I
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v3

    .line 3768
    :try_start_0
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mUidRules:Landroid/util/SparseIntArray;

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4}, Landroid/util/SparseIntArray;->get(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .local v1, "uidRules":I
    monitor-exit v3

    .line 3770
    if-eqz v1, :cond_0

    .line 3773
    invoke-virtual {p1, v5}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 3762
    .end local v0    # "uid":I
    .end local v1    # "uidRules":I
    :cond_0
    return-void

    .line 3767
    .restart local v0    # "uid":I
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private enforceNetworkRequestPermissions(Landroid/net/NetworkCapabilities;)V
    .locals 1
    .param p1, "networkCapabilities"    # Landroid/net/NetworkCapabilities;

    .prologue
    .line 3737
    const/16 v0, 0xd

    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3738
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 3736
    :goto_0
    return-void

    .line 3740
    :cond_0
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceChangePermission()V

    goto :goto_0
.end method

.method private enforceTetherAccessPermission()V
    .locals 3

    .prologue
    .line 1458
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    .line 1459
    const-string/jumbo v1, "android.permission.ACCESS_NETWORK_STATE"

    .line 1460
    const-string/jumbo v2, "ConnectivityService"

    .line 1458
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1457
    return-void
.end method

.method private ensureRequestableCapabilities(Landroid/net/NetworkCapabilities;)V
    .locals 4
    .param p1, "networkCapabilities"    # Landroid/net/NetworkCapabilities;

    .prologue
    .line 3668
    invoke-virtual {p1}, Landroid/net/NetworkCapabilities;->describeFirstNonRequestableCapability()Ljava/lang/String;

    move-result-object v0

    .line 3669
    .local v0, "badCapability":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 3670
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Cannot request network with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3667
    :cond_0
    return-void
.end method

.method private findExistingNetworkRequestInfo(Landroid/app/PendingIntent;)Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    .locals 6
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;

    .prologue
    const/4 v5, 0x0

    .line 2274
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 2275
    .local v3, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mNetworkRequests:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2276
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/net/NetworkRequest;Lcom/android/server/ConnectivityService$NetworkRequestInfo;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    iget-object v2, v4, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mPendingIntent:Landroid/app/PendingIntent;

    .line 2277
    .local v2, "existingPendingIntent":Landroid/app/PendingIntent;
    if-eqz v2, :cond_0

    .line 2278
    invoke-virtual {v2}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v4

    .line 2277
    if-eqz v4, :cond_0

    .line 2279
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    return-object v4

    .line 2282
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/net/NetworkRequest;Lcom/android/server/ConnectivityService$NetworkRequestInfo;>;"
    .end local v2    # "existingPendingIntent":Landroid/app/PendingIntent;
    :cond_1
    return-object v5
.end method

.method private flushVmDnsCache()V
    .locals 5

    .prologue
    .line 1767
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.CLEAR_DNS_CACHE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1768
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v3, 0x20000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1772
    const/high16 v3, 0x4000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1773
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1775
    .local v0, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1777
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1763
    return-void

    .line 1776
    :catchall_0
    move-exception v3

    .line 1777
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1776
    throw v3
.end method

.method private getDefaultNetwork()Lcom/android/server/connectivity/NetworkAgentInfo;
    .locals 2

    .prologue
    .line 3934
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkForRequestId:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mDefaultRequest:Landroid/net/NetworkRequest;

    iget v1, v1, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/NetworkAgentInfo;

    return-object v0
.end method

.method private getDefaultProxy()Landroid/net/ProxyInfo;
    .locals 3

    .prologue
    .line 2790
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mProxyLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2791
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyInfo;

    .line 2792
    .local v0, "ret":Landroid/net/ProxyInfo;
    if-nez v0, :cond_0

    iget-boolean v1, p0, Lcom/android/server/ConnectivityService;->mDefaultProxyDisabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    monitor-exit v2

    .line 2793
    return-object v0

    .line 2792
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mDefaultProxy:Landroid/net/ProxyInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2790
    .end local v0    # "ret":Landroid/net/ProxyInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private getFilteredNetworkInfo(Landroid/net/NetworkInfo;Landroid/net/LinkProperties;I)Landroid/net/NetworkInfo;
    .locals 3
    .param p1, "info"    # Landroid/net/NetworkInfo;
    .param p2, "lp"    # Landroid/net/LinkProperties;
    .param p3, "uid"    # I

    .prologue
    const/4 v2, 0x0

    .line 968
    if-eqz p1, :cond_0

    invoke-direct {p0, p2, p3}, Lcom/android/server/ConnectivityService;->isNetworkWithLinkPropertiesBlocked(Landroid/net/LinkProperties;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 970
    new-instance v0, Landroid/net/NetworkInfo;

    invoke-direct {v0, p1}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    .line 971
    .end local p1    # "info":Landroid/net/NetworkInfo;
    .local v0, "info":Landroid/net/NetworkInfo;
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->BLOCKED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2, v2}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, v0

    .line 977
    .end local v0    # "info":Landroid/net/NetworkInfo;
    .restart local p1    # "info":Landroid/net/NetworkInfo;
    :cond_0
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    if-eqz v1, :cond_1

    .line 978
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    invoke-virtual {v1, p1}, Lcom/android/server/net/LockdownVpnTracker;->augmentNetworkInfo(Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    move-result-object p1

    .line 981
    :cond_1
    return-object p1
.end method

.method private getFilteredNetworkState(II)Landroid/net/NetworkState;
    .locals 13
    .param p1, "networkType"    # I
    .param p2, "uid"    # I

    .prologue
    const/4 v6, 0x0

    .line 847
    const/4 v1, 0x0

    .line 848
    .local v1, "info":Landroid/net/NetworkInfo;
    const/4 v2, 0x0

    .line 849
    .local v2, "lp":Landroid/net/LinkProperties;
    const/4 v3, 0x0

    .line 850
    .local v3, "nc":Landroid/net/NetworkCapabilities;
    const/4 v4, 0x0

    .line 851
    .local v4, "network":Landroid/net/Network;
    const/4 v5, 0x0

    .line 853
    .local v5, "subscriberId":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->isTypeSupported(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 854
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->getNetworkForType(I)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v9

    .line 855
    .local v9, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v9, :cond_2

    .line 856
    monitor-enter v9

    .line 857
    :try_start_0
    new-instance v7, Landroid/net/NetworkInfo;

    iget-object v0, v9, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-direct {v7, v0}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 858
    .end local v1    # "info":Landroid/net/NetworkInfo;
    .local v7, "info":Landroid/net/NetworkInfo;
    :try_start_1
    new-instance v8, Landroid/net/LinkProperties;

    iget-object v0, v9, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-direct {v8, v0}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 859
    .local v8, "lp":Landroid/net/LinkProperties;
    :try_start_2
    new-instance v10, Landroid/net/NetworkCapabilities;

    .end local v2    # "lp":Landroid/net/LinkProperties;
    iget-object v0, v9, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {v10, v0}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 862
    .local v10, "nc":Landroid/net/NetworkCapabilities;
    :try_start_3
    iget-object v4, v9, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    .line 863
    .end local v3    # "nc":Landroid/net/NetworkCapabilities;
    .local v4, "network":Landroid/net/Network;
    iget-object v0, v9, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    if-eqz v0, :cond_1

    iget-object v0, v9, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    iget-object v5, v0, Landroid/net/NetworkMisc;->subscriberId:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .end local v5    # "subscriberId":Ljava/lang/String;
    :goto_0
    monitor-exit v9

    .line 865
    invoke-virtual {v7, p1}, Landroid/net/NetworkInfo;->setType(I)V

    move-object v3, v10

    .end local v10    # "nc":Landroid/net/NetworkCapabilities;
    .local v3, "nc":Landroid/net/NetworkCapabilities;
    move-object v2, v8

    .end local v8    # "lp":Landroid/net/LinkProperties;
    .local v2, "lp":Landroid/net/LinkProperties;
    move-object v1, v7

    .line 874
    .end local v4    # "network":Landroid/net/Network;
    .end local v7    # "info":Landroid/net/NetworkInfo;
    .local v1, "info":Landroid/net/NetworkInfo;
    :goto_1
    invoke-direct {p0, v1, v2, p2}, Lcom/android/server/ConnectivityService;->getFilteredNetworkInfo(Landroid/net/NetworkInfo;Landroid/net/LinkProperties;I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 877
    .end local v1    # "info":Landroid/net/NetworkInfo;
    .end local v2    # "lp":Landroid/net/LinkProperties;
    .end local v3    # "nc":Landroid/net/NetworkCapabilities;
    .end local v9    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_0
    new-instance v0, Landroid/net/NetworkState;

    invoke-direct/range {v0 .. v6}, Landroid/net/NetworkState;-><init>(Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;Landroid/net/Network;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 863
    .restart local v4    # "network":Landroid/net/Network;
    .restart local v5    # "subscriberId":Ljava/lang/String;
    .restart local v7    # "info":Landroid/net/NetworkInfo;
    .restart local v8    # "lp":Landroid/net/LinkProperties;
    .restart local v9    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .restart local v10    # "nc":Landroid/net/NetworkCapabilities;
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 856
    .end local v7    # "info":Landroid/net/NetworkInfo;
    .end local v8    # "lp":Landroid/net/LinkProperties;
    .end local v10    # "nc":Landroid/net/NetworkCapabilities;
    .local v1, "info":Landroid/net/NetworkInfo;
    .local v2, "lp":Landroid/net/LinkProperties;
    .local v3, "nc":Landroid/net/NetworkCapabilities;
    .local v4, "network":Landroid/net/Network;
    :catchall_0
    move-exception v0

    .end local v1    # "info":Landroid/net/NetworkInfo;
    .end local v2    # "lp":Landroid/net/LinkProperties;
    .end local v3    # "nc":Landroid/net/NetworkCapabilities;
    .end local v4    # "network":Landroid/net/Network;
    :goto_2
    monitor-exit v9

    throw v0

    .line 867
    .restart local v1    # "info":Landroid/net/NetworkInfo;
    .restart local v2    # "lp":Landroid/net/LinkProperties;
    .restart local v3    # "nc":Landroid/net/NetworkCapabilities;
    .restart local v4    # "network":Landroid/net/Network;
    :cond_2
    new-instance v1, Landroid/net/NetworkInfo;

    .end local v1    # "info":Landroid/net/NetworkInfo;
    invoke-static {p1}, Landroid/net/ConnectivityManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v11, ""

    const/4 v12, 0x0

    invoke-direct {v1, p1, v12, v0, v11}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 868
    .local v1, "info":Landroid/net/NetworkInfo;
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1, v0, v6, v6}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 869
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 870
    new-instance v2, Landroid/net/LinkProperties;

    .end local v2    # "lp":Landroid/net/LinkProperties;
    invoke-direct {v2}, Landroid/net/LinkProperties;-><init>()V

    .line 871
    .local v2, "lp":Landroid/net/LinkProperties;
    new-instance v3, Landroid/net/NetworkCapabilities;

    .end local v3    # "nc":Landroid/net/NetworkCapabilities;
    invoke-direct {v3}, Landroid/net/NetworkCapabilities;-><init>()V

    .line 872
    .local v3, "nc":Landroid/net/NetworkCapabilities;
    const/4 v4, 0x0

    goto :goto_1

    .line 856
    .end local v1    # "info":Landroid/net/NetworkInfo;
    .local v2, "lp":Landroid/net/LinkProperties;
    .local v3, "nc":Landroid/net/NetworkCapabilities;
    .restart local v7    # "info":Landroid/net/NetworkInfo;
    :catchall_1
    move-exception v0

    move-object v1, v7

    .end local v7    # "info":Landroid/net/NetworkInfo;
    .restart local v1    # "info":Landroid/net/NetworkInfo;
    goto :goto_2

    .end local v1    # "info":Landroid/net/NetworkInfo;
    .end local v2    # "lp":Landroid/net/LinkProperties;
    .restart local v7    # "info":Landroid/net/NetworkInfo;
    .restart local v8    # "lp":Landroid/net/LinkProperties;
    :catchall_2
    move-exception v0

    move-object v2, v8

    .end local v8    # "lp":Landroid/net/LinkProperties;
    .local v2, "lp":Landroid/net/LinkProperties;
    move-object v1, v7

    .end local v7    # "info":Landroid/net/NetworkInfo;
    .restart local v1    # "info":Landroid/net/NetworkInfo;
    goto :goto_2

    .end local v1    # "info":Landroid/net/NetworkInfo;
    .end local v2    # "lp":Landroid/net/LinkProperties;
    .end local v3    # "nc":Landroid/net/NetworkCapabilities;
    .end local v4    # "network":Landroid/net/Network;
    .restart local v7    # "info":Landroid/net/NetworkInfo;
    .restart local v8    # "lp":Landroid/net/LinkProperties;
    .restart local v10    # "nc":Landroid/net/NetworkCapabilities;
    :catchall_3
    move-exception v0

    move-object v3, v10

    .end local v10    # "nc":Landroid/net/NetworkCapabilities;
    .local v3, "nc":Landroid/net/NetworkCapabilities;
    move-object v2, v8

    .end local v8    # "lp":Landroid/net/LinkProperties;
    .restart local v2    # "lp":Landroid/net/LinkProperties;
    move-object v1, v7

    .end local v7    # "info":Landroid/net/NetworkInfo;
    .restart local v1    # "info":Landroid/net/NetworkInfo;
    goto :goto_2
.end method

.method private getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;
    .locals 3
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    const/4 v0, 0x0

    .line 881
    if-nez p1, :cond_0

    .line 882
    return-object v0

    .line 884
    :cond_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    monitor-enter v1

    .line 885
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    iget v2, p1, Landroid/net/Network;->netId:I

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/NetworkAgentInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 884
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getNetworkCapabilitiesInternal(Lcom/android/server/connectivity/NetworkAgentInfo;)Landroid/net/NetworkCapabilities;
    .locals 2
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .prologue
    const/4 v1, 0x0

    .line 1201
    if-eqz p1, :cond_1

    .line 1202
    monitor-enter p1

    .line 1203
    :try_start_0
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    if-eqz v0, :cond_0

    .line 1204
    new-instance v0, Landroid/net/NetworkCapabilities;

    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {v0, v1}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    return-object v0

    :cond_0
    monitor-exit p1

    .line 1208
    :cond_1
    return-object v1

    .line 1202
    :catchall_0
    move-exception v0

    monitor-exit p1

    throw v0
.end method

.method private getProvisioningUrlBaseFromFile()Ljava/lang/String;
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 3446
    const/4 v6, 0x0

    .line 3447
    .local v6, "fileReader":Ljava/io/FileReader;
    const/4 v10, 0x0

    .line 3448
    .local v10, "parser":Lorg/xmlpull/v1/XmlPullParser;
    iget-object v11, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 3451
    .local v0, "config":Landroid/content/res/Configuration;
    :try_start_0
    new-instance v7, Ljava/io/FileReader;

    iget-object v11, p0, Lcom/android/server/ConnectivityService;->mProvisioningUrlFile:Ljava/io/File;

    invoke-direct {v7, v11}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3452
    .end local v6    # "fileReader":Ljava/io/FileReader;
    .local v7, "fileReader":Ljava/io/FileReader;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v10

    .line 3453
    .local v10, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v10, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 3454
    const-string/jumbo v11, "provisioningUrls"

    invoke-static {v10, v11}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 3457
    :cond_0
    :goto_0
    invoke-static {v10}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3459
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_c
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v5

    .line 3460
    .local v5, "element":Ljava/lang/String;
    if-nez v5, :cond_2

    .line 3487
    if-eqz v7, :cond_1

    .line 3489
    :try_start_2
    invoke-virtual {v7}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 3479
    :cond_1
    :goto_1
    return-object v13

    .line 3462
    :cond_2
    :try_start_3
    const-string/jumbo v11, "provisioningUrl"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 3463
    const-string/jumbo v11, "mcc"

    const/4 v12, 0x0

    invoke-interface {v10, v12, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_c
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v8

    .line 3465
    .local v8, "mcc":Ljava/lang/String;
    if-eqz v8, :cond_0

    :try_start_4
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iget v12, v0, Landroid/content/res/Configuration;->mcc:I

    if-ne v11, v12, :cond_0

    .line 3466
    const-string/jumbo v11, "mnc"

    const/4 v12, 0x0

    invoke-interface {v10, v12, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 3467
    .local v9, "mnc":Ljava/lang/String;
    if-eqz v9, :cond_0

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iget v12, v0, Landroid/content/res/Configuration;->mnc:I

    if-ne v11, v12, :cond_0

    .line 3468
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 3469
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v11

    const/4 v12, 0x4

    if-ne v11, v12, :cond_0

    .line 3470
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_b
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_c
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v11

    .line 3487
    if-eqz v7, :cond_3

    .line 3489
    :try_start_5
    invoke-virtual {v7}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 3470
    :cond_3
    :goto_2
    return-object v11

    .line 3490
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/io/IOException;
    goto :goto_2

    .line 3474
    .end local v2    # "e":Ljava/io/IOException;
    .end local v9    # "mnc":Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 3475
    .local v3, "e":Ljava/lang/NumberFormatException;
    :try_start_6
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "NumberFormatException in getProvisioningUrlBaseFromFile: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_c
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0

    .line 3480
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    .end local v5    # "element":Ljava/lang/String;
    .end local v8    # "mcc":Ljava/lang/String;
    .end local v10    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_2
    move-exception v1

    .local v1, "e":Ljava/io/FileNotFoundException;
    move-object v6, v7

    .line 3481
    .end local v7    # "fileReader":Ljava/io/FileReader;
    :goto_3
    :try_start_7
    const-string/jumbo v11, "Carrier Provisioning Urls file not found"

    invoke-static {v11}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 3487
    if-eqz v6, :cond_4

    .line 3489
    :try_start_8
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8

    .line 3493
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :cond_4
    :goto_4
    return-object v13

    .line 3490
    .restart local v5    # "element":Ljava/lang/String;
    .restart local v7    # "fileReader":Ljava/io/FileReader;
    .restart local v10    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_3
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 3484
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "element":Ljava/lang/String;
    .end local v7    # "fileReader":Ljava/io/FileReader;
    .restart local v6    # "fileReader":Ljava/io/FileReader;
    .local v10, "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_4
    move-exception v2

    .line 3485
    .end local v6    # "fileReader":Ljava/io/FileReader;
    .end local v10    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v2    # "e":Ljava/io/IOException;
    :goto_5
    :try_start_9
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "I/O exception reading Carrier Provisioning Urls file: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 3487
    if-eqz v6, :cond_4

    .line 3489
    :try_start_a
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    goto :goto_4

    .line 3490
    :catch_5
    move-exception v2

    goto :goto_4

    .line 3482
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v6    # "fileReader":Ljava/io/FileReader;
    .restart local v10    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_6
    move-exception v4

    .line 3483
    .end local v6    # "fileReader":Ljava/io/FileReader;
    .end local v10    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .local v4, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_6
    :try_start_b
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Xml parser exception reading Carrier Provisioning Urls file: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 3487
    if-eqz v6, :cond_4

    .line 3489
    :try_start_c
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    goto :goto_4

    .line 3490
    :catch_7
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto :goto_4

    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_8
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto :goto_4

    .line 3486
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v11

    .line 3487
    :goto_7
    if-eqz v6, :cond_5

    .line 3489
    :try_start_d
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    .line 3486
    :cond_5
    :goto_8
    throw v11

    .line 3490
    :catch_9
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto :goto_8

    .line 3486
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v7    # "fileReader":Ljava/io/FileReader;
    :catchall_1
    move-exception v11

    move-object v6, v7

    .end local v7    # "fileReader":Ljava/io/FileReader;
    .local v6, "fileReader":Ljava/io/FileReader;
    goto :goto_7

    .line 3480
    .local v6, "fileReader":Ljava/io/FileReader;
    .restart local v10    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_a
    move-exception v1

    .restart local v1    # "e":Ljava/io/FileNotFoundException;
    goto :goto_3

    .line 3482
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .end local v6    # "fileReader":Ljava/io/FileReader;
    .end local v10    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v7    # "fileReader":Ljava/io/FileReader;
    :catch_b
    move-exception v4

    .restart local v4    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    move-object v6, v7

    .end local v7    # "fileReader":Ljava/io/FileReader;
    .local v6, "fileReader":Ljava/io/FileReader;
    goto :goto_6

    .line 3484
    .end local v4    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v6    # "fileReader":Ljava/io/FileReader;
    .restart local v7    # "fileReader":Ljava/io/FileReader;
    :catch_c
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    move-object v6, v7

    .end local v7    # "fileReader":Ljava/io/FileReader;
    .restart local v6    # "fileReader":Ljava/io/FileReader;
    goto :goto_5
.end method

.method private getSignalStrengthThresholds(Lcom/android/server/connectivity/NetworkAgentInfo;)Ljava/util/ArrayList;
    .locals 4
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/connectivity/NetworkAgentInfo;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3675
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    .line 3676
    .local v2, "thresholds":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljava/lang/Integer;>;"
    monitor-enter p1

    .line 3677
    :try_start_0
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetworkRequests:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "nri$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    .line 3678
    .local v0, "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    iget-object v3, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget-object v3, v3, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v3}, Landroid/net/NetworkCapabilities;->hasSignalStrength()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3679
    iget-object v3, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {p1, v3}, Lcom/android/server/connectivity/NetworkAgentInfo;->satisfiesImmutableCapabilitiesOf(Landroid/net/NetworkRequest;)Z

    move-result v3

    .line 3678
    if-eqz v3, :cond_0

    .line 3680
    iget-object v3, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget-object v3, v3, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v3}, Landroid/net/NetworkCapabilities;->getSignalStrength()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 3676
    .end local v0    # "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    .end local v1    # "nri$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit p1

    throw v3

    .restart local v1    # "nri$iterator":Ljava/util/Iterator;
    :cond_1
    monitor-exit p1

    .line 3684
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v3
.end method

.method private getUnfilteredActiveNetworkState(I)Landroid/net/NetworkState;
    .locals 13
    .param p1, "uid"    # I

    .prologue
    const/4 v12, 0x0

    const/4 v6, 0x0

    .line 903
    const/4 v1, 0x0

    .line 904
    .local v1, "info":Landroid/net/NetworkInfo;
    const/4 v2, 0x0

    .line 905
    .local v2, "lp":Landroid/net/LinkProperties;
    const/4 v3, 0x0

    .line 906
    .local v3, "nc":Landroid/net/NetworkCapabilities;
    const/4 v4, 0x0

    .line 907
    .local v4, "network":Landroid/net/Network;
    const/4 v5, 0x0

    .line 909
    .local v5, "subscriberId":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getDefaultNetwork()Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v9

    .line 911
    .local v9, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->getVpnUnderlyingNetworks(I)[Landroid/net/Network;

    move-result-object v11

    .line 912
    .local v11, "networks":[Landroid/net/Network;
    if-eqz v11, :cond_0

    .line 918
    array-length v0, v11

    if-lez v0, :cond_2

    .line 919
    aget-object v0, v11, v12

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v9

    .line 925
    .end local v9    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_0
    :goto_0
    if-eqz v9, :cond_1

    .line 926
    monitor-enter v9

    .line 927
    :try_start_0
    new-instance v7, Landroid/net/NetworkInfo;

    iget-object v0, v9, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-direct {v7, v0}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 928
    .end local v1    # "info":Landroid/net/NetworkInfo;
    .local v7, "info":Landroid/net/NetworkInfo;
    :try_start_1
    new-instance v8, Landroid/net/LinkProperties;

    iget-object v0, v9, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-direct {v8, v0}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 929
    .local v8, "lp":Landroid/net/LinkProperties;
    :try_start_2
    new-instance v10, Landroid/net/NetworkCapabilities;

    .end local v2    # "lp":Landroid/net/LinkProperties;
    iget-object v0, v9, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {v10, v0}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 932
    .local v10, "nc":Landroid/net/NetworkCapabilities;
    :try_start_3
    iget-object v4, v9, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    .line 933
    .end local v3    # "nc":Landroid/net/NetworkCapabilities;
    .local v4, "network":Landroid/net/Network;
    iget-object v0, v9, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    if-eqz v0, :cond_3

    iget-object v0, v9, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    iget-object v5, v0, Landroid/net/NetworkMisc;->subscriberId:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .end local v5    # "subscriberId":Ljava/lang/String;
    :goto_1
    monitor-exit v9

    move-object v3, v10

    .end local v10    # "nc":Landroid/net/NetworkCapabilities;
    .local v3, "nc":Landroid/net/NetworkCapabilities;
    move-object v2, v8

    .end local v8    # "lp":Landroid/net/LinkProperties;
    .local v2, "lp":Landroid/net/LinkProperties;
    move-object v1, v7

    .line 937
    .end local v2    # "lp":Landroid/net/LinkProperties;
    .end local v3    # "nc":Landroid/net/NetworkCapabilities;
    .end local v4    # "network":Landroid/net/Network;
    .end local v7    # "info":Landroid/net/NetworkInfo;
    :cond_1
    new-instance v0, Landroid/net/NetworkState;

    invoke-direct/range {v0 .. v6}, Landroid/net/NetworkState;-><init>(Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;Landroid/net/Network;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 921
    .restart local v1    # "info":Landroid/net/NetworkInfo;
    .local v2, "lp":Landroid/net/LinkProperties;
    .local v3, "nc":Landroid/net/NetworkCapabilities;
    .local v4, "network":Landroid/net/Network;
    .restart local v5    # "subscriberId":Ljava/lang/String;
    .restart local v9    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_2
    const/4 v9, 0x0

    .local v9, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    goto :goto_0

    .line 933
    .end local v1    # "info":Landroid/net/NetworkInfo;
    .end local v2    # "lp":Landroid/net/LinkProperties;
    .end local v3    # "nc":Landroid/net/NetworkCapabilities;
    .end local v9    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .local v4, "network":Landroid/net/Network;
    .restart local v7    # "info":Landroid/net/NetworkInfo;
    .restart local v8    # "lp":Landroid/net/LinkProperties;
    .restart local v10    # "nc":Landroid/net/NetworkCapabilities;
    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    .line 926
    .end local v7    # "info":Landroid/net/NetworkInfo;
    .end local v8    # "lp":Landroid/net/LinkProperties;
    .end local v10    # "nc":Landroid/net/NetworkCapabilities;
    .restart local v1    # "info":Landroid/net/NetworkInfo;
    .restart local v2    # "lp":Landroid/net/LinkProperties;
    .restart local v3    # "nc":Landroid/net/NetworkCapabilities;
    .local v4, "network":Landroid/net/Network;
    :catchall_0
    move-exception v0

    .end local v1    # "info":Landroid/net/NetworkInfo;
    .end local v2    # "lp":Landroid/net/LinkProperties;
    .end local v3    # "nc":Landroid/net/NetworkCapabilities;
    .end local v4    # "network":Landroid/net/Network;
    :goto_2
    monitor-exit v9

    throw v0

    .restart local v2    # "lp":Landroid/net/LinkProperties;
    .restart local v3    # "nc":Landroid/net/NetworkCapabilities;
    .restart local v4    # "network":Landroid/net/Network;
    .restart local v7    # "info":Landroid/net/NetworkInfo;
    :catchall_1
    move-exception v0

    move-object v1, v7

    .end local v7    # "info":Landroid/net/NetworkInfo;
    .local v1, "info":Landroid/net/NetworkInfo;
    goto :goto_2

    .end local v1    # "info":Landroid/net/NetworkInfo;
    .end local v2    # "lp":Landroid/net/LinkProperties;
    .restart local v7    # "info":Landroid/net/NetworkInfo;
    .restart local v8    # "lp":Landroid/net/LinkProperties;
    :catchall_2
    move-exception v0

    move-object v2, v8

    .end local v8    # "lp":Landroid/net/LinkProperties;
    .local v2, "lp":Landroid/net/LinkProperties;
    move-object v1, v7

    .end local v7    # "info":Landroid/net/NetworkInfo;
    .restart local v1    # "info":Landroid/net/NetworkInfo;
    goto :goto_2

    .end local v1    # "info":Landroid/net/NetworkInfo;
    .end local v2    # "lp":Landroid/net/LinkProperties;
    .end local v3    # "nc":Landroid/net/NetworkCapabilities;
    .end local v4    # "network":Landroid/net/Network;
    .restart local v7    # "info":Landroid/net/NetworkInfo;
    .restart local v8    # "lp":Landroid/net/LinkProperties;
    .restart local v10    # "nc":Landroid/net/NetworkCapabilities;
    :catchall_3
    move-exception v0

    move-object v3, v10

    .end local v10    # "nc":Landroid/net/NetworkCapabilities;
    .local v3, "nc":Landroid/net/NetworkCapabilities;
    move-object v2, v8

    .end local v8    # "lp":Landroid/net/LinkProperties;
    .restart local v2    # "lp":Landroid/net/LinkProperties;
    move-object v1, v7

    .end local v7    # "info":Landroid/net/NetworkInfo;
    .restart local v1    # "info":Landroid/net/NetworkInfo;
    goto :goto_2
.end method

.method private getVpnUnderlyingNetworks(I)[Landroid/net/Network;
    .locals 5
    .param p1, "uid"    # I

    .prologue
    const/4 v4, 0x0

    .line 890
    iget-boolean v2, p0, Lcom/android/server/ConnectivityService;->mLockdownEnabled:Z

    if-nez v2, :cond_1

    .line 891
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 892
    .local v0, "user":I
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v3

    .line 893
    :try_start_0
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Vpn;

    .line 894
    .local v1, "vpn":Lcom/android/server/connectivity/Vpn;
    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/android/server/connectivity/Vpn;->appliesToUid(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 895
    invoke-virtual {v1}, Lcom/android/server/connectivity/Vpn;->getUnderlyingNetworks()[Landroid/net/Network;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    monitor-exit v3

    return-object v2

    :cond_0
    monitor-exit v3

    .line 899
    .end local v0    # "user":I
    .end local v1    # "vpn":Lcom/android/server/connectivity/Vpn;
    :cond_1
    return-object v4

    .line 892
    .restart local v0    # "user":I
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private handleApplyDefaultProxy(Landroid/net/ProxyInfo;)V
    .locals 3
    .param p1, "proxy"    # Landroid/net/ProxyInfo;

    .prologue
    .line 2925
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2926
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 2925
    if-eqz v0, :cond_0

    .line 2927
    const/4 p1, 0x0

    .line 2929
    .end local p1    # "proxy":Landroid/net/ProxyInfo;
    :cond_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mProxyLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2930
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mDefaultProxy:Landroid/net/ProxyInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mDefaultProxy:Landroid/net/ProxyInfo;

    invoke-virtual {v0, p1}, Landroid/net/ProxyInfo;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    monitor-exit v1

    return-void

    .line 2931
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mDefaultProxy:Landroid/net/ProxyInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v0, p1, :cond_2

    monitor-exit v1

    return-void

    .line 2932
    :cond_2
    if-eqz p1, :cond_3

    :try_start_2
    invoke-virtual {p1}, Landroid/net/ProxyInfo;->isValid()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2942
    :cond_3
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyInfo;

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    .line 2943
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2949
    :cond_4
    iput-object p1, p0, Lcom/android/server/ConnectivityService;->mDefaultProxy:Landroid/net/ProxyInfo;

    .line 2951
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyInfo;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_7

    monitor-exit v1

    return-void

    .line 2933
    :cond_5
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid proxy properties, ignoring: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/ProxyInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v1

    .line 2934
    return-void

    .line 2944
    :cond_6
    :try_start_4
    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyInfo;

    invoke-virtual {v2}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 2942
    if-eqz v0, :cond_4

    .line 2945
    iput-object p1, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyInfo;

    .line 2946
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyInfo;

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->sendProxyBroadcast(Landroid/net/ProxyInfo;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v1

    .line 2947
    return-void

    .line 2952
    :cond_7
    :try_start_5
    iget-boolean v0, p0, Lcom/android/server/ConnectivityService;->mDefaultProxyDisabled:Z

    if-nez v0, :cond_8

    .line 2953
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->sendProxyBroadcast(Landroid/net/ProxyInfo;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_8
    monitor-exit v1

    .line 2924
    return-void

    .line 2929
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private handleAsyncChannelDisconnected(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 2196
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    iget-object v8, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 2197
    .local v3, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v3, :cond_7

    .line 2199
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " got DISCONNECTED, was satisfying "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->networkRequests:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 2206
    iget-object v7, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2207
    iget-object v7, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    sget-object v8, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v7, v8, v10, v10}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 2210
    :cond_0
    invoke-direct {p0, v3}, Lcom/android/server/ConnectivityService;->isDefaultNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    move-result v6

    .line 2211
    .local v6, "wasDefault":Z
    if-eqz v6, :cond_1

    .line 2212
    iput v11, p0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    .line 2214
    :cond_1
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->notifyIfacesChanged()V

    .line 2219
    const v7, 0x80004

    invoke-virtual {p0, v3, v7}, Lcom/android/server/ConnectivityService;->notifyNetworkCallbacks(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    .line 2220
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mKeepaliveTracker:Lcom/android/server/connectivity/KeepaliveTracker;

    .line 2221
    const/16 v8, -0x14

    .line 2220
    invoke-virtual {v7, v3, v8}, Lcom/android/server/connectivity/KeepaliveTracker;->handleStopAllKeepalives(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    .line 2222
    iget-object v7, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMonitor:Lcom/android/server/connectivity/NetworkMonitor;

    const v8, 0x82007

    invoke-virtual {v7, v8}, Lcom/android/server/connectivity/NetworkMonitor;->sendMessage(I)V

    .line 2223
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    iget-object v8, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2224
    iget-object v7, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-direct {p0, v10, v7, v3}, Lcom/android/server/ConnectivityService;->updateClat(Landroid/net/LinkProperties;Landroid/net/LinkProperties;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 2225
    iget-object v8, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    monitor-enter v8

    .line 2228
    :try_start_0
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    iget-object v9, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v9, v9, Landroid/net/Network;->netId:I

    invoke-virtual {v7, v9}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v8

    .line 2231
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v7, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->networkRequests:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v2, v7, :cond_3

    .line 2232
    iget-object v7, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->networkRequests:Landroid/util/SparseArray;

    invoke-virtual {v7, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/NetworkRequest;

    .line 2233
    .local v5, "request":Landroid/net/NetworkRequest;
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mNetworkForRequestId:Landroid/util/SparseArray;

    iget v8, v5, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 2234
    .local v0, "currentNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v0, :cond_2

    iget-object v7, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v7, v7, Landroid/net/Network;->netId:I

    iget-object v8, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v8, v8, Landroid/net/Network;->netId:I

    if-ne v7, v8, :cond_2

    .line 2235
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mNetworkForRequestId:Landroid/util/SparseArray;

    iget v8, v5, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->remove(I)V

    .line 2236
    invoke-direct {p0, v5, v11}, Lcom/android/server/ConnectivityService;->sendUpdatedScoreToFactories(Landroid/net/NetworkRequest;I)V

    .line 2231
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2225
    .end local v0    # "currentNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local v2    # "i":I
    .end local v5    # "request":Landroid/net/NetworkRequest;
    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7

    .line 2239
    .restart local v2    # "i":I
    :cond_3
    iget-object v7, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->networkRequests:Landroid/util/SparseArray;

    iget-object v8, p0, Lcom/android/server/ConnectivityService;->mDefaultRequest:Landroid/net/NetworkRequest;

    iget v8, v8, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 2240
    invoke-direct {p0, v3}, Lcom/android/server/ConnectivityService;->removeDataActivityTracking(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 2241
    invoke-direct {p0, v3}, Lcom/android/server/ConnectivityService;->notifyLockdownVpn(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 2242
    invoke-virtual {v3}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/ConnectivityService;->requestNetworkTransitionWakelock(Ljava/lang/String;)V

    .line 2244
    :cond_4
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    invoke-virtual {v7, v3, v6}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->remove(Lcom/android/server/connectivity/NetworkAgentInfo;Z)V

    .line 2245
    invoke-direct {p0, v10, v11}, Lcom/android/server/ConnectivityService;->rematchAllNetworksAndRequests(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    .line 2246
    iget-boolean v7, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->created:Z

    if-eqz v7, :cond_5

    .line 2256
    :try_start_1
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    iget-object v8, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v8, v8, Landroid/net/Network;->netId:I

    invoke-interface {v7, v8}, Landroid/os/INetworkManagementService;->removeNetwork(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2261
    :cond_5
    :goto_1
    iget-object v8, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    monitor-enter v8

    .line 2262
    :try_start_2
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mNetIdInUse:Landroid/util/SparseBooleanArray;

    iget-object v9, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v9, v9, Landroid/net/Network;->netId:I

    invoke-virtual {v7, v9}, Landroid/util/SparseBooleanArray;->delete(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v8

    .line 2195
    .end local v2    # "i":I
    .end local v6    # "wasDefault":Z
    :cond_6
    :goto_2
    return-void

    .line 2257
    .restart local v2    # "i":I
    .restart local v6    # "wasDefault":Z
    :catch_0
    move-exception v1

    .line 2258
    .local v1, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Exception removing network: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 2261
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v7

    monitor-exit v8

    throw v7

    .line 2265
    .end local v2    # "i":I
    .end local v6    # "wasDefault":Z
    :cond_7
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mNetworkFactoryInfos:Ljava/util/HashMap;

    iget-object v8, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;

    .line 2266
    .local v4, "nfi":Lcom/android/server/ConnectivityService$NetworkFactoryInfo;
    if-eqz v4, :cond_6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "unregisterNetworkFactory for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v4, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private handleAsyncChannelHalfConnect(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x0

    .line 2158
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/util/AsyncChannel;

    .line 2159
    .local v0, "ac":Lcom/android/internal/util/AsyncChannel;
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mNetworkFactoryInfos:Ljava/util/HashMap;

    iget-object v7, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2160
    iget v5, p1, Landroid/os/Message;->arg1:I

    if-nez v5, :cond_2

    .line 2163
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mNetworkRequests:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "nri$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    .line 2164
    .local v2, "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    iget-boolean v5, v2, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->isRequest:Z

    if-eqz v5, :cond_0

    .line 2165
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mNetworkForRequestId:Landroid/util/SparseArray;

    iget-object v7, v2, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v7, v7, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 2167
    .local v1, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v5

    :goto_1
    iget-object v7, v2, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    .line 2166
    const v8, 0x83000

    invoke-virtual {v0, v8, v5, v6, v7}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    move v5, v6

    .line 2167
    goto :goto_1

    .line 2170
    .end local v1    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local v2    # "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    .end local v3    # "nri$iterator":Ljava/util/Iterator;
    :cond_2
    const-string/jumbo v5, "Error connecting NetworkFactory"

    invoke-static {v5}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 2171
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mNetworkFactoryInfos:Ljava/util/HashMap;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2157
    :cond_3
    :goto_2
    return-void

    .line 2173
    :cond_4
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    iget-object v6, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2174
    iget v5, p1, Landroid/os/Message;->arg1:I

    if-nez v5, :cond_5

    .line 2177
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    iget-object v6, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v5, v5, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    .line 2178
    const v6, 0x11001

    .line 2177
    invoke-virtual {v5, v6}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    goto :goto_2

    .line 2180
    :cond_5
    const-string/jumbo v5, "Error connecting NetworkAgent"

    invoke-static {v5}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 2181
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    iget-object v6, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 2182
    .restart local v1    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v1, :cond_3

    .line 2183
    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->isDefaultNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    move-result v4

    .line 2184
    .local v4, "wasDefault":Z
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    monitor-enter v6

    .line 2185
    :try_start_0
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    iget-object v7, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v7, v7, Landroid/net/Network;->netId:I

    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->remove(I)V

    .line 2186
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mNetIdInUse:Landroid/util/SparseBooleanArray;

    iget-object v7, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v7, v7, Landroid/net/Network;->netId:I

    invoke-virtual {v5, v7}, Landroid/util/SparseBooleanArray;->delete(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    .line 2189
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    invoke-virtual {v5, v1, v4}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->remove(Lcom/android/server/connectivity/NetworkAgentInfo;Z)V

    goto :goto_2

    .line 2184
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method private handleDeprecatedGlobalHttpProxy()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2973
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 2974
    const-string/jumbo v7, "http_proxy"

    .line 2973
    invoke-static {v6, v7}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2975
    .local v3, "proxy":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 2976
    const-string/jumbo v6, ":"

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2977
    .local v0, "data":[Ljava/lang/String;
    array-length v6, v0

    if-nez v6, :cond_0

    .line 2978
    return-void

    .line 2981
    :cond_0
    aget-object v4, v0, v8

    .line 2982
    .local v4, "proxyHost":Ljava/lang/String;
    const/16 v5, 0x1f90

    .line 2983
    .local v5, "proxyPort":I
    array-length v6, v0

    if-le v6, v9, :cond_1

    .line 2985
    const/4 v6, 0x1

    :try_start_0
    aget-object v6, v0, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 2990
    :cond_1
    new-instance v2, Landroid/net/ProxyInfo;

    aget-object v6, v0, v8

    const-string/jumbo v7, ""

    invoke-direct {v2, v6, v5, v7}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 2991
    .local v2, "p":Landroid/net/ProxyInfo;
    invoke-virtual {p0, v2}, Lcom/android/server/ConnectivityService;->setGlobalProxy(Landroid/net/ProxyInfo;)V

    .line 2972
    .end local v0    # "data":[Ljava/lang/String;
    .end local v2    # "p":Landroid/net/ProxyInfo;
    .end local v4    # "proxyHost":Ljava/lang/String;
    .end local v5    # "proxyPort":I
    :cond_2
    return-void

    .line 2986
    .restart local v0    # "data":[Ljava/lang/String;
    .restart local v4    # "proxyHost":Ljava/lang/String;
    .restart local v5    # "proxyPort":I
    :catch_0
    move-exception v1

    .line 2987
    .local v1, "e":Ljava/lang/NumberFormatException;
    return-void
.end method

.method private handleLingerComplete(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .locals 2
    .param p1, "oldNetwork"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .prologue
    .line 4296
    if-nez p1, :cond_0

    .line 4297
    const-string/jumbo v0, "Unknown NetworkAgentInfo in handleLingerComplete"

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 4298
    return-void

    .line 4300
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handleLingerComplete for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 4301
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->teardownUnneededNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 4295
    return-void
.end method

.method private handleMobileDataAlwaysOn()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 800
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "mobile_data_always_on"

    const/4 v3, 0x0

    .line 799
    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v5, :cond_0

    const/4 v6, 0x1

    .line 801
    .local v6, "enable":Z
    :goto_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkRequests:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mDefaultMobileDataRequest:Landroid/net/NetworkRequest;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v7, 0x1

    .line 802
    .local v7, "isEnabled":Z
    :goto_1
    if-ne v6, v7, :cond_2

    .line 803
    return-void

    .line 799
    .end local v6    # "enable":Z
    .end local v7    # "isEnabled":Z
    :cond_0
    const/4 v6, 0x0

    .restart local v6    # "enable":Z
    goto :goto_0

    .line 801
    :cond_1
    const/4 v7, 0x0

    .restart local v7    # "isEnabled":Z
    goto :goto_1

    .line 806
    :cond_2
    if-eqz v6, :cond_3

    .line 807
    new-instance v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    .line 808
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mDefaultMobileDataRequest:Landroid/net/NetworkRequest;

    new-instance v4, Landroid/os/Binder;

    invoke-direct {v4}, Landroid/os/Binder;-><init>()V

    move-object v1, p0

    .line 807
    invoke-direct/range {v0 .. v5}, Lcom/android/server/ConnectivityService$NetworkRequestInfo;-><init>(Lcom/android/server/ConnectivityService;Landroid/os/Messenger;Landroid/net/NetworkRequest;Landroid/os/IBinder;Z)V

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->handleRegisterNetworkRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V

    .line 798
    :goto_2
    return-void

    .line 810
    :cond_3
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mDefaultMobileDataRequest:Landroid/net/NetworkRequest;

    const/16 v1, 0x3e8

    invoke-direct {p0, v0, v1}, Lcom/android/server/ConnectivityService;->handleReleaseNetworkRequest(Landroid/net/NetworkRequest;I)V

    goto :goto_2
.end method

.method private handlePromptUnvalidated(Landroid/net/Network;)V
    .locals 13
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    const/high16 v3, 0x10000000

    const/4 v12, 0x1

    const/4 v4, 0x0

    .line 2485
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handlePromptUnvalidated "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 2486
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v11

    .line 2491
    .local v11, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v11, :cond_0

    iget-boolean v0, v11, Lcom/android/server/connectivity/NetworkAgentInfo;->everValidated:Z

    if-nez v0, :cond_0

    iget-boolean v0, v11, Lcom/android/server/connectivity/NetworkAgentInfo;->everCaptivePortalDetected:Z

    if-nez v0, :cond_0

    .line 2492
    iget-object v0, v11, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    iget-boolean v0, v0, Landroid/net/NetworkMisc;->explicitlySelected:Z

    if-eqz v0, :cond_0

    iget-object v0, v11, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    iget-boolean v0, v0, Landroid/net/NetworkMisc;->acceptUnvalidated:Z

    .line 2491
    if-eqz v0, :cond_1

    .line 2493
    :cond_0
    return-void

    .line 2496
    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v0, "android.net.conn.PROMPT_UNVALIDATED"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2497
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v0, "netId"

    iget v1, p1, Landroid/net/Network;->netId:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2498
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2499
    const-string/jumbo v0, "com.android.settings"

    .line 2500
    const-string/jumbo v1, "com.android.settings.wifi.WifiNoInternetDialog"

    .line 2499
    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2503
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v1, 0x0

    .line 2502
    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v9

    .line 2504
    .local v9, "pendingIntent":Landroid/app/PendingIntent;
    iget-object v0, v11, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v5, v0, Landroid/net/Network;->netId:I

    sget-object v6, Lcom/android/server/ConnectivityService$NotificationType;->NO_INTERNET:Lcom/android/server/ConnectivityService$NotificationType;

    .line 2505
    iget-object v0, v11, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    iget-object v0, v11, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v8

    move-object v3, p0

    move v4, v12

    move v10, v12

    .line 2504
    invoke-direct/range {v3 .. v10}, Lcom/android/server/ConnectivityService;->setProvNotificationVisibleIntent(ZILcom/android/server/ConnectivityService$NotificationType;ILjava/lang/String;Landroid/app/PendingIntent;Z)V

    .line 2484
    return-void
.end method

.method private handleRegisterNetworkAgent(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .locals 5
    .param p1, "na"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .prologue
    .line 3963
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->messenger:Landroid/os/Messenger;

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3964
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    monitor-enter v2

    .line 3965
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    iget-object v3, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v3, v3, Landroid/net/Network;->netId:I

    invoke-virtual {v1, v3, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 3967
    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mTrackerHandler:Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;

    iget-object v4, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->messenger:Landroid/os/Messenger;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    .line 3968
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    .line 3969
    .local v0, "networkInfo":Landroid/net/NetworkInfo;
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    .line 3970
    invoke-direct {p0, p1, v0}, Lcom/android/server/ConnectivityService;->updateNetworkInfo(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo;)V

    .line 3961
    return-void

    .line 3964
    .end local v0    # "networkInfo":Landroid/net/NetworkInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private handleRegisterNetworkFactory(Lcom/android/server/ConnectivityService$NetworkFactoryInfo;)V
    .locals 4
    .param p1, "nfi"    # Lcom/android/server/ConnectivityService$NetworkFactoryInfo;

    .prologue
    .line 3880
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Got NetworkFactory Messenger for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 3881
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkFactoryInfos:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;->messenger:Landroid/os/Messenger;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3882
    iget-object v0, p1, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mTrackerHandler:Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;

    iget-object v3, p1, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;->messenger:Landroid/os/Messenger;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    .line 3879
    return-void
.end method

.method private handleRegisterNetworkRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V
    .locals 7
    .param p1, "nri"    # Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 2298
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetworkRequests:Ljava/util/HashMap;

    iget-object v3, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2299
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetworkRequestInfoLogs:Landroid/util/LocalLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "REGISTER "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 2300
    iget-boolean v2, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->isRequest:Z

    if-nez v2, :cond_1

    .line 2301
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "network$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 2302
    .local v0, "network":Lcom/android/server/connectivity/NetworkAgentInfo;
    iget-object v2, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget-object v2, v2, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v2}, Landroid/net/NetworkCapabilities;->hasSignalStrength()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2303
    iget-object v2, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v0, v2}, Lcom/android/server/connectivity/NetworkAgentInfo;->satisfiesImmutableCapabilitiesOf(Landroid/net/NetworkRequest;)Z

    move-result v2

    .line 2302
    if-eqz v2, :cond_0

    .line 2304
    const-string/jumbo v2, "REGISTER"

    iget-object v3, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/ConnectivityService;->updateSignalStrengthThresholds(Lcom/android/server/connectivity/NetworkAgentInfo;Ljava/lang/String;Landroid/net/NetworkRequest;)V

    goto :goto_0

    .line 2308
    .end local v0    # "network":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local v1    # "network$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-direct {p0, v6, v5}, Lcom/android/server/ConnectivityService;->rematchAllNetworksAndRequests(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    .line 2309
    iget-boolean v2, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->isRequest:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetworkForRequestId:Landroid/util/SparseArray;

    iget-object v3, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v3, v3, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    .line 2310
    iget-object v2, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-direct {p0, v2, v5}, Lcom/android/server/ConnectivityService;->sendUpdatedScoreToFactories(Landroid/net/NetworkRequest;I)V

    .line 2297
    :cond_2
    return-void
.end method

.method private handleRegisterNetworkRequestWithIntent(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2286
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    .line 2288
    .local v1, "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    iget-object v2, v1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-direct {p0, v2}, Lcom/android/server/ConnectivityService;->findExistingNetworkRequestInfo(Landroid/app/PendingIntent;)Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    move-result-object v0

    .line 2289
    .local v0, "existingRequest":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    if-eqz v0, :cond_0

    .line 2290
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Replacing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2291
    iget-object v3, v1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    .line 2290
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2291
    const-string/jumbo v3, " because their intents matched."

    .line 2290
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 2292
    iget-object v2, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingUid()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/server/ConnectivityService;->handleReleaseNetworkRequest(Landroid/net/NetworkRequest;I)V

    .line 2294
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->handleRegisterNetworkRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V

    .line 2285
    return-void
.end method

.method private handleReleaseNetworkRequest(Landroid/net/NetworkRequest;I)V
    .locals 13
    .param p1, "request"    # Landroid/net/NetworkRequest;
    .param p2, "callingUid"    # I

    .prologue
    const/4 v12, 0x0

    .line 2348
    iget-object v9, p0, Lcom/android/server/ConnectivityService;->mNetworkRequests:Ljava/util/HashMap;

    invoke-virtual {v9, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    .line 2349
    .local v6, "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    if-eqz v6, :cond_b

    .line 2350
    const/16 v9, 0x3e8

    if-eq v9, p2, :cond_0

    iget v9, v6, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mUid:I

    if-eq v9, p2, :cond_0

    .line 2351
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Attempt to release unowned NetworkRequest "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 2352
    return-void

    .line 2354
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "releasing NetworkRequest "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 2355
    invoke-virtual {v6}, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->unlinkDeathRecipient()V

    .line 2356
    iget-object v9, p0, Lcom/android/server/ConnectivityService;->mNetworkRequests:Ljava/util/HashMap;

    invoke-virtual {v9, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2357
    iget-object v9, p0, Lcom/android/server/ConnectivityService;->mNetworkRequestInfoLogs:Landroid/util/LocalLog;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "RELEASE "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 2358
    iget-boolean v9, v6, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->isRequest:Z

    if-eqz v9, :cond_8

    .line 2363
    const/4 v8, 0x0

    .line 2364
    .local v8, "wasKept":Z
    iget-object v9, p0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .end local v8    # "wasKept":Z
    .local v3, "nai$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 2365
    .local v2, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    iget-object v9, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->networkRequests:Landroid/util/SparseArray;

    iget-object v10, v6, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v10, v10, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v9, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 2366
    iget-object v9, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->networkRequests:Landroid/util/SparseArray;

    iget-object v10, v6, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v10, v10, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v9, v10}, Landroid/util/SparseArray;->remove(I)V

    .line 2368
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, " Removing from current network "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 2369
    const-string/jumbo v10, ", leaving "

    .line 2368
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 2369
    iget-object v10, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->networkRequests:Landroid/util/SparseArray;

    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v10

    .line 2368
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 2370
    const-string/jumbo v10, " requests."

    .line 2368
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 2372
    invoke-direct {p0, v2}, Lcom/android/server/ConnectivityService;->unneeded(Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 2373
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "no live requests for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "; disconnecting"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 2374
    invoke-direct {p0, v2}, Lcom/android/server/ConnectivityService;->teardownUnneededNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    goto :goto_0

    .line 2378
    :cond_2
    const/4 v9, 0x1

    or-int/2addr v8, v9

    .local v8, "wasKept":Z
    goto/16 :goto_0

    .line 2383
    .end local v2    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local v8    # "wasKept":Z
    :cond_3
    iget-object v9, p0, Lcom/android/server/ConnectivityService;->mNetworkForRequestId:Landroid/util/SparseArray;

    iget-object v10, v6, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v10, v10, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v9, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 2384
    .restart local v2    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v2, :cond_4

    .line 2385
    iget-object v9, p0, Lcom/android/server/ConnectivityService;->mNetworkForRequestId:Landroid/util/SparseArray;

    iget-object v10, v6, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v10, v10, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v9, v10}, Landroid/util/SparseArray;->remove(I)V

    .line 2392
    :cond_4
    iget-object v9, v6, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v9, v9, Landroid/net/NetworkRequest;->legacyType:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_7

    if-eqz v2, :cond_7

    .line 2393
    const/4 v0, 0x1

    .line 2394
    .local v0, "doRemove":Z
    if-eqz v8, :cond_6

    .line 2397
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v9, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->networkRequests:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-ge v1, v9, :cond_6

    .line 2398
    iget-object v9, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->networkRequests:Landroid/util/SparseArray;

    invoke-virtual {v9, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/NetworkRequest;

    .line 2399
    .local v7, "otherRequest":Landroid/net/NetworkRequest;
    iget v9, v7, Landroid/net/NetworkRequest;->legacyType:I

    iget-object v10, v6, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v10, v10, Landroid/net/NetworkRequest;->legacyType:I

    if-ne v9, v10, :cond_5

    .line 2400
    invoke-direct {p0, v7}, Lcom/android/server/ConnectivityService;->isRequest(Landroid/net/NetworkRequest;)Z

    move-result v9

    .line 2399
    if-eqz v9, :cond_5

    .line 2401
    const-string/jumbo v9, " still have other legacy request - leaving"

    invoke-static {v9}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 2402
    const/4 v0, 0x0

    .line 2397
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2407
    .end local v1    # "i":I
    .end local v7    # "otherRequest":Landroid/net/NetworkRequest;
    :cond_6
    if-eqz v0, :cond_7

    .line 2408
    iget-object v9, p0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    iget-object v10, v6, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v10, v10, Landroid/net/NetworkRequest;->legacyType:I

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v2, v11}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->remove(ILcom/android/server/connectivity/NetworkAgentInfo;Z)V

    .line 2412
    .end local v0    # "doRemove":Z
    :cond_7
    iget-object v9, p0, Lcom/android/server/ConnectivityService;->mNetworkFactoryInfos:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "nfi$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;

    .line 2413
    .local v4, "nfi":Lcom/android/server/ConnectivityService$NetworkFactoryInfo;
    iget-object v9, v4, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    .line 2414
    iget-object v10, v6, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    .line 2413
    const v11, 0x83001

    invoke-virtual {v9, v11, v10}, Lcom/android/internal/util/AsyncChannel;->sendMessage(ILjava/lang/Object;)V

    goto :goto_2

    .line 2419
    .end local v2    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local v3    # "nai$iterator":Ljava/util/Iterator;
    .end local v4    # "nfi":Lcom/android/server/ConnectivityService$NetworkFactoryInfo;
    .end local v5    # "nfi$iterator":Ljava/util/Iterator;
    :cond_8
    iget-object v9, p0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "nai$iterator":Ljava/util/Iterator;
    :cond_9
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 2420
    .restart local v2    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    iget-object v9, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->networkRequests:Landroid/util/SparseArray;

    iget-object v10, v6, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v10, v10, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v9, v10}, Landroid/util/SparseArray;->remove(I)V

    .line 2421
    iget-object v9, v6, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget-object v9, v9, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v9}, Landroid/net/NetworkCapabilities;->hasSignalStrength()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 2422
    iget-object v9, v6, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v2, v9}, Lcom/android/server/connectivity/NetworkAgentInfo;->satisfiesImmutableCapabilitiesOf(Landroid/net/NetworkRequest;)Z

    move-result v9

    .line 2421
    if-eqz v9, :cond_9

    .line 2423
    const-string/jumbo v9, "RELEASE"

    iget-object v10, v6, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-direct {p0, v2, v9, v10}, Lcom/android/server/ConnectivityService;->updateSignalStrengthThresholds(Lcom/android/server/connectivity/NetworkAgentInfo;Ljava/lang/String;Landroid/net/NetworkRequest;)V

    goto :goto_3

    .line 2427
    .end local v2    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_a
    const v9, 0x80008

    invoke-direct {p0, v6, v12, v9}, Lcom/android/server/ConnectivityService;->callCallbackForRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    .line 2347
    .end local v3    # "nai$iterator":Ljava/util/Iterator;
    :cond_b
    return-void
.end method

.method private handleReleaseNetworkRequestWithIntent(Landroid/app/PendingIntent;I)V
    .locals 2
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p2, "callingUid"    # I

    .prologue
    .line 2316
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->findExistingNetworkRequestInfo(Landroid/app/PendingIntent;)Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    move-result-object v0

    .line 2317
    .local v0, "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    if-eqz v0, :cond_0

    .line 2318
    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-direct {p0, v1, p2}, Lcom/android/server/ConnectivityService;->handleReleaseNetworkRequest(Landroid/net/NetworkRequest;I)V

    .line 2315
    :cond_0
    return-void
.end method

.method private handleSetAcceptUnvalidated(Landroid/net/Network;ZZ)V
    .locals 5
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "accept"    # Z
    .param p3, "always"    # Z

    .prologue
    .line 2438
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleSetAcceptUnvalidated network="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2439
    const-string/jumbo v3, " accept="

    .line 2438
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2439
    const-string/jumbo v3, " always="

    .line 2438
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 2441
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    .line 2442
    .local v0, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-nez v0, :cond_0

    .line 2444
    return-void

    .line 2447
    :cond_0
    iget-boolean v2, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->everValidated:Z

    if-eqz v2, :cond_1

    .line 2449
    return-void

    .line 2452
    :cond_1
    iget-object v2, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    iget-boolean v2, v2, Landroid/net/NetworkMisc;->explicitlySelected:Z

    if-nez v2, :cond_2

    .line 2453
    const-string/jumbo v2, "ConnectivityService"

    const-string/jumbo v3, "BUG: setAcceptUnvalidated non non-explicitly selected network"

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2456
    :cond_2
    iget-object v2, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    iget-boolean v2, v2, Landroid/net/NetworkMisc;->acceptUnvalidated:Z

    if-eq p2, v2, :cond_3

    .line 2457
    invoke-virtual {v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v1

    .line 2458
    .local v1, "oldScore":I
    iget-object v2, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    iput-boolean p2, v2, Landroid/net/NetworkMisc;->acceptUnvalidated:Z

    .line 2459
    invoke-direct {p0, v0, v1}, Lcom/android/server/ConnectivityService;->rematchAllNetworksAndRequests(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    .line 2460
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->sendUpdatedScoreToFactories(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 2463
    .end local v1    # "oldScore":I
    :cond_3
    if-eqz p3, :cond_4

    .line 2464
    iget-object v3, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    .line 2465
    if-eqz p2, :cond_6

    const/4 v2, 0x1

    :goto_0
    const v4, 0x81009

    .line 2464
    invoke-virtual {v3, v4, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(II)V

    .line 2468
    :cond_4
    if-nez p2, :cond_5

    .line 2470
    iget-object v2, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v3, 0x8100f

    invoke-virtual {v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 2472
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->teardownUnneededNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 2437
    :cond_5
    return-void

    .line 2465
    :cond_6
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private handleUnregisterNetworkFactory(Landroid/os/Messenger;)V
    .locals 3
    .param p1, "messenger"    # Landroid/os/Messenger;

    .prologue
    .line 3892
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetworkFactoryInfos:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;

    .line 3893
    .local v0, "nfi":Lcom/android/server/ConnectivityService$NetworkFactoryInfo;
    if-nez v0, :cond_0

    .line 3894
    const-string/jumbo v1, "Failed to find Messenger in unregisterNetworkFactory"

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 3895
    return-void

    .line 3897
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unregisterNetworkFactory for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 3891
    return-void
.end method

.method private hasWifiNetworkListenPermission(Landroid/net/NetworkCapabilities;)Z
    .locals 7
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 3815
    if-nez p1, :cond_0

    .line 3816
    return v5

    .line 3818
    :cond_0
    invoke-virtual {p1}, Landroid/net/NetworkCapabilities;->getTransportTypes()[I

    move-result-object v1

    .line 3819
    .local v1, "transportTypes":[I
    array-length v2, v1

    if-ne v2, v6, :cond_1

    aget v2, v1, v5

    if-eq v2, v6, :cond_2

    .line 3820
    :cond_1
    return v5

    .line 3823
    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    .line 3824
    const-string/jumbo v3, "android.permission.ACCESS_WIFI_STATE"

    .line 3825
    const-string/jumbo v4, "ConnectivityService"

    .line 3823
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3829
    return v6

    .line 3826
    :catch_0
    move-exception v0

    .line 3827
    .local v0, "e":Ljava/lang/SecurityException;
    return v5
.end method

.method private isActiveNetworkMeteredUnchecked(I)Z
    .locals 3
    .param p1, "uid"    # I

    .prologue
    .line 1269
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->getUnfilteredActiveNetworkState(I)Landroid/net/NetworkState;

    move-result-object v1

    .line 1270
    .local v1, "state":Landroid/net/NetworkState;
    iget-object v2, v1, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    if-eqz v2, :cond_0

    .line 1272
    :try_start_0
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mPolicyManager:Landroid/net/INetworkPolicyManager;

    invoke-interface {v2, v1}, Landroid/net/INetworkPolicyManager;->isNetworkMetered(Landroid/net/NetworkState;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 1273
    :catch_0
    move-exception v0

    .line 1276
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method private isDefaultNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)Z
    .locals 1
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .prologue
    .line 3938
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getDefaultNetwork()Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isLiveNetworkAgent(Lcom/android/server/connectivity/NetworkAgentInfo;Ljava/lang/String;)Z
    .locals 4
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1934
    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    if-nez v1, :cond_0

    return v3

    .line 1935
    :cond_0
    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    .line 1936
    .local v0, "officialNai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    return v1

    .line 1937
    :cond_1
    if-nez v0, :cond_2

    .line 1941
    :goto_0
    return v3

    .line 1938
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " - isLiveNetworkAgent found mismatched netId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1939
    const-string/jumbo v2, " - "

    .line 1938
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isNetworkWithLinkPropertiesBlocked(Landroid/net/LinkProperties;I)Z
    .locals 8
    .param p1, "lp"    # Landroid/net/LinkProperties;
    .param p2, "uid"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 947
    if-nez p1, :cond_0

    const-string/jumbo v0, ""

    .line 948
    .local v0, "iface":Ljava/lang/String;
    :goto_0
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 949
    :try_start_0
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mMeteredIfaces:Ljava/util/HashSet;

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 950
    .local v1, "networkCostly":Z
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mUidRules:Landroid/util/SparseIntArray;

    const/4 v5, 0x0

    invoke-virtual {v3, p2, v5}, Landroid/util/SparseIntArray;->get(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .local v2, "uidRules":I
    monitor-exit v4

    .line 953
    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 954
    return v6

    .line 947
    .end local v0    # "iface":Ljava/lang/String;
    .end local v1    # "networkCostly":Z
    .end local v2    # "uidRules":I
    :cond_0
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "iface":Ljava/lang/String;
    goto :goto_0

    .line 948
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 955
    .restart local v1    # "networkCostly":Z
    .restart local v2    # "uidRules":I
    :cond_1
    if-ne v2, v6, :cond_2

    if-eqz v1, :cond_2

    .line 956
    return v6

    .line 958
    :cond_2
    return v7
.end method

.method private isRequest(Landroid/net/NetworkRequest;)Z
    .locals 1
    .param p1, "request"    # Landroid/net/NetworkRequest;

    .prologue
    .line 1945
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkRequests:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    iget-boolean v0, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->isRequest:Z

    return v0
.end method

.method private linger(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .locals 2
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .prologue
    .line 2139
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->lingering:Z

    .line 2140
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMonitor:Lcom/android/server/connectivity/NetworkMonitor;

    const v1, 0x82003

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->sendMessage(I)V

    .line 2141
    const v0, 0x80003

    invoke-virtual {p0, p1, v0}, Lcom/android/server/ConnectivityService;->notifyNetworkCallbacks(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    .line 2138
    return-void
.end method

.method private loadGlobalProxy()V
    .locals 8

    .prologue
    .line 2890
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 2891
    .local v5, "res":Landroid/content/ContentResolver;
    const-string/jumbo v6, "global_http_proxy_host"

    invoke-static {v5, v6}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2892
    .local v1, "host":Ljava/lang/String;
    const-string/jumbo v6, "global_http_proxy_port"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 2894
    .local v3, "port":I
    const-string/jumbo v6, "global_http_proxy_exclusion_list"

    .line 2893
    invoke-static {v5, v6}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2895
    .local v0, "exclList":Ljava/lang/String;
    const-string/jumbo v6, "global_proxy_pac_url"

    invoke-static {v5, v6}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2896
    .local v2, "pacFileUrl":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2889
    :goto_0
    return-void

    .line 2898
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 2899
    new-instance v4, Landroid/net/ProxyInfo;

    invoke-direct {v4, v2}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;)V

    .line 2903
    .local v4, "proxyProperties":Landroid/net/ProxyInfo;
    :goto_1
    invoke-virtual {v4}, Landroid/net/ProxyInfo;->isValid()Z

    move-result v6

    if-nez v6, :cond_2

    .line 2904
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Invalid proxy properties, ignoring: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Landroid/net/ProxyInfo;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 2905
    return-void

    .line 2901
    .end local v4    # "proxyProperties":Landroid/net/ProxyInfo;
    :cond_1
    new-instance v4, Landroid/net/ProxyInfo;

    invoke-direct {v4, v1, v3, v0}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .restart local v4    # "proxyProperties":Landroid/net/ProxyInfo;
    goto :goto_1

    .line 2908
    :cond_2
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mProxyLock:Ljava/lang/Object;

    monitor-enter v6

    .line 2909
    :try_start_0
    iput-object v4, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    goto :goto_0

    .line 2908
    :catchall_0
    move-exception v7

    monitor-exit v6

    throw v7
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 3046
    const-string/jumbo v0, "ConnectivityService"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3045
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 3050
    const-string/jumbo v0, "ConnectivityService"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3049
    return-void
.end method

.method private makeDefault(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .locals 3
    .param p1, "newNetwork"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .prologue
    .line 4305
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Switching to new default network: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 4306
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->setupDataActivityTracking(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 4308
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    iget-object v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v2, v2, Landroid/net/Network;->netId:I

    invoke-interface {v1, v2}, Landroid/os/INetworkManagementService;->setDefaultNetId(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4312
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->notifyLockdownVpn(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 4313
    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->handleApplyDefaultProxy(Landroid/net/ProxyInfo;)V

    .line 4314
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->updateTcpBufferSizes(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 4315
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->updateTcpDelayedAck(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 4316
    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->setDefaultDnsSystemProperties(Ljava/util/Collection;)V

    .line 4304
    return-void

    .line 4309
    :catch_0
    move-exception v0

    .line 4310
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Exception setting default network :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private makeGeneralIntent(Landroid/net/NetworkInfo;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p1, "info"    # Landroid/net/NetworkInfo;
    .param p2, "bcastType"    # Ljava/lang/String;

    .prologue
    .line 1483
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    if-eqz v1, :cond_0

    .line 1484
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    invoke-virtual {v1, p1}, Lcom/android/server/net/LockdownVpnTracker;->augmentNetworkInfo(Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    move-result-object p1

    .line 1487
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1488
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "networkInfo"

    new-instance v2, Landroid/net/NetworkInfo;

    invoke-direct {v2, p1}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1489
    const-string/jumbo v1, "networkType"

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1490
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isFailover()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1491
    const-string/jumbo v1, "isFailover"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1492
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/net/NetworkInfo;->setFailover(Z)V

    .line 1494
    :cond_1
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1495
    const-string/jumbo v1, "reason"

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1497
    :cond_2
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1498
    const-string/jumbo v1, "extraInfo"

    .line 1499
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v2

    .line 1498
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1501
    :cond_3
    const-string/jumbo v1, "inetCondition"

    iget v2, p0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1502
    return-object v0
.end method

.method private declared-synchronized nextNetworkRequestId()I
    .locals 2

    .prologue
    monitor-enter p0

    .line 827
    :try_start_0
    iget v0, p0, Lcom/android/server/ConnectivityService;->mNextNetworkRequestId:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/ConnectivityService;->mNextNetworkRequestId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private notifyIfacesChanged()V
    .locals 2

    .prologue
    .line 4832
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mStatsService:Landroid/net/INetworkStatsService;

    invoke-interface {v1}, Landroid/net/INetworkStatsService;->forceUpdateIfaces()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4830
    :goto_0
    return-void

    .line 4833
    :catch_0
    move-exception v0

    .local v0, "ignored":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private notifyLockdownVpn(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .locals 2
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .prologue
    .line 4614
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    if-eqz v0, :cond_0

    .line 4615
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->isVPN()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4616
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v1}, Lcom/android/server/net/LockdownVpnTracker;->onVpnStateChanged(Landroid/net/NetworkInfo;)V

    .line 4613
    :cond_0
    :goto_0
    return-void

    .line 4618
    :cond_1
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    invoke-virtual {v0}, Lcom/android/server/net/LockdownVpnTracker;->onNetworkInfoChanged()V

    goto :goto_0
.end method

.method private notifyTypeToName(I)Ljava/lang/String;
    .locals 1
    .param p1, "notifyType"    # I

    .prologue
    .line 4814
    packed-switch p1, :pswitch_data_0

    .line 4824
    const-string/jumbo v0, "UNKNOWN"

    return-object v0

    .line 4815
    :pswitch_0
    const-string/jumbo v0, "PRECHECK"

    return-object v0

    .line 4816
    :pswitch_1
    const-string/jumbo v0, "AVAILABLE"

    return-object v0

    .line 4817
    :pswitch_2
    const-string/jumbo v0, "LOSING"

    return-object v0

    .line 4818
    :pswitch_3
    const-string/jumbo v0, "LOST"

    return-object v0

    .line 4819
    :pswitch_4
    const-string/jumbo v0, "UNAVAILABLE"

    return-object v0

    .line 4820
    :pswitch_5
    const-string/jumbo v0, "CAP_CHANGED"

    return-object v0

    .line 4821
    :pswitch_6
    const-string/jumbo v0, "IP_CHANGED"

    return-object v0

    .line 4822
    :pswitch_7
    const-string/jumbo v0, "RELEASED"

    return-object v0

    .line 4814
    nop

    :pswitch_data_0
    .packed-switch 0x80001
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private onUserStart(I)V
    .locals 5
    .param p1, "userId"    # I

    .prologue
    .line 3549
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v2

    .line 3550
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/Vpn;

    .line 3551
    .local v0, "userVpn":Lcom/android/server/connectivity/Vpn;
    if-eqz v0, :cond_0

    .line 3552
    const-string/jumbo v1, "Starting user already has a VPN"

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 3553
    return-void

    .line 3555
    :cond_0
    :try_start_1
    new-instance v0, Lcom/android/server/connectivity/Vpn;

    .end local v0    # "userVpn":Lcom/android/server/connectivity/Vpn;
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    invoke-virtual {v1}, Lcom/android/server/ConnectivityService$InternalHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-direct {v0, v1, v3, v4, p1}, Lcom/android/server/connectivity/Vpn;-><init>(Landroid/os/Looper;Landroid/content/Context;Landroid/os/INetworkManagementService;I)V

    .line 3556
    .restart local v0    # "userVpn":Lcom/android/server/connectivity/Vpn;
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    .line 3548
    return-void

    .line 3549
    .end local v0    # "userVpn":Lcom/android/server/connectivity/Vpn;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private onUserStop(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 3561
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v2

    .line 3562
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/Vpn;

    .line 3563
    .local v0, "userVpn":Lcom/android/server/connectivity/Vpn;
    if-nez v0, :cond_0

    .line 3564
    const-string/jumbo v1, "Stopping user has no VPN"

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 3565
    return-void

    .line 3567
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    .line 3560
    return-void

    .line 3561
    .end local v0    # "userVpn":Lcom/android/server/connectivity/Vpn;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private proxyInfoEqual(Landroid/net/ProxyInfo;Landroid/net/ProxyInfo;)Z
    .locals 2
    .param p1, "a"    # Landroid/net/ProxyInfo;
    .param p2, "b"    # Landroid/net/ProxyInfo;

    .prologue
    .line 2834
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->canonicalizeProxyInfo(Landroid/net/ProxyInfo;)Landroid/net/ProxyInfo;

    move-result-object p1

    .line 2835
    invoke-direct {p0, p2}, Lcom/android/server/ConnectivityService;->canonicalizeProxyInfo(Landroid/net/ProxyInfo;)Landroid/net/ProxyInfo;

    move-result-object p2

    .line 2838
    invoke-static {p1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private registerSettingsCallbacks()V
    .locals 3

    .prologue
    .line 816
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mSettingsObserver:Lcom/android/server/ConnectivityService$SettingsObserver;

    .line 817
    const-string/jumbo v1, "http_proxy"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 818
    const/16 v2, 0x9

    .line 816
    invoke-virtual {v0, v1, v2}, Lcom/android/server/ConnectivityService$SettingsObserver;->observe(Landroid/net/Uri;I)V

    .line 821
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mSettingsObserver:Lcom/android/server/ConnectivityService$SettingsObserver;

    .line 822
    const-string/jumbo v1, "mobile_data_always_on"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 823
    const/16 v2, 0x1e

    .line 821
    invoke-virtual {v0, v1, v2}, Lcom/android/server/ConnectivityService$SettingsObserver;->observe(Landroid/net/Uri;I)V

    .line 814
    return-void
.end method

.method private releasePendingNetworkRequestWithDelay(Landroid/app/PendingIntent;)V
    .locals 5
    .param p1, "operation"    # Landroid/app/PendingIntent;

    .prologue
    .line 3798
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    .line 3799
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    .line 3800
    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingUid()I

    move-result v2

    .line 3799
    const/16 v3, 0x1b

    .line 3800
    const/4 v4, 0x0

    .line 3799
    invoke-virtual {v1, v3, v2, v4, p1}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 3800
    iget v2, p0, Lcom/android/server/ConnectivityService;->mReleasePendingIntentDelayMs:I

    int-to-long v2, v2

    .line 3798
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3797
    return-void
.end method

.method private rematchAllNetworksAndRequests(Lcom/android/server/connectivity/NetworkAgentInfo;I)V
    .locals 5
    .param p1, "changed"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "oldScore"    # I

    .prologue
    .line 4578
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v2

    if-ge p2, v2, :cond_1

    .line 4579
    sget-object v2, Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;->REAP:Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;

    invoke-direct {p0, p1, v2}, Lcom/android/server/ConnectivityService;->rematchNetworkAndRequests(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;)V

    .line 4569
    :cond_0
    return-void

    .line 4581
    :cond_1
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    .line 4582
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    new-array v3, v3, [Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 4581
    invoke-interface {v2, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 4586
    .local v1, "nais":[Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 4587
    const/4 v2, 0x0

    array-length v4, v1

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, v1, v3

    .line 4592
    .local v0, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v1, v2

    if-eq v0, v2, :cond_2

    sget-object v2, Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;->DONT_REAP:Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;

    .line 4588
    :goto_1
    invoke-direct {p0, v0, v2}, Lcom/android/server/ConnectivityService;->rematchNetworkAndRequests(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;)V

    .line 4587
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    .line 4593
    :cond_2
    sget-object v2, Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;->REAP:Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;

    goto :goto_1
.end method

.method private rematchNetworkAndRequests(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;)V
    .locals 29
    .param p1, "newNetwork"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "reapUnvalidatedNetworks"    # Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;

    .prologue
    .line 4348
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->created:Z

    move/from16 v24, v0

    if-nez v24, :cond_0

    return-void

    .line 4349
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->isVPN()Z

    move-result v12

    .line 4350
    .local v12, "keep":Z
    const/4 v11, 0x0

    .line 4351
    .local v11, "isNewDefault":Z
    const/16 v18, 0x0

    .line 4355
    .local v18, "oldDefaultNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 4356
    .local v5, "affectedNetworks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/connectivity/NetworkAgentInfo;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 4358
    .local v4, "addedRequests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/ConnectivityService$NetworkRequestInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetworkRequests:Ljava/util/HashMap;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .end local v12    # "keep":Z
    .end local v18    # "oldDefaultNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    .local v17, "nri$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_a

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    .line 4359
    .local v16, "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetworkForRequestId:Landroid/util/SparseArray;

    move-object/from16 v24, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/net/NetworkRequest;->requestId:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 4360
    .local v8, "currentNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/NetworkAgentInfo;->satisfies(Landroid/net/NetworkRequest;)Z

    move-result v19

    .line 4361
    .local v19, "satisfies":Z
    move-object/from16 v0, p1

    if-ne v0, v8, :cond_2

    if-eqz v19, :cond_2

    .line 4366
    const/4 v12, 0x1

    .line 4367
    .local v12, "keep":Z
    goto :goto_0

    .line 4372
    .end local v12    # "keep":Z
    :cond_2
    if-eqz v19, :cond_7

    .line 4373
    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->isRequest:Z

    move/from16 v24, v0

    if-nez v24, :cond_3

    .line 4376
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/NetworkAgentInfo;->addRequest(Landroid/net/NetworkRequest;)Z

    move-result v24

    if-eqz v24, :cond_1

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4387
    :cond_3
    if-eqz v8, :cond_4

    .line 4388
    invoke-virtual {v8}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v24

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_1

    .line 4389
    :cond_4
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "rematch for "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 4390
    if-eqz v8, :cond_6

    .line 4391
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "   accepting network in place of "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v8}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 4392
    iget-object v0, v8, Lcom/android/server/connectivity/NetworkAgentInfo;->networkRequests:Landroid/util/SparseArray;

    move-object/from16 v24, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/net/NetworkRequest;->requestId:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/util/SparseArray;->remove(I)V

    .line 4393
    iget-object v0, v8, Lcom/android/server/connectivity/NetworkAgentInfo;->networkLingered:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4394
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4398
    :goto_1
    invoke-direct/range {p0 .. p1}, Lcom/android/server/ConnectivityService;->unlinger(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 4399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetworkForRequestId:Landroid/util/SparseArray;

    move-object/from16 v24, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/net/NetworkRequest;->requestId:I

    move/from16 v25, v0

    move-object/from16 v0, v24

    move/from16 v1, v25

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4400
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/NetworkAgentInfo;->addRequest(Landroid/net/NetworkRequest;)Z

    move-result v24

    if-nez v24, :cond_5

    .line 4401
    const-string/jumbo v24, "ConnectivityService"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "BUG: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " already has "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 4403
    :cond_5
    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4404
    const/4 v12, 0x1

    .line 4410
    .restart local v12    # "keep":Z
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    move-object/from16 v24, v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v25

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/server/ConnectivityService;->sendUpdatedScoreToFactories(Landroid/net/NetworkRequest;I)V

    .line 4411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mDefaultRequest:Landroid/net/NetworkRequest;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/net/NetworkRequest;->requestId:I

    move/from16 v24, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/net/NetworkRequest;->requestId:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_1

    .line 4412
    const/4 v11, 0x1

    .line 4413
    move-object/from16 v18, v8

    .local v18, "oldDefaultNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    goto/16 :goto_0

    .line 4396
    .end local v12    # "keep":Z
    .end local v18    # "oldDefaultNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_6
    const-string/jumbo v24, "   accepting network in place of null"

    invoke-static/range {v24 .. v24}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 4416
    :cond_7
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkRequests:Landroid/util/SparseArray;

    move-object/from16 v24, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/net/NetworkRequest;->requestId:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v24

    if-eqz v24, :cond_1

    .line 4425
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Network "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, " stopped satisfying"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 4426
    const-string/jumbo v25, " request "

    .line 4425
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 4426
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/net/NetworkRequest;->requestId:I

    move/from16 v25, v0

    .line 4425
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 4428
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkRequests:Landroid/util/SparseArray;

    move-object/from16 v24, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/net/NetworkRequest;->requestId:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/util/SparseArray;->remove(I)V

    .line 4429
    move-object/from16 v0, p1

    if-ne v8, v0, :cond_9

    .line 4430
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetworkForRequestId:Landroid/util/SparseArray;

    move-object/from16 v24, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/net/NetworkRequest;->requestId:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/util/SparseArray;->remove(I)V

    .line 4431
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/server/ConnectivityService;->sendUpdatedScoreToFactories(Landroid/net/NetworkRequest;I)V

    .line 4446
    :cond_8
    :goto_2
    const v24, 0x80004

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, p1

    move/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/ConnectivityService;->callCallbackForRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    goto/16 :goto_0

    .line 4433
    :cond_9
    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->isRequest:Z

    move/from16 v24, v0

    if-eqz v24, :cond_8

    .line 4434
    const-string/jumbo v24, "ConnectivityService"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "BUG: Removing request "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/net/NetworkRequest;->requestId:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " from "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 4435
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v26

    .line 4434
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 4436
    const-string/jumbo v26, " without updating mNetworkForRequestId or factories!"

    .line 4434
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 4450
    .end local v8    # "currentNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local v16    # "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    .end local v19    # "satisfies":Z
    :cond_a
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "nai$iterator":Ljava/util/Iterator;
    :cond_b
    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_d

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 4451
    .local v13, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    iget-boolean v0, v13, Lcom/android/server/connectivity/NetworkAgentInfo;->lingering:Z

    move/from16 v24, v0

    if-nez v24, :cond_b

    .line 4458
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/ConnectivityService;->unneeded(Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    move-result v24

    if-eqz v24, :cond_c

    .line 4459
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/ConnectivityService;->linger(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    goto :goto_3

    .line 4462
    :cond_c
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/ConnectivityService;->unlinger(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    goto :goto_3

    .line 4465
    .end local v13    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_d
    if-eqz v11, :cond_f

    .line 4467
    invoke-direct/range {p0 .. p1}, Lcom/android/server/ConnectivityService;->makeDefault(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 4468
    monitor-enter p0

    .line 4472
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v24

    if-eqz v24, :cond_e

    .line 4473
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    move-object/from16 v25, v0

    .line 4475
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockSerialNumber:I

    move/from16 v26, v0

    .line 4474
    const/16 v27, 0x8

    .line 4475
    const/16 v28, 0x0

    .line 4473
    move-object/from16 v0, v25

    move/from16 v1, v27

    move/from16 v2, v26

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v25

    .line 4476
    const-wide/16 v26, 0x3e8

    .line 4473
    invoke-virtual/range {v24 .. v27}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_e
    monitor-exit p0

    .line 4483
    :cond_f
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_4
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_10

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    .restart local v16    # "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/server/ConnectivityService;->notifyNetworkCallback(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V

    goto :goto_4

    .line 4468
    .end local v16    # "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    :catchall_0
    move-exception v24

    monitor-exit p0

    throw v24

    .line 4485
    :cond_10
    if-eqz v11, :cond_12

    .line 4490
    if-eqz v18, :cond_11

    .line 4491
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    move-object/from16 v24, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/net/NetworkInfo;->getType()I

    move-result v25

    .line 4492
    const/16 v26, 0x1

    .line 4491
    move-object/from16 v0, v24

    move/from16 v1, v25

    move-object/from16 v2, v18

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->remove(ILcom/android/server/connectivity/NetworkAgentInfo;Z)V

    .line 4494
    :cond_11
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->lastValidated:Z

    move/from16 v24, v0

    if-eqz v24, :cond_15

    const/16 v24, 0x64

    :goto_5
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    .line 4495
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/net/NetworkInfo;->getType()I

    move-result v25

    move-object/from16 v0, v24

    move/from16 v1, v25

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->add(ILcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 4496
    invoke-direct/range {p0 .. p1}, Lcom/android/server/ConnectivityService;->notifyLockdownVpn(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 4499
    :cond_12
    if-eqz v12, :cond_17

    .line 4504
    :try_start_1
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v7

    .line 4505
    .local v7, "bs":Lcom/android/internal/app/IBatteryStats;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/net/NetworkInfo;->getType()I

    move-result v23

    .line 4507
    .local v23, "type":I
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v6

    .line 4508
    .local v6, "baseIface":Ljava/lang/String;
    move/from16 v0, v23

    invoke-interface {v7, v6, v0}, Lcom/android/internal/app/IBatteryStats;->noteNetworkInterfaceType(Ljava/lang/String;I)V

    .line 4509
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/net/LinkProperties;->getStackedLinks()Ljava/util/List;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .local v21, "stacked$iterator":Ljava/util/Iterator;
    :goto_6
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_13

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/net/LinkProperties;

    .line 4510
    .local v20, "stacked":Landroid/net/LinkProperties;
    invoke-virtual/range {v20 .. v20}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v22

    .line 4511
    .local v22, "stackedIface":Ljava/lang/String;
    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-interface {v7, v0, v1}, Lcom/android/internal/app/IBatteryStats;->noteNetworkInterfaceType(Ljava/lang/String;I)V

    .line 4512
    move-object/from16 v0, v22

    invoke-static {v0, v6}, Lcom/android/internal/net/NetworkStatsFactory;->noteStackedIface(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    .line 4514
    .end local v6    # "baseIface":Ljava/lang/String;
    .end local v7    # "bs":Lcom/android/internal/app/IBatteryStats;
    .end local v20    # "stacked":Landroid/net/LinkProperties;
    .end local v21    # "stacked$iterator":Ljava/util/Iterator;
    .end local v22    # "stackedIface":Ljava/lang/String;
    .end local v23    # "type":I
    :catch_0
    move-exception v10

    .line 4531
    :cond_13
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_7
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkRequests:Landroid/util/SparseArray;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/util/SparseArray;->size()I

    move-result v24

    move/from16 v0, v24

    if-ge v9, v0, :cond_16

    .line 4532
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkRequests:Landroid/util/SparseArray;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/net/NetworkRequest;

    .line 4533
    .local v15, "nr":Landroid/net/NetworkRequest;
    iget v0, v15, Landroid/net/NetworkRequest;->legacyType:I

    move/from16 v24, v0

    const/16 v25, -0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_14

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/ConnectivityService;->isRequest(Landroid/net/NetworkRequest;)Z

    move-result v24

    if-eqz v24, :cond_14

    .line 4535
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    move-object/from16 v24, v0

    iget v0, v15, Landroid/net/NetworkRequest;->legacyType:I

    move/from16 v25, v0

    move-object/from16 v0, v24

    move/from16 v1, v25

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->add(ILcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 4531
    :cond_14
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .line 4494
    .end local v9    # "i":I
    .end local v15    # "nr":Landroid/net/NetworkRequest;
    :cond_15
    const/16 v24, 0x0

    goto/16 :goto_5

    .line 4543
    .restart local v9    # "i":I
    :cond_16
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->isVPN()Z

    move-result v24

    if-eqz v24, :cond_17

    .line 4544
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    move-object/from16 v24, v0

    const/16 v25, 0x11

    move-object/from16 v0, v24

    move/from16 v1, v25

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->add(ILcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 4547
    .end local v9    # "i":I
    :cond_17
    sget-object v24, Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;->REAP:Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_19

    .line 4548
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_18
    :goto_8
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_19

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 4549
    .restart local v13    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/ConnectivityService;->unneeded(Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    move-result v24

    if-eqz v24, :cond_18

    .line 4550
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Reaping "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v13}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 4551
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/ConnectivityService;->teardownUnneededNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    goto :goto_8

    .line 4347
    .end local v13    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_19
    return-void
.end method

.method private removeDataActivityTracking(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .locals 5
    .param p1, "networkAgent"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .prologue
    .line 1639
    iget-object v3, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v3}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v2

    .line 1640
    .local v2, "iface":Ljava/lang/String;
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 1642
    .local v0, "caps":Landroid/net/NetworkCapabilities;
    if-eqz v2, :cond_1

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1643
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v3

    .line 1642
    if-eqz v3, :cond_1

    .line 1646
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v3, v2}, Landroid/os/INetworkManagementService;->removeIdleTimer(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1638
    :cond_1
    :goto_0
    return-void

    .line 1647
    :catch_0
    move-exception v1

    .line 1648
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception in removeDataActivityTracking "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private requestNetworkTransitionWakelock(Ljava/lang/String;)V
    .locals 6
    .param p1, "forWhom"    # Ljava/lang/String;

    .prologue
    .line 2733
    const/4 v0, 0x0

    .line 2734
    .local v0, "serialNum":I
    monitor-enter p0

    .line 2735
    :try_start_0
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    monitor-exit p0

    return-void

    .line 2736
    :cond_0
    :try_start_1
    iget v2, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockSerialNumber:I

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockSerialNumber:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2737
    .end local v0    # "serialNum":I
    .local v1, "serialNum":I
    :try_start_2
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2738
    iput-object p1, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockCausedBy:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    .line 2740
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    .line 2741
    const/16 v4, 0x18

    const/4 v5, 0x0

    .line 2740
    invoke-virtual {v3, v4, v1, v5}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    .line 2742
    iget v4, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockTimeout:I

    int-to-long v4, v4

    .line 2740
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2743
    return-void

    .line 2734
    .end local v1    # "serialNum":I
    .restart local v0    # "serialNum":I
    :catchall_0
    move-exception v2

    :goto_0
    monitor-exit p0

    throw v2

    .end local v0    # "serialNum":I
    .restart local v1    # "serialNum":I
    :catchall_1
    move-exception v2

    move v0, v1

    .end local v1    # "serialNum":I
    .restart local v0    # "serialNum":I
    goto :goto_0
.end method

.method private scheduleUnvalidatedPrompt(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .locals 4
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .prologue
    .line 2478
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "scheduleUnvalidatedPrompt "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 2479
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    .line 2480
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    iget-object v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    const/16 v3, 0x1d

    invoke-virtual {v1, v3, v2}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2481
    const-wide/16 v2, 0x1f40

    .line 2479
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2477
    return-void
.end method

.method private sendDataActivityBroadcast(IZJ)V
    .locals 15
    .param p1, "deviceType"    # I
    .param p2, "active"    # Z
    .param p3, "tsNanos"    # J

    .prologue
    .line 1510
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v2, "android.net.conn.DATA_ACTIVITY_CHANGE"

    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1511
    .local v3, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "deviceType"

    move/from16 v0, p1

    invoke-virtual {v3, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1512
    const-string/jumbo v2, "isActive"

    move/from16 v0, p2

    invoke-virtual {v3, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1513
    const-string/jumbo v2, "tsNanos"

    move-wide/from16 v0, p3

    invoke-virtual {v3, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1514
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 1516
    .local v12, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 1517
    const-string/jumbo v5, "android.permission.RECEIVE_DATA_ACTIVITY_CHANGE"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 1516
    invoke-virtual/range {v2 .. v10}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1519
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1509
    return-void

    .line 1518
    :catchall_0
    move-exception v2

    .line 1519
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1518
    throw v2
.end method

.method private sendGeneralBroadcast(Landroid/net/NetworkInfo;Ljava/lang/String;)V
    .locals 1
    .param p1, "info"    # Landroid/net/NetworkInfo;
    .param p2, "bcastType"    # Ljava/lang/String;

    .prologue
    .line 1506
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->makeGeneralIntent(Landroid/net/NetworkInfo;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1505
    return-void
.end method

.method private sendInetConditionBroadcast(Landroid/net/NetworkInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/net/NetworkInfo;

    .prologue
    .line 1479
    const-string/jumbo v0, "android.net.conn.INET_CONDITION_ACTION"

    invoke-direct {p0, p1, v0}, Lcom/android/server/ConnectivityService;->sendGeneralBroadcast(Landroid/net/NetworkInfo;Ljava/lang/String;)V

    .line 1478
    return-void
.end method

.method private sendIntent(Landroid/app/PendingIntent;Landroid/content/Intent;)V
    .locals 7
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 4221
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mPendingIntentWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 4223
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Sending "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 4224
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v3, p2

    move-object v4, p0

    invoke-virtual/range {v0 .. v5}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4220
    :goto_0
    return-void

    .line 4225
    :catch_0
    move-exception v6

    .line 4226
    .local v6, "e":Landroid/app/PendingIntent$CanceledException;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " was not sent, it had been canceled."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 4227
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mPendingIntentWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4228
    invoke-virtual {p0, p1}, Lcom/android/server/ConnectivityService;->releasePendingNetworkRequest(Landroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method private sendLegacyNetworkBroadcast(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo$DetailedState;I)V
    .locals 6
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "state"    # Landroid/net/NetworkInfo$DetailedState;
    .param p3, "type"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 4760
    new-instance v0, Landroid/net/NetworkInfo;

    iget-object v3, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-direct {v0, v3}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    .line 4761
    .local v0, "info":Landroid/net/NetworkInfo;
    invoke-virtual {v0, p3}, Landroid/net/NetworkInfo;->setType(I)V

    .line 4762
    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq p2, v3, :cond_1

    .line 4763
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, p2, v4, v3}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 4764
    invoke-virtual {p0, v0}, Lcom/android/server/ConnectivityService;->sendConnectedBroadcast(Landroid/net/NetworkInfo;)V

    .line 4753
    :cond_0
    :goto_0
    return-void

    .line 4766
    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, p2, v3, v4}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 4767
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4768
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "networkInfo"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4769
    const-string/jumbo v3, "networkType"

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4770
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isFailover()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4771
    const-string/jumbo v3, "isFailover"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4772
    iget-object v3, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/net/NetworkInfo;->setFailover(Z)V

    .line 4774
    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 4775
    const-string/jumbo v3, "reason"

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4777
    :cond_3
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 4778
    const-string/jumbo v3, "extraInfo"

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4780
    :cond_4
    const/4 v2, 0x0

    .line 4781
    .local v2, "newDefaultAgent":Lcom/android/server/connectivity/NetworkAgentInfo;
    iget-object v3, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkRequests:Landroid/util/SparseArray;

    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mDefaultRequest:Landroid/net/NetworkRequest;

    iget v4, v4, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 4782
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getDefaultNetwork()Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v2

    .line 4783
    .local v2, "newDefaultAgent":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v2, :cond_6

    .line 4784
    const-string/jumbo v3, "otherNetwork"

    .line 4785
    iget-object v4, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    .line 4784
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4790
    .end local v2    # "newDefaultAgent":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_5
    :goto_1
    const-string/jumbo v3, "inetCondition"

    .line 4791
    iget v4, p0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    .line 4790
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4792
    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 4793
    if-eqz v2, :cond_0

    .line 4794
    iget-object v3, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {p0, v3}, Lcom/android/server/ConnectivityService;->sendConnectedBroadcast(Landroid/net/NetworkInfo;)V

    goto/16 :goto_0

    .line 4787
    .restart local v2    # "newDefaultAgent":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_6
    const-string/jumbo v3, "noConnectivity"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1
.end method

.method private sendPendingIntentForRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;Lcom/android/server/connectivity/NetworkAgentInfo;I)V
    .locals 3
    .param p1, "nri"    # Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    .param p2, "networkAgent"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p3, "notificationType"    # I

    .prologue
    .line 4210
    const v1, 0x80002

    if-ne p3, v1, :cond_0

    iget-boolean v1, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mPendingIntentSent:Z

    if-eqz v1, :cond_1

    .line 4209
    :cond_0
    :goto_0
    return-void

    .line 4211
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4212
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android.net.extra.NETWORK"

    iget-object v2, p2, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4213
    const-string/jumbo v1, "android.net.extra.NETWORK_REQUEST"

    iget-object v2, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4214
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mPendingIntentSent:Z

    .line 4215
    iget-object v1, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-direct {p0, v1, v0}, Lcom/android/server/ConnectivityService;->sendIntent(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private sendProxyBroadcast(Landroid/net/ProxyInfo;)V
    .locals 6
    .param p1, "proxy"    # Landroid/net/ProxyInfo;

    .prologue
    .line 2996
    if-nez p1, :cond_0

    new-instance p1, Landroid/net/ProxyInfo;

    .end local p1    # "proxy":Landroid/net/ProxyInfo;
    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    const/4 v5, 0x0

    invoke-direct {p1, v3, v5, v4}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 2997
    .restart local p1    # "proxy":Landroid/net/ProxyInfo;
    :cond_0
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mPacManager:Lcom/android/server/connectivity/PacManager;

    invoke-virtual {v3, p1}, Lcom/android/server/connectivity/PacManager;->setCurrentProxyScriptUrl(Landroid/net/ProxyInfo;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-void

    .line 2998
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sending Proxy Broadcast for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 2999
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.PROXY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3000
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v3, 0x24000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3002
    const-string/jumbo v3, "android.intent.extra.PROXY_INFO"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3003
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3005
    .local v0, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3007
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2995
    return-void

    .line 3006
    :catchall_0
    move-exception v3

    .line 3007
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3006
    throw v3
.end method

.method private sendStickyBroadcast(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1524
    monitor-enter p0

    .line 1525
    :try_start_0
    iget-boolean v5, p0, Lcom/android/server/ConnectivityService;->mSystemReady:Z

    if-nez v5, :cond_0

    .line 1526
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v5, p0, Lcom/android/server/ConnectivityService;->mInitialBroadcast:Landroid/content/Intent;

    .line 1528
    :cond_0
    const/high16 v5, 0x4000000

    invoke-virtual {p1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1530
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sendStickyBroadcast: action="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 1533
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1534
    .local v2, "ident":J
    const-string/jumbo v5, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1536
    const-string/jumbo v5, "networkInfo"

    .line 1535
    invoke-virtual {p1, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkInfo;

    .line 1537
    .local v4, "ni":Landroid/net/NetworkInfo;
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_1

    .line 1538
    const-string/jumbo v5, "android.net.conn.CONNECTIVITY_CHANGE_SUPL"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1539
    const/high16 v5, 0x40000000    # 2.0f

    invoke-virtual {p1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1541
    :cond_1
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    .line 1544
    .local v0, "bs":Lcom/android/internal/app/IBatteryStats;
    :try_start_1
    const-string/jumbo v5, "networkType"

    const/4 v6, -0x1

    .line 1543
    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 1545
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/NetworkInfo$State;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1543
    :goto_0
    invoke-interface {v0, v6, v5}, Lcom/android/internal/app/IBatteryStats;->noteConnectivityChanged(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1550
    .end local v0    # "bs":Lcom/android/internal/app/IBatteryStats;
    .end local v4    # "ni":Landroid/net/NetworkInfo;
    :cond_2
    :goto_1
    :try_start_2
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, p1, v6}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1552
    :try_start_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    .line 1523
    return-void

    .line 1545
    .restart local v0    # "bs":Lcom/android/internal/app/IBatteryStats;
    .restart local v4    # "ni":Landroid/net/NetworkInfo;
    :cond_3
    :try_start_4
    const-string/jumbo v5, "?"
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    .line 1551
    .end local v0    # "bs":Lcom/android/internal/app/IBatteryStats;
    .end local v4    # "ni":Landroid/net/NetworkInfo;
    :catchall_0
    move-exception v5

    .line 1552
    :try_start_5
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1551
    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1524
    .end local v2    # "ident":J
    :catchall_1
    move-exception v5

    monitor-exit p0

    throw v5

    .line 1546
    .restart local v0    # "bs":Lcom/android/internal/app/IBatteryStats;
    .restart local v2    # "ident":J
    .restart local v4    # "ni":Landroid/net/NetworkInfo;
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method private sendUpdatedScoreToFactories(Landroid/net/NetworkRequest;I)V
    .locals 5
    .param p1, "networkRequest"    # Landroid/net/NetworkRequest;
    .param p2, "score"    # I

    .prologue
    .line 4202
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetworkFactoryInfos:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "nfi$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;

    .line 4203
    .local v0, "nfi":Lcom/android/server/ConnectivityService$NetworkFactoryInfo;
    iget-object v2, v0, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v3, 0x83000

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p2, v4, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    goto :goto_0

    .line 4200
    .end local v0    # "nfi":Lcom/android/server/ConnectivityService$NetworkFactoryInfo;
    :cond_0
    return-void
.end method

.method private sendUpdatedScoreToFactories(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .locals 3
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .prologue
    .line 4192
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkRequests:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 4193
    iget-object v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkRequests:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkRequest;

    .line 4195
    .local v1, "nr":Landroid/net/NetworkRequest;
    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->isRequest(Landroid/net/NetworkRequest;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4192
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4196
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/ConnectivityService;->sendUpdatedScoreToFactories(Landroid/net/NetworkRequest;I)V

    goto :goto_1

    .line 4191
    .end local v1    # "nr":Landroid/net/NetworkRequest;
    :cond_1
    return-void
.end method

.method private setDefaultDnsSystemProperties(Ljava/util/Collection;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/net/InetAddress;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4136
    .local p1, "dnses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    const/4 v4, 0x0

    .line 4137
    .local v4, "last":I
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "dns$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 4138
    .local v0, "dns":Ljava/net/InetAddress;
    add-int/lit8 v4, v4, 0x1

    .line 4139
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "net.dns"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4140
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    .line 4141
    .local v5, "value":Ljava/lang/String;
    invoke-static {v3, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4143
    .end local v0    # "dns":Ljava/net/InetAddress;
    .end local v3    # "key":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v4, 0x1

    .local v2, "i":I
    :goto_1
    iget v6, p0, Lcom/android/server/ConnectivityService;->mNumDnsEntries:I

    if-gt v2, v6, :cond_1

    .line 4144
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "net.dns"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4145
    .restart local v3    # "key":Ljava/lang/String;
    const-string/jumbo v6, ""

    invoke-static {v3, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4143
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 4147
    .end local v3    # "key":Ljava/lang/String;
    :cond_1
    iput v4, p0, Lcom/android/server/ConnectivityService;->mNumDnsEntries:I

    .line 4135
    return-void
.end method

.method private setLockdownTracker(Lcom/android/server/net/LockdownVpnTracker;)V
    .locals 5
    .param p1, "tracker"    # Lcom/android/server/net/LockdownVpnTracker;

    .prologue
    const/4 v2, 0x0

    .line 3275
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    .line 3276
    .local v1, "existing":Lcom/android/server/net/LockdownVpnTracker;
    iput-object v2, p0, Lcom/android/server/ConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    .line 3277
    if-eqz v1, :cond_0

    .line 3278
    invoke-virtual {v1}, Lcom/android/server/net/LockdownVpnTracker;->shutdown()V

    .line 3282
    :cond_0
    if-eqz p1, :cond_1

    .line 3283
    :try_start_0
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->setFirewallEnabled(Z)V

    .line 3284
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    const-string/jumbo v3, "lo"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/os/INetworkManagementService;->setFirewallInterfaceRule(Ljava/lang/String;Z)V

    .line 3285
    iput-object p1, p0, Lcom/android/server/ConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    .line 3286
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    invoke-virtual {v2}, Lcom/android/server/net/LockdownVpnTracker;->init()V

    .line 3273
    :goto_0
    return-void

    .line 3288
    :cond_1
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->setFirewallEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3290
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private setProvNotificationVisible(ZILjava/lang/String;)V
    .locals 9
    .param p1, "visible"    # Z
    .param p2, "networkType"    # I
    .param p3, "action"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 3312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setProvNotificationVisible: E visible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " networkType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3313
    const-string/jumbo v1, " action="

    .line 3312
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 3315
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3316
    .local v8, "intent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-static {v0, v7, v8, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 3318
    .local v6, "pendingIntent":Landroid/app/PendingIntent;
    add-int/lit8 v0, p2, 0x1

    const/high16 v1, 0x10000

    add-int v2, v1, v0

    .line 3319
    .local v2, "id":I
    sget-object v3, Lcom/android/server/ConnectivityService$NotificationType;->SIGN_IN:Lcom/android/server/ConnectivityService$NotificationType;

    .line 3320
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v4, p2

    .line 3319
    invoke-direct/range {v0 .. v7}, Lcom/android/server/ConnectivityService;->setProvNotificationVisibleIntent(ZILcom/android/server/ConnectivityService$NotificationType;ILjava/lang/String;Landroid/app/PendingIntent;Z)V

    .line 3310
    return-void
.end method

.method private setProvNotificationVisibleIntent(ZILcom/android/server/ConnectivityService$NotificationType;ILjava/lang/String;Landroid/app/PendingIntent;Z)V
    .locals 12
    .param p1, "visible"    # Z
    .param p2, "id"    # I
    .param p3, "notifyType"    # Lcom/android/server/ConnectivityService$NotificationType;
    .param p4, "networkType"    # I
    .param p5, "extraInfo"    # Ljava/lang/String;
    .param p6, "intent"    # Landroid/app/PendingIntent;
    .param p7, "highPriority"    # Z

    .prologue
    .line 3342
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setProvNotificationVisibleIntent "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " visible="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 3343
    const-string/jumbo v10, " networkType="

    .line 3342
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 3343
    invoke-static/range {p4 .. p4}, Landroid/net/ConnectivityManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v10

    .line 3342
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 3344
    const-string/jumbo v10, " extraInfo="

    .line 3342
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p5

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 3344
    const-string/jumbo v10, " highPriority="

    .line 3342
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, p7

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 3347
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v7

    .line 3348
    .local v7, "r":Landroid/content/res/Resources;
    iget-object v9, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    .line 3349
    const-string/jumbo v10, "notification"

    .line 3348
    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    .line 3351
    .local v5, "notificationManager":Landroid/app/NotificationManager;
    if-eqz p1, :cond_4

    .line 3355
    sget-object v9, Lcom/android/server/ConnectivityService$NotificationType;->NO_INTERNET:Lcom/android/server/ConnectivityService$NotificationType;

    if-ne p3, v9, :cond_0

    .line 3356
    const/4 v9, 0x1

    move/from16 v0, p4

    if-ne v0, v9, :cond_0

    .line 3357
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const v10, 0x10403ad

    invoke-virtual {v7, v10, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 3358
    .local v8, "title":Ljava/lang/CharSequence;
    const v9, 0x10403ae

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 3359
    .local v2, "details":Ljava/lang/CharSequence;
    const v3, 0x1080643

    .line 3390
    .local v3, "icon":I
    :goto_0
    new-instance v9, Landroid/app/Notification$Builder;

    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 3391
    const-wide/16 v10, 0x0

    .line 3390
    invoke-virtual {v9, v10, v11}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v9

    .line 3393
    const/4 v10, 0x1

    .line 3390
    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v9

    .line 3395
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    .line 3396
    const v11, 0x1060059

    .line 3395
    invoke-virtual {v10, v11}, Landroid/content/Context;->getColor(I)I

    move-result v10

    .line 3390
    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v9

    move-object/from16 v0, p6

    invoke-virtual {v9, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v9

    .line 3400
    const/4 v10, 0x1

    .line 3390
    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    move-result-object v10

    .line 3401
    if-eqz p7, :cond_2

    .line 3402
    const/4 v9, 0x1

    .line 3390
    :goto_1
    invoke-virtual {v10, v9}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v10

    .line 3404
    if-eqz p7, :cond_3

    const/4 v9, -0x1

    .line 3390
    :goto_2
    invoke-virtual {v10, v9}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v9

    .line 3405
    const/4 v10, 0x1

    .line 3390
    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    .line 3409
    .local v4, "notification":Landroid/app/Notification;
    :try_start_0
    const-string/jumbo v9, "CaptivePortal.Notification"

    invoke-virtual {v5, v9, p2, v4}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3340
    .end local v2    # "details":Ljava/lang/CharSequence;
    .end local v3    # "icon":I
    .end local v4    # "notification":Landroid/app/Notification;
    .end local v8    # "title":Ljava/lang/CharSequence;
    :goto_3
    return-void

    .line 3360
    :cond_0
    sget-object v9, Lcom/android/server/ConnectivityService$NotificationType;->SIGN_IN:Lcom/android/server/ConnectivityService$NotificationType;

    if-ne p3, v9, :cond_1

    .line 3361
    packed-switch p4, :pswitch_data_0

    .line 3378
    :pswitch_0
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const v10, 0x10403ab

    invoke-virtual {v7, v10, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 3379
    .restart local v8    # "title":Ljava/lang/CharSequence;
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    .line 3380
    const/4 v10, 0x0

    aput-object p5, v9, v10

    .line 3379
    const v10, 0x10403ac

    invoke-virtual {v7, v10, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 3381
    .restart local v2    # "details":Ljava/lang/CharSequence;
    const v3, 0x108063f

    .line 3382
    .restart local v3    # "icon":I
    goto/16 :goto_0

    .line 3363
    .end local v2    # "details":Ljava/lang/CharSequence;
    .end local v3    # "icon":I
    .end local v8    # "title":Ljava/lang/CharSequence;
    :pswitch_1
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const v10, 0x10403aa

    invoke-virtual {v7, v10, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 3364
    .restart local v8    # "title":Ljava/lang/CharSequence;
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    .line 3365
    const/4 v10, 0x0

    aput-object p5, v9, v10

    .line 3364
    const v10, 0x10403ac

    invoke-virtual {v7, v10, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 3366
    .restart local v2    # "details":Ljava/lang/CharSequence;
    const v3, 0x1080643

    .line 3367
    .restart local v3    # "icon":I
    goto/16 :goto_0

    .line 3370
    .end local v2    # "details":Ljava/lang/CharSequence;
    .end local v3    # "icon":I
    .end local v8    # "title":Ljava/lang/CharSequence;
    :pswitch_2
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const v10, 0x10403ab

    invoke-virtual {v7, v10, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 3373
    .restart local v8    # "title":Ljava/lang/CharSequence;
    iget-object v9, p0, Lcom/android/server/ConnectivityService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 3374
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v10

    .line 3373
    invoke-virtual {v9, v10}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName(I)Ljava/lang/String;

    move-result-object v2

    .line 3375
    .restart local v2    # "details":Ljava/lang/CharSequence;
    const v3, 0x108063f

    .line 3376
    .restart local v3    # "icon":I
    goto/16 :goto_0

    .line 3385
    .end local v2    # "details":Ljava/lang/CharSequence;
    .end local v3    # "icon":I
    .end local v8    # "title":Ljava/lang/CharSequence;
    :cond_1
    const-string/jumbo v9, "ConnectivityService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Unknown notification type "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "on network type "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 3386
    invoke-static/range {p4 .. p4}, Landroid/net/ConnectivityManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v11

    .line 3385
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3387
    return-void

    .line 3403
    .restart local v2    # "details":Ljava/lang/CharSequence;
    .restart local v3    # "icon":I
    .restart local v8    # "title":Ljava/lang/CharSequence;
    :cond_2
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 3404
    :cond_3
    const/4 v9, 0x0

    goto/16 :goto_2

    .line 3410
    .restart local v4    # "notification":Landroid/app/Notification;
    :catch_0
    move-exception v6

    .line 3411
    .local v6, "npe":Ljava/lang/NullPointerException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setNotificationVisible: visible notificationManager npe="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 3412
    invoke-virtual {v6}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_3

    .line 3416
    .end local v2    # "details":Ljava/lang/CharSequence;
    .end local v3    # "icon":I
    .end local v4    # "notification":Landroid/app/Notification;
    .end local v6    # "npe":Ljava/lang/NullPointerException;
    .end local v8    # "title":Ljava/lang/CharSequence;
    :cond_4
    :try_start_1
    const-string/jumbo v9, "CaptivePortal.Notification"

    invoke-virtual {v5, v9, p2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_3

    .line 3417
    :catch_1
    move-exception v6

    .line 3418
    .restart local v6    # "npe":Ljava/lang/NullPointerException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setNotificationVisible: cancel notificationManager npe="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 3419
    invoke-virtual {v6}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_3

    .line 3361
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private setupDataActivityTracking(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .locals 7
    .param p1, "networkAgent"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .prologue
    const/4 v5, 0x0

    .line 1603
    iget-object v4, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v4}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v1

    .line 1606
    .local v1, "iface":Ljava/lang/String;
    const/4 v3, -0x1

    .line 1608
    .local v3, "type":I
    iget-object v4, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v4, v5}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1610
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 1611
    const-string/jumbo v5, "data_activity_timeout_mobile"

    .line 1612
    const/16 v6, 0xa

    .line 1610
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1613
    .local v2, "timeout":I
    const/4 v3, 0x0

    .line 1625
    :goto_0
    if-lez v2, :cond_0

    if-eqz v1, :cond_0

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 1627
    :try_start_0
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v4, v1, v2, v3}, Landroid/os/INetworkManagementService;->addIdleTimer(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1602
    :cond_0
    :goto_1
    return-void

    .line 1614
    .end local v2    # "timeout":I
    :cond_1
    iget-object v4, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 1615
    const/4 v5, 0x1

    .line 1614
    invoke-virtual {v4, v5}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1616
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 1617
    const-string/jumbo v5, "data_activity_timeout_wifi"

    .line 1618
    const/16 v6, 0xf

    .line 1616
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1619
    .restart local v2    # "timeout":I
    const/4 v3, 0x1

    goto :goto_0

    .line 1622
    .end local v2    # "timeout":I
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "timeout":I
    goto :goto_0

    .line 1628
    :catch_0
    move-exception v0

    .line 1630
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception in setupDataActivityTracking "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private teardownUnneededNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .locals 4
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .prologue
    .line 4285
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkRequests:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 4286
    iget-object v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkRequests:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkRequest;

    .line 4288
    .local v1, "nr":Landroid/net/NetworkRequest;
    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->isRequest(Landroid/net/NetworkRequest;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4285
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4289
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Dead network still had at least "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 4292
    .end local v1    # "nr":Landroid/net/NetworkRequest;
    :cond_1
    iget-object v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v2}, Lcom/android/internal/util/AsyncChannel;->disconnect()V

    .line 4284
    return-void
.end method

.method private throwIfLockdownEnabled()V
    .locals 2

    .prologue
    .line 3296
    iget-boolean v0, p0, Lcom/android/server/ConnectivityService;->mLockdownEnabled:Z

    if-eqz v0, :cond_0

    .line 3297
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Unavailable in lockdown mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3295
    :cond_0
    return-void
.end method

.method private unlinger(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .locals 2
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .prologue
    .line 2150
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkLingered:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2151
    iget-boolean v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->lingering:Z

    if-nez v0, :cond_0

    return-void

    .line 2152
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->lingering:Z

    .line 2154
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMonitor:Lcom/android/server/connectivity/NetworkMonitor;

    const v1, 0x82001

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->sendMessage(I)V

    .line 2149
    return-void
.end method

.method private unneeded(Lcom/android/server/connectivity/NetworkAgentInfo;)Z
    .locals 5
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .prologue
    const/4 v4, 0x0

    .line 2326
    iget-boolean v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->created:Z

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->isVPN()Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->lingering:Z

    if-eqz v2, :cond_1

    :cond_0
    return v4

    .line 2327
    :cond_1
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetworkRequests:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "nri$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    .line 2330
    .local v0, "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    iget-boolean v2, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->isRequest:Z

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {p1, v2}, Lcom/android/server/connectivity/NetworkAgentInfo;->satisfies(Landroid/net/NetworkRequest;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2331
    iget-object v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkRequests:Landroid/util/SparseArray;

    iget-object v3, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v3, v3, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3

    .line 2339
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetworkForRequestId:Landroid/util/SparseArray;

    iget-object v3, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v3, v3, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/NetworkAgentInfo;

    invoke-virtual {v2}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v2

    .line 2340
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScoreAsValidated()I

    move-result v3

    .line 2339
    if-ge v2, v3, :cond_2

    .line 2341
    :cond_3
    return v4

    .line 2344
    .end local v0    # "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    :cond_4
    const/4 v2, 0x1

    return v2
.end method

.method private updateCapabilities(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;)V
    .locals 7
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "networkCapabilities"    # Landroid/net/NetworkCapabilities;

    .prologue
    const/16 v6, 0x11

    const/16 v5, 0x10

    const/16 v4, 0xd

    .line 4160
    new-instance v1, Landroid/net/NetworkCapabilities;

    invoke-direct {v1, p2}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    .line 4161
    .end local p2    # "networkCapabilities":Landroid/net/NetworkCapabilities;
    .local v1, "networkCapabilities":Landroid/net/NetworkCapabilities;
    iget-boolean v3, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->lastValidated:Z

    if-eqz v3, :cond_2

    .line 4162
    invoke-virtual {v1, v5}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 4166
    :goto_0
    iget-boolean v3, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->lastCaptivePortalDetected:Z

    if-eqz v3, :cond_3

    .line 4167
    invoke-virtual {v1, v6}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 4171
    :goto_1
    iget-object v3, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-static {v3, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 4172
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v2

    .line 4173
    .local v2, "oldScore":I
    iget-object v3, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v3, v4}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v3

    .line 4174
    invoke-virtual {v1, v4}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v4

    .line 4173
    if-eq v3, v4, :cond_0

    .line 4176
    :try_start_0
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    iget-object v3, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v5, v3, Landroid/net/Network;->netId:I

    .line 4177
    const/16 v3, 0xd

    invoke-virtual {v1, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 4178
    const/4 v3, 0x0

    .line 4176
    :goto_2
    invoke-interface {v4, v5, v3}, Landroid/os/INetworkManagementService;->setNetworkPermission(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4183
    :cond_0
    :goto_3
    monitor-enter p1

    .line 4184
    :try_start_1
    iput-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p1

    .line 4186
    invoke-direct {p0, p1, v2}, Lcom/android/server/ConnectivityService;->rematchAllNetworksAndRequests(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    .line 4187
    const v3, 0x80006

    invoke-virtual {p0, p1, v3}, Lcom/android/server/ConnectivityService;->notifyNetworkCallbacks(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    .line 4158
    .end local v2    # "oldScore":I
    :cond_1
    return-void

    .line 4164
    :cond_2
    invoke-virtual {v1, v5}, Landroid/net/NetworkCapabilities;->removeCapability(I)Landroid/net/NetworkCapabilities;

    goto :goto_0

    .line 4169
    :cond_3
    invoke-virtual {v1, v6}, Landroid/net/NetworkCapabilities;->removeCapability(I)Landroid/net/NetworkCapabilities;

    goto :goto_1

    .line 4178
    .restart local v2    # "oldScore":I
    :cond_4
    :try_start_2
    const-string/jumbo v3, "SYSTEM"
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 4179
    :catch_0
    move-exception v0

    .line 4180
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception in setNetworkPermission: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto :goto_3

    .line 4183
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    monitor-exit p1

    throw v3
.end method

.method private updateClat(Landroid/net/LinkProperties;Landroid/net/LinkProperties;Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .locals 6
    .param p1, "newLp"    # Landroid/net/LinkProperties;
    .param p2, "oldLp"    # Landroid/net/LinkProperties;
    .param p3, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .prologue
    .line 4017
    iget-object v2, p3, Lcom/android/server/connectivity/NetworkAgentInfo;->clatd:Lcom/android/server/connectivity/Nat464Xlat;

    if-eqz v2, :cond_1

    iget-object v2, p3, Lcom/android/server/connectivity/NetworkAgentInfo;->clatd:Lcom/android/server/connectivity/Nat464Xlat;

    invoke-virtual {v2}, Lcom/android/server/connectivity/Nat464Xlat;->isStarted()Z

    move-result v1

    .line 4018
    :goto_0
    invoke-static {p3}, Lcom/android/server/connectivity/Nat464Xlat;->requiresClat(Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    move-result v0

    .line 4020
    .local v0, "shouldRunClat":Z
    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    .line 4021
    new-instance v2, Lcom/android/server/connectivity/Nat464Xlat;

    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mTrackerHandler:Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;

    invoke-direct {v2, v3, v4, v5, p3}, Lcom/android/server/connectivity/Nat464Xlat;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/os/Handler;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    iput-object v2, p3, Lcom/android/server/connectivity/NetworkAgentInfo;->clatd:Lcom/android/server/connectivity/Nat464Xlat;

    .line 4022
    iget-object v2, p3, Lcom/android/server/connectivity/NetworkAgentInfo;->clatd:Lcom/android/server/connectivity/Nat464Xlat;

    invoke-virtual {v2}, Lcom/android/server/connectivity/Nat464Xlat;->start()V

    .line 4016
    :cond_0
    :goto_1
    return-void

    .line 4017
    .end local v0    # "shouldRunClat":Z
    :cond_1
    const/4 v1, 0x0

    .local v1, "wasRunningClat":Z
    goto :goto_0

    .line 4023
    .end local v1    # "wasRunningClat":Z
    .restart local v0    # "shouldRunClat":Z
    :cond_2
    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 4024
    iget-object v2, p3, Lcom/android/server/connectivity/NetworkAgentInfo;->clatd:Lcom/android/server/connectivity/Nat464Xlat;

    invoke-virtual {v2}, Lcom/android/server/connectivity/Nat464Xlat;->stop()V

    goto :goto_1
.end method

.method private updateDnses(Landroid/net/LinkProperties;Landroid/net/LinkProperties;IZZ)V
    .locals 6
    .param p1, "newLp"    # Landroid/net/LinkProperties;
    .param p2, "oldLp"    # Landroid/net/LinkProperties;
    .param p3, "netId"    # I
    .param p4, "flush"    # Z
    .param p5, "useDefaultDns"    # Z

    .prologue
    .line 4104
    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Landroid/net/LinkProperties;->isIdenticalDnses(Landroid/net/LinkProperties;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 4105
    :cond_0
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v1

    .line 4106
    .local v1, "dnses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mDefaultDns:Ljava/net/InetAddress;

    if-eqz v3, :cond_1

    if-eqz p5, :cond_1

    .line 4107
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "dnses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4108
    .restart local v1    # "dnses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mDefaultDns:Ljava/net/InetAddress;

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 4110
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "no dns provided for netId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", so using defaults"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 4113
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Setting Dns servers for network "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 4115
    :try_start_0
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-static {v1}, Landroid/net/NetworkUtils;->makeStrings(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v4

    .line 4116
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getDomains()Ljava/lang/String;

    move-result-object v5

    .line 4115
    invoke-interface {v3, p3, v4, v5}, Landroid/os/INetworkManagementService;->setDnsServersForNetwork(I[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4120
    :goto_0
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getDefaultNetwork()Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    .line 4121
    .local v0, "defaultNai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v0, :cond_2

    iget-object v3, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v3, v3, Landroid/net/Network;->netId:I

    if-ne v3, p3, :cond_2

    .line 4122
    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->setDefaultDnsSystemProperties(Ljava/util/Collection;)V

    .line 4124
    :cond_2
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->flushVmDnsCache()V

    .line 4103
    .end local v0    # "defaultNai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local v1    # "dnses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    :cond_3
    :goto_1
    return-void

    .line 4117
    .restart local v1    # "dnses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    :catch_0
    move-exception v2

    .line 4118
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception in setDnsServersForNetwork: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 4125
    .end local v1    # "dnses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_4
    if-eqz p4, :cond_3

    .line 4127
    :try_start_1
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v3, p3}, Landroid/os/INetworkManagementService;->flushNetworkDnsCache(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 4131
    :goto_2
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->flushVmDnsCache()V

    goto :goto_1

    .line 4128
    :catch_1
    move-exception v2

    .line 4129
    .restart local v2    # "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception in flushNetworkDnsCache: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private updateInetCondition(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .locals 2
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .prologue
    .line 4600
    iget-boolean v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->everValidated:Z

    if-nez v1, :cond_0

    return-void

    .line 4603
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->isDefaultNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 4605
    :cond_1
    iget-boolean v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->lastValidated:Z

    if-eqz v1, :cond_2

    const/16 v0, 0x64

    .line 4607
    .local v0, "newInetCondition":I
    :goto_0
    iget v1, p0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    if-ne v0, v1, :cond_3

    return-void

    .line 4605
    .end local v0    # "newInetCondition":I
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "newInetCondition":I
    goto :goto_0

    .line 4609
    :cond_3
    iput v0, p0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    .line 4610
    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->sendInetConditionBroadcast(Landroid/net/NetworkInfo;)V

    .line 4598
    return-void
.end method

.method private updateInterfaces(Landroid/net/LinkProperties;Landroid/net/LinkProperties;I)V
    .locals 6
    .param p1, "newLp"    # Landroid/net/LinkProperties;
    .param p2, "oldLp"    # Landroid/net/LinkProperties;
    .param p3, "netId"    # I

    .prologue
    .line 4029
    new-instance v3, Landroid/net/LinkProperties$CompareResult;

    invoke-direct {v3}, Landroid/net/LinkProperties$CompareResult;-><init>()V

    .line 4030
    .local v3, "interfaceDiff":Landroid/net/LinkProperties$CompareResult;, "Landroid/net/LinkProperties$CompareResult<Ljava/lang/String;>;"
    if-eqz p2, :cond_1

    .line 4031
    invoke-virtual {p2, p1}, Landroid/net/LinkProperties;->compareAllInterfaceNames(Landroid/net/LinkProperties;)Landroid/net/LinkProperties$CompareResult;

    move-result-object v3

    .line 4035
    :cond_0
    :goto_0
    iget-object v4, v3, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/List;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "iface$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4037
    .local v1, "iface":Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Adding iface "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " to network "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 4038
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v4, v1, p3}, Landroid/os/INetworkManagementService;->addInterfaceToNetwork(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 4039
    :catch_0
    move-exception v0

    .line 4040
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception adding interface: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 4032
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "iface":Ljava/lang/String;
    .end local v2    # "iface$iterator":Ljava/util/Iterator;
    :cond_1
    if-eqz p1, :cond_0

    .line 4033
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getAllInterfaceNames()Ljava/util/List;

    move-result-object v4

    iput-object v4, v3, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/List;

    goto :goto_0

    .line 4043
    .restart local v2    # "iface$iterator":Ljava/util/Iterator;
    :cond_2
    iget-object v4, v3, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/List;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4045
    .restart local v1    # "iface":Ljava/lang/String;
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Removing iface "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " from network "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 4046
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v4, v1, p3}, Landroid/os/INetworkManagementService;->removeInterfaceFromNetwork(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 4047
    :catch_1
    move-exception v0

    .line 4048
    .restart local v0    # "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception removing interface: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto :goto_2

    .line 4028
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "iface":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private updateLinkProperties(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/LinkProperties;)V
    .locals 7
    .param p1, "networkAgent"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "oldLp"    # Landroid/net/LinkProperties;

    .prologue
    .line 3974
    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    .line 3975
    .local v1, "newLp":Landroid/net/LinkProperties;
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v3, v0, Landroid/net/Network;->netId:I

    .line 3979
    .local v3, "netId":I
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->clatd:Lcom/android/server/connectivity/Nat464Xlat;

    if-eqz v0, :cond_0

    .line 3980
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->clatd:Lcom/android/server/connectivity/Nat464Xlat;

    invoke-virtual {v0, p2}, Lcom/android/server/connectivity/Nat464Xlat;->fixupLinkProperties(Landroid/net/LinkProperties;)V

    .line 3983
    :cond_0
    invoke-direct {p0, v1, p2, v3}, Lcom/android/server/ConnectivityService;->updateInterfaces(Landroid/net/LinkProperties;Landroid/net/LinkProperties;I)V

    .line 3984
    invoke-direct {p0, v1, p2}, Lcom/android/server/ConnectivityService;->updateMtu(Landroid/net/LinkProperties;Landroid/net/LinkProperties;)V

    .line 3989
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->updateTcpBufferSizes(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 3990
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->updateTcpDelayedAck(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 3997
    const/4 v6, 0x0

    .line 3998
    .local v6, "useDefaultDns":Z
    invoke-direct {p0, v1, p2, v3}, Lcom/android/server/ConnectivityService;->updateRoutes(Landroid/net/LinkProperties;Landroid/net/LinkProperties;I)Z

    move-result v4

    .line 3999
    .local v4, "flushDns":Z
    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/ConnectivityService;->updateDnses(Landroid/net/LinkProperties;Landroid/net/LinkProperties;IZZ)V

    .line 4001
    invoke-direct {p0, v1, p2, p1}, Lcom/android/server/ConnectivityService;->updateClat(Landroid/net/LinkProperties;Landroid/net/LinkProperties;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 4002
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->isDefaultNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4003
    invoke-virtual {v1}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->handleApplyDefaultProxy(Landroid/net/ProxyInfo;)V

    .line 4008
    :goto_0
    invoke-static {v1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4009
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->notifyIfacesChanged()V

    .line 4010
    const v0, 0x80007

    invoke-virtual {p0, p1, v0}, Lcom/android/server/ConnectivityService;->notifyNetworkCallbacks(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    .line 4013
    :cond_1
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mKeepaliveTracker:Lcom/android/server/connectivity/KeepaliveTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/KeepaliveTracker;->handleCheckKeepalivesStillValid(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 3973
    return-void

    .line 4005
    :cond_2
    invoke-direct {p0, v1, p2, p1}, Lcom/android/server/ConnectivityService;->updateProxy(Landroid/net/LinkProperties;Landroid/net/LinkProperties;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    goto :goto_0
.end method

.method private updateMtu(Landroid/net/LinkProperties;Landroid/net/LinkProperties;)V
    .locals 6
    .param p1, "newLp"    # Landroid/net/LinkProperties;
    .param p2, "oldLp"    # Landroid/net/LinkProperties;

    .prologue
    .line 1658
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v1

    .line 1659
    .local v1, "iface":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getMtu()I

    move-result v2

    .line 1660
    .local v2, "mtu":I
    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Landroid/net/LinkProperties;->isIdenticalMtu(Landroid/net/LinkProperties;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1662
    return-void

    .line 1665
    :cond_0
    invoke-virtual {p1}, Landroid/net/LinkProperties;->hasGlobalIPv6Address()Z

    move-result v3

    invoke-static {v2, v3}, Landroid/net/LinkProperties;->isValidMtu(IZ)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1666
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unexpected mtu value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 1667
    return-void

    .line 1671
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1672
    const-string/jumbo v3, "Setting MTU size with null iface."

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 1673
    return-void

    .line 1677
    :cond_2
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Setting MTU size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 1678
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v3, v1, v2}, Landroid/os/INetworkManagementService;->setMtu(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1657
    :goto_0
    return-void

    .line 1679
    :catch_0
    move-exception v0

    .line 1680
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "ConnectivityService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "exception in setMtu()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateNetworkInfo(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo;)V
    .locals 11
    .param p1, "networkAgent"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "newInfo"    # Landroid/net/NetworkInfo;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 4624
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    .line 4625
    .local v3, "state":Landroid/net/NetworkInfo$State;
    const/4 v1, 0x0

    .line 4626
    .local v1, "oldInfo":Landroid/net/NetworkInfo;
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v2

    .line 4627
    .local v2, "oldScore":I
    monitor-enter p1

    .line 4628
    :try_start_0
    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    .line 4629
    .local v1, "oldInfo":Landroid/net/NetworkInfo;
    iput-object p2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    .line 4631
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->notifyLockdownVpn(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 4633
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    if-ne v4, v3, :cond_0

    .line 4635
    return-void

    .line 4627
    .end local v1    # "oldInfo":Landroid/net/NetworkInfo;
    :catchall_0
    move-exception v4

    monitor-exit p1

    throw v4

    .line 4638
    .restart local v1    # "oldInfo":Landroid/net/NetworkInfo;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, " EVENT_NETWORK_INFO_CHANGED, going from "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 4639
    if-nez v1, :cond_4

    const-string/jumbo v4, "null"

    .line 4638
    :goto_0
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4640
    const-string/jumbo v8, " to "

    .line 4638
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 4643
    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_1

    iget-boolean v4, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->created:Z

    if-eqz v4, :cond_5

    .line 4696
    :cond_1
    sget-object v4, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_d

    .line 4697
    iget-object v4, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v4}, Lcom/android/internal/util/AsyncChannel;->disconnect()V

    .line 4698
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->isVPN()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 4699
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mProxyLock:Ljava/lang/Object;

    monitor-enter v5

    .line 4700
    :try_start_1
    iget-boolean v4, p0, Lcom/android/server/ConnectivityService;->mDefaultProxyDisabled:Z

    if-eqz v4, :cond_2

    .line 4701
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/ConnectivityService;->mDefaultProxyDisabled:Z

    .line 4702
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyInfo;

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mDefaultProxy:Landroid/net/ProxyInfo;

    if-eqz v4, :cond_2

    .line 4703
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mDefaultProxy:Landroid/net/ProxyInfo;

    invoke-direct {p0, v4}, Lcom/android/server/ConnectivityService;->sendProxyBroadcast(Landroid/net/ProxyInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :cond_2
    monitor-exit v5

    .line 4623
    :cond_3
    :goto_1
    return-void

    .line 4639
    :cond_4
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    goto :goto_0

    .line 4646
    :cond_5
    :try_start_2
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->isVPN()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 4647
    iget-object v9, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    iget-object v4, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v10, v4, Landroid/net/Network;->netId:I

    .line 4648
    iget-object v4, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v4}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_8

    move v8, v7

    .line 4649
    :goto_2
    iget-object v4, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    if-eqz v4, :cond_9

    .line 4650
    iget-object v4, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    iget-boolean v4, v4, Landroid/net/NetworkMisc;->allowBypass:Z

    if-eqz v4, :cond_a

    move v4, v7

    .line 4647
    :goto_3
    invoke-interface {v9, v10, v8, v4}, Landroid/os/INetworkManagementService;->createVirtualNetwork(IZZ)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 4662
    :goto_4
    iput-boolean v6, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->created:Z

    .line 4663
    invoke-direct {p0, p1, v5}, Lcom/android/server/ConnectivityService;->updateLinkProperties(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/LinkProperties;)V

    .line 4664
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->notifyIfacesChanged()V

    .line 4666
    iget-object v4, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMonitor:Lcom/android/server/connectivity/NetworkMonitor;

    const v6, 0x82001

    invoke-virtual {v4, v6}, Lcom/android/server/connectivity/NetworkMonitor;->sendMessage(I)V

    .line 4667
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->scheduleUnvalidatedPrompt(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 4669
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->isVPN()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 4671
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mProxyLock:Ljava/lang/Object;

    monitor-enter v6

    .line 4672
    :try_start_3
    iget-boolean v4, p0, Lcom/android/server/ConnectivityService;->mDefaultProxyDisabled:Z

    if-nez v4, :cond_6

    .line 4673
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/ConnectivityService;->mDefaultProxyDisabled:Z

    .line 4674
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyInfo;

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mDefaultProxy:Landroid/net/ProxyInfo;

    if-eqz v4, :cond_6

    .line 4675
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/server/ConnectivityService;->sendProxyBroadcast(Landroid/net/ProxyInfo;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_6
    monitor-exit v6

    .line 4689
    :cond_7
    const-string/jumbo v4, "CONNECT"

    invoke-direct {p0, p1, v4, v5}, Lcom/android/server/ConnectivityService;->updateSignalStrengthThresholds(Lcom/android/server/connectivity/NetworkAgentInfo;Ljava/lang/String;Landroid/net/NetworkRequest;)V

    .line 4692
    sget-object v4, Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;->REAP:Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;

    invoke-direct {p0, p1, v4}, Lcom/android/server/ConnectivityService;->rematchNetworkAndRequests(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;)V

    .line 4695
    const v4, 0x80001

    invoke-virtual {p0, p1, v4}, Lcom/android/server/ConnectivityService;->notifyNetworkCallbacks(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    goto :goto_1

    :cond_8
    move v8, v6

    .line 4648
    goto :goto_2

    :cond_9
    move v4, v6

    .line 4649
    goto :goto_3

    :cond_a
    move v4, v6

    .line 4650
    goto :goto_3

    .line 4652
    :cond_b
    :try_start_4
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    iget-object v4, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v8, v4, Landroid/net/Network;->netId:I

    .line 4653
    iget-object v4, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 4654
    const/16 v9, 0xd

    .line 4653
    invoke-virtual {v4, v9}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v4

    if-eqz v4, :cond_c

    move-object v4, v5

    .line 4652
    :goto_5
    invoke-interface {v7, v8, v4}, Landroid/os/INetworkManagementService;->createPhysicalNetwork(ILjava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_4

    .line 4657
    :catch_0
    move-exception v0

    .line 4658
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Error creating network "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v5, v5, Landroid/net/Network;->netId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4659
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    .line 4658
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 4660
    return-void

    .line 4655
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_c
    :try_start_5
    const-string/jumbo v4, "SYSTEM"
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_5

    .line 4671
    :catchall_1
    move-exception v4

    monitor-exit v6

    throw v4

    .line 4699
    :catchall_2
    move-exception v4

    monitor-exit v5

    throw v4

    .line 4708
    :cond_d
    if-eqz v1, :cond_f

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    if-ne v4, v5, :cond_f

    .line 4711
    :goto_6
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v4

    if-eq v4, v2, :cond_e

    .line 4712
    invoke-direct {p0, p1, v2}, Lcom/android/server/ConnectivityService;->rematchAllNetworksAndRequests(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    .line 4714
    :cond_e
    sget-object v4, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_10

    .line 4715
    const v4, 0x8000b

    .line 4714
    :goto_7
    invoke-virtual {p0, p1, v4}, Lcom/android/server/ConnectivityService;->notifyNetworkCallbacks(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    .line 4717
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    invoke-virtual {v4, p1}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->update(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    goto/16 :goto_1

    .line 4709
    :cond_f
    sget-object v4, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_3

    goto :goto_6

    .line 4716
    :cond_10
    const v4, 0x8000c

    goto :goto_7
.end method

.method private updateNetworkScore(Lcom/android/server/connectivity/NetworkAgentInfo;I)V
    .locals 3
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "score"    # I

    .prologue
    .line 4722
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateNetworkScore for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 4723
    if-gez p2, :cond_0

    .line 4724
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateNetworkScore for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " got a negative score ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4725
    const-string/jumbo v2, ").  Bumping score to min of 0"

    .line 4724
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 4726
    const/4 p2, 0x0

    .line 4729
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v0

    .line 4730
    .local v0, "oldScore":I
    invoke-virtual {p1, p2}, Lcom/android/server/connectivity/NetworkAgentInfo;->setCurrentScore(I)V

    .line 4732
    invoke-direct {p0, p1, v0}, Lcom/android/server/ConnectivityService;->rematchAllNetworksAndRequests(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    .line 4734
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->sendUpdatedScoreToFactories(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 4721
    return-void
.end method

.method private updateProxy(Landroid/net/LinkProperties;Landroid/net/LinkProperties;Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .locals 3
    .param p1, "newLp"    # Landroid/net/LinkProperties;
    .param p2, "oldLp"    # Landroid/net/LinkProperties;
    .param p3, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .prologue
    .line 2964
    if-nez p1, :cond_1

    const/4 v0, 0x0

    .line 2965
    :goto_0
    if-nez p2, :cond_2

    const/4 v1, 0x0

    .line 2967
    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/android/server/ConnectivityService;->proxyInfoEqual(Landroid/net/ProxyInfo;Landroid/net/ProxyInfo;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2968
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getDefaultProxy()Landroid/net/ProxyInfo;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/ConnectivityService;->sendProxyBroadcast(Landroid/net/ProxyInfo;)V

    .line 2963
    :cond_0
    return-void

    .line 2964
    :cond_1
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v0

    .local v0, "newProxyInfo":Landroid/net/ProxyInfo;
    goto :goto_0

    .line 2965
    .end local v0    # "newProxyInfo":Landroid/net/ProxyInfo;
    :cond_2
    invoke-virtual {p2}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v1

    .local v1, "oldProxyInfo":Landroid/net/ProxyInfo;
    goto :goto_1
.end method

.method private updateRoutes(Landroid/net/LinkProperties;Landroid/net/LinkProperties;I)Z
    .locals 7
    .param p1, "newLp"    # Landroid/net/LinkProperties;
    .param p2, "oldLp"    # Landroid/net/LinkProperties;
    .param p3, "netId"    # I

    .prologue
    const/4 v4, 0x1

    .line 4058
    new-instance v3, Landroid/net/LinkProperties$CompareResult;

    invoke-direct {v3}, Landroid/net/LinkProperties$CompareResult;-><init>()V

    .line 4059
    .local v3, "routeDiff":Landroid/net/LinkProperties$CompareResult;, "Landroid/net/LinkProperties$CompareResult<Landroid/net/RouteInfo;>;"
    if-eqz p2, :cond_2

    .line 4060
    invoke-virtual {p2, p1}, Landroid/net/LinkProperties;->compareAllRoutes(Landroid/net/LinkProperties;)Landroid/net/LinkProperties$CompareResult;

    move-result-object v3

    .line 4068
    :cond_0
    :goto_0
    iget-object v5, v3, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/List;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "route$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/RouteInfo;

    .line 4069
    .local v1, "route":Landroid/net/RouteInfo;
    invoke-virtual {v1}, Landroid/net/RouteInfo;->hasGateway()Z

    move-result v5

    if-nez v5, :cond_1

    .line 4070
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Adding Route ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "] to network "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 4072
    :try_start_0
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v5, p3, v1}, Landroid/os/INetworkManagementService;->addRoute(ILandroid/net/RouteInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 4073
    :catch_0
    move-exception v0

    .line 4074
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Landroid/net/RouteInfo;->getDestination()Landroid/net/IpPrefix;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/IpPrefix;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    instance-of v5, v5, Ljava/net/Inet4Address;

    if-eqz v5, :cond_1

    .line 4075
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Exception in addRoute for non-gateway: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 4061
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "route":Landroid/net/RouteInfo;
    .end local v2    # "route$iterator":Ljava/util/Iterator;
    :cond_2
    if-eqz p1, :cond_0

    .line 4062
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getAllRoutes()Ljava/util/List;

    move-result-object v5

    iput-object v5, v3, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/List;

    goto :goto_0

    .line 4079
    .restart local v2    # "route$iterator":Ljava/util/Iterator;
    :cond_3
    iget-object v5, v3, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/List;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/RouteInfo;

    .line 4080
    .restart local v1    # "route":Landroid/net/RouteInfo;
    invoke-virtual {v1}, Landroid/net/RouteInfo;->hasGateway()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 4081
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Adding Route ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "] to network "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 4083
    :try_start_1
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v5, p3, v1}, Landroid/os/INetworkManagementService;->addRoute(ILandroid/net/RouteInfo;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 4084
    :catch_1
    move-exception v0

    .line 4085
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v5

    instance-of v5, v5, Ljava/net/Inet4Address;

    if-eqz v5, :cond_4

    .line 4086
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Exception in addRoute for gateway: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto :goto_2

    .line 4091
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "route":Landroid/net/RouteInfo;
    :cond_5
    iget-object v5, v3, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/List;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/RouteInfo;

    .line 4092
    .restart local v1    # "route":Landroid/net/RouteInfo;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Removing Route ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "] from network "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 4094
    :try_start_2
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v5, p3, v1}, Landroid/os/INetworkManagementService;->removeRoute(ILandroid/net/RouteInfo;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    .line 4095
    :catch_2
    move-exception v0

    .line 4096
    .restart local v0    # "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Exception in removeRoute: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto :goto_3

    .line 4099
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "route":Landroid/net/RouteInfo;
    :cond_6
    iget-object v5, v3, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, v3, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_7

    const/4 v4, 0x0

    :cond_7
    return v4
.end method

.method private updateSignalStrengthThresholds(Lcom/android/server/connectivity/NetworkAgentInfo;Ljava/lang/String;Landroid/net/NetworkRequest;)V
    .locals 8
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "request"    # Landroid/net/NetworkRequest;

    .prologue
    const/4 v7, 0x0

    .line 3689
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->getSignalStrengthThresholds(Lcom/android/server/connectivity/NetworkAgentInfo;)Ljava/util/ArrayList;

    move-result-object v2

    .line 3690
    .local v2, "thresholdsArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3691
    .local v1, "thresholds":Landroid/os/Bundle;
    const-string/jumbo v3, "thresholds"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 3696
    if-eqz p3, :cond_0

    iget-object v3, p3, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v3}, Landroid/net/NetworkCapabilities;->hasSignalStrength()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3697
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p3, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v4}, Landroid/net/NetworkCapabilities;->getSignalStrength()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3701
    .local v0, "detail":Ljava/lang/String;
    :goto_0
    const-string/jumbo v3, "updateSignalStrengthThresholds: %s, sending %s to %s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    .line 3702
    aput-object v0, v4, v7

    invoke-virtual {v2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v4, v6

    .line 3701
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 3705
    iget-object v3, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    .line 3706
    const v4, 0x8100e

    .line 3705
    invoke-virtual {v3, v4, v7, v7, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 3688
    return-void

    .line 3699
    .end local v0    # "detail":Ljava/lang/String;
    :cond_0
    move-object v0, p2

    .restart local v0    # "detail":Ljava/lang/String;
    goto :goto_0
.end method

.method private updateTcpBufferSizes(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .locals 9
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .prologue
    .line 1694
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->isDefaultNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1695
    return-void

    .line 1698
    :cond_0
    iget-object v6, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v6}, Landroid/net/LinkProperties;->getTcpBufferSizes()Ljava/lang/String;

    move-result-object v4

    .line 1699
    .local v4, "tcpBufferSizes":Ljava/lang/String;
    const/4 v5, 0x0

    .line 1700
    .local v5, "values":[Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 1701
    const-string/jumbo v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1704
    .end local v5    # "values":[Ljava/lang/String;
    :cond_1
    if-eqz v5, :cond_2

    array-length v6, v5

    const/4 v7, 0x6

    if-eq v6, v7, :cond_3

    .line 1705
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Invalid tcpBufferSizes string: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", using defaults"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 1706
    const-string/jumbo v4, "4096,87380,110208,4096,16384,110208"

    .line 1707
    const-string/jumbo v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1710
    :cond_3
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mCurrentTcpBufferSizes:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    return-void

    .line 1713
    :cond_4
    :try_start_0
    const-string/jumbo v6, "ConnectivityService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Setting tx/rx TCP buffers to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1715
    const-string/jumbo v1, "/sys/kernel/ipv4/tcp_"

    .line 1716
    .local v1, "prefix":Ljava/lang/String;
    const-string/jumbo v6, "/sys/kernel/ipv4/tcp_rmem_min"

    const/4 v7, 0x0

    aget-object v7, v5, v7

    invoke-static {v6, v7}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1717
    const-string/jumbo v6, "/sys/kernel/ipv4/tcp_rmem_def"

    const/4 v7, 0x1

    aget-object v7, v5, v7

    invoke-static {v6, v7}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1718
    const-string/jumbo v6, "/sys/kernel/ipv4/tcp_rmem_max"

    const/4 v7, 0x2

    aget-object v7, v5, v7

    invoke-static {v6, v7}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1719
    const-string/jumbo v6, "/sys/kernel/ipv4/tcp_wmem_min"

    const/4 v7, 0x3

    aget-object v7, v5, v7

    invoke-static {v6, v7}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1720
    const-string/jumbo v6, "/sys/kernel/ipv4/tcp_wmem_def"

    const/4 v7, 0x4

    aget-object v7, v5, v7

    invoke-static {v6, v7}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1721
    const-string/jumbo v6, "/sys/kernel/ipv4/tcp_wmem_max"

    const/4 v7, 0x5

    aget-object v7, v5, v7

    invoke-static {v6, v7}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1722
    iput-object v4, p0, Lcom/android/server/ConnectivityService;->mCurrentTcpBufferSizes:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1727
    .end local v1    # "prefix":Ljava/lang/String;
    :goto_0
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 1728
    const-string/jumbo v7, "tcp_default_init_rwnd"

    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->getDefaultTcpRwnd()I

    move-result v8

    .line 1727
    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1729
    .local v2, "rwndValue":Ljava/lang/Integer;
    const-string/jumbo v3, "sys.sysctl.tcp_def_init_rwnd"

    .line 1730
    .local v3, "sysctlKey":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eqz v6, :cond_5

    .line 1731
    const-string/jumbo v6, "sys.sysctl.tcp_def_init_rwnd"

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1693
    :cond_5
    return-void

    .line 1723
    .end local v2    # "rwndValue":Ljava/lang/Integer;
    .end local v3    # "sysctlKey":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1724
    .local v0, "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Can\'t set TCP buffer sizes:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateTcpDelayedAck(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .locals 5
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .prologue
    .line 1736
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->isDefaultNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1737
    return-void

    .line 1740
    :cond_0
    iget-object v3, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v3}, Landroid/net/LinkProperties;->getTcpDelayedAckSegments()I

    move-result v1

    .line 1741
    .local v1, "segments":I
    iget-object v3, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v3}, Landroid/net/LinkProperties;->getTcpUserCfg()I

    move-result v2

    .line 1743
    .local v2, "usercfg":I
    iget v3, p0, Lcom/android/server/ConnectivityService;->mCurrentTcpDelayedAckSegments:I

    if-eq v1, v3, :cond_1

    .line 1745
    :try_start_0
    const-string/jumbo v3, "/sys/kernel/ipv4/tcp_delack_seg"

    .line 1746
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 1745
    invoke-static {v3, v4}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1747
    iput v1, p0, Lcom/android/server/ConnectivityService;->mCurrentTcpDelayedAckSegments:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1753
    :cond_1
    :goto_0
    iget v3, p0, Lcom/android/server/ConnectivityService;->mCurrentTcpUserCfg:I

    if-eq v2, v3, :cond_2

    .line 1755
    :try_start_1
    const-string/jumbo v3, "/sys/kernel/ipv4/tcp_use_usercfg"

    .line 1756
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 1755
    invoke-static {v3, v4}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1757
    iput v2, p0, Lcom/android/server/ConnectivityService;->mCurrentTcpUserCfg:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1735
    :cond_2
    :goto_1
    return-void

    .line 1758
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    goto :goto_1

    .line 1748
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_0
.end method


# virtual methods
.method public addVpnAddress(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "prefixLength"    # I

    .prologue
    .line 4839
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->throwIfLockdownEnabled()V

    .line 4840
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 4841
    .local v0, "user":I
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v2

    .line 4842
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/connectivity/Vpn;->addAddress(Ljava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v2

    return v1

    .line 4841
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public checkMobileProvisioning(I)I
    .locals 1
    .param p1, "suggestedTimeOutMs"    # I

    .prologue
    .line 3304
    const/4 v0, -0x1

    return v0
.end method

.method protected createHandlerThread()Landroid/os/HandlerThread;
    .locals 2

    .prologue
    .line 626
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "ConnectivityServiceThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public createNetworkMonitor(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkRequest;)Lcom/android/server/connectivity/NetworkMonitor;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p4, "defaultRequest"    # Landroid/net/NetworkRequest;

    .prologue
    .line 4925
    new-instance v0, Lcom/android/server/connectivity/NetworkMonitor;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/server/connectivity/NetworkMonitor;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkRequest;)V

    return-object v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 30
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1811
    new-instance v23, Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v24, "  "

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1812
    .local v23, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    .line 1813
    const-string/jumbo v25, "android.permission.DUMP"

    .line 1812
    invoke-virtual/range {v24 .. v25}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v24

    if-eqz v24, :cond_0

    .line 1815
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Permission Denial: can\'t dump ConnectivityService from from pid="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 1816
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v25

    .line 1815
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 1816
    const-string/jumbo v25, ", uid="

    .line 1815
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 1817
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v25

    .line 1815
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1818
    return-void

    .line 1821
    :cond_0
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 1822
    .local v14, "netDiags":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/connectivity/NetworkDiagnostics;>;"
    const-string/jumbo v24, "--diag"

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/server/ConnectivityService;->argsContain([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_3

    .line 1823
    const-wide/16 v6, 0x1388

    .line 1824
    .local v6, "DIAG_TIME_MS":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "nai$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 1826
    .local v10, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    new-instance v24, Lcom/android/server/connectivity/NetworkDiagnostics;

    .line 1827
    iget-object v0, v10, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    move-object/from16 v25, v0

    .line 1828
    new-instance v26, Landroid/net/LinkProperties;

    iget-object v0, v10, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    move-object/from16 v27, v0

    invoke-direct/range {v26 .. v27}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    .line 1829
    const-wide/16 v28, 0x1388

    .line 1826
    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move-wide/from16 v3, v28

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/connectivity/NetworkDiagnostics;-><init>(Landroid/net/Network;Landroid/net/LinkProperties;J)V

    move-object/from16 v0, v24

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1832
    .end local v10    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_1
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "netDiag$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/connectivity/NetworkDiagnostics;

    .line 1833
    .local v12, "netDiag":Lcom/android/server/connectivity/NetworkDiagnostics;
    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1834
    invoke-virtual {v12}, Lcom/android/server/connectivity/NetworkDiagnostics;->waitForMeasurements()V

    .line 1835
    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Lcom/android/server/connectivity/NetworkDiagnostics;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    goto :goto_1

    .line 1838
    .end local v12    # "netDiag":Lcom/android/server/connectivity/NetworkDiagnostics;
    :cond_2
    return-void

    .line 1841
    .end local v6    # "DIAG_TIME_MS":J
    .end local v11    # "nai$iterator":Ljava/util/Iterator;
    .end local v13    # "netDiag$iterator":Ljava/util/Iterator;
    :cond_3
    const-string/jumbo v24, "NetworkFactories for:"

    invoke-virtual/range {v23 .. v24}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1842
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetworkFactoryInfos:Ljava/util/HashMap;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "nfi$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_4

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;

    .line 1843
    .local v15, "nfi":Lcom/android/server/ConnectivityService$NetworkFactoryInfo;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, " "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    iget-object v0, v15, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;->name:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2

    .line 1845
    .end local v15    # "nfi":Lcom/android/server/ConnectivityService$NetworkFactoryInfo;
    :cond_4
    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1846
    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1848
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ConnectivityService;->getDefaultNetwork()Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v8

    .line 1849
    .local v8, "defaultNai":Lcom/android/server/connectivity/NetworkAgentInfo;
    const-string/jumbo v24, "Active default network: "

    invoke-virtual/range {v23 .. v24}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1850
    if-nez v8, :cond_5

    .line 1851
    const-string/jumbo v24, "none"

    invoke-virtual/range {v23 .. v24}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1855
    :goto_3
    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1857
    const-string/jumbo v24, "Current Networks:"

    invoke-virtual/range {v23 .. v24}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1858
    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1859
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .restart local v11    # "nai$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 1860
    .restart local v10    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-virtual {v10}, Lcom/android/server/connectivity/NetworkAgentInfo;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1861
    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1862
    const-string/jumbo v24, "Requests:"

    invoke-virtual/range {v23 .. v24}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1863
    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1864
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_5
    iget-object v0, v10, Lcom/android/server/connectivity/NetworkAgentInfo;->networkRequests:Landroid/util/SparseArray;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/util/SparseArray;->size()I

    move-result v24

    move/from16 v0, v24

    if-ge v9, v0, :cond_6

    .line 1865
    iget-object v0, v10, Lcom/android/server/connectivity/NetworkAgentInfo;->networkRequests:Landroid/util/SparseArray;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/net/NetworkRequest;

    invoke-virtual/range {v24 .. v24}, Landroid/net/NetworkRequest;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1864
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 1853
    .end local v9    # "i":I
    .end local v10    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local v11    # "nai$iterator":Ljava/util/Iterator;
    :cond_5
    iget-object v0, v8, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/net/Network;->netId:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    goto :goto_3

    .line 1867
    .restart local v9    # "i":I
    .restart local v10    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .restart local v11    # "nai$iterator":Ljava/util/Iterator;
    :cond_6
    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 1868
    const-string/jumbo v24, "Lingered:"

    invoke-virtual/range {v23 .. v24}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1869
    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1870
    iget-object v0, v10, Lcom/android/server/connectivity/NetworkAgentInfo;->networkLingered:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "nr$iterator":Ljava/util/Iterator;
    :goto_6
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_7

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/net/NetworkRequest;

    .local v17, "nr":Landroid/net/NetworkRequest;
    invoke-virtual/range {v17 .. v17}, Landroid/net/NetworkRequest;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_6

    .line 1871
    .end local v17    # "nr":Landroid/net/NetworkRequest;
    :cond_7
    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 1872
    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    goto :goto_4

    .line 1874
    .end local v9    # "i":I
    .end local v10    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local v18    # "nr$iterator":Ljava/util/Iterator;
    :cond_8
    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 1875
    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1877
    const-string/jumbo v24, "Network Requests:"

    invoke-virtual/range {v23 .. v24}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1878
    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1879
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetworkRequests:Ljava/util/HashMap;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, "nri$iterator":Ljava/util/Iterator;
    :goto_7
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_9

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    .line 1880
    .local v19, "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_7

    .line 1882
    .end local v19    # "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    :cond_9
    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1883
    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 1885
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 1887
    monitor-enter p0

    .line 1888
    :try_start_0
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "mNetTransitionWakeLock: currently "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 1889
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v24

    if-eqz v24, :cond_a

    const-string/jumbo v24, ""

    .line 1888
    :goto_8
    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 1889
    const-string/jumbo v25, "held"

    .line 1888
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1890
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockCausedBy:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_b

    .line 1891
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, ", last requested for "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockCausedBy:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_9
    monitor-exit p0

    .line 1897
    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1898
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    move-object/from16 v2, v23

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/connectivity/Tethering;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1900
    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1901
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mKeepaliveTracker:Lcom/android/server/connectivity/KeepaliveTracker;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/KeepaliveTracker;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 1903
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mInetLog:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    if-eqz v24, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mInetLog:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v24

    if-lez v24, :cond_d

    .line 1904
    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1905
    const-string/jumbo v24, "Inet condition reports:"

    invoke-virtual/range {v23 .. v24}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1906
    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1907
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mInetLog:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v24

    move/from16 v0, v24

    if-ge v9, v0, :cond_c

    .line 1908
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mInetLog:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 1907
    add-int/lit8 v9, v9, 0x1

    goto :goto_a

    .line 1889
    .end local v9    # "i":I
    :cond_a
    :try_start_1
    const-string/jumbo v24, "not "

    goto/16 :goto_8

    .line 1893
    :cond_b
    const-string/jumbo v24, ", last requested never"

    invoke-virtual/range {v23 .. v24}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_9

    .line 1887
    :catchall_0
    move-exception v24

    monitor-exit p0

    throw v24

    .line 1910
    .restart local v9    # "i":I
    :cond_c
    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 1913
    .end local v9    # "i":I
    :cond_d
    const-string/jumbo v24, "--short"

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/server/ConnectivityService;->argsContain([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_f

    .line 1914
    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1915
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mValidationLogs:Ljava/util/ArrayDeque;

    move-object/from16 v25, v0

    monitor-enter v25

    .line 1916
    :try_start_2
    const-string/jumbo v24, "mValidationLogs (most recent first):"

    invoke-virtual/range {v23 .. v24}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1917
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mValidationLogs:Ljava/util/ArrayDeque;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .local v22, "p$iterator":Ljava/util/Iterator;
    :goto_b
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_e

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/util/Pair;

    .line 1918
    .local v21, "p":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/net/Network;Landroid/util/LocalLog$ReadOnlyLocalLog;>;"
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 1919
    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1920
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Landroid/util/LocalLog$ReadOnlyLocalLog;

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    move-object/from16 v2, v23

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/LocalLog$ReadOnlyLocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1921
    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_b

    .line 1915
    .end local v21    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/net/Network;Landroid/util/LocalLog$ReadOnlyLocalLog;>;"
    .end local v22    # "p$iterator":Ljava/util/Iterator;
    :catchall_1
    move-exception v24

    monitor-exit v25

    throw v24

    .restart local v22    # "p$iterator":Ljava/util/Iterator;
    :cond_e
    monitor-exit v25

    .line 1925
    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1926
    const-string/jumbo v24, "mNetworkRequestInfoLogs (most recent first):"

    invoke-virtual/range {v23 .. v24}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1927
    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1928
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetworkRequestInfoLogs:Landroid/util/LocalLog;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    move-object/from16 v2, v23

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/LocalLog;->reverseDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1929
    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 1810
    .end local v22    # "p$iterator":Ljava/util/Iterator;
    :cond_f
    return-void
.end method

.method public establishVpn(Lcom/android/internal/net/VpnConfig;)Landroid/os/ParcelFileDescriptor;
    .locals 3
    .param p1, "config"    # Lcom/android/internal/net/VpnConfig;

    .prologue
    .line 3124
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->throwIfLockdownEnabled()V

    .line 3125
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 3126
    .local v0, "user":I
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v2

    .line 3127
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v1, p1}, Lcom/android/server/connectivity/Vpn;->establish(Lcom/android/internal/net/VpnConfig;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v2

    return-object v1

    .line 3126
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public factoryReset()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 4887
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 4889
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v5, "no_network_reset"

    invoke-virtual {v3, v5}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4890
    return-void

    .line 4893
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 4896
    .local v1, "userId":I
    invoke-virtual {p0, v4}, Lcom/android/server/ConnectivityService;->setAirplaneMode(Z)V

    .line 4898
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v5, "no_config_tethering"

    invoke-virtual {v3, v5}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 4900
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    move v3, v4

    :goto_0
    if-ge v3, v6, :cond_1

    aget-object v0, v5, v3

    .line 4901
    .local v0, "tether":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/server/ConnectivityService;->untether(Ljava/lang/String;)I

    .line 4900
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4905
    .end local v0    # "tether":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v5, "no_config_vpn"

    invoke-virtual {v3, v5}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 4907
    invoke-virtual {p0, v1}, Lcom/android/server/ConnectivityService;->getVpnConfig(I)Lcom/android/internal/net/VpnConfig;

    move-result-object v2

    .line 4908
    .local v2, "vpnConfig":Lcom/android/internal/net/VpnConfig;
    if-eqz v2, :cond_2

    .line 4909
    iget-boolean v3, v2, Lcom/android/internal/net/VpnConfig;->legacy:Z

    if-eqz v3, :cond_3

    .line 4910
    const-string/jumbo v3, "[Legacy VPN]"

    const-string/jumbo v4, "[Legacy VPN]"

    invoke-virtual {p0, v3, v4, v1}, Lcom/android/server/ConnectivityService;->prepareVpn(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 4886
    .end local v2    # "vpnConfig":Lcom/android/internal/net/VpnConfig;
    :cond_2
    :goto_1
    return-void

    .line 4914
    .restart local v2    # "vpnConfig":Lcom/android/internal/net/VpnConfig;
    :cond_3
    iget-object v3, v2, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    invoke-virtual {p0, v3, v1, v4}, Lcom/android/server/ConnectivityService;->setVpnPackageAuthorization(Ljava/lang/String;IZ)V

    .line 4916
    iget-object v3, v2, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    const-string/jumbo v4, "[Legacy VPN]"

    invoke-virtual {p0, v3, v4, v1}, Lcom/android/server/ConnectivityService;->prepareVpn(Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_1
.end method

.method public getActiveLinkProperties()Landroid/net/LinkProperties;
    .locals 3

    .prologue
    .line 1169
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1170
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1171
    .local v1, "uid":I
    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->getUnfilteredActiveNetworkState(I)Landroid/net/NetworkState;

    move-result-object v0

    .line 1172
    .local v0, "state":Landroid/net/NetworkState;
    iget-object v2, v0, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    return-object v2
.end method

.method public getActiveNetwork()Landroid/net/Network;
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 1001
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1002
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1003
    .local v1, "uid":I
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 1004
    .local v2, "user":I
    const/4 v4, 0x0

    .line 1005
    .local v4, "vpnNetId":I
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v6

    .line 1006
    :try_start_0
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v7, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/connectivity/Vpn;

    .line 1007
    .local v3, "vpn":Lcom/android/server/connectivity/Vpn;
    if-eqz v3, :cond_0

    invoke-virtual {v3, v1}, Lcom/android/server/connectivity/Vpn;->appliesToUid(I)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v3}, Lcom/android/server/connectivity/Vpn;->getNetId()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    :cond_0
    monitor-exit v6

    .line 1010
    if-eqz v4, :cond_1

    .line 1011
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    monitor-enter v6

    .line 1012
    :try_start_1
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/NetworkAgentInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .local v0, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    monitor-exit v6

    .line 1014
    if-eqz v0, :cond_1

    iget-object v5, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    return-object v5

    .line 1005
    .end local v0    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local v3    # "vpn":Lcom/android/server/connectivity/Vpn;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 1011
    .restart local v3    # "vpn":Lcom/android/server/connectivity/Vpn;
    :catchall_1
    move-exception v5

    monitor-exit v6

    throw v5

    .line 1016
    :cond_1
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getDefaultNetwork()Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    .line 1017
    .restart local v0    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v0, :cond_2

    iget-object v6, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-direct {p0, v6, v1}, Lcom/android/server/ConnectivityService;->isNetworkWithLinkPropertiesBlocked(Landroid/net/LinkProperties;I)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v0, 0x0

    .line 1018
    .end local v0    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_2
    if-eqz v0, :cond_3

    iget-object v5, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    :cond_3
    return-object v5
.end method

.method public getActiveNetworkInfo()Landroid/net/NetworkInfo;
    .locals 4

    .prologue
    .line 993
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 994
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 995
    .local v1, "uid":I
    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->getUnfilteredActiveNetworkState(I)Landroid/net/NetworkState;

    move-result-object v0

    .line 996
    .local v0, "state":Landroid/net/NetworkState;
    iget-object v2, v0, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    iget-object v3, v0, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    invoke-direct {p0, v2, v3, v1}, Lcom/android/server/ConnectivityService;->getFilteredNetworkInfo(Landroid/net/NetworkInfo;Landroid/net/LinkProperties;I)Landroid/net/NetworkInfo;

    move-result-object v2

    return-object v2
.end method

.method public getActiveNetworkInfoForUid(I)Landroid/net/NetworkInfo;
    .locals 3
    .param p1, "uid"    # I

    .prologue
    .line 1030
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 1031
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->getUnfilteredActiveNetworkState(I)Landroid/net/NetworkState;

    move-result-object v0

    .line 1032
    .local v0, "state":Landroid/net/NetworkState;
    iget-object v1, v0, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    iget-object v2, v0, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    invoke-direct {p0, v1, v2, p1}, Lcom/android/server/ConnectivityService;->getFilteredNetworkInfo(Landroid/net/NetworkInfo;Landroid/net/LinkProperties;I)Landroid/net/NetworkInfo;

    move-result-object v1

    return-object v1
.end method

.method public getActiveNetworkInfoUnfiltered()Landroid/net/NetworkInfo;
    .locals 3

    .prologue
    .line 1022
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1023
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1024
    .local v1, "uid":I
    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->getUnfilteredActiveNetworkState(I)Landroid/net/NetworkState;

    move-result-object v0

    .line 1025
    .local v0, "state":Landroid/net/NetworkState;
    iget-object v2, v0, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    return-object v2
.end method

.method public getActiveNetworkQuotaInfo()Landroid/net/NetworkQuotaInfo;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1239
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1240
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 1241
    .local v4, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1243
    .local v2, "token":J
    :try_start_0
    invoke-direct {p0, v4}, Lcom/android/server/ConnectivityService;->getUnfilteredActiveNetworkState(I)Landroid/net/NetworkState;

    move-result-object v1

    .line 1244
    .local v1, "state":Landroid/net/NetworkState;
    iget-object v5, v1, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_0

    .line 1246
    :try_start_1
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mPolicyManager:Landroid/net/INetworkPolicyManager;

    invoke-interface {v5, v1}, Landroid/net/INetworkPolicyManager;->getNetworkQuotaInfo(Landroid/net/NetworkState;)Landroid/net/NetworkQuotaInfo;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    .line 1252
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1246
    return-object v5

    .line 1247
    :catch_0
    move-exception v0

    .line 1252
    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1250
    return-object v6

    .line 1251
    .end local v1    # "state":Landroid/net/NetworkState;
    :catchall_0
    move-exception v5

    .line 1252
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1251
    throw v5
.end method

.method public getAllNetworkInfo()[Landroid/net/NetworkInfo;
    .locals 4

    .prologue
    .line 1069
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1070
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 1071
    .local v2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/NetworkInfo;>;"
    const/4 v1, 0x0

    .local v1, "networkType":I
    :goto_0
    const/16 v3, 0x11

    if-gt v1, v3, :cond_1

    .line 1073
    invoke-virtual {p0, v1}, Lcom/android/server/ConnectivityService;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1074
    .local v0, "info":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    .line 1075
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1072
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1078
    .end local v0    # "info":Landroid/net/NetworkInfo;
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Landroid/net/NetworkInfo;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/net/NetworkInfo;

    return-object v3
.end method

.method public getAllNetworkState()[Landroid/net/NetworkState;
    .locals 12

    .prologue
    .line 1220
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 1222
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v8

    .line 1223
    .local v8, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/NetworkState;>;"
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->getAllNetworks()[Landroid/net/Network;

    move-result-object v10

    const/4 v0, 0x0

    array-length v11, v10

    move v9, v0

    :goto_0
    if-ge v9, v11, :cond_2

    aget-object v4, v10, v9

    .line 1224
    .local v4, "network":Landroid/net/Network;
    invoke-direct {p0, v4}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v7

    .line 1225
    .local v7, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v7, :cond_0

    .line 1226
    monitor-enter v7

    .line 1227
    :try_start_0
    iget-object v0, v7, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    if-eqz v0, :cond_1

    .line 1228
    iget-object v0, v7, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    iget-object v5, v0, Landroid/net/NetworkMisc;->subscriberId:Ljava/lang/String;

    .line 1229
    :goto_1
    new-instance v0, Landroid/net/NetworkState;

    iget-object v1, v7, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    iget-object v2, v7, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    .line 1230
    iget-object v3, v7, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v6, 0x0

    .line 1229
    invoke-direct/range {v0 .. v6}, Landroid/net/NetworkState;-><init>(Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;Landroid/net/Network;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v7

    .line 1223
    :cond_0
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_0

    .line 1228
    :cond_1
    const/4 v5, 0x0

    .local v5, "subscriberId":Ljava/lang/String;
    goto :goto_1

    .line 1226
    .end local v5    # "subscriberId":Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0

    .line 1234
    .end local v4    # "network":Landroid/net/Network;
    .end local v7    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_2
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/net/NetworkState;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/NetworkState;

    return-object v0
.end method

.method public getAllNetworks()[Landroid/net/Network;
    .locals 4

    .prologue
    .line 1094
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1095
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    monitor-enter v3

    .line 1096
    :try_start_0
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    new-array v1, v2, [Landroid/net/Network;

    .line 1097
    .local v1, "result":[Landroid/net/Network;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1098
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v2, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    aput-object v2, v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1097
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v3

    .line 1100
    return-object v1

    .line 1095
    .end local v0    # "i":I
    .end local v1    # "result":[Landroid/net/Network;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public getAllVpnInfo()[Lcom/android/internal/net/VpnInfo;
    .locals 5

    .prologue
    .line 3171
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 3172
    iget-boolean v3, p0, Lcom/android/server/ConnectivityService;->mLockdownEnabled:Z

    if-eqz v3, :cond_0

    .line 3173
    const/4 v3, 0x0

    new-array v3, v3, [Lcom/android/internal/net/VpnInfo;

    return-object v3

    .line 3176
    :cond_0
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v4

    .line 3177
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3178
    .local v2, "infoList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/VpnInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 3179
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/connectivity/Vpn;

    invoke-direct {p0, v3}, Lcom/android/server/ConnectivityService;->createVpnInfo(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnInfo;

    move-result-object v1

    .line 3180
    .local v1, "info":Lcom/android/internal/net/VpnInfo;
    if-eqz v1, :cond_1

    .line 3181
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3178
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3184
    .end local v1    # "info":Lcom/android/internal/net/VpnInfo;
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lcom/android/internal/net/VpnInfo;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/android/internal/net/VpnInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    return-object v3

    .line 3176
    .end local v0    # "i":I
    .end local v2    # "infoList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/VpnInfo;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public getDefaultNetworkCapabilitiesForUser(I)[Landroid/net/NetworkCapabilities;
    .locals 10
    .param p1, "userId"    # I

    .prologue
    .line 1120
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1122
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1124
    .local v5, "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Network;Landroid/net/NetworkCapabilities;>;"
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getDefaultNetwork()Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    .line 1125
    .local v0, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->getNetworkCapabilitiesInternal(Lcom/android/server/connectivity/NetworkAgentInfo;)Landroid/net/NetworkCapabilities;

    move-result-object v1

    .line 1126
    .local v1, "nc":Landroid/net/NetworkCapabilities;
    if-eqz v1, :cond_0

    .line 1127
    iget-object v7, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    invoke-virtual {v5, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1130
    :cond_0
    iget-boolean v7, p0, Lcom/android/server/ConnectivityService;->mLockdownEnabled:Z

    if-nez v7, :cond_3

    .line 1131
    iget-object v8, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v8

    .line 1132
    :try_start_0
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v7, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/connectivity/Vpn;

    .line 1133
    .local v6, "vpn":Lcom/android/server/connectivity/Vpn;
    if-eqz v6, :cond_2

    .line 1134
    invoke-virtual {v6}, Lcom/android/server/connectivity/Vpn;->getUnderlyingNetworks()[Landroid/net/Network;

    move-result-object v3

    .line 1135
    .local v3, "networks":[Landroid/net/Network;
    if-eqz v3, :cond_2

    .line 1136
    const/4 v7, 0x0

    array-length v9, v3

    :goto_0
    if-ge v7, v9, :cond_2

    aget-object v2, v3, v7

    .line 1137
    .local v2, "network":Landroid/net/Network;
    invoke-direct {p0, v2}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    .line 1138
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->getNetworkCapabilitiesInternal(Lcom/android/server/connectivity/NetworkAgentInfo;)Landroid/net/NetworkCapabilities;

    move-result-object v1

    .line 1139
    if-eqz v1, :cond_1

    .line 1140
    invoke-virtual {v5, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1136
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .end local v2    # "network":Landroid/net/Network;
    .end local v3    # "networks":[Landroid/net/Network;
    :cond_2
    monitor-exit v8

    .line 1148
    .end local v6    # "vpn":Lcom/android/server/connectivity/Vpn;
    :cond_3
    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v7

    new-array v4, v7, [Landroid/net/NetworkCapabilities;

    .line 1149
    .local v4, "out":[Landroid/net/NetworkCapabilities;
    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "out":[Landroid/net/NetworkCapabilities;
    check-cast v4, [Landroid/net/NetworkCapabilities;

    .line 1150
    .restart local v4    # "out":[Landroid/net/NetworkCapabilities;
    return-object v4

    .line 1131
    .end local v4    # "out":[Landroid/net/NetworkCapabilities;
    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7
.end method

.method protected getDefaultTcpRwnd()I
    .locals 2

    .prologue
    .line 1690
    const-string/jumbo v0, "net.tcp.default_init_rwnd"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getGlobalProxy()Landroid/net/ProxyInfo;
    .locals 2

    .prologue
    .line 2919
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mProxyLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2920
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 2919
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public getLastTetherError(Ljava/lang/String;)I
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 2645
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    .line 2647
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2648
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/Tethering;->getLastTetherError(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 2650
    :cond_0
    const/4 v0, 0x3

    return v0
.end method

.method public getLegacyVpnInfo(I)Lcom/android/internal/net/LegacyVpnInfo;
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 3155
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->enforceCrossUserPermission(I)V

    .line 3156
    iget-boolean v0, p0, Lcom/android/server/ConnectivityService;->mLockdownEnabled:Z

    if-eqz v0, :cond_0

    .line 3157
    const/4 v0, 0x0

    return-object v0

    .line 3160
    :cond_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v1

    .line 3161
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Vpn;->getLegacyVpnInfo()Lcom/android/internal/net/LegacyVpnInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 3160
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;
    .locals 3
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    const/4 v1, 0x0

    .line 1190
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1191
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    .line 1192
    .local v0, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v0, :cond_0

    .line 1193
    monitor-enter v0

    .line 1194
    :try_start_0
    new-instance v1, Landroid/net/LinkProperties;

    iget-object v2, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-direct {v1, v2}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 1193
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 1197
    :cond_0
    return-object v1
.end method

.method public getLinkPropertiesForType(I)Landroid/net/LinkProperties;
    .locals 3
    .param p1, "networkType"    # I

    .prologue
    const/4 v2, 0x0

    .line 1177
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1178
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    invoke-virtual {v1, p1}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->getNetworkForType(I)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    .line 1179
    .local v0, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v0, :cond_0

    .line 1180
    monitor-enter v0

    .line 1181
    :try_start_0
    new-instance v1, Landroid/net/LinkProperties;

    iget-object v2, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-direct {v1, v2}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 1180
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 1184
    :cond_0
    return-object v2
.end method

.method public getMobileProvisioningUrl()Ljava/lang/String;
    .locals 5

    .prologue
    .line 3498
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 3499
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getProvisioningUrlBaseFromFile()Ljava/lang/String;

    move-result-object v1

    .line 3500
    .local v1, "url":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3501
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040031

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3502
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getMobileProvisioningUrl: mobile_provisioining_url from resource ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 3507
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3508
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    .line 3509
    .local v0, "phoneNumber":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3510
    const-string/jumbo v0, "0000000000"

    .line 3512
    :cond_0
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    .line 3513
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 3514
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 3515
    const/4 v3, 0x2

    aput-object v0, v2, v3

    .line 3512
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 3518
    .end local v0    # "phoneNumber":Ljava/lang/String;
    :cond_1
    return-object v1

    .line 3504
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getMobileProvisioningUrl: mobile_provisioning_url from File ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;
    .locals 1
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    .line 1213
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1214
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->getNetworkCapabilitiesInternal(Lcom/android/server/connectivity/NetworkAgentInfo;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkForType(I)Landroid/net/Network;
    .locals 3
    .param p1, "networkType"    # I

    .prologue
    .line 1083
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1084
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1085
    .local v1, "uid":I
    invoke-direct {p0, p1, v1}, Lcom/android/server/ConnectivityService;->getFilteredNetworkState(II)Landroid/net/NetworkState;

    move-result-object v0

    .line 1086
    .local v0, "state":Landroid/net/NetworkState;
    iget-object v2, v0, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    invoke-direct {p0, v2, v1}, Lcom/android/server/ConnectivityService;->isNetworkWithLinkPropertiesBlocked(Landroid/net/LinkProperties;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1087
    iget-object v2, v0, Landroid/net/NetworkState;->network:Landroid/net/Network;

    return-object v2

    .line 1089
    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method

.method public getNetworkInfo(I)Landroid/net/NetworkInfo;
    .locals 4
    .param p1, "networkType"    # I

    .prologue
    .line 1037
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1038
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1039
    .local v1, "uid":I
    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->getVpnUnderlyingNetworks(I)[Landroid/net/Network;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1043
    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->getUnfilteredActiveNetworkState(I)Landroid/net/NetworkState;

    move-result-object v0

    .line 1044
    .local v0, "state":Landroid/net/NetworkState;
    iget-object v2, v0, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 1045
    iget-object v2, v0, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    iget-object v3, v0, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    invoke-direct {p0, v2, v3, v1}, Lcom/android/server/ConnectivityService;->getFilteredNetworkInfo(Landroid/net/NetworkInfo;Landroid/net/LinkProperties;I)Landroid/net/NetworkInfo;

    move-result-object v2

    return-object v2

    .line 1048
    .end local v0    # "state":Landroid/net/NetworkState;
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/android/server/ConnectivityService;->getFilteredNetworkState(II)Landroid/net/NetworkState;

    move-result-object v0

    .line 1049
    .restart local v0    # "state":Landroid/net/NetworkState;
    iget-object v2, v0, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    return-object v2
.end method

.method public getNetworkInfoForNetwork(Landroid/net/Network;)Landroid/net/NetworkInfo;
    .locals 5
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    .line 1054
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1055
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 1056
    .local v3, "uid":I
    const/4 v0, 0x0

    .line 1057
    .local v0, "info":Landroid/net/NetworkInfo;
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v2

    .line 1058
    .local v2, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v2, :cond_0

    .line 1059
    monitor-enter v2

    .line 1060
    :try_start_0
    new-instance v1, Landroid/net/NetworkInfo;

    iget-object v4, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-direct {v1, v4}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1061
    .end local v0    # "info":Landroid/net/NetworkInfo;
    .local v1, "info":Landroid/net/NetworkInfo;
    :try_start_1
    iget-object v4, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-direct {p0, v1, v4, v3}, Lcom/android/server/ConnectivityService;->getFilteredNetworkInfo(Landroid/net/NetworkInfo;Landroid/net/LinkProperties;I)Landroid/net/NetworkInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .end local v1    # "info":Landroid/net/NetworkInfo;
    .local v0, "info":Landroid/net/NetworkInfo;
    monitor-exit v2

    .line 1064
    .end local v0    # "info":Landroid/net/NetworkInfo;
    :cond_0
    return-object v0

    .line 1059
    .local v0, "info":Landroid/net/NetworkInfo;
    :catchall_0
    move-exception v4

    .end local v0    # "info":Landroid/net/NetworkInfo;
    :goto_0
    monitor-exit v2

    throw v4

    .restart local v1    # "info":Landroid/net/NetworkInfo;
    :catchall_1
    move-exception v4

    move-object v0, v1

    .end local v1    # "info":Landroid/net/NetworkInfo;
    .local v0, "info":Landroid/net/NetworkInfo;
    goto :goto_0
.end method

.method public getProxyForNetwork(Landroid/net/Network;)Landroid/net/ProxyInfo;
    .locals 6
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    const/4 v5, 0x0

    .line 2798
    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getDefaultProxy()Landroid/net/ProxyInfo;

    move-result-object v3

    return-object v3

    .line 2799
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->getGlobalProxy()Landroid/net/ProxyInfo;

    move-result-object v0

    .line 2800
    .local v0, "globalProxy":Landroid/net/ProxyInfo;
    if-eqz v0, :cond_1

    return-object v0

    .line 2801
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    iget v4, p1, Landroid/net/Network;->netId:I

    invoke-static {v3, v4}, Landroid/net/NetworkUtils;->queryUserAccess(II)Z

    move-result v3

    if-nez v3, :cond_2

    return-object v5

    .line 2804
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v1

    .line 2805
    .local v1, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-nez v1, :cond_3

    return-object v5

    .line 2806
    :cond_3
    monitor-enter v1

    .line 2807
    :try_start_0
    iget-object v3, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v3}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 2808
    .local v2, "proxyInfo":Landroid/net/ProxyInfo;
    if-nez v2, :cond_4

    monitor-exit v1

    return-object v5

    .line 2809
    :cond_4
    :try_start_1
    new-instance v3, Landroid/net/ProxyInfo;

    invoke-direct {v3, v2}, Landroid/net/ProxyInfo;-><init>(Landroid/net/ProxyInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v3

    .line 2806
    .end local v2    # "proxyInfo":Landroid/net/ProxyInfo;
    :catchall_0
    move-exception v3

    monitor-exit v1

    throw v3
.end method

.method public getRestoreDefaultNetworkDelay(I)I
    .locals 4
    .param p1, "networkType"    # I

    .prologue
    .line 1784
    const-string/jumbo v3, "android.telephony.apn-restore"

    .line 1783
    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1785
    .local v1, "restoreDefaultNetworkDelayStr":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1786
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1788
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 1789
    :catch_0
    move-exception v0

    .line 1793
    :cond_0
    const v2, 0xea60

    .line 1795
    .local v2, "ret":I
    const/16 v3, 0x11

    if-gt p1, v3, :cond_1

    .line 1796
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v3, v3, p1

    if-eqz v3, :cond_1

    .line 1797
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v3, v3, p1

    iget v2, v3, Landroid/net/NetworkConfig;->restoreTime:I

    .line 1799
    :cond_1
    return v2
.end method

.method public getTetherConnectedSta()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2615
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2616
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering;->getTetherConnectedSta()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 2618
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTetherableBluetoothRegexs()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 2674
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    .line 2675
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2676
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2678
    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getTetherableIfaces()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 2694
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    .line 2695
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering;->getTetherableIfaces()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTetherableUsbRegexs()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 2656
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    .line 2657
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2658
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2660
    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getTetherableWifiRegexs()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 2665
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    .line 2666
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2667
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2669
    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getTetheredDhcpRanges()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 2709
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 2710
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering;->getTetheredDhcpRanges()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTetheredIfaces()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 2699
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    .line 2700
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTetheringErroredIfaces()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 2704
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    .line 2705
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering;->getErroredIfaces()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVpnConfig(I)Lcom/android/internal/net/VpnConfig;
    .locals 4
    .param p1, "userId"    # I

    .prologue
    const/4 v3, 0x0

    .line 3223
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->enforceCrossUserPermission(I)V

    .line 3224
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v2

    .line 3225
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/Vpn;

    .line 3226
    .local v0, "vpn":Lcom/android/server/connectivity/Vpn;
    if-eqz v0, :cond_0

    .line 3227
    invoke-virtual {v0}, Lcom/android/server/connectivity/Vpn;->getVpnConfig()Lcom/android/internal/net/VpnConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v2

    return-object v1

    :cond_0
    monitor-exit v2

    .line 3229
    return-object v3

    .line 3224
    .end local v0    # "vpn":Lcom/android/server/connectivity/Vpn;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public isActiveNetworkMetered()Z
    .locals 4

    .prologue
    .line 1258
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1259
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1260
    .local v2, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1262
    .local v0, "token":J
    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/server/ConnectivityService;->isActiveNetworkMeteredUnchecked(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 1264
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1262
    return v3

    .line 1263
    :catchall_0
    move-exception v3

    .line 1264
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1263
    throw v3
.end method

.method public isNetworkSupported(I)Z
    .locals 1
    .param p1, "networkType"    # I

    .prologue
    .line 1155
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1156
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->isTypeSupported(I)Z

    move-result v0

    return v0
.end method

.method public isTetheringSupported()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 2717
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    .line 2718
    const-string/jumbo v3, "ro.tether.denied"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x0

    .line 2719
    .local v0, "defaultVal":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 2720
    const-string/jumbo v4, "tether_supported"

    .line 2719
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_4

    .line 2721
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v4, "no_config_tethering"

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v1, 0x0

    .line 2722
    .local v1, "tetherEnabledInSettings":Z
    :goto_1
    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v3}, Lcom/android/server/connectivity/Tethering;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-nez v3, :cond_0

    .line 2723
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v3}, Lcom/android/server/connectivity/Tethering;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-eqz v3, :cond_5

    .line 2725
    :cond_0
    :goto_2
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v3}, Lcom/android/server/connectivity/Tethering;->getUpstreamIfaceTypes()[I

    move-result-object v3

    array-length v3, v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    .line 2722
    :cond_1
    return v2

    .line 2718
    .end local v0    # "defaultVal":I
    .end local v1    # "tetherEnabledInSettings":Z
    :cond_2
    const/4 v0, 0x1

    .restart local v0    # "defaultVal":I
    goto :goto_0

    .line 2721
    :cond_3
    const/4 v1, 0x1

    .restart local v1    # "tetherEnabledInSettings":Z
    goto :goto_1

    .line 2719
    .end local v1    # "tetherEnabledInSettings":Z
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "tetherEnabledInSettings":Z
    goto :goto_1

    .line 2724
    :cond_5
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v3}, Lcom/android/server/connectivity/Tethering;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-eqz v3, :cond_1

    goto :goto_2
.end method

.method public listenForNetwork(Landroid/net/NetworkCapabilities;Landroid/os/Messenger;Landroid/os/IBinder;)Landroid/net/NetworkRequest;
    .locals 6
    .param p1, "networkCapabilities"    # Landroid/net/NetworkCapabilities;
    .param p2, "messenger"    # Landroid/os/Messenger;
    .param p3, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 3835
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->hasWifiNetworkListenPermission(Landroid/net/NetworkCapabilities;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3836
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 3839
    :cond_0
    new-instance v3, Landroid/net/NetworkRequest;

    .line 3840
    new-instance v1, Landroid/net/NetworkCapabilities;

    invoke-direct {v1, p1}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->nextNetworkRequestId()I

    move-result v2

    const/4 v4, -0x1

    .line 3839
    invoke-direct {v3, v1, v4, v2}, Landroid/net/NetworkRequest;-><init>(Landroid/net/NetworkCapabilities;II)V

    .line 3841
    .local v3, "networkRequest":Landroid/net/NetworkRequest;
    new-instance v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    .line 3842
    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p2

    move-object v4, p3

    .line 3841
    invoke-direct/range {v0 .. v5}, Lcom/android/server/ConnectivityService$NetworkRequestInfo;-><init>(Lcom/android/server/ConnectivityService;Landroid/os/Messenger;Landroid/net/NetworkRequest;Landroid/os/IBinder;Z)V

    .line 3843
    .local v0, "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "listenForNetwork for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 3845
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v4, 0x15

    invoke-virtual {v2, v4, v0}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3846
    return-object v3
.end method

.method protected notifyNetworkCallback(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V
    .locals 2
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "nri"    # Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    .prologue
    .line 4739
    const v0, 0x80002

    .line 4746
    .local v0, "notifyType":I
    iget-object v1, p2, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mPendingIntent:Landroid/app/PendingIntent;

    if-nez v1, :cond_0

    .line 4747
    invoke-direct {p0, p2, p1, v0}, Lcom/android/server/ConnectivityService;->callCallbackForRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    .line 4738
    :goto_0
    return-void

    .line 4749
    :cond_0
    invoke-direct {p0, p2, p1, v0}, Lcom/android/server/ConnectivityService;->sendPendingIntentForRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    goto :goto_0
.end method

.method protected notifyNetworkCallbacks(Lcom/android/server/connectivity/NetworkAgentInfo;I)V
    .locals 5
    .param p1, "networkAgent"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "notifyType"    # I

    .prologue
    .line 4800
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notifyType "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, p2}, Lcom/android/server/ConnectivityService;->notifyTypeToName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 4801
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkRequests:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 4802
    iget-object v3, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkRequests:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkRequest;

    .line 4803
    .local v1, "nr":Landroid/net/NetworkRequest;
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetworkRequests:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    .line 4805
    .local v2, "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    iget-object v3, v2, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mPendingIntent:Landroid/app/PendingIntent;

    if-nez v3, :cond_0

    .line 4806
    invoke-direct {p0, v2, p1, p2}, Lcom/android/server/ConnectivityService;->callCallbackForRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    .line 4801
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4808
    :cond_0
    invoke-direct {p0, v2, p1, p2}, Lcom/android/server/ConnectivityService;->sendPendingIntentForRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    goto :goto_1

    .line 4799
    .end local v1    # "nr":Landroid/net/NetworkRequest;
    .end local v2    # "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    :cond_1
    return-void
.end method

.method public onSendFinished(Landroid/app/PendingIntent;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resultCode"    # I
    .param p4, "resultData"    # Ljava/lang/String;
    .param p5, "resultExtras"    # Landroid/os/Bundle;

    .prologue
    .line 4236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Finished sending "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 4237
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mPendingIntentWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4240
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->releasePendingNetworkRequestWithDelay(Landroid/app/PendingIntent;)V

    .line 4235
    return-void
.end method

.method public pendingListenForNetwork(Landroid/net/NetworkCapabilities;Landroid/app/PendingIntent;)V
    .locals 5
    .param p1, "networkCapabilities"    # Landroid/net/NetworkCapabilities;
    .param p2, "operation"    # Landroid/app/PendingIntent;

    .prologue
    .line 3852
    const-string/jumbo v2, "PendingIntent cannot be null."

    invoke-static {p2, v2}, Lcom/android/server/ConnectivityService;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3853
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->hasWifiNetworkListenPermission(Landroid/net/NetworkCapabilities;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3854
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 3857
    :cond_0
    new-instance v0, Landroid/net/NetworkRequest;

    .line 3858
    new-instance v2, Landroid/net/NetworkCapabilities;

    invoke-direct {v2, p1}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->nextNetworkRequestId()I

    move-result v3

    const/4 v4, -0x1

    .line 3857
    invoke-direct {v0, v2, v4, v3}, Landroid/net/NetworkRequest;-><init>(Landroid/net/NetworkCapabilities;II)V

    .line 3859
    .local v0, "networkRequest":Landroid/net/NetworkRequest;
    new-instance v1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    .line 3860
    const/4 v2, 0x0

    .line 3859
    invoke-direct {v1, p0, v0, p2, v2}, Lcom/android/server/ConnectivityService$NetworkRequestInfo;-><init>(Lcom/android/server/ConnectivityService;Landroid/net/NetworkRequest;Landroid/app/PendingIntent;Z)V

    .line 3861
    .local v1, "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "pendingListenForNetwork for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 3863
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v4, 0x15

    invoke-virtual {v3, v4, v1}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3851
    return-void
.end method

.method public pendingRequestForNetwork(Landroid/net/NetworkCapabilities;Landroid/app/PendingIntent;)Landroid/net/NetworkRequest;
    .locals 6
    .param p1, "networkCapabilities"    # Landroid/net/NetworkCapabilities;
    .param p2, "operation"    # Landroid/app/PendingIntent;

    .prologue
    .line 3781
    const-string/jumbo v3, "PendingIntent cannot be null."

    invoke-static {p2, v3}, Lcom/android/server/ConnectivityService;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3782
    new-instance v0, Landroid/net/NetworkCapabilities;

    invoke-direct {v0, p1}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    .line 3783
    .end local p1    # "networkCapabilities":Landroid/net/NetworkCapabilities;
    .local v0, "networkCapabilities":Landroid/net/NetworkCapabilities;
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->enforceNetworkRequestPermissions(Landroid/net/NetworkCapabilities;)V

    .line 3784
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->enforceMeteredApnPolicy(Landroid/net/NetworkCapabilities;)V

    .line 3785
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->ensureRequestableCapabilities(Landroid/net/NetworkCapabilities;)V

    .line 3787
    new-instance v1, Landroid/net/NetworkRequest;

    .line 3788
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->nextNetworkRequestId()I

    move-result v3

    .line 3787
    const/4 v4, -0x1

    invoke-direct {v1, v0, v4, v3}, Landroid/net/NetworkRequest;-><init>(Landroid/net/NetworkCapabilities;II)V

    .line 3789
    .local v1, "networkRequest":Landroid/net/NetworkRequest;
    new-instance v2, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    .line 3790
    const/4 v3, 0x1

    .line 3789
    invoke-direct {v2, p0, v1, p2, v3}, Lcom/android/server/ConnectivityService$NetworkRequestInfo;-><init>(Lcom/android/server/ConnectivityService;Landroid/net/NetworkRequest;Landroid/app/PendingIntent;Z)V

    .line 3791
    .local v2, "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "pendingRequest for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 3792
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v5, 0x1a

    invoke-virtual {v4, v5, v2}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3794
    return-object v1
.end method

.method public prepareVpn(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 3
    .param p1, "oldPackage"    # Ljava/lang/String;
    .param p2, "newPackage"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    .line 3077
    invoke-direct {p0, p3}, Lcom/android/server/ConnectivityService;->enforceCrossUserPermission(I)V

    .line 3078
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->throwIfLockdownEnabled()V

    .line 3080
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v2

    .line 3081
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/Vpn;

    .line 3082
    .local v0, "vpn":Lcom/android/server/connectivity/Vpn;
    if-eqz v0, :cond_0

    .line 3083
    invoke-virtual {v0, p1, p2}, Lcom/android/server/connectivity/Vpn;->prepare(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v2

    return v1

    .line 3085
    :cond_0
    const/4 v1, 0x0

    monitor-exit v2

    return v1

    .line 3080
    .end local v0    # "vpn":Lcom/android/server/connectivity/Vpn;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public registerNetworkAgent(Landroid/os/Messenger;Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;ILandroid/net/NetworkMisc;)I
    .locals 14
    .param p1, "messenger"    # Landroid/os/Messenger;
    .param p2, "networkInfo"    # Landroid/net/NetworkInfo;
    .param p3, "linkProperties"    # Landroid/net/LinkProperties;
    .param p4, "networkCapabilities"    # Landroid/net/NetworkCapabilities;
    .param p5, "currentScore"    # I
    .param p6, "networkMisc"    # Landroid/net/NetworkMisc;

    .prologue
    .line 3944
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 3948
    new-instance v1, Lcom/android/server/connectivity/NetworkAgentInfo;

    new-instance v3, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v3}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    .line 3949
    new-instance v4, Landroid/net/Network;

    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->reserveNetId()I

    move-result v2

    invoke-direct {v4, v2}, Landroid/net/Network;-><init>(I)V

    new-instance v5, Landroid/net/NetworkInfo;

    move-object/from16 v0, p2

    invoke-direct {v5, v0}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    new-instance v6, Landroid/net/LinkProperties;

    move-object/from16 v0, p3

    invoke-direct {v6, v0}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    .line 3950
    new-instance v7, Landroid/net/NetworkCapabilities;

    move-object/from16 v0, p4

    invoke-direct {v7, v0}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    .line 3951
    iget-object v9, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mTrackerHandler:Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;

    new-instance v11, Landroid/net/NetworkMisc;

    move-object/from16 v0, p6

    invoke-direct {v11, v0}, Landroid/net/NetworkMisc;-><init>(Landroid/net/NetworkMisc;)V

    iget-object v12, p0, Lcom/android/server/ConnectivityService;->mDefaultRequest:Landroid/net/NetworkRequest;

    move-object v2, p1

    move/from16 v8, p5

    move-object v13, p0

    .line 3948
    invoke-direct/range {v1 .. v13}, Lcom/android/server/connectivity/NetworkAgentInfo;-><init>(Landroid/os/Messenger;Lcom/android/internal/util/AsyncChannel;Landroid/net/Network;Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;ILandroid/content/Context;Landroid/os/Handler;Landroid/net/NetworkMisc;Landroid/net/NetworkRequest;Lcom/android/server/ConnectivityService;)V

    .line 3952
    .local v1, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    monitor-enter p0

    .line 3953
    :try_start_0
    iget-object v2, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMonitor:Lcom/android/server/connectivity/NetworkMonitor;

    iget-boolean v3, p0, Lcom/android/server/ConnectivityService;->mSystemReady:Z

    iput-boolean v3, v2, Lcom/android/server/connectivity/NetworkMonitor;->systemReady:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 3955
    iget-object v2, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMonitor:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-virtual {v2}, Lcom/android/server/connectivity/NetworkMonitor;->getValidationLogs()Landroid/util/LocalLog$ReadOnlyLocalLog;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    invoke-direct {p0, v2, v3}, Lcom/android/server/ConnectivityService;->addValidationLogs(Landroid/util/LocalLog$ReadOnlyLocalLog;Landroid/net/Network;)V

    .line 3956
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerNetworkAgent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 3957
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v4, 0x12

    invoke-virtual {v3, v4, v1}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3958
    iget-object v2, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v2, v2, Landroid/net/Network;->netId:I

    return v2

    .line 3952
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public registerNetworkFactory(Landroid/os/Messenger;Ljava/lang/String;)V
    .locals 4
    .param p1, "messenger"    # Landroid/os/Messenger;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 3874
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 3875
    new-instance v0, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;

    new-instance v1, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v1}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    invoke-direct {v0, p2, p1, v1}, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;-><init>(Ljava/lang/String;Landroid/os/Messenger;Lcom/android/internal/util/AsyncChannel;)V

    .line 3876
    .local v0, "nfi":Lcom/android/server/ConnectivityService$NetworkFactoryInfo;
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v3, 0x11

    invoke-virtual {v2, v3, v0}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3873
    return-void
.end method

.method public releaseNetworkRequest(Landroid/net/NetworkRequest;)V
    .locals 5
    .param p1, "networkRequest"    # Landroid/net/NetworkRequest;

    .prologue
    .line 3868
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingUid()I

    move-result v2

    const/16 v3, 0x16

    .line 3869
    const/4 v4, 0x0

    .line 3868
    invoke-virtual {v1, v3, v2, v4, p1}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3867
    return-void
.end method

.method public releasePendingNetworkRequest(Landroid/app/PendingIntent;)V
    .locals 5
    .param p1, "operation"    # Landroid/app/PendingIntent;

    .prologue
    .line 3805
    const-string/jumbo v0, "PendingIntent cannot be null."

    invoke-static {p1, v0}, Lcom/android/server/ConnectivityService;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3806
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    .line 3807
    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingUid()I

    move-result v2

    .line 3806
    const/16 v3, 0x1b

    .line 3807
    const/4 v4, 0x0

    .line 3806
    invoke-virtual {v1, v3, v2, v4, p1}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3804
    return-void
.end method

.method public removeVpnAddress(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "prefixLength"    # I

    .prologue
    .line 4848
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->throwIfLockdownEnabled()V

    .line 4849
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 4850
    .local v0, "user":I
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v2

    .line 4851
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/connectivity/Vpn;->removeAddress(Ljava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v2

    return v1

    .line 4850
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public reportInetCondition(II)V
    .locals 3
    .param p1, "networkType"    # I
    .param p2, "percentage"    # I

    .prologue
    .line 2748
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    invoke-virtual {v1, p1}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->getNetworkForType(I)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    .line 2749
    .local v0, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-nez v0, :cond_0

    return-void

    .line 2750
    :cond_0
    iget-object v2, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    const/16 v1, 0x32

    if-le p2, v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0, v2, v1}, Lcom/android/server/ConnectivityService;->reportNetworkConnectivity(Landroid/net/Network;Z)V

    .line 2747
    return-void

    .line 2750
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public reportNetworkConnectivity(Landroid/net/Network;Z)V
    .locals 4
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "hasConnectivity"    # Z

    .prologue
    .line 2754
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 2755
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceInternetPermission()V

    .line 2758
    if-nez p1, :cond_1

    .line 2759
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getDefaultNetwork()Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    .line 2763
    .local v0, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :goto_0
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$State;->DISCONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v2, v3, :cond_2

    .line 2765
    :cond_0
    return-void

    .line 2761
    .end local v0    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    .restart local v0    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    goto :goto_0

    .line 2764
    :cond_2
    iget-object v2, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v2, v3, :cond_0

    .line 2768
    iget-boolean v2, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->lastValidated:Z

    if-ne p2, v2, :cond_3

    return-void

    .line 2769
    :cond_3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 2771
    .local v1, "uid":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "reportNetworkConnectivity("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v3, v3, Landroid/net/Network;->netId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2772
    const-string/jumbo v3, ") by "

    .line 2771
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 2774
    monitor-enter v0

    .line 2777
    :try_start_0
    iget-boolean v2, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->created:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_4

    monitor-exit v0

    return-void

    .line 2779
    :cond_4
    :try_start_1
    iget-object v2, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-direct {p0, v2, v1}, Lcom/android/server/ConnectivityService;->isNetworkWithLinkPropertiesBlocked(Landroid/net/LinkProperties;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-eqz v2, :cond_5

    monitor-exit v0

    return-void

    .line 2781
    :cond_5
    :try_start_2
    iget-object v2, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMonitor:Lcom/android/server/connectivity/NetworkMonitor;

    const v3, 0x82008

    invoke-virtual {v2, v3, v1}, Lcom/android/server/connectivity/NetworkMonitor;->sendMessage(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    .line 2753
    return-void

    .line 2774
    :catchall_0
    move-exception v2

    monitor-exit v0

    throw v2
.end method

.method public requestBandwidthUpdate(Landroid/net/Network;)Z
    .locals 5
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    const/4 v4, 0x0

    .line 3746
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 3747
    const/4 v0, 0x0

    .line 3748
    .local v0, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-nez p1, :cond_0

    .line 3749
    return v4

    .line 3751
    :cond_0
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    monitor-enter v2

    .line 3752
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    iget v3, p1, Landroid/net/Network;->netId:I

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    check-cast v0, Lcom/android/server/connectivity/NetworkAgentInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v0, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    monitor-exit v2

    .line 3754
    if-eqz v0, :cond_1

    .line 3755
    iget-object v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v2, 0x8100a

    invoke-virtual {v1, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 3756
    const/4 v1, 0x1

    return v1

    .line 3751
    .end local v0    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 3758
    .restart local v0    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_1
    return v4
.end method

.method public requestNetwork(Landroid/net/NetworkCapabilities;Landroid/os/Messenger;ILandroid/os/IBinder;I)Landroid/net/NetworkRequest;
    .locals 7
    .param p1, "networkCapabilities"    # Landroid/net/NetworkCapabilities;
    .param p2, "messenger"    # Landroid/os/Messenger;
    .param p3, "timeoutMs"    # I
    .param p4, "binder"    # Landroid/os/IBinder;
    .param p5, "legacyType"    # I

    .prologue
    .line 3713
    new-instance v6, Landroid/net/NetworkCapabilities;

    invoke-direct {v6, p1}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    .line 3714
    .end local p1    # "networkCapabilities":Landroid/net/NetworkCapabilities;
    .local v6, "networkCapabilities":Landroid/net/NetworkCapabilities;
    invoke-direct {p0, v6}, Lcom/android/server/ConnectivityService;->enforceNetworkRequestPermissions(Landroid/net/NetworkCapabilities;)V

    .line 3715
    invoke-direct {p0, v6}, Lcom/android/server/ConnectivityService;->enforceMeteredApnPolicy(Landroid/net/NetworkCapabilities;)V

    .line 3716
    invoke-direct {p0, v6}, Lcom/android/server/ConnectivityService;->ensureRequestableCapabilities(Landroid/net/NetworkCapabilities;)V

    .line 3718
    if-ltz p3, :cond_0

    const v1, 0x5b8d80

    if-le p3, v1, :cond_1

    .line 3719
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Bad timeout specified"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3722
    :cond_1
    new-instance v3, Landroid/net/NetworkRequest;

    .line 3723
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->nextNetworkRequestId()I

    move-result v1

    .line 3722
    invoke-direct {v3, v6, p5, v1}, Landroid/net/NetworkRequest;-><init>(Landroid/net/NetworkCapabilities;II)V

    .line 3724
    .local v3, "networkRequest":Landroid/net/NetworkRequest;
    new-instance v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    .line 3725
    const/4 v5, 0x1

    move-object v1, p0

    move-object v2, p2

    move-object v4, p4

    .line 3724
    invoke-direct/range {v0 .. v5}, Lcom/android/server/ConnectivityService$NetworkRequestInfo;-><init>(Lcom/android/server/ConnectivityService;Landroid/os/Messenger;Landroid/net/NetworkRequest;Landroid/os/IBinder;Z)V

    .line 3726
    .local v0, "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestNetwork for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 3728
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v4, 0x13

    invoke-virtual {v2, v4, v0}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3729
    if-lez p3, :cond_2

    .line 3730
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v4, 0x14

    invoke-virtual {v2, v4, v0}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 3731
    int-to-long v4, p3

    .line 3730
    invoke-virtual {v1, v2, v4, v5}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3733
    :cond_2
    return-object v3
.end method

.method public requestRouteToHostAddress(I[B)Z
    .locals 13
    .param p1, "networkType"    # I
    .param p2, "hostAddress"    # [B

    .prologue
    const/4 v12, 0x0

    .line 1297
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceChangePermission()V

    .line 1298
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mProtectedNetworks:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1299
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 1304
    :cond_0
    :try_start_0
    invoke-static {p2}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1310
    .local v0, "addr":Ljava/net/InetAddress;
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v10

    if-nez v10, :cond_1

    .line 1311
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "requestRouteToHostAddress on invalid network: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 1312
    return v12

    .line 1305
    .end local v0    # "addr":Ljava/net/InetAddress;
    :catch_0
    move-exception v1

    .line 1306
    .local v1, "e":Ljava/net/UnknownHostException;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "requestRouteToHostAddress got "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/net/UnknownHostException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 1307
    return v12

    .line 1315
    .end local v1    # "e":Ljava/net/UnknownHostException;
    .restart local v0    # "addr":Ljava/net/InetAddress;
    :cond_1
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    invoke-virtual {v10, p1}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->getNetworkForType(I)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v3

    .line 1316
    .local v3, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-nez v3, :cond_3

    .line 1317
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    invoke-virtual {v10, p1}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->isTypeSupported(I)Z

    move-result v10

    if-nez v10, :cond_2

    .line 1318
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "requestRouteToHostAddress on unsupported network: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 1322
    :goto_0
    return v12

    .line 1320
    :cond_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "requestRouteToHostAddress on down network: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1326
    :cond_3
    monitor-enter v3

    .line 1327
    :try_start_1
    iget-object v10, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v10}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    .local v5, "netState":Landroid/net/NetworkInfo$DetailedState;
    monitor-exit v3

    .line 1330
    sget-object v10, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v5, v10, :cond_4

    sget-object v10, Landroid/net/NetworkInfo$DetailedState;->CAPTIVE_PORTAL_CHECK:Landroid/net/NetworkInfo$DetailedState;

    if-eq v5, v10, :cond_4

    .line 1336
    return v12

    .line 1326
    .end local v5    # "netState":Landroid/net/NetworkInfo$DetailedState;
    :catchall_0
    move-exception v10

    monitor-exit v3

    throw v10

    .line 1339
    .restart local v5    # "netState":Landroid/net/NetworkInfo$DetailedState;
    :cond_4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 1340
    .local v7, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 1344
    .local v8, "token":J
    :try_start_2
    monitor-enter v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1345
    :try_start_3
    iget-object v2, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    .line 1346
    .local v2, "lp":Landroid/net/LinkProperties;
    iget-object v10, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v4, v10, Landroid/net/Network;->netId:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .local v4, "netId":I
    :try_start_4
    monitor-exit v3

    .line 1348
    invoke-direct {p0, v2, v0, v4, v7}, Lcom/android/server/ConnectivityService;->addLegacyRouteToHost(Landroid/net/LinkProperties;Ljava/net/InetAddress;II)Z

    move-result v6

    .line 1349
    .local v6, "ok":Z
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "requestRouteToHostAddress ok="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1352
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1350
    return v6

    .line 1344
    .end local v2    # "lp":Landroid/net/LinkProperties;
    .end local v4    # "netId":I
    .end local v6    # "ok":Z
    :catchall_1
    move-exception v10

    :try_start_5
    monitor-exit v3

    throw v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1351
    :catchall_2
    move-exception v10

    .line 1352
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1351
    throw v10
.end method

.method protected reserveNetId()I
    .locals 5

    .prologue
    const v4, 0xffff

    .line 832
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    monitor-enter v3

    .line 833
    const/16 v0, 0x64

    .local v0, "i":I
    :goto_0
    if-gt v0, v4, :cond_2

    .line 834
    :try_start_0
    iget v1, p0, Lcom/android/server/ConnectivityService;->mNextNetId:I

    .line 835
    .local v1, "netId":I
    iget v2, p0, Lcom/android/server/ConnectivityService;->mNextNetId:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/ConnectivityService;->mNextNetId:I

    if-le v2, v4, :cond_0

    const/16 v2, 0x64

    iput v2, p0, Lcom/android/server/ConnectivityService;->mNextNetId:I

    .line 837
    :cond_0
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetIdInUse:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 838
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetIdInUse:Landroid/util/SparseBooleanArray;

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 839
    return v1

    .line 833
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "netId":I
    :cond_2
    monitor-exit v3

    .line 843
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "No free netIds"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 832
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public sendConnectedBroadcast(Landroid/net/NetworkInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/net/NetworkInfo;

    .prologue
    .line 1474
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 1475
    const-string/jumbo v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {p0, p1, v0}, Lcom/android/server/ConnectivityService;->sendGeneralBroadcast(Landroid/net/NetworkInfo;Ljava/lang/String;)V

    .line 1473
    return-void
.end method

.method public setAcceptUnvalidated(Landroid/net/Network;ZZ)V
    .locals 5
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "accept"    # Z
    .param p3, "always"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2432
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 2433
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    .line 2434
    if-eqz p2, :cond_0

    move v2, v0

    :goto_0
    if-eqz p3, :cond_1

    .line 2433
    :goto_1
    const/16 v1, 0x1c

    invoke-virtual {v4, v1, v2, v0, p1}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2431
    return-void

    :cond_0
    move v2, v1

    .line 2434
    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public setAirplaneMode(Z)V
    .locals 6
    .param p1, "enable"    # Z

    .prologue
    .line 3535
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 3536
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3538
    .local v2, "ident":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3539
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v5, "airplane_mode_on"

    if-eqz p1, :cond_0

    const/4 v4, 0x1

    :goto_0
    invoke-static {v0, v5, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3540
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3541
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "state"

    invoke-virtual {v1, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3542
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v1, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3544
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3534
    return-void

    .line 3539
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 3543
    .end local v0    # "cr":Landroid/content/ContentResolver;
    :catchall_0
    move-exception v4

    .line 3544
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3543
    throw v4
.end method

.method public setGlobalProxy(Landroid/net/ProxyInfo;)V
    .locals 10
    .param p1, "proxyProperties"    # Landroid/net/ProxyInfo;

    .prologue
    .line 2842
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 2844
    iget-object v8, p0, Lcom/android/server/ConnectivityService;->mProxyLock:Ljava/lang/Object;

    monitor-enter v8

    .line 2845
    :try_start_0
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-ne p1, v5, :cond_0

    monitor-exit v8

    return-void

    .line 2846
    :cond_0
    if-eqz p1, :cond_1

    :try_start_1
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyInfo;

    invoke-virtual {p1, v5}, Landroid/net/ProxyInfo;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v5

    if-eqz v5, :cond_1

    monitor-exit v8

    return-void

    .line 2847
    :cond_1
    :try_start_2
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyInfo;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyInfo;

    invoke-virtual {v5, p1}, Landroid/net/ProxyInfo;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v5

    if-eqz v5, :cond_2

    monitor-exit v8

    return-void

    .line 2849
    :cond_2
    :try_start_3
    const-string/jumbo v1, ""

    .line 2850
    .local v1, "host":Ljava/lang/String;
    const/4 v3, 0x0

    .line 2851
    .local v3, "port":I
    const-string/jumbo v0, ""

    .line 2852
    .local v0, "exclList":Ljava/lang/String;
    const-string/jumbo v2, ""

    .line 2853
    .local v2, "pacFileUrl":Ljava/lang/String;
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2854
    sget-object v5, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2868
    :cond_3
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyInfo;

    .line 2870
    :cond_4
    :goto_0
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 2871
    .local v4, "res":Landroid/content/ContentResolver;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-wide v6

    .line 2873
    .local v6, "token":J
    :try_start_4
    const-string/jumbo v5, "global_http_proxy_host"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2874
    const-string/jumbo v5, "global_http_proxy_port"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2875
    const-string/jumbo v5, "global_http_proxy_exclusion_list"

    invoke-static {v4, v5, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2877
    const-string/jumbo v5, "global_proxy_pac_url"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2879
    :try_start_5
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2882
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyInfo;

    if-nez v5, :cond_5

    .line 2883
    iget-object p1, p0, Lcom/android/server/ConnectivityService;->mDefaultProxy:Landroid/net/ProxyInfo;

    .line 2885
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->sendProxyBroadcast(Landroid/net/ProxyInfo;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    monitor-exit v8

    .line 2841
    return-void

    .line 2855
    .end local v4    # "res":Landroid/content/ContentResolver;
    .end local v6    # "token":J
    :cond_6
    :try_start_6
    invoke-virtual {p1}, Landroid/net/ProxyInfo;->isValid()Z

    move-result v5

    if-nez v5, :cond_7

    .line 2857
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Invalid proxy properties, ignoring: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/net/ProxyInfo;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    monitor-exit v8

    .line 2858
    return-void

    .line 2860
    :cond_7
    :try_start_7
    new-instance v5, Landroid/net/ProxyInfo;

    invoke-direct {v5, p1}, Landroid/net/ProxyInfo;-><init>(Landroid/net/ProxyInfo;)V

    iput-object v5, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyInfo;

    .line 2861
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyInfo;

    invoke-virtual {v5}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 2862
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyInfo;

    invoke-virtual {v5}, Landroid/net/ProxyInfo;->getPort()I

    move-result v3

    .line 2863
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyInfo;

    invoke-virtual {v5}, Landroid/net/ProxyInfo;->getExclusionListAsString()Ljava/lang/String;

    move-result-object v0

    .line 2864
    sget-object v5, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 2865
    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 2878
    .restart local v4    # "res":Landroid/content/ContentResolver;
    .restart local v6    # "token":J
    :catchall_0
    move-exception v5

    .line 2879
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2878
    throw v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 2844
    .end local v0    # "exclList":Ljava/lang/String;
    .end local v1    # "host":Ljava/lang/String;
    .end local v2    # "pacFileUrl":Ljava/lang/String;
    .end local v3    # "port":I
    .end local v4    # "res":Landroid/content/ContentResolver;
    .end local v6    # "token":J
    :catchall_1
    move-exception v5

    monitor-exit v8

    throw v5
.end method

.method public setProvisioningNotificationVisible(ZILjava/lang/String;)V
    .locals 3
    .param p1, "visible"    # Z
    .param p2, "networkType"    # I
    .param p3, "action"    # Ljava/lang/String;

    .prologue
    .line 3524
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 3525
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3527
    .local v0, "ident":J
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/ConnectivityService;->setProvNotificationVisible(ZILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3529
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3523
    return-void

    .line 3528
    :catchall_0
    move-exception v2

    .line 3529
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3528
    throw v2
.end method

.method public setUnderlyingNetworksForVpn([Landroid/net/Network;)Z
    .locals 4
    .param p1, "networks"    # [Landroid/net/Network;

    .prologue
    .line 4857
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->throwIfLockdownEnabled()V

    .line 4858
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 4860
    .local v1, "user":I
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v3

    .line 4861
    :try_start_0
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v2, p1}, Lcom/android/server/connectivity/Vpn;->setUnderlyingNetworks([Landroid/net/Network;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .local v0, "success":Z
    monitor-exit v3

    .line 4863
    if-eqz v0, :cond_0

    .line 4864
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->notifyIfacesChanged()V

    .line 4866
    :cond_0
    return v0

    .line 4860
    .end local v0    # "success":Z
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public setUsbTethering(Z)I
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 2683
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/ConnectivityManager;->enforceTetherChangePermission(Landroid/content/Context;)V

    .line 2684
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2685
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/Tethering;->setUsbTethering(Z)I

    move-result v0

    return v0

    .line 2687
    :cond_0
    const/4 v0, 0x3

    return v0
.end method

.method public setVpnPackageAuthorization(Ljava/lang/String;IZ)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "authorized"    # Z

    .prologue
    .line 3105
    invoke-direct {p0, p2}, Lcom/android/server/ConnectivityService;->enforceCrossUserPermission(I)V

    .line 3107
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v2

    .line 3108
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/Vpn;

    .line 3109
    .local v0, "vpn":Lcom/android/server/connectivity/Vpn;
    if-eqz v0, :cond_0

    .line 3110
    invoke-virtual {v0, p1, p3}, Lcom/android/server/connectivity/Vpn;->setPackageAuthorization(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    .line 3104
    return-void

    .line 3107
    .end local v0    # "vpn":Lcom/android/server/connectivity/Vpn;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public startLegacyVpn(Lcom/android/internal/net/VpnProfile;)V
    .locals 5
    .param p1, "profile"    # Lcom/android/internal/net/VpnProfile;

    .prologue
    .line 3137
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->throwIfLockdownEnabled()V

    .line 3138
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->getActiveLinkProperties()Landroid/net/LinkProperties;

    move-result-object v0

    .line 3139
    .local v0, "egress":Landroid/net/LinkProperties;
    if-nez v0, :cond_0

    .line 3140
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Missing active network connection"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3142
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 3143
    .local v1, "user":I
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v3

    .line 3144
    :try_start_0
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/Vpn;

    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v2, p1, v4, v0}, Lcom/android/server/connectivity/Vpn;->startLegacyVpn(Lcom/android/internal/net/VpnProfile;Landroid/security/KeyStore;Landroid/net/LinkProperties;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 3136
    return-void

    .line 3143
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public startNattKeepalive(Landroid/net/Network;ILandroid/os/Messenger;Landroid/os/IBinder;Ljava/lang/String;ILjava/lang/String;)V
    .locals 9
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "intervalSeconds"    # I
    .param p3, "messenger"    # Landroid/os/Messenger;
    .param p4, "binder"    # Landroid/os/IBinder;
    .param p5, "srcAddr"    # Ljava/lang/String;
    .param p6, "srcPort"    # I
    .param p7, "dstAddr"    # Ljava/lang/String;

    .prologue
    .line 4872
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceKeepalivePermission()V

    .line 4873
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mKeepaliveTracker:Lcom/android/server/connectivity/KeepaliveTracker;

    .line 4874
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v1

    .line 4876
    const/16 v8, 0x1194

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move-object/from16 v7, p7

    .line 4873
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/connectivity/KeepaliveTracker;->startNattKeepalive(Lcom/android/server/connectivity/NetworkAgentInfo;ILandroid/os/Messenger;Landroid/os/IBinder;Ljava/lang/String;ILjava/lang/String;I)V

    .line 4871
    return-void
.end method

.method public stopKeepalive(Landroid/net/Network;I)V
    .locals 4
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "slot"    # I

    .prologue
    .line 4881
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    .line 4882
    const v2, 0x8100c

    const/4 v3, 0x0

    .line 4881
    invoke-virtual {v1, v2, p2, v3, p1}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4880
    return-void
.end method

.method systemReady()V
    .locals 4

    .prologue
    .line 1558
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->loadGlobalProxy()V

    .line 1560
    monitor-enter p0

    .line 1561
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/ConnectivityService;->mSystemReady:Z

    .line 1562
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mInitialBroadcast:Landroid/content/Intent;

    if-eqz v1, :cond_0

    .line 1563
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mInitialBroadcast:Landroid/content/Intent;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1564
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/ConnectivityService;->mInitialBroadcast:Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 1568
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1572
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->updateLockdownVpn()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1573
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.USER_PRESENT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1574
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mUserPresentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1578
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_1
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v3, 0x1e

    invoke-virtual {v2, v3}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1580
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v3, 0x19

    invoke-virtual {v2, v3}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1582
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mPermissionMonitor:Lcom/android/server/connectivity/PermissionMonitor;

    invoke-virtual {v1}, Lcom/android/server/connectivity/PermissionMonitor;->startMonitoring()V

    .line 1557
    return-void

    .line 1560
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public tether(Ljava/lang/String;)I
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 2624
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/ConnectivityManager;->enforceTetherChangePermission(Landroid/content/Context;)V

    .line 2625
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2626
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/Tethering;->tether(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 2628
    :cond_0
    const/4 v0, 0x3

    return v0
.end method

.method public unregisterNetworkFactory(Landroid/os/Messenger;)V
    .locals 3
    .param p1, "messenger"    # Landroid/os/Messenger;

    .prologue
    .line 3887
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 3888
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v2, 0x17

    invoke-virtual {v1, v2, p1}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3886
    return-void
.end method

.method public untether(Ljava/lang/String;)I
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 2634
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/ConnectivityManager;->enforceTetherChangePermission(Landroid/content/Context;)V

    .line 2636
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2637
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/Tethering;->untether(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 2639
    :cond_0
    const/4 v0, 0x3

    return v0
.end method

.method public updateLockdownVpn()Z
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3236
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 3237
    const-string/jumbo v0, "ConnectivityService"

    const-string/jumbo v1, "Lockdown VPN only available to AID_SYSTEM"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3238
    return v2

    .line 3242
    :cond_0
    invoke-static {}, Lcom/android/server/net/LockdownVpnTracker;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/ConnectivityService;->mLockdownEnabled:Z

    .line 3243
    iget-boolean v0, p0, Lcom/android/server/ConnectivityService;->mLockdownEnabled:Z

    if-eqz v0, :cond_3

    .line 3244
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v0}, Landroid/security/KeyStore;->isUnlocked()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3245
    const-string/jumbo v0, "ConnectivityService"

    const-string/jumbo v1, "KeyStore locked; unable to create LockdownTracker"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3246
    return v2

    .line 3249
    :cond_1
    new-instance v6, Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mKeyStore:Landroid/security/KeyStore;

    const-string/jumbo v1, "LOCKDOWN_VPN"

    invoke-virtual {v0, v1}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>([B)V

    .line 3251
    .local v6, "profileName":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mKeyStore:Landroid/security/KeyStore;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "VPN_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v0

    .line 3250
    invoke-static {v6, v0}, Lcom/android/internal/net/VpnProfile;->decode(Ljava/lang/String;[B)Lcom/android/internal/net/VpnProfile;

    move-result-object v5

    .line 3252
    .local v5, "profile":Lcom/android/internal/net/VpnProfile;
    if-nez v5, :cond_2

    .line 3253
    const-string/jumbo v0, "ConnectivityService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Lockdown VPN configured invalid profile "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3254
    invoke-direct {p0, v3}, Lcom/android/server/ConnectivityService;->setLockdownTracker(Lcom/android/server/net/LockdownVpnTracker;)V

    .line 3255
    return v9

    .line 3257
    :cond_2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .line 3258
    .local v7, "user":I
    iget-object v8, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v8

    .line 3259
    :try_start_0
    new-instance v0, Lcom/android/server/net/LockdownVpnTracker;

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v3, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/connectivity/Vpn;

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/net/LockdownVpnTracker;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/Vpn;Lcom/android/internal/net/VpnProfile;)V

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->setLockdownTracker(Lcom/android/server/net/LockdownVpnTracker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v8

    .line 3266
    .end local v5    # "profile":Lcom/android/internal/net/VpnProfile;
    .end local v6    # "profileName":Ljava/lang/String;
    .end local v7    # "user":I
    :goto_0
    return v9

    .line 3258
    .restart local v5    # "profile":Lcom/android/internal/net/VpnProfile;
    .restart local v6    # "profileName":Ljava/lang/String;
    .restart local v7    # "user":I
    :catchall_0
    move-exception v0

    monitor-exit v8

    throw v0

    .line 3263
    .end local v5    # "profile":Lcom/android/internal/net/VpnProfile;
    .end local v6    # "profileName":Ljava/lang/String;
    .end local v7    # "user":I
    :cond_3
    invoke-direct {p0, v3}, Lcom/android/server/ConnectivityService;->setLockdownTracker(Lcom/android/server/net/LockdownVpnTracker;)V

    goto :goto_0
.end method

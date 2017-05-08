.class public Landroid/net/NetworkPolicyManager;
.super Ljava/lang/Object;
.source "NetworkPolicyManager.java"


# static fields
.field private static final ALLOW_PLATFORM_APP_POLICY:Z = true

.field public static final EXTRA_NETWORK_TEMPLATE:Ljava/lang/String; = "android.net.NETWORK_TEMPLATE"

.field public static final FIREWALL_CHAIN_DOZABLE:I = 0x1

.field public static final FIREWALL_CHAIN_NAME_DOZABLE:Ljava/lang/String; = "dozable"

.field public static final FIREWALL_CHAIN_NAME_NONE:Ljava/lang/String; = "none"

.field public static final FIREWALL_CHAIN_NAME_STANDBY:Ljava/lang/String; = "standby"

.field public static final FIREWALL_CHAIN_NONE:I = 0x0

.field public static final FIREWALL_CHAIN_STANDBY:I = 0x2

.field public static final FIREWALL_RULE_ALLOW:I = 0x1

.field public static final FIREWALL_RULE_DEFAULT:I = 0x0

.field public static final FIREWALL_RULE_DENY:I = 0x2

.field public static final FIREWALL_TYPE_BLACKLIST:I = 0x1

.field public static final FIREWALL_TYPE_WHITELIST:I = 0x0

.field public static final POLICY_ALLOW_BACKGROUND_BATTERY_SAVE:I = 0x2

.field public static final POLICY_NONE:I = 0x0

.field public static final POLICY_REJECT_METERED_BACKGROUND:I = 0x1

.field public static final RULE_ALLOW_ALL:I = 0x0

.field public static final RULE_REJECT_ALL:I = 0x2

.field public static final RULE_REJECT_METERED:I = 0x1

.field public static final RULE_UNKNOWN:I = -0x1


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mService:Landroid/net/INetworkPolicyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/INetworkPolicyManager;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/net/INetworkPolicyManager;

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    if-nez p2, :cond_0

    .line 89
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "missing INetworkPolicyManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_0
    iput-object p1, p0, Landroid/net/NetworkPolicyManager;->mContext:Landroid/content/Context;

    .line 92
    iput-object p2, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    .line 87
    return-void
.end method

.method public static computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J
    .locals 12
    .param p0, "currentTime"    # J
    .param p2, "policy"    # Landroid/net/NetworkPolicy;

    .prologue
    const/4 v9, 0x1

    const-wide/16 v10, -0x1

    const/4 v8, 0x0

    .line 217
    iget v6, p2, Landroid/net/NetworkPolicy;->cycleDay:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_0

    .line 218
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "Unable to compute boundary without cycleDay"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 221
    :cond_0
    new-instance v3, Landroid/text/format/Time;

    iget-object v6, p2, Landroid/net/NetworkPolicy;->cycleTimezone:Ljava/lang/String;

    invoke-direct {v3, v6}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 222
    .local v3, "now":Landroid/text/format/Time;
    invoke-virtual {v3, p0, p1}, Landroid/text/format/Time;->set(J)V

    .line 225
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0, v3}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 226
    .local v0, "cycle":Landroid/text/format/Time;
    iput v8, v0, Landroid/text/format/Time;->second:I

    iput v8, v0, Landroid/text/format/Time;->minute:I

    iput v8, v0, Landroid/text/format/Time;->hour:I

    .line 227
    iget v6, p2, Landroid/net/NetworkPolicy;->cycleDay:I

    invoke-static {v0, v6}, Landroid/net/NetworkPolicyManager;->snapToCycleDay(Landroid/text/format/Time;I)V

    .line 229
    invoke-static {v0, v3}, Landroid/text/format/Time;->compare(Landroid/text/format/Time;Landroid/text/format/Time;)I

    move-result v6

    if-ltz v6, :cond_4

    .line 232
    const/4 v2, 0x0

    .line 233
    .local v2, "lastMonth":Landroid/text/format/Time;
    const-wide/16 v4, 0x0

    .line 234
    .local v4, "millis":J
    const/4 v1, 0x1

    .end local v2    # "lastMonth":Landroid/text/format/Time;
    .local v1, "i":I
    :goto_0
    const/4 v6, 0x3

    if-ge v1, v6, :cond_1

    .line 235
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2, v3}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 236
    .local v2, "lastMonth":Landroid/text/format/Time;
    iput v8, v2, Landroid/text/format/Time;->second:I

    iput v8, v2, Landroid/text/format/Time;->minute:I

    iput v8, v2, Landroid/text/format/Time;->hour:I

    .line 237
    iput v1, v2, Landroid/text/format/Time;->monthDay:I

    .line 238
    iget v6, v2, Landroid/text/format/Time;->month:I

    add-int/lit8 v6, v6, -0x1

    iput v6, v2, Landroid/text/format/Time;->month:I

    .line 239
    invoke-virtual {v2, v9}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v4

    .line 241
    cmp-long v6, v4, v10

    if-eqz v6, :cond_2

    .line 247
    .end local v2    # "lastMonth":Landroid/text/format/Time;
    :cond_1
    cmp-long v6, v4, v10

    if-nez v6, :cond_3

    .line 249
    return-wide v10

    .line 234
    .restart local v2    # "lastMonth":Landroid/text/format/Time;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 252
    .end local v2    # "lastMonth":Landroid/text/format/Time;
    :cond_3
    invoke-virtual {v0, v2}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 253
    iget v6, p2, Landroid/net/NetworkPolicy;->cycleDay:I

    invoke-static {v0, v6}, Landroid/net/NetworkPolicyManager;->snapToCycleDay(Landroid/text/format/Time;I)V

    .line 256
    .end local v1    # "i":I
    .end local v4    # "millis":J
    :cond_4
    invoke-virtual {v0, v9}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v6

    return-wide v6
.end method

.method public static computeNextCycleBoundary(JLandroid/net/NetworkPolicy;)J
    .locals 8
    .param p0, "currentTime"    # J
    .param p2, "policy"    # Landroid/net/NetworkPolicy;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 261
    iget v3, p2, Landroid/net/NetworkPolicy;->cycleDay:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 262
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Unable to compute boundary without cycleDay"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 265
    :cond_0
    new-instance v2, Landroid/text/format/Time;

    iget-object v3, p2, Landroid/net/NetworkPolicy;->cycleTimezone:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 266
    .local v2, "now":Landroid/text/format/Time;
    invoke-virtual {v2, p0, p1}, Landroid/text/format/Time;->set(J)V

    .line 269
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0, v2}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 270
    .local v0, "cycle":Landroid/text/format/Time;
    iput v5, v0, Landroid/text/format/Time;->second:I

    iput v5, v0, Landroid/text/format/Time;->minute:I

    iput v5, v0, Landroid/text/format/Time;->hour:I

    .line 271
    iget v3, p2, Landroid/net/NetworkPolicy;->cycleDay:I

    invoke-static {v0, v3}, Landroid/net/NetworkPolicyManager;->snapToCycleDay(Landroid/text/format/Time;I)V

    .line 273
    invoke-static {v0, v2}, Landroid/text/format/Time;->compare(Landroid/text/format/Time;Landroid/text/format/Time;)I

    move-result v3

    if-gtz v3, :cond_1

    .line 276
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1, v2}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 277
    .local v1, "nextMonth":Landroid/text/format/Time;
    iput v5, v1, Landroid/text/format/Time;->second:I

    iput v5, v1, Landroid/text/format/Time;->minute:I

    iput v5, v1, Landroid/text/format/Time;->hour:I

    .line 278
    iput v6, v1, Landroid/text/format/Time;->monthDay:I

    .line 279
    iget v3, v1, Landroid/text/format/Time;->month:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v1, Landroid/text/format/Time;->month:I

    .line 280
    invoke-virtual {v1, v6}, Landroid/text/format/Time;->normalize(Z)J

    .line 282
    invoke-virtual {v0, v1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 283
    iget v3, p2, Landroid/net/NetworkPolicy;->cycleDay:I

    invoke-static {v0, v3}, Landroid/net/NetworkPolicyManager;->snapToCycleDay(Landroid/text/format/Time;I)V

    .line 286
    .end local v1    # "nextMonth":Landroid/text/format/Time;
    :cond_1
    invoke-virtual {v0, v6}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    return-wide v4
.end method

.method public static from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 96
    const-string/jumbo v0, "netpolicy"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkPolicyManager;

    return-object v0
.end method

.method public static isUidValidForPolicy(Landroid/content/Context;I)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uid"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 314
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 315
    const/4 v0, 0x0

    return v0

    .line 342
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static snapToCycleDay(Landroid/text/format/Time;I)V
    .locals 2
    .param p0, "time"    # Landroid/text/format/Time;
    .param p1, "cycleDay"    # I

    .prologue
    const/4 v1, 0x1

    .line 296
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v0

    if-le p1, v0, :cond_0

    .line 298
    iget v0, p0, Landroid/text/format/Time;->month:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/text/format/Time;->month:I

    .line 299
    iput v1, p0, Landroid/text/format/Time;->monthDay:I

    .line 300
    const/4 v0, -0x1

    iput v0, p0, Landroid/text/format/Time;->second:I

    .line 304
    :goto_0
    invoke-virtual {p0, v1}, Landroid/text/format/Time;->normalize(Z)J

    .line 295
    return-void

    .line 302
    :cond_0
    iput p1, p0, Landroid/text/format/Time;->monthDay:I

    goto :goto_0
.end method


# virtual methods
.method public addUidPolicy(II)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "policy"    # I

    .prologue
    .line 119
    :try_start_0
    iget-object v1, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/net/INetworkPolicyManager;->addUidPolicy(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :goto_0
    return-void

    .line 120
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public factoryReset(Ljava/lang/String;)V
    .locals 2
    .param p1, "subscriber"    # Ljava/lang/String;

    .prologue
    .line 203
    :try_start_0
    iget-object v1, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    invoke-interface {v1, p1}, Landroid/net/INetworkPolicyManager;->factoryReset(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :goto_0
    return-void

    .line 204
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getNetworkPolicies()[Landroid/net/NetworkPolicy;
    .locals 3

    .prologue
    .line 175
    :try_start_0
    iget-object v1, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    iget-object v2, p0, Landroid/net/NetworkPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/net/INetworkPolicyManager;->getNetworkPolicies(Ljava/lang/String;)[Landroid/net/NetworkPolicy;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 176
    :catch_0
    move-exception v0

    .line 177
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public getRestrictBackground()Z
    .locals 2

    .prologue
    .line 190
    :try_start_0
    iget-object v1, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    invoke-interface {v1}, Landroid/net/INetworkPolicyManager;->getRestrictBackground()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 191
    :catch_0
    move-exception v0

    .line 192
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public getUidPolicy(I)I
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 138
    :try_start_0
    iget-object v1, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    invoke-interface {v1, p1}, Landroid/net/INetworkPolicyManager;->getUidPolicy(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public getUidsWithPolicy(I)[I
    .locals 2
    .param p1, "policy"    # I

    .prologue
    .line 146
    :try_start_0
    iget-object v1, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    invoke-interface {v1, p1}, Landroid/net/INetworkPolicyManager;->getUidsWithPolicy(I)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    new-array v1, v1, [I

    return-object v1
.end method

.method public registerListener(Landroid/net/INetworkPolicyListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/net/INetworkPolicyListener;

    .prologue
    .line 154
    :try_start_0
    iget-object v1, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    invoke-interface {v1, p1}, Landroid/net/INetworkPolicyManager;->registerListener(Landroid/net/INetworkPolicyListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :goto_0
    return-void

    .line 155
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public removeUidPolicy(II)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "policy"    # I

    .prologue
    .line 131
    :try_start_0
    iget-object v1, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/net/INetworkPolicyManager;->removeUidPolicy(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :goto_0
    return-void

    .line 132
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setNetworkPolicies([Landroid/net/NetworkPolicy;)V
    .locals 2
    .param p1, "policies"    # [Landroid/net/NetworkPolicy;

    .prologue
    .line 168
    :try_start_0
    iget-object v1, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    invoke-interface {v1, p1}, Landroid/net/INetworkPolicyManager;->setNetworkPolicies([Landroid/net/NetworkPolicy;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :goto_0
    return-void

    .line 169
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setRestrictBackground(Z)V
    .locals 2
    .param p1, "restrictBackground"    # Z

    .prologue
    .line 183
    :try_start_0
    iget-object v1, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    invoke-interface {v1, p1}, Landroid/net/INetworkPolicyManager;->setRestrictBackground(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    :goto_0
    return-void

    .line 184
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setUidPolicy(II)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "policy"    # I

    .prologue
    .line 107
    :try_start_0
    iget-object v1, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/net/INetworkPolicyManager;->setUidPolicy(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :goto_0
    return-void

    .line 108
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public unregisterListener(Landroid/net/INetworkPolicyListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/net/INetworkPolicyListener;

    .prologue
    .line 161
    :try_start_0
    iget-object v1, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    invoke-interface {v1, p1}, Landroid/net/INetworkPolicyManager;->unregisterListener(Landroid/net/INetworkPolicyListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    :goto_0
    return-void

    .line 162
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

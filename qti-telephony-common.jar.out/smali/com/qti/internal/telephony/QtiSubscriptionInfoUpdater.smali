.class public Lcom/qti/internal/telephony/QtiSubscriptionInfoUpdater;
.super Lcom/android/internal/telephony/SubscriptionInfoUpdater;
.source "QtiSubscriptionInfoUpdater.java"


# static fields
.field private static final EVENT_ADD_SUBINFO_RECORD:I = 0x64

.field private static final EVENT_UPDATE_NV_RECORD:I = 0x65

.field private static final ICCID_STRING_FOR_NO_SIM:Ljava/lang/String; = ""

.field private static final ICCID_STRING_FOR_NV:Ljava/lang/String; = "DUMMY_NV_ID"

.field private static final LOG_TAG:Ljava/lang/String; = "QtiSubscriptionInfoUpdater"

.field private static final mNumPhones:I

.field private static sContext:Landroid/content/Context;

.field private static sInstance:Lcom/qti/internal/telephony/QtiSubscriptionInfoUpdater;


# instance fields
.field private isNVSubAvailable:Z

.field private mIsRecordUpdateRequired:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 57
    sput-object v1, Lcom/qti/internal/telephony/QtiSubscriptionInfoUpdater;->sContext:Landroid/content/Context;

    .line 59
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    sput v0, Lcom/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mNumPhones:I

    .line 71
    sput-object v1, Lcom/qti/internal/telephony/QtiSubscriptionInfoUpdater;->sInstance:Lcom/qti/internal/telephony/QtiSubscriptionInfoUpdater;

    .line 49
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;[Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneProxy"    # [Lcom/android/internal/telephony/Phone;
    .param p3, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    .line 94
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;-><init>(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;[Lcom/android/internal/telephony/CommandsInterface;)V

    .line 56
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/qti/internal/telephony/QtiSubscriptionInfoUpdater;->isNVSubAvailable:Z

    .line 70
    sget v1, Lcom/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mNumPhones:I

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mIsRecordUpdateRequired:[Z

    .line 95
    sput-object p1, Lcom/qti/internal/telephony/QtiSubscriptionInfoUpdater;->sContext:Landroid/content/Context;

    .line 96
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    sget v1, Lcom/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mNumPhones:I

    if-ge v0, v1, :cond_0

    .line 97
    iget-object v1, p0, Lcom/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mIsRecordUpdateRequired:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    .line 96
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 93
    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/qti/internal/telephony/QtiSubscriptionInfoUpdater;
    .locals 2

    .prologue
    .line 86
    sget-object v0, Lcom/qti/internal/telephony/QtiSubscriptionInfoUpdater;->sInstance:Lcom/qti/internal/telephony/QtiSubscriptionInfoUpdater;

    if-nez v0, :cond_0

    .line 87
    const-string/jumbo v0, "QtiSubscriptionInfoUpdater"

    const-string/jumbo v1, "getInstance null"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_0
    sget-object v0, Lcom/qti/internal/telephony/QtiSubscriptionInfoUpdater;->sInstance:Lcom/qti/internal/telephony/QtiSubscriptionInfoUpdater;

    return-object v0
.end method

.method private declared-synchronized handleAddSubInfoRecordEvent(ILjava/lang/String;)V
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "iccId"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 153
    :try_start_0
    sget-object v0, Lcom/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    sget-object v0, Lcom/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v0, v0, p1

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 159
    :cond_0
    sget-object v0, Lcom/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aput-object p2, v0, p1

    .line 161
    invoke-virtual {p0}, Lcom/qti/internal/telephony/QtiSubscriptionInfoUpdater;->isAllIccIdQueryDone()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 162
    invoke-virtual {p0}, Lcom/qti/internal/telephony/QtiSubscriptionInfoUpdater;->updateSubscriptionInfoByIccId()V

    .line 164
    :cond_1
    iget-object v0, p0, Lcom/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mIsRecordUpdateRequired:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 152
    return-void

    .line 154
    :cond_2
    :try_start_1
    const-string/jumbo v0, "QtiSubscriptionInfoUpdater"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Record already exists ignore duplicate update, existing IccId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 155
    sget-object v2, Lcom/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v2, v2, p1

    .line 154
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 155
    const-string/jumbo v2, " recvd iccId["

    .line 154
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 155
    const-string/jumbo v2, "] = "

    .line 154
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 156
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static init(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/qti/internal/telephony/QtiSubscriptionInfoUpdater;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneProxy"    # [Lcom/android/internal/telephony/Phone;
    .param p2, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    .line 75
    const-class v1, Lcom/qti/internal/telephony/QtiSubscriptionInfoUpdater;

    monitor-enter v1

    .line 76
    :try_start_0
    sget-object v0, Lcom/qti/internal/telephony/QtiSubscriptionInfoUpdater;->sInstance:Lcom/qti/internal/telephony/QtiSubscriptionInfoUpdater;

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Lcom/qti/internal/telephony/QtiSubscriptionInfoUpdater;

    invoke-direct {v0, p0, p1, p2}, Lcom/qti/internal/telephony/QtiSubscriptionInfoUpdater;-><init>(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;[Lcom/android/internal/telephony/CommandsInterface;)V

    sput-object v0, Lcom/qti/internal/telephony/QtiSubscriptionInfoUpdater;->sInstance:Lcom/qti/internal/telephony/QtiSubscriptionInfoUpdater;

    .line 81
    :goto_0
    sget-object v0, Lcom/qti/internal/telephony/QtiSubscriptionInfoUpdater;->sInstance:Lcom/qti/internal/telephony/QtiSubscriptionInfoUpdater;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 79
    :cond_0
    :try_start_1
    const-string/jumbo v0, "QtiSubscriptionInfoUpdater"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "init() called multiple times!  sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/qti/internal/telephony/QtiSubscriptionInfoUpdater;->sInstance:Lcom/qti/internal/telephony/QtiSubscriptionInfoUpdater;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method addSubInfoRecord(ILjava/lang/String;)V
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "iccId"    # Ljava/lang/String;

    .prologue
    .line 144
    if-eqz p2, :cond_0

    if-ltz p1, :cond_0

    sget v0, Lcom/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mNumPhones:I

    if-lt p1, v0, :cond_1

    .line 145
    :cond_0
    const-string/jumbo v0, "QtiSubscriptionInfoUpdater"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "addSubInfoRecord, invalid input IccId["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    return-void

    .line 149
    :cond_1
    const/16 v0, 0x64

    const/4 v1, -0x1

    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/qti/internal/telephony/QtiSubscriptionInfoUpdater;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qti/internal/telephony/QtiSubscriptionInfoUpdater;->sendMessage(Landroid/os/Message;)Z

    .line 143
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 103
    const-string/jumbo v0, "QtiSubscriptionInfoUpdater"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " handleMessage: EVENT:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 114
    invoke-super {p0, p1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->handleMessage(Landroid/os/Message;)V

    .line 102
    :goto_0
    return-void

    .line 106
    :pswitch_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/qti/internal/telephony/QtiSubscriptionInfoUpdater;->handleAddSubInfoRecordEvent(ILjava/lang/String;)V

    goto :goto_0

    .line 110
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0}, Lcom/qti/internal/telephony/QtiSubscriptionInfoUpdater;->handleUpdateNVRecord(I)V

    goto :goto_0

    .line 104
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected handleSimAbsent(I)V
    .locals 2
    .param p1, "slotId"    # I

    .prologue
    .line 169
    iget-boolean v0, p0, Lcom/qti/internal/telephony/QtiSubscriptionInfoUpdater;->isNVSubAvailable:Z

    if-eqz v0, :cond_0

    .line 170
    return-void

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mIsRecordUpdateRequired:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    .line 176
    invoke-super {p0, p1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->handleSimAbsent(I)V

    .line 168
    return-void
.end method

.method public handleUpdateNVRecord(I)V
    .locals 5
    .param p1, "slotId"    # I

    .prologue
    const/4 v4, 0x0

    .line 126
    iget-boolean v1, p0, Lcom/qti/internal/telephony/QtiSubscriptionInfoUpdater;->isNVSubAvailable:Z

    if-eqz v1, :cond_1

    .line 127
    iget-object v1, p0, Lcom/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mIsRecordUpdateRequired:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, p1

    .line 128
    const-string/jumbo v1, "DUMMY_NV_ID"

    invoke-direct {p0, p1, v1}, Lcom/qti/internal/telephony/QtiSubscriptionInfoUpdater;->handleAddSubInfoRecordEvent(ILjava/lang/String;)V

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v1

    .line 132
    sget-object v2, Lcom/qti/internal/telephony/QtiSubscriptionInfoUpdater;->sContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 131
    invoke-virtual {v1, p1, v4, v2}, Lcom/android/internal/telephony/SubscriptionController;->getSubInfoUsingSlotIdWithCheck(IZLjava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 133
    .local v0, "subInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v0, :cond_0

    .line 134
    const-string/jumbo v2, "QtiSubscriptionInfoUpdater"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleUpdateNVRecord, active IccID: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 135
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v1

    .line 134
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "DUMMY_NV_ID"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 137
    invoke-virtual {p0, p1}, Lcom/qti/internal/telephony/QtiSubscriptionInfoUpdater;->handleSimAbsent(I)V

    goto :goto_0
.end method

.method public updateNVRecord(ZI)V
    .locals 3
    .param p1, "isNVReady"    # Z
    .param p2, "slotId"    # I

    .prologue
    .line 120
    const-string/jumbo v0, "QtiSubscriptionInfoUpdater"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateNVRecord, isNVReady: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " slotId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iput-boolean p1, p0, Lcom/qti/internal/telephony/QtiSubscriptionInfoUpdater;->isNVSubAvailable:Z

    .line 122
    const/16 v0, 0x65

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, p2, v1, v2}, Lcom/qti/internal/telephony/QtiSubscriptionInfoUpdater;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qti/internal/telephony/QtiSubscriptionInfoUpdater;->sendMessage(Landroid/os/Message;)Z

    .line 119
    return-void
.end method

.method protected declared-synchronized updateSubscriptionInfoByIccId()V
    .locals 5

    .prologue
    monitor-enter p0

    .line 181
    const/4 v1, 0x0

    .line 182
    .local v1, "isUpdateRequired":Z
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    :try_start_0
    sget v3, Lcom/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mNumPhones:I

    if-ge v0, v3, :cond_0

    .line 183
    iget-object v3, p0, Lcom/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mIsRecordUpdateRequired:[Z

    aget-boolean v3, v3, v0

    if-eqz v3, :cond_2

    .line 184
    const/4 v1, 0x1

    .line 189
    :cond_0
    if-eqz v1, :cond_3

    .line 190
    invoke-super {p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateSubscriptionInfoByIccId()V

    .line 191
    const-string/jumbo v3, "QtiSubscriptionInfoUpdater"

    const-string/jumbo v4, "SIM state changed, Updating user preference "

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-static {}, Lcom/qti/internal/telephony/ExtTelephonyServiceImpl;->getInstance()Lcom/qti/internal/telephony/ExtTelephonyServiceImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qti/internal/telephony/ExtTelephonyServiceImpl;->getUiccProvisionerInstance()Lcom/qti/internal/telephony/UiccCardProvisioner;

    move-result-object v2

    .line 198
    .local v2, "uiccProvisioner":Lcom/qti/internal/telephony/UiccCardProvisioner;
    invoke-virtual {v2}, Lcom/qti/internal/telephony/UiccCardProvisioner;->isAllCardProvisionInfoReceived()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 199
    invoke-static {}, Lcom/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qti/internal/telephony/QtiSubscriptionController;->updateUserPreferences()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v2    # "uiccProvisioner":Lcom/qti/internal/telephony/UiccCardProvisioner;
    :cond_1
    :goto_1
    monitor-exit p0

    .line 180
    return-void

    .line 182
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 202
    :cond_3
    :try_start_1
    const-string/jumbo v3, "QtiSubscriptionInfoUpdater"

    const-string/jumbo v4, "Ignoring subscription update event"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.class public final Lcom/qti/internal/telephony/dataconnection/QtiCdmaApnProfileTracker;
.super Landroid/os/Handler;
.source "QtiCdmaApnProfileTracker.java"


# static fields
.field private static final EVENT_GET_DATA_CALL_PROFILE_DONE:I = 0x1

.field private static final EVENT_LOAD_PROFILES:I = 0x2

.field private static final EVENT_READ_MODEM_PROFILES:I

.field private static final mDefaultApnTypes:[Ljava/lang/String;

.field private static final mSupportedApnTypes:[Ljava/lang/String;


# instance fields
.field protected final LOG_TAG:Ljava/lang/String;

.field protected mActiveApn:Lcom/qti/internal/telephony/dataconnection/QtiApnSetting;

.field private mApnProfilesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/qti/internal/telephony/dataconnection/QtiApnSetting;",
            ">;"
        }
    .end annotation
.end field

.field private mCdmaSsm:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

.field private mModemApnProfileRegistrants:Landroid/os/RegistrantList;

.field private mOmhReadProfileContext:I

.field private mOmhReadProfileCount:I

.field mOmhServicePriorityMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

.field mTempOmhApnProfilesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/qti/internal/telephony/dataconnection/QtiApnSetting;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 48
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    .line 49
    const-string/jumbo v1, "default"

    aput-object v1, v0, v3

    .line 50
    const-string/jumbo v1, "mms"

    aput-object v1, v0, v4

    .line 51
    const-string/jumbo v1, "supl"

    aput-object v1, v0, v5

    .line 52
    const-string/jumbo v1, "dun"

    aput-object v1, v0, v6

    .line 53
    const-string/jumbo v1, "hipri"

    aput-object v1, v0, v7

    .line 54
    const-string/jumbo v1, "fota"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 55
    const-string/jumbo v1, "ims"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 56
    const-string/jumbo v1, "cbs"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 48
    sput-object v0, Lcom/qti/internal/telephony/dataconnection/QtiCdmaApnProfileTracker;->mSupportedApnTypes:[Ljava/lang/String;

    .line 58
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    .line 59
    const-string/jumbo v1, "default"

    aput-object v1, v0, v3

    .line 60
    const-string/jumbo v1, "mms"

    aput-object v1, v0, v4

    .line 61
    const-string/jumbo v1, "supl"

    aput-object v1, v0, v5

    .line 62
    const-string/jumbo v1, "hipri"

    aput-object v1, v0, v6

    .line 63
    const-string/jumbo v1, "fota"

    aput-object v1, v0, v7

    .line 64
    const-string/jumbo v1, "ims"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 65
    const-string/jumbo v1, "cbs"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 58
    sput-object v0, Lcom/qti/internal/telephony/dataconnection/QtiCdmaApnProfileTracker;->mDefaultApnTypes:[Ljava/lang/String;

    .line 37
    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V
    .locals 4
    .param p1, "phone"    # Lcom/android/internal/telephony/cdma/CDMAPhone;

    .prologue
    const/4 v1, 0x0

    .line 95
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 38
    const-string/jumbo v0, "QtiCdmaApnProfileTracker"

    iput-object v0, p0, Lcom/qti/internal/telephony/dataconnection/QtiCdmaApnProfileTracker;->LOG_TAG:Ljava/lang/String;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qti/internal/telephony/dataconnection/QtiCdmaApnProfileTracker;->mApnProfilesList:Ljava/util/ArrayList;

    .line 73
    iput v1, p0, Lcom/qti/internal/telephony/dataconnection/QtiCdmaApnProfileTracker;->mOmhReadProfileContext:I

    .line 78
    iput v1, p0, Lcom/qti/internal/telephony/dataconnection/QtiCdmaApnProfileTracker;->mOmhReadProfileCount:I

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qti/internal/telephony/dataconnection/QtiCdmaApnProfileTracker;->mTempOmhApnProfilesList:Ljava/util/ArrayList;

    .line 87
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/qti/internal/telephony/dataconnection/QtiCdmaApnProfileTracker;->mModemApnProfileRegistrants:Landroid/os/RegistrantList;

    .line 96
    iput-object p1, p0, Lcom/qti/internal/telephony/dataconnection/QtiCdmaApnProfileTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    .line 97
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 98
    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 97
    invoke-static {v0, v1, p0, v2, v3}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getInstance(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Landroid/os/Handler;ILjava/lang/Object;)Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/qti/internal/telephony/dataconnection/QtiCdmaApnProfileTracker;->mCdmaSsm:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/qti/internal/telephony/dataconnection/QtiCdmaApnProfileTracker;->mOmhServicePriorityMap:Ljava/util/HashMap;

    .line 95
    return-void
.end method

.method private addServiceTypeToUnSpecified()V
    .locals 8

    .prologue
    .line 327
    sget-object v5, Lcom/qti/internal/telephony/dataconnection/QtiCdmaApnProfileTracker;->mSupportedApnTypes:[Ljava/lang/String;

    const/4 v3, 0x0

    array-length v6, v5

    move v4, v3

    :goto_0
    if-ge v4, v6, :cond_2

    aget-object v2, v5, v4

    .line 328
    .local v2, "apntype":Ljava/lang/String;
    iget-object v3, p0, Lcom/qti/internal/telephony/dataconnection/QtiCdmaApnProfileTracker;->mOmhServicePriorityMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 333
    iget-object v3, p0, Lcom/qti/internal/telephony/dataconnection/QtiCdmaApnProfileTracker;->mTempOmhApnProfilesList:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "apn$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qti/internal/telephony/dataconnection/QtiApnSetting;

    .local v0, "apn":Lcom/qti/internal/telephony/dataconnection/QtiApnSetting;
    move-object v3, v0

    .line 334
    check-cast v3, Lcom/qti/internal/telephony/dataconnection/QtiApnProfileOmh;

    invoke-virtual {v3}, Lcom/qti/internal/telephony/dataconnection/QtiApnProfileOmh;->getApnProfileTypeModem()Lcom/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;

    move-result-object v3

    .line 335
    sget-object v7, Lcom/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;->PROFILE_TYPE_UNSPECIFIED:Lcom/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;

    .line 334
    if-ne v3, v7, :cond_0

    .line 336
    check-cast v0, Lcom/qti/internal/telephony/dataconnection/QtiApnProfileOmh;

    .end local v0    # "apn":Lcom/qti/internal/telephony/dataconnection/QtiApnSetting;
    invoke-static {v2}, Lcom/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;->getApnProfileTypeModem(Ljava/lang/String;)Lcom/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/qti/internal/telephony/dataconnection/QtiApnProfileOmh;->addServiceType(Lcom/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;)V

    .line 338
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "OMH: Service Type added to UNSPECIFIED is : "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 339
    invoke-static {v2}, Lcom/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;->getApnProfileTypeModem(Ljava/lang/String;)Lcom/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;

    move-result-object v7

    .line 338
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/qti/internal/telephony/dataconnection/QtiCdmaApnProfileTracker;->log(Ljava/lang/String;)V

    .line 327
    .end local v1    # "apn$iterator":Ljava/util/Iterator;
    :cond_1
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_0

    .line 326
    .end local v2    # "apntype":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private getDuplicateProfile(Lcom/qti/internal/telephony/dataconnection/QtiApnSetting;)Lcom/qti/internal/telephony/dataconnection/QtiApnProfileOmh;
    .locals 4
    .param p1, "apn"    # Lcom/qti/internal/telephony/dataconnection/QtiApnSetting;

    .prologue
    .line 293
    iget-object v2, p0, Lcom/qti/internal/telephony/dataconnection/QtiCdmaApnProfileTracker;->mTempOmhApnProfilesList:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "dataProfile$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qti/internal/telephony/dataconnection/QtiApnSetting;

    .local v0, "dataProfile":Lcom/qti/internal/telephony/dataconnection/QtiApnSetting;
    move-object v2, p1

    .line 294
    check-cast v2, Lcom/qti/internal/telephony/dataconnection/QtiApnProfileOmh;

    invoke-virtual {v2}, Lcom/qti/internal/telephony/dataconnection/QtiApnProfileOmh;->getProfileId()I

    move-result v3

    move-object v2, v0

    .line 295
    check-cast v2, Lcom/qti/internal/telephony/dataconnection/QtiApnProfileOmh;

    invoke-virtual {v2}, Lcom/qti/internal/telephony/dataconnection/QtiApnProfileOmh;->getProfileId()I

    move-result v2

    .line 294
    if-ne v3, v2, :cond_0

    .line 296
    check-cast v0, Lcom/qti/internal/telephony/dataconnection/QtiApnProfileOmh;

    .end local v0    # "dataProfile":Lcom/qti/internal/telephony/dataconnection/QtiApnSetting;
    return-object v0

    .line 299
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method private omhListGetArbitratedPriority(Ljava/util/ArrayList;Ljava/lang/String;)I
    .locals 5
    .param p2, "serviceType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/qti/internal/telephony/dataconnection/QtiApnSetting;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 354
    .local p1, "dataProfileListModem":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qti/internal/telephony/dataconnection/QtiApnSetting;>;"
    const/4 v2, 0x0

    .line 356
    .local v2, "profile":Lcom/qti/internal/telephony/dataconnection/QtiApnSetting;
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local v2    # "profile":Lcom/qti/internal/telephony/dataconnection/QtiApnSetting;
    .local v1, "apn$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qti/internal/telephony/dataconnection/QtiApnSetting;

    .local v0, "apn":Lcom/qti/internal/telephony/dataconnection/QtiApnSetting;
    move-object v3, v0

    .line 357
    check-cast v3, Lcom/qti/internal/telephony/dataconnection/QtiApnProfileOmh;

    invoke-virtual {v3}, Lcom/qti/internal/telephony/dataconnection/QtiApnProfileOmh;->isValidPriority()Z

    move-result v3

    if-nez v3, :cond_1

    .line 358
    const-string/jumbo v3, "[OMH] Invalid priority... skipping"

    invoke-virtual {p0, v3}, Lcom/qti/internal/telephony/dataconnection/QtiCdmaApnProfileTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 362
    :cond_1
    if-nez v2, :cond_2

    .line 363
    move-object v2, v0

    .local v2, "profile":Lcom/qti/internal/telephony/dataconnection/QtiApnSetting;
    goto :goto_0

    .line 365
    .end local v2    # "profile":Lcom/qti/internal/telephony/dataconnection/QtiApnSetting;
    :cond_2
    const-string/jumbo v3, "supl"

    if-ne p2, v3, :cond_3

    move-object v3, v0

    .line 367
    check-cast v3, Lcom/qti/internal/telephony/dataconnection/QtiApnProfileOmh;

    move-object v4, v2

    check-cast v4, Lcom/qti/internal/telephony/dataconnection/QtiApnProfileOmh;

    invoke-virtual {v4}, Lcom/qti/internal/telephony/dataconnection/QtiApnProfileOmh;->getPriority()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/qti/internal/telephony/dataconnection/QtiApnProfileOmh;->isPriorityLower(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 368
    move-object v2, v0

    .restart local v2    # "profile":Lcom/qti/internal/telephony/dataconnection/QtiApnSetting;
    goto :goto_0

    .end local v2    # "profile":Lcom/qti/internal/telephony/dataconnection/QtiApnSetting;
    :cond_3
    move-object v3, v0

    .line 371
    check-cast v3, Lcom/qti/internal/telephony/dataconnection/QtiApnProfileOmh;

    move-object v4, v2

    check-cast v4, Lcom/qti/internal/telephony/dataconnection/QtiApnProfileOmh;

    invoke-virtual {v4}, Lcom/qti/internal/telephony/dataconnection/QtiApnProfileOmh;->getPriority()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/qti/internal/telephony/dataconnection/QtiApnProfileOmh;->isPriorityHigher(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 372
    move-object v2, v0

    .restart local v2    # "profile":Lcom/qti/internal/telephony/dataconnection/QtiApnSetting;
    goto :goto_0

    .line 376
    .end local v0    # "apn":Lcom/qti/internal/telephony/dataconnection/QtiApnSetting;
    .end local v2    # "profile":Lcom/qti/internal/telephony/dataconnection/QtiApnSetting;
    :cond_4
    check-cast v2, Lcom/qti/internal/telephony/dataconnection/QtiApnProfileOmh;

    invoke-virtual {v2}, Lcom/qti/internal/telephony/dataconnection/QtiApnProfileOmh;->getPriority()I

    move-result v3

    return v3
.end method

.method private onGetDataCallProfileDone(Landroid/os/AsyncResult;I)V
    .locals 8
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "context"    # I

    .prologue
    .line 215
    iget v6, p0, Lcom/qti/internal/telephony/dataconnection/QtiCdmaApnProfileTracker;->mOmhReadProfileContext:I

    if-eq p2, v6, :cond_0

    .line 217
    return-void

    .line 220
    :cond_0
    iget-object v6, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_1

    .line 221
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "OMH: Exception in onGetDataCallProfileDone:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/qti/internal/telephony/dataconnection/QtiCdmaApnProfileTracker;->log(Ljava/lang/String;)V

    .line 222
    iget v6, p0, Lcom/qti/internal/telephony/dataconnection/QtiCdmaApnProfileTracker;->mOmhReadProfileCount:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/qti/internal/telephony/dataconnection/QtiCdmaApnProfileTracker;->mOmhReadProfileCount:I

    .line 223
    return-void

    .line 228
    :cond_1
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    .line 230
    .local v2, "dataProfileListModem":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qti/internal/telephony/dataconnection/QtiApnSetting;>;"
    iget-object v3, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Lcom/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;

    .line 232
    .local v3, "modemProfile":Lcom/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;
    iget v6, p0, Lcom/qti/internal/telephony/dataconnection/QtiCdmaApnProfileTracker;->mOmhReadProfileCount:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/qti/internal/telephony/dataconnection/QtiCdmaApnProfileTracker;->mOmhReadProfileCount:I

    .line 234
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_3

    .line 238
    invoke-virtual {v3}, Lcom/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;->getDataServiceType()Ljava/lang/String;

    move-result-object v5

    .line 240
    .local v5, "serviceType":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "OMH: # profiles returned from modem:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 241
    const-string/jumbo v7, " for "

    .line 240
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/qti/internal/telephony/dataconnection/QtiCdmaApnProfileTracker;->log(Ljava/lang/String;)V

    .line 243
    iget-object v6, p0, Lcom/qti/internal/telephony/dataconnection/QtiCdmaApnProfileTracker;->mOmhServicePriorityMap:Ljava/util/HashMap;

    .line 244
    invoke-direct {p0, v2, v5}, Lcom/qti/internal/telephony/dataconnection/QtiCdmaApnProfileTracker;->omhListGetArbitratedPriority(Ljava/util/ArrayList;Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 243
    invoke-virtual {v6, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "apn$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qti/internal/telephony/dataconnection/QtiApnSetting;

    .local v0, "apn":Lcom/qti/internal/telephony/dataconnection/QtiApnSetting;
    move-object v6, v0

    .line 249
    check-cast v6, Lcom/qti/internal/telephony/dataconnection/QtiApnProfileOmh;

    invoke-virtual {v6, v3}, Lcom/qti/internal/telephony/dataconnection/QtiApnProfileOmh;->setApnProfileTypeModem(Lcom/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;)V

    .line 255
    invoke-direct {p0, v0}, Lcom/qti/internal/telephony/dataconnection/QtiCdmaApnProfileTracker;->getDuplicateProfile(Lcom/qti/internal/telephony/dataconnection/QtiApnSetting;)Lcom/qti/internal/telephony/dataconnection/QtiApnProfileOmh;

    move-result-object v4

    .line 256
    .local v4, "omhDuplicateDp":Lcom/qti/internal/telephony/dataconnection/QtiApnProfileOmh;
    if-nez v4, :cond_2

    .line 257
    iget-object v6, p0, Lcom/qti/internal/telephony/dataconnection/QtiCdmaApnProfileTracker;->mTempOmhApnProfilesList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    check-cast v0, Lcom/qti/internal/telephony/dataconnection/QtiApnProfileOmh;

    .end local v0    # "apn":Lcom/qti/internal/telephony/dataconnection/QtiApnSetting;
    invoke-static {v5}, Lcom/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;->getApnProfileTypeModem(Ljava/lang/String;)Lcom/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/qti/internal/telephony/dataconnection/QtiApnProfileOmh;->addServiceType(Lcom/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;)V

    goto :goto_0

    .line 267
    .restart local v0    # "apn":Lcom/qti/internal/telephony/dataconnection/QtiApnSetting;
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "OMH: Duplicate Profile "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/qti/internal/telephony/dataconnection/QtiCdmaApnProfileTracker;->log(Ljava/lang/String;)V

    .line 268
    invoke-static {v5}, Lcom/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;->getApnProfileTypeModem(Ljava/lang/String;)Lcom/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/qti/internal/telephony/dataconnection/QtiApnProfileOmh;->addServiceType(Lcom/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;)V

    goto :goto_0

    .line 275
    .end local v0    # "apn":Lcom/qti/internal/telephony/dataconnection/QtiApnSetting;
    .end local v1    # "apn$iterator":Ljava/util/Iterator;
    .end local v4    # "omhDuplicateDp":Lcom/qti/internal/telephony/dataconnection/QtiApnProfileOmh;
    .end local v5    # "serviceType":Ljava/lang/String;
    :cond_3
    iget v6, p0, Lcom/qti/internal/telephony/dataconnection/QtiCdmaApnProfileTracker;->mOmhReadProfileCount:I

    if-nez v6, :cond_4

    .line 276
    const-string/jumbo v6, "OMH: Modem omh profile read complete."

    invoke-virtual {p0, v6}, Lcom/qti/internal/telephony/dataconnection/QtiCdmaApnProfileTracker;->log(Ljava/lang/String;)V

    .line 277
    invoke-direct {p0}, Lcom/qti/internal/telephony/dataconnection/QtiCdmaApnProfileTracker;->addServiceTypeToUnSpecified()V

    .line 278
    iget-object v6, p0, Lcom/qti/internal/telephony/dataconnection/QtiCdmaApnProfileTracker;->mApnProfilesList:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/qti/internal/telephony/dataconnection/QtiCdmaApnProfileTracker;->mTempOmhApnProfilesList:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 279
    iget-object v6, p0, Lcom/qti/internal/telephony/dataconnection/QtiCdmaApnProfileTracker;->mApnProfilesList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_4

    .line 280
    const-string/jumbo v6, "OMH: Found some OMH profiles."

    invoke-virtual {p0, v6}, Lcom/qti/internal/telephony/dataconnection/QtiCdmaApnProfileTracker;->log(Ljava/lang/String;)V

    .line 281
    iget-object v6, p0, Lcom/qti/internal/telephony/dataconnection/QtiCdmaApnProfileTracker;->mModemApnProfileRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v6}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 285
    :cond_4
    return-void
.end method

.method private onReadApnProfilesFromModem()V
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 178
    const-string/jumbo v3, "OMH: onReadApnProfilesFromModem()"

    invoke-virtual {p0, v3}, Lcom/qti/internal/telephony/dataconnection/QtiCdmaApnProfileTracker;->log(Ljava/lang/String;)V

    .line 179
    iget v3, p0, Lcom/qti/internal/telephony/dataconnection/QtiCdmaApnProfileTracker;->mOmhReadProfileContext:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/qti/internal/telephony/dataconnection/QtiCdmaApnProfileTracker;->mOmhReadProfileContext:I

    .line 181
    iput v4, p0, Lcom/qti/internal/telephony/dataconnection/QtiCdmaApnProfileTracker;->mOmhReadProfileCount:I

    .line 183
    iget-object v3, p0, Lcom/qti/internal/telephony/dataconnection/QtiCdmaApnProfileTracker;->mTempOmhApnProfilesList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 184
    iget-object v3, p0, Lcom/qti/internal/telephony/dataconnection/QtiCdmaApnProfileTracker;->mOmhServicePriorityMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 187
    invoke-static {}, Lcom/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;->values()[Lcom/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;

    move-result-object v5

    array-length v6, v5

    move v3, v4

    :goto_0
    if-ge v3, v6, :cond_1

    aget-object v1, v5, v3

    .line 188
    .local v1, "p":Lcom/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "OMH: Reading profiles for:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lcom/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;->getid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/qti/internal/telephony/dataconnection/QtiCdmaApnProfileTracker;->log(Ljava/lang/String;)V

    .line 189
    iget v7, p0, Lcom/qti/internal/telephony/dataconnection/QtiCdmaApnProfileTracker;->mOmhReadProfileCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/qti/internal/telephony/dataconnection/QtiCdmaApnProfileTracker;->mOmhReadProfileCount:I

    .line 192
    iget-object v7, p0, Lcom/qti/internal/telephony/dataconnection/QtiCdmaApnProfileTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/qti/internal/telephony/QtiRilInterface;->getInstance(Landroid/content/Context;)Lcom/qti/internal/telephony/QtiRilInterface;

    move-result-object v2

    .line 193
    .local v2, "qtiRilInterface":Lcom/qti/internal/telephony/QtiRilInterface;
    invoke-virtual {v2}, Lcom/qti/internal/telephony/QtiRilInterface;->isServiceReady()Z

    move-result v7

    if-nez v7, :cond_0

    .line 194
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Oem hook service is not ready yet "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/qti/internal/telephony/dataconnection/QtiCdmaApnProfileTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/qti/internal/telephony/dataconnection/QtiCdmaApnProfileTracker;->log(Ljava/lang/String;)V

    .line 195
    return-void

    .line 199
    :cond_0
    iget v7, p0, Lcom/qti/internal/telephony/dataconnection/QtiCdmaApnProfileTracker;->mOmhReadProfileContext:I

    .line 198
    const/4 v8, 0x1

    invoke-virtual {p0, v8, v7, v4, v1}, Lcom/qti/internal/telephony/dataconnection/QtiCdmaApnProfileTracker;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 203
    .local v0, "callbackMsg":Landroid/os/Message;
    invoke-virtual {v1}, Lcom/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;->getid()I

    move-result v7

    .line 205
    iget-object v8, p0, Lcom/qti/internal/telephony/dataconnection/QtiCdmaApnProfileTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneId()I

    move-result v8

    .line 203
    invoke-virtual {v2, v7, v0, v8}, Lcom/qti/internal/telephony/QtiRilInterface;->getOmhCallProfile(ILandroid/os/Message;I)V

    .line 187
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 177
    .end local v0    # "callbackMsg":Landroid/os/Message;
    .end local v1    # "p":Lcom/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;
    .end local v2    # "qtiRilInterface":Lcom/qti/internal/telephony/QtiRilInterface;
    :cond_1
    return-void
.end method

.method private parseTypes(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p1, "types"    # Ljava/lang/String;

    .prologue
    .line 121
    if-eqz p1, :cond_0

    const-string/jumbo v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 122
    :cond_0
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    .line 123
    .local v0, "result":[Ljava/lang/String;
    const-string/jumbo v1, "*"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 127
    :goto_0
    return-object v0

    .line 125
    .end local v0    # "result":[Ljava/lang/String;
    :cond_1
    const-string/jumbo v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "result":[Ljava/lang/String;
    goto :goto_0
.end method

.method private readApnProfilesFromModem()V
    .locals 1

    .prologue
    .line 171
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/qti/internal/telephony/dataconnection/QtiCdmaApnProfileTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qti/internal/telephony/dataconnection/QtiCdmaApnProfileTracker;->sendMessage(Landroid/os/Message;)Z

    .line 170
    return-void
.end method


# virtual methods
.method public clearActiveApnProfile()V
    .locals 1

    .prologue
    .line 380
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qti/internal/telephony/dataconnection/QtiCdmaApnProfileTracker;->mActiveApn:Lcom/qti/internal/telephony/dataconnection/QtiApnSetting;

    .line 379
    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 131
    const-string/jumbo v0, "QtiCdmaApnProfileTracker"

    const-string/jumbo v1, "QtiCdmaApnProfileTracker finalized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    return-void
.end method

.method public getApnProfile(Ljava/lang/String;)Lcom/qti/internal/telephony/dataconnection/QtiApnSetting;
    .locals 5
    .param p1, "serviceType"    # Ljava/lang/String;

    .prologue
    .line 303
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getApnProfile: serviceType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/qti/internal/telephony/dataconnection/QtiCdmaApnProfileTracker;->log(Ljava/lang/String;)V

    .line 304
    const/4 v2, 0x0

    .line 307
    .local v2, "profile":Lcom/qti/internal/telephony/dataconnection/QtiApnSetting;
    iget-object v3, p0, Lcom/qti/internal/telephony/dataconnection/QtiCdmaApnProfileTracker;->mApnProfilesList:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "apn$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qti/internal/telephony/dataconnection/QtiApnSetting;

    .line 308
    .local v0, "apn":Lcom/qti/internal/telephony/dataconnection/QtiApnSetting;
    invoke-virtual {v0, p1}, Lcom/qti/internal/telephony/dataconnection/QtiApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 309
    move-object v2, v0

    .line 314
    .end local v0    # "apn":Lcom/qti/internal/telephony/dataconnection/QtiApnSetting;
    .end local v2    # "profile":Lcom/qti/internal/telephony/dataconnection/QtiApnSetting;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getApnProfile: return profile="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/qti/internal/telephony/dataconnection/QtiCdmaApnProfileTracker;->log(Ljava/lang/String;)V

    .line 315
    return-object v2
.end method

.method public getOmhApnProfilesList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/qti/internal/telephony/dataconnection/QtiApnSetting;",
            ">;"
        }
    .end annotation

    .prologue
    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getOmhApnProfilesList:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qti/internal/telephony/dataconnection/QtiCdmaApnProfileTracker;->mApnProfilesList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qti/internal/telephony/dataconnection/QtiCdmaApnProfileTracker;->log(Ljava/lang/String;)V

    .line 320
    iget-object v0, p0, Lcom/qti/internal/telephony/dataconnection/QtiCdmaApnProfileTracker;->mApnProfilesList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 145
    iget-object v0, p0, Lcom/qti/internal/telephony/dataconnection/QtiCdmaApnProfileTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIsTheCurrentActivePhone:Z

    if-nez v0, :cond_0

    .line 146
    const-string/jumbo v0, "QtiCdmaApnProfileTracker"

    const-string/jumbo v1, "Ignore CDMA msgs since CDMA phone is inactive"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    return-void

    .line 150
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 143
    :goto_0
    return-void

    .line 152
    :pswitch_0
    invoke-virtual {p0}, Lcom/qti/internal/telephony/dataconnection/QtiCdmaApnProfileTracker;->loadProfiles()V

    goto :goto_0

    .line 155
    :pswitch_1
    invoke-direct {p0}, Lcom/qti/internal/telephony/dataconnection/QtiCdmaApnProfileTracker;->onReadApnProfilesFromModem()V

    goto :goto_0

    .line 159
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, v1}, Lcom/qti/internal/telephony/dataconnection/QtiCdmaApnProfileTracker;->onGetDataCallProfileDone(Landroid/os/AsyncResult;I)V

    goto :goto_0

    .line 150
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public isApnTypeActive(Ljava/lang/String;)Z
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 384
    iget-object v0, p0, Lcom/qti/internal/telephony/dataconnection/QtiCdmaApnProfileTracker;->mActiveApn:Lcom/qti/internal/telephony/dataconnection/QtiApnSetting;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qti/internal/telephony/dataconnection/QtiCdmaApnProfileTracker;->mActiveApn:Lcom/qti/internal/telephony/dataconnection/QtiApnSetting;

    invoke-virtual {v0, p1}, Lcom/qti/internal/telephony/dataconnection/QtiApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isApnTypeAvailable(Ljava/lang/String;)Z
    .locals 6
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 388
    sget-object v3, Lcom/qti/internal/telephony/dataconnection/QtiCdmaApnProfileTracker;->mSupportedApnTypes:[Ljava/lang/String;

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v0, v3, v1

    .line 389
    .local v0, "s":Ljava/lang/String;
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 390
    const/4 v1, 0x1

    return v1

    .line 388
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 393
    .end local v0    # "s":Ljava/lang/String;
    :cond_1
    return v2
.end method

.method loadProfiles()V
    .locals 1

    .prologue
    .line 107
    const-string/jumbo v0, "loadProfiles..."

    invoke-virtual {p0, v0}, Lcom/qti/internal/telephony/dataconnection/QtiCdmaApnProfileTracker;->log(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/qti/internal/telephony/dataconnection/QtiCdmaApnProfileTracker;->mApnProfilesList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 110
    invoke-direct {p0}, Lcom/qti/internal/telephony/dataconnection/QtiCdmaApnProfileTracker;->readApnProfilesFromModem()V

    .line 106
    return-void
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 397
    const-string/jumbo v0, "QtiCdmaApnProfileTracker"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 401
    const-string/jumbo v0, "QtiCdmaApnProfileTracker"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    return-void
.end method

.method public registerForModemProfileReady(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 135
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 136
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/qti/internal/telephony/dataconnection/QtiCdmaApnProfileTracker;->mModemApnProfileRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 134
    return-void
.end method

.method public unregisterForModemProfileReady(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/qti/internal/telephony/dataconnection/QtiCdmaApnProfileTracker;->mModemApnProfileRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 139
    return-void
.end method

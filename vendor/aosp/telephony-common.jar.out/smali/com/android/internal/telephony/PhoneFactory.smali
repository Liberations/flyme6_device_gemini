.class public Lcom/android/internal/telephony/PhoneFactory;
.super Ljava/lang/Object;
.source "PhoneFactory.java"


# static fields
.field static final DBG:Z = false

.field static final LOG_TAG:Ljava/lang/String; = "PhoneFactory"

.field static final SOCKET_OPEN_MAX_RETRY:I = 0x3

.field static final SOCKET_OPEN_RETRY_MILLIS:I = 0x7d0

.field private static mProxyController:Lcom/android/internal/telephony/ProxyController;

.field private static mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

.field private static sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

.field private static sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

.field private static sContext:Landroid/content/Context;

.field private static final sLocalLogs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/LocalLog;",
            ">;"
        }
    .end annotation
.end field

.field static final sLockProxyPhones:Ljava/lang/Object;

.field private static sMadeDefaults:Z

.field private static sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

.field private static sProxyPhone:Lcom/android/internal/telephony/PhoneProxy;

.field private static sProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

.field private static sSubInfoRecordUpdater:Lcom/android/internal/telephony/SubscriptionInfoUpdater;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/PhoneFactory;->sLockProxyPhones:Ljava/lang/Object;

    .line 66
    sput-object v1, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    .line 67
    sput-object v1, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhone:Lcom/android/internal/telephony/PhoneProxy;

    .line 69
    sput-object v1, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    .line 74
    sput-object v1, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    .line 75
    sput-object v1, Lcom/android/internal/telephony/PhoneFactory;->sSubInfoRecordUpdater:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    .line 77
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/PhoneFactory;->sLocalLogs:Ljava/util/HashMap;

    .line 56
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addLocalLog(Ljava/lang/String;I)V
    .locals 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "size"    # I

    .prologue
    .line 492
    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sLocalLogs:Ljava/util/HashMap;

    monitor-enter v1

    .line 493
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sLocalLogs:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 494
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " already present"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 492
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 496
    :cond_0
    :try_start_1
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sLocalLogs:Ljava/util/HashMap;

    new-instance v2, Landroid/util/LocalLog;

    invoke-direct {v2, p1}, Landroid/util/LocalLog;-><init>(I)V

    invoke-virtual {v0, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 491
    return-void
.end method

.method public static calculatePreferredNetworkType(Landroid/content/Context;I)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneSubId"    # I

    .prologue
    .line 348
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v1

    .line 349
    .local v1, "phoneId":I
    sget v2, Lcom/android/internal/telephony/RILConstants;->PREFERRED_NETWORK_MODE:I

    .line 351
    .local v2, "phoneIdNetworkType":I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 352
    const-string/jumbo v5, "preferred_network_mode"

    .line 351
    invoke-static {v4, v5, v1}, Landroid/telephony/TelephonyManager;->getIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 356
    :goto_0
    move v0, v2

    .line 357
    .local v0, "networkType":I
    const-string/jumbo v4, "PhoneFactory"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "calculatePreferredNetworkType: phoneId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 358
    const-string/jumbo v6, " phoneIdNetworkType = "

    .line 357
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/internal/telephony/SubscriptionController;->isActiveSubId(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 361
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 362
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "preferred_network_mode"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 361
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 365
    if-eq v0, v2, :cond_0

    .line 366
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 367
    const-string/jumbo v5, "preferred_network_mode"

    .line 366
    invoke-static {v4, v5, v1, v0}, Landroid/telephony/TelephonyManager;->putIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 374
    :cond_0
    :goto_1
    const-string/jumbo v4, "PhoneFactory"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "calculatePreferredNetworkType: phoneSubId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 375
    const-string/jumbo v6, " networkType = "

    .line 374
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    return v0

    .line 353
    .end local v0    # "networkType":I
    :catch_0
    move-exception v3

    .line 354
    .local v3, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    const-string/jumbo v4, "PhoneFactory"

    const-string/jumbo v5, "Settings Exception Reading Valuefor phoneID"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 371
    .end local v3    # "snfe":Landroid/provider/Settings$SettingNotFoundException;
    .restart local v0    # "networkType":I
    :cond_1
    const-string/jumbo v4, "PhoneFactory"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "calculatePreferredNetworkType: phoneSubId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 372
    const-string/jumbo v6, " is not a active SubId"

    .line 371
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 12
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .prologue
    .line 519
    const-string/jumbo v8, "PhoneFactory:"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 520
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v7

    check-cast v7, [Lcom/android/internal/telephony/PhoneProxy;

    .line 521
    .local v7, "phones":[Lcom/android/internal/telephony/PhoneProxy;
    const/4 v1, -0x1

    .line 522
    .local v1, "i":I
    const/4 v8, 0x0

    array-length v10, v7

    move v9, v8

    :goto_0
    if-ge v9, v10, :cond_0

    aget-object v6, v7, v9

    .line 524
    .local v6, "phoneProxy":Lcom/android/internal/telephony/PhoneProxy;
    add-int/lit8 v1, v1, 0x1

    .line 527
    :try_start_0
    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/PhoneBase;

    .line 528
    .local v5, "phoneBase":Lcom/android/internal/telephony/PhoneBase;
    invoke-virtual {v5, p0, p1, p2}, Lcom/android/internal/telephony/PhoneBase;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 534
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 535
    const-string/jumbo v8, "++++++++++++++++++++++++++++++++"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 538
    :try_start_1
    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneProxy;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/uicc/IccCardProxy;

    invoke-virtual {v8, p0, p1, p2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 542
    :goto_1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 543
    const-string/jumbo v8, "++++++++++++++++++++++++++++++++"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 522
    .end local v5    # "phoneBase":Lcom/android/internal/telephony/PhoneBase;
    :goto_2
    add-int/lit8 v8, v9, 0x1

    move v9, v8

    goto :goto_0

    .line 529
    :catch_0
    move-exception v0

    .line 530
    .local v0, "e":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Telephony DebugService: Could not get Phone["

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v11, "] e="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 539
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v5    # "phoneBase":Lcom/android/internal/telephony/PhoneBase;
    :catch_1
    move-exception v0

    .line 540
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 547
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v5    # "phoneBase":Lcom/android/internal/telephony/PhoneBase;
    .end local v6    # "phoneProxy":Lcom/android/internal/telephony/PhoneProxy;
    :cond_0
    :try_start_2
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DctController;->getInstance()Lcom/android/internal/telephony/dataconnection/DctController;

    move-result-object v8

    invoke-virtual {v8, p0, p1, p2}, Lcom/android/internal/telephony/dataconnection/DctController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 553
    :goto_3
    :try_start_3
    sget-object v8, Lcom/android/internal/telephony/PhoneFactory;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v8, p0, p1, p2}, Lcom/android/internal/telephony/uicc/UiccController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 557
    :goto_4
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 558
    const-string/jumbo v8, "++++++++++++++++++++++++++++++++"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 561
    :try_start_4
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v8

    invoke-virtual {v8, p0, p1, p2}, Lcom/android/internal/telephony/SubscriptionController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 565
    :goto_5
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 566
    const-string/jumbo v8, "++++++++++++++++++++++++++++++++"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 569
    :try_start_5
    sget-object v8, Lcom/android/internal/telephony/PhoneFactory;->sSubInfoRecordUpdater:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    invoke-virtual {v8, p0, p1, p2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 573
    :goto_6
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 575
    const-string/jumbo v8, "++++++++++++++++++++++++++++++++"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 576
    sget-object v9, Lcom/android/internal/telephony/PhoneFactory;->sLocalLogs:Ljava/util/HashMap;

    monitor-enter v9

    .line 577
    :try_start_6
    new-instance v2, Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v8, "  "

    invoke-direct {v2, p1, v8}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 578
    .local v2, "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    sget-object v8, Lcom/android/internal/telephony/PhoneFactory;->sLocalLogs:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "key$iterator":Ljava/util/Iterator;
    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 579
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 580
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 581
    sget-object v8, Lcom/android/internal/telephony/PhoneFactory;->sLocalLogs:Ljava/util/HashMap;

    invoke-virtual {v8, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/LocalLog;

    invoke-virtual {v8, p0, v2, p2}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 582
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_7

    .line 576
    .end local v2    # "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "key$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8

    .line 548
    :catch_2
    move-exception v0

    .line 549
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 554
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v0

    .line 555
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 562
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v0

    .line 563
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 570
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v0

    .line 571
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 584
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v4    # "key$iterator":Ljava/util/Iterator;
    :cond_1
    :try_start_7
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->flush()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit v9

    .line 518
    return-void
.end method

.method public static getCdmaPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 6
    .param p0, "phoneId"    # I

    .prologue
    .line 234
    sget-object v2, Lcom/android/internal/telephony/PhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    monitor-enter v2

    .line 235
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/TelephonyPluginDelegate;->getInstance()Lcom/android/internal/telephony/TelephonyPluginDelegate;

    move-result-object v1

    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    .line 236
    sget-object v4, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v4, v4, p0

    sget-object v5, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    .line 235
    invoke-virtual {v1, v3, v4, v5, p0}, Lcom/android/internal/telephony/TelephonyPluginDelegate;->makeCDMALTEPhone(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)Lcom/android/internal/telephony/PhoneBase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    monitor-exit v2

    .line 238
    return-object v0

    .line 234
    .end local v0    # "phone":Lcom/android/internal/telephony/Phone;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static getDataSubscription()J
    .locals 4

    .prologue
    .line 448
    const/4 v1, -0x1

    .line 451
    .local v1, "subId":I
    :try_start_0
    sget-object v2, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 452
    const-string/jumbo v3, "multi_sim_data_call"

    .line 451
    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 457
    :goto_0
    int-to-long v2, v1

    return-wide v2

    .line 453
    :catch_0
    move-exception v0

    .line 454
    .local v0, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    const-string/jumbo v2, "PhoneFactory"

    const-string/jumbo v3, "Settings Exception Reading Dual Sim Data Call Values"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getDefaultPhone()Lcom/android/internal/telephony/Phone;
    .locals 3

    .prologue
    .line 258
    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sLockProxyPhones:Ljava/lang/Object;

    monitor-enter v1

    .line 259
    :try_start_0
    sget-boolean v0, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    if-nez v0, :cond_0

    .line 260
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Default phones haven\'t been made yet!"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 262
    :cond_0
    :try_start_1
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhone:Lcom/android/internal/telephony/PhoneProxy;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0
.end method

.method public static getDefaultSubscription()I
    .locals 1

    .prologue
    .line 381
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultSubId()I

    move-result v0

    return v0
.end method

.method public static getGsmPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 6
    .param p0, "phoneId"    # I

    .prologue
    .line 242
    sget-object v2, Lcom/android/internal/telephony/PhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    monitor-enter v2

    .line 243
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/TelephonyPluginDelegate;->getInstance()Lcom/android/internal/telephony/TelephonyPluginDelegate;

    move-result-object v1

    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    .line 244
    sget-object v4, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v4, v4, p0

    sget-object v5, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    .line 243
    invoke-virtual {v1, v3, v4, v5, p0}, Lcom/android/internal/telephony/TelephonyPluginDelegate;->makeGSMPhone(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)Lcom/android/internal/telephony/PhoneBase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    monitor-exit v2

    .line 245
    return-object v0

    .line 242
    .end local v0    # "phone":Lcom/android/internal/telephony/Phone;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static getPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 5
    .param p0, "phoneId"    # I

    .prologue
    .line 268
    const-string/jumbo v0, ""

    .line 270
    .local v0, "dbgInfo":Ljava/lang/String;
    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sLockProxyPhones:Ljava/lang/Object;

    monitor-enter v3

    .line 271
    :try_start_0
    sget-boolean v2, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    if-nez v2, :cond_0

    .line 272
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "Default phones haven\'t been made yet!"

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 274
    :cond_0
    const v2, 0x7fffffff

    if-ne p0, v2, :cond_1

    .line 276
    :try_start_1
    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhone:Lcom/android/internal/telephony/PhoneProxy;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v3

    .line 287
    return-object v1

    .line 279
    :cond_1
    if-ltz p0, :cond_2

    .line 280
    :try_start_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    if-ge p0, v2, :cond_2

    .line 281
    sget-object v2, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v1, v2, p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    goto :goto_0

    .end local v1    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_2
    const/4 v1, 0x0

    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    goto :goto_0
.end method

.method public static getPhones()[Lcom/android/internal/telephony/Phone;
    .locals 3

    .prologue
    .line 292
    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sLockProxyPhones:Ljava/lang/Object;

    monitor-enter v1

    .line 293
    :try_start_0
    sget-boolean v0, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    if-nez v0, :cond_0

    .line 294
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Default phones haven\'t been made yet!"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 296
    :cond_0
    :try_start_1
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0
.end method

.method public static getSMSSubscription()I
    .locals 4

    .prologue
    .line 462
    const/4 v1, -0x1

    .line 464
    .local v1, "subId":I
    :try_start_0
    sget-object v2, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 465
    const-string/jumbo v3, "multi_sim_sms"

    .line 464
    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 470
    :goto_0
    return v1

    .line 466
    :catch_0
    move-exception v0

    .line 467
    .local v0, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    const-string/jumbo v2, "PhoneFactory"

    const-string/jumbo v3, "Settings Exception Reading Dual Sim SMS Values"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getSubscriptionInfoUpdater()Lcom/android/internal/telephony/SubscriptionInfoUpdater;
    .locals 1

    .prologue
    .line 589
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sSubInfoRecordUpdater:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    return-object v0
.end method

.method public static getVoiceSubscription()I
    .locals 4

    .prologue
    .line 386
    const/4 v1, -0x1

    .line 389
    .local v1, "subId":I
    :try_start_0
    sget-object v2, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 390
    const-string/jumbo v3, "multi_sim_voice_call"

    .line 389
    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 395
    :goto_0
    return v1

    .line 391
    :catch_0
    move-exception v0

    .line 392
    .local v0, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    const-string/jumbo v2, "PhoneFactory"

    const-string/jumbo v3, "Settings Exception Reading Dual Sim Voice Call Values"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static instantiateCustomRIL(Ljava/lang/String;Landroid/content/Context;IILjava/lang/Integer;)Ljava/lang/Object;
    .locals 9
    .param p0, "sRILClassname"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "networkMode"    # I
    .param p3, "cdmaSubscription"    # I
    .param p4, "instanceId"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "II",
            "Ljava/lang/Integer;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 252
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "com.android.internal.telephony."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 253
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-array v2, v8, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v5

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v6

    const-class v3, Ljava/lang/Integer;

    aput-object v3, v2, v7

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 254
    .local v1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    new-array v2, v8, [Ljava/lang/Object;

    aput-object p1, v2, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object p4, v2, v7

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public static isPromptEnabled()Z
    .locals 6

    .prologue
    .line 400
    const/4 v0, 0x0

    .line 401
    .local v0, "prompt":Z
    const/4 v2, 0x0

    .line 403
    .local v2, "value":I
    :try_start_0
    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 404
    const-string/jumbo v4, "multi_sim_voice_prompt"

    .line 403
    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 408
    :goto_0
    if-nez v2, :cond_0

    const/4 v0, 0x0

    .line 409
    :goto_1
    const-string/jumbo v3, "PhoneFactory"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Prompt option:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    return v0

    .line 405
    :catch_0
    move-exception v1

    .line 406
    .local v1, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    const-string/jumbo v3, "PhoneFactory"

    const-string/jumbo v4, "Settings Exception Reading Dual Sim Voice Prompt Values"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 408
    .end local v1    # "snfe":Landroid/provider/Settings$SettingNotFoundException;
    :cond_0
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public static isSMSPromptEnabled()Z
    .locals 6

    .prologue
    .line 424
    const/4 v0, 0x0

    .line 425
    .local v0, "prompt":Z
    const/4 v2, 0x0

    .line 427
    .local v2, "value":I
    :try_start_0
    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 428
    const-string/jumbo v4, "multi_sim_sms_prompt"

    .line 427
    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 432
    :goto_0
    if-nez v2, :cond_0

    const/4 v0, 0x0

    .line 433
    :goto_1
    const-string/jumbo v3, "PhoneFactory"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "SMS Prompt option:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    return v0

    .line 429
    :catch_0
    move-exception v1

    .line 430
    .local v1, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    const-string/jumbo v3, "PhoneFactory"

    const-string/jumbo v4, "Settings Exception Reading Dual Sim SMS Prompt Values"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 432
    .end local v1    # "snfe":Landroid/provider/Settings$SettingNotFoundException;
    :cond_0
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public static localLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "log"    # Ljava/lang/String;

    .prologue
    .line 510
    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sLocalLogs:Ljava/util/HashMap;

    monitor-enter v1

    .line 511
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sLocalLogs:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 512
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 510
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 514
    :cond_0
    :try_start_1
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sLocalLogs:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/LocalLog;

    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 509
    return-void
.end method

.method public static makeDefaultPhone(Landroid/content/Context;)V
    .locals 24
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 94
    sget-object v21, Lcom/android/internal/telephony/PhoneFactory;->sLockProxyPhones:Ljava/lang/Object;

    monitor-enter v21

    .line 95
    :try_start_0
    sget-boolean v20, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    if-nez v20, :cond_7

    .line 96
    sput-object p0, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    .line 99
    invoke-static {}, Lcom/android/internal/telephony/TelephonyDevController;->create()Lcom/android/internal/telephony/TelephonyDevController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    const/16 v17, 0x0

    .line 103
    .local v17, "retryCount":I
    :goto_0
    const/4 v9, 0x0

    .line 104
    .local v9, "hasException":Z
    add-int/lit8 v17, v17, 0x1

    .line 109
    :try_start_1
    new-instance v20, Landroid/net/LocalServerSocket;

    const-string/jumbo v22, "com.android.internal.telephony"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/net/LocalServerSocket;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 114
    :goto_1
    if-nez v9, :cond_0

    .line 126
    :try_start_2
    new-instance v20, Lcom/android/internal/telephony/DefaultPhoneNotifier;

    invoke-direct/range {v20 .. v20}, Lcom/android/internal/telephony/DefaultPhoneNotifier;-><init>()V

    sput-object v20, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    .line 128
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getDefault(Landroid/content/Context;)I

    move-result v4

    .line 129
    .local v4, "cdmaSubscription":I
    const-string/jumbo v20, "PhoneFactory"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Cdma Subscription set to "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v13

    .line 135
    .local v13, "numPhones":I
    new-array v12, v13, [I

    .line 136
    .local v12, "networkModes":[I
    new-array v0, v13, [Lcom/android/internal/telephony/PhoneProxy;

    move-object/from16 v20, v0

    sput-object v20, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    .line 137
    new-array v0, v13, [Lcom/android/internal/telephony/RIL;

    move-object/from16 v20, v0

    sput-object v20, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    .line 138
    const-string/jumbo v20, "ro.telephony.ril_class"

    const-string/jumbo v22, "RIL"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    .line 139
    .local v18, "sRILClassname":Ljava/lang/String;
    const-string/jumbo v20, "PhoneFactory"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "RILClassname is "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 141
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2
    if-ge v10, v13, :cond_2

    .line 146
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    .line 147
    const-string/jumbo v22, "preferred_network_mode"

    .line 145
    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1, v10}, Landroid/telephony/TelephonyManager;->getIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v20

    aput v20, v12, v10
    :try_end_3
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 153
    :goto_3
    :try_start_4
    const-string/jumbo v20, "PhoneFactory"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Network Mode set to "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    aget v23, v12, v10

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 156
    :try_start_5
    sget-object v22, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    .line 157
    aget v20, v12, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    .line 156
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move/from16 v2, v20

    move-object/from16 v3, v23

    invoke-static {v0, v1, v2, v4, v3}, Lcom/android/internal/telephony/PhoneFactory;->instantiateCustomRIL(Ljava/lang/String;Landroid/content/Context;IILjava/lang/Integer;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/internal/telephony/CommandsInterface;

    aput-object v20, v22, v10
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 141
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 110
    .end local v4    # "cdmaSubscription":I
    .end local v10    # "i":I
    .end local v12    # "networkModes":[I
    .end local v13    # "numPhones":I
    .end local v18    # "sRILClassname":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 111
    .local v8, "ex":Ljava/io/IOException;
    const/4 v9, 0x1

    goto/16 :goto_1

    .line 116
    .end local v8    # "ex":Ljava/io/IOException;
    :cond_0
    const/16 v20, 0x3

    move/from16 v0, v17

    move/from16 v1, v20

    if-le v0, v1, :cond_1

    .line 117
    :try_start_6
    new-instance v20, Ljava/lang/RuntimeException;

    const-string/jumbo v22, "PhoneFactory probably already running"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v20
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 94
    .end local v9    # "hasException":Z
    .end local v17    # "retryCount":I
    :catchall_0
    move-exception v20

    monitor-exit v21

    throw v20

    .line 120
    .restart local v9    # "hasException":Z
    .restart local v17    # "retryCount":I
    :cond_1
    const-wide/16 v22, 0x7d0

    :try_start_7
    invoke-static/range {v22 .. v23}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    .line 121
    :catch_1
    move-exception v7

    .local v7, "er":Ljava/lang/InterruptedException;
    goto/16 :goto_0

    .line 148
    .end local v7    # "er":Ljava/lang/InterruptedException;
    .restart local v4    # "cdmaSubscription":I
    .restart local v10    # "i":I
    .restart local v12    # "networkModes":[I
    .restart local v13    # "numPhones":I
    .restart local v18    # "sRILClassname":Ljava/lang/String;
    :catch_2
    move-exception v19

    .line 149
    .local v19, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    :try_start_8
    const-string/jumbo v20, "PhoneFactory"

    const-string/jumbo v22, "Settings Exception Reading Value At Index for Settings.Global.PREFERRED_NETWORK_MODE"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    sget v20, Lcom/android/internal/telephony/RILConstants;->PREFERRED_NETWORK_MODE:I

    aput v20, v12, v10

    goto :goto_3

    .line 164
    .end local v19    # "snfe":Landroid/provider/Settings$SettingNotFoundException;
    .local v6, "e":Ljava/lang/Exception;
    :goto_4
    const-string/jumbo v20, "PhoneFactory"

    const-string/jumbo v22, "Unable to construct custom RIL class"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 165
    const-wide/16 v22, 0x2710

    :try_start_9
    invoke-static/range {v22 .. v23}, Ljava/lang/Thread;->sleep(J)V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_4

    :catch_3
    move-exception v11

    .local v11, "ie":Ljava/lang/InterruptedException;
    goto :goto_4

    .line 169
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v11    # "ie":Ljava/lang/InterruptedException;
    :cond_2
    :try_start_a
    const-string/jumbo v20, "PhoneFactory"

    const-string/jumbo v22, "Creating SubscriptionController"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-static {}, Lcom/android/internal/telephony/TelephonyPluginDelegate;->getInstance()Lcom/android/internal/telephony/TelephonyPluginDelegate;

    move-result-object v20

    .line 171
    sget-object v22, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    .line 170
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/TelephonyPluginDelegate;->initSubscriptionController(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)V

    .line 175
    sget-object v20, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->make(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v20

    sput-object v20, Lcom/android/internal/telephony/PhoneFactory;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 177
    const/4 v10, 0x0

    :goto_5
    if-ge v10, v13, :cond_5

    .line 178
    const/4 v15, 0x0

    .line 179
    .local v15, "phone":Lcom/android/internal/telephony/PhoneBase;
    aget v20, v12, v10

    invoke-static/range {v20 .. v20}, Landroid/telephony/TelephonyManager;->getPhoneType(I)I

    move-result v16

    .line 180
    .local v16, "phoneType":I
    const/16 v20, 0x1

    move/from16 v0, v16

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    .line 181
    invoke-static {}, Lcom/android/internal/telephony/TelephonyPluginDelegate;->getInstance()Lcom/android/internal/telephony/TelephonyPluginDelegate;

    move-result-object v20

    .line 182
    sget-object v22, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v22, v22, v10

    sget-object v23, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    .line 181
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3, v10}, Lcom/android/internal/telephony/TelephonyPluginDelegate;->makeGSMPhone(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v15

    .line 187
    .end local v15    # "phone":Lcom/android/internal/telephony/PhoneBase;
    :cond_3
    :goto_6
    const-string/jumbo v20, "PhoneFactory"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Creating Phone with type = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, " sub = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    sget-object v20, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    invoke-static {}, Lcom/android/internal/telephony/TelephonyPluginDelegate;->getInstance()Lcom/android/internal/telephony/TelephonyPluginDelegate;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Lcom/android/internal/telephony/TelephonyPluginDelegate;->makePhoneProxy(Lcom/android/internal/telephony/PhoneBase;)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v22

    aput-object v22, v20, v10

    .line 177
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 183
    .restart local v15    # "phone":Lcom/android/internal/telephony/PhoneBase;
    :cond_4
    const/16 v20, 0x2

    move/from16 v0, v16

    move/from16 v1, v20

    if-ne v0, v1, :cond_3

    .line 184
    invoke-static {}, Lcom/android/internal/telephony/TelephonyPluginDelegate;->getInstance()Lcom/android/internal/telephony/TelephonyPluginDelegate;

    move-result-object v20

    .line 185
    sget-object v22, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v22, v22, v10

    sget-object v23, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    .line 184
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3, v10}, Lcom/android/internal/telephony/TelephonyPluginDelegate;->makeCDMALTEPhone(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v15

    .local v15, "phone":Lcom/android/internal/telephony/PhoneBase;
    goto :goto_6

    .line 191
    .end local v15    # "phone":Lcom/android/internal/telephony/PhoneBase;
    .end local v16    # "phoneType":I
    :cond_5
    sget-object v20, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    .line 192
    sget-object v22, Lcom/android/internal/telephony/PhoneFactory;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    sget-object v23, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    .line 191
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/telephony/ProxyController;->getInstance(Landroid/content/Context;[Lcom/android/internal/telephony/PhoneProxy;Lcom/android/internal/telephony/uicc/UiccController;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/ProxyController;

    move-result-object v20

    sput-object v20, Lcom/android/internal/telephony/PhoneFactory;->mProxyController:Lcom/android/internal/telephony/ProxyController;

    .line 197
    sget-object v20, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    const/16 v22, 0x0

    aget-object v20, v20, v22

    sput-object v20, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhone:Lcom/android/internal/telephony/PhoneProxy;

    .line 198
    sget-object v20, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    const/16 v22, 0x0

    aget-object v20, v20, v22

    sput-object v20, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    .line 203
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v5

    .line 204
    .local v5, "componentName":Landroid/content/ComponentName;
    const-string/jumbo v14, "NONE"

    .line 205
    .local v14, "packageName":Ljava/lang/String;
    if-eqz v5, :cond_6

    .line 206
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v14

    .line 208
    :cond_6
    const-string/jumbo v20, "PhoneFactory"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "defaultSmsApplication: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/SmsApplication;->initSmsPackageMonitor(Landroid/content/Context;)V

    .line 213
    const/16 v20, 0x1

    sput-boolean v20, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    .line 215
    const-string/jumbo v20, "PhoneFactory"

    const-string/jumbo v22, "Creating SubInfoRecordUpdater "

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-static {}, Lcom/android/internal/telephony/TelephonyPluginDelegate;->getInstance()Lcom/android/internal/telephony/TelephonyPluginDelegate;

    move-result-object v20

    .line 217
    sget-object v22, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    sget-object v23, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    .line 216
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/TelephonyPluginDelegate;->makeSubscriptionInfoUpdater(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    move-result-object v20

    sput-object v20, Lcom/android/internal/telephony/PhoneFactory;->sSubInfoRecordUpdater:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    .line 218
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v20

    sget-object v22, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->updatePhonesAvailability([Lcom/android/internal/telephony/PhoneProxy;)V

    .line 220
    invoke-static {}, Lcom/android/internal/telephony/TelephonyPluginDelegate;->getInstance()Lcom/android/internal/telephony/TelephonyPluginDelegate;

    move-result-object v20

    .line 221
    sget-object v22, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    sget-object v23, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    .line 220
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/TelephonyPluginDelegate;->initExtTelephonyClasses(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;[Lcom/android/internal/telephony/CommandsInterface;)V

    .line 225
    const/4 v10, 0x0

    :goto_7
    if-ge v10, v13, :cond_7

    .line 226
    sget-object v20, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v20, v20, v10

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/PhoneProxy;->startMonitoringImsService()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 225
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    .end local v4    # "cdmaSubscription":I
    .end local v5    # "componentName":Landroid/content/ComponentName;
    .end local v9    # "hasException":Z
    .end local v10    # "i":I
    .end local v12    # "networkModes":[I
    .end local v13    # "numPhones":I
    .end local v14    # "packageName":Ljava/lang/String;
    .end local v17    # "retryCount":I
    .end local v18    # "sRILClassname":Ljava/lang/String;
    :cond_7
    monitor-exit v21

    .line 93
    return-void

    .line 158
    .restart local v4    # "cdmaSubscription":I
    .restart local v9    # "hasException":Z
    .restart local v10    # "i":I
    .restart local v12    # "networkModes":[I
    .restart local v13    # "numPhones":I
    .restart local v17    # "retryCount":I
    .restart local v18    # "sRILClassname":Ljava/lang/String;
    :catch_4
    move-exception v6

    .restart local v6    # "e":Ljava/lang/Exception;
    goto/16 :goto_4
.end method

.method public static makeDefaultPhones(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 86
    invoke-static {p0}, Lcom/android/internal/telephony/PhoneFactory;->makeDefaultPhone(Landroid/content/Context;)V

    .line 85
    return-void
.end method

.method public static makeImsPhone(Lcom/android/internal/telephony/PhoneNotifier;Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/imsphone/ImsPhone;
    .locals 1
    .param p0, "phoneNotifier"    # Lcom/android/internal/telephony/PhoneNotifier;
    .param p1, "defaultPhone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 478
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneFactory;->makePhone(Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/imsphone/ImsPhone;

    move-result-object v0

    return-object v0
.end method

.method public static makeSipPhone(Ljava/lang/String;)Lcom/android/internal/telephony/sip/SipPhone;
    .locals 2
    .param p0, "sipUri"    # Ljava/lang/String;

    .prologue
    .line 306
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-static {p0, v0, v1}, Lcom/android/internal/telephony/sip/SipPhoneFactory;->makePhone(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;)Lcom/android/internal/telephony/sip/SipPhone;

    move-result-object v0

    return-object v0
.end method

.method public static setDefaultSubscription(I)V
    .locals 6
    .param p0, "subId"    # I

    .prologue
    const/4 v5, 0x0

    .line 314
    const-string/jumbo v3, "persist.radio.default.sub"

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v2

    .line 317
    .local v2, "phoneId":I
    sget-object v4, Lcom/android/internal/telephony/PhoneFactory;->sLockProxyPhones:Ljava/lang/Object;

    monitor-enter v4

    .line 319
    if-ltz v2, :cond_0

    :try_start_0
    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 320
    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v3, v3, v2

    sput-object v3, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhone:Lcom/android/internal/telephony/PhoneProxy;

    .line 321
    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v3, v3, v2

    sput-object v3, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    .line 322
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v4

    .line 327
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v0

    .line 329
    .local v0, "defaultMccMnc":Ljava/lang/String;
    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    invoke-static {v3, v0, v5}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 332
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.ACTION_DEFAULT_SUBSCRIPTION_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 333
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v3, 0x20000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 334
    invoke-static {v1, v2}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 335
    const-string/jumbo v3, "PhoneFactory"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setDefaultSubscription : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 336
    const-string/jumbo v5, " Broadcasting Default Subscription Changed..."

    .line 335
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 313
    return-void

    .line 317
    .end local v0    # "defaultMccMnc":Ljava/lang/String;
    .end local v1    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static setPromptEnabled(Z)V
    .locals 4
    .param p0, "enabled"    # Z

    .prologue
    .line 416
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 417
    .local v0, "value":I
    :goto_0
    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 418
    const-string/jumbo v2, "multi_sim_voice_prompt"

    .line 417
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 419
    const-string/jumbo v1, "PhoneFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setVoicePromptOption to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    return-void

    .line 416
    .end local v0    # "value":I
    :cond_0
    const/4 v0, 0x1

    .restart local v0    # "value":I
    goto :goto_0
.end method

.method public static setSMSPromptEnabled(Z)V
    .locals 4
    .param p0, "enabled"    # Z

    .prologue
    .line 440
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 441
    .local v0, "value":I
    :goto_0
    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 442
    const-string/jumbo v2, "multi_sim_sms_prompt"

    .line 441
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 443
    const-string/jumbo v1, "PhoneFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setSMSPromptOption to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    return-void

    .line 440
    .end local v0    # "value":I
    :cond_0
    const/4 v0, 0x1

    .restart local v0    # "value":I
    goto :goto_0
.end method

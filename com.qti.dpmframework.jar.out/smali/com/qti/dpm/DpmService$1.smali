.class Lcom/qti/dpm/DpmService$1;
.super Landroid/content/BroadcastReceiver;
.source "DpmService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/dpm/DpmService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qti/dpm/DpmService;


# direct methods
.method constructor <init>(Lcom/qti/dpm/DpmService;)V
    .locals 0

    .prologue
    .line 463
    iput-object p1, p0, Lcom/qti/dpm/DpmService$1;->this$0:Lcom/qti/dpm/DpmService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 33
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 465
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 466
    .local v3, "action":Ljava/lang/String;
    const-string v30, "SERVICE"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "DPM received action "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    # invokes: Lcom/qti/dpm/DpmService;->logd(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v30 .. v31}, Lcom/qti/dpm/DpmService;->access$300(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    const-string v30, "android.intent.action.SCREEN_ON"

    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_1

    .line 469
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qti/dpm/DpmService$1;->this$0:Lcom/qti/dpm/DpmService;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qti/dpm/DpmService$1;->this$0:Lcom/qti/dpm/DpmService;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-boolean v0, v0, Lcom/qti/dpm/DpmService;->DPM_EVENT_STATE_ON:Z

    move/from16 v31, v0

    # invokes: Lcom/qti/dpm/DpmService;->sendScreenState(Z)V
    invoke-static/range {v30 .. v31}, Lcom/qti/dpm/DpmService;->access$400(Lcom/qti/dpm/DpmService;Z)V

    .line 470
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qti/dpm/DpmService$1;->this$0:Lcom/qti/dpm/DpmService;

    move-object/from16 v30, v0

    const/16 v31, 0x1

    # setter for: Lcom/qti/dpm/DpmService;->mScreenOn:Z
    invoke-static/range {v30 .. v31}, Lcom/qti/dpm/DpmService;->access$502(Lcom/qti/dpm/DpmService;Z)Z

    .line 584
    :cond_0
    :goto_0
    return-void

    .line 471
    :cond_1
    const-string v30, "android.intent.action.SCREEN_OFF"

    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_2

    .line 472
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qti/dpm/DpmService$1;->this$0:Lcom/qti/dpm/DpmService;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qti/dpm/DpmService$1;->this$0:Lcom/qti/dpm/DpmService;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-boolean v0, v0, Lcom/qti/dpm/DpmService;->DPM_EVENT_STATE_OFF:Z

    move/from16 v31, v0

    # invokes: Lcom/qti/dpm/DpmService;->sendScreenState(Z)V
    invoke-static/range {v30 .. v31}, Lcom/qti/dpm/DpmService;->access$400(Lcom/qti/dpm/DpmService;Z)V

    .line 473
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qti/dpm/DpmService$1;->this$0:Lcom/qti/dpm/DpmService;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    # setter for: Lcom/qti/dpm/DpmService;->mScreenOn:Z
    invoke-static/range {v30 .. v31}, Lcom/qti/dpm/DpmService;->access$502(Lcom/qti/dpm/DpmService;Z)Z

    goto :goto_0

    .line 474
    :cond_2
    const-string v30, "android.net.wifi.STATE_CHANGE"

    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_3

    const-string v30, "android.net.wifi.WIFI_STATE_CHANGED"

    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_5

    .line 476
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qti/dpm/DpmService$1;->this$0:Lcom/qti/dpm/DpmService;

    move-object/from16 v30, v0

    # getter for: Lcom/qti/dpm/DpmService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static/range {v30 .. v30}, Lcom/qti/dpm/DpmService;->access$600(Lcom/qti/dpm/DpmService;)Landroid/net/wifi/WifiManager;

    move-result-object v30

    if-eqz v30, :cond_4

    .line 477
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qti/dpm/DpmService$1;->this$0:Lcom/qti/dpm/DpmService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, p2

    # invokes: Lcom/qti/dpm/DpmService;->setWlanInfo(Landroid/content/Intent;)V
    invoke-static {v0, v1}, Lcom/qti/dpm/DpmService;->access$700(Lcom/qti/dpm/DpmService;Landroid/content/Intent;)V

    .line 478
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qti/dpm/DpmService$1;->this$0:Lcom/qti/dpm/DpmService;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/qti/dpm/DpmService;->getWlanInfo()Lcom/qti/dpm/DpmService$DpmWifiInfo;

    move-result-object v9

    .line 479
    .local v9, "dpmWifiInfo":Lcom/qti/dpm/DpmService$DpmWifiInfo;
    if-eqz v9, :cond_0

    .line 480
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qti/dpm/DpmService$1;->this$0:Lcom/qti/dpm/DpmService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    # invokes: Lcom/qti/dpm/DpmService;->sendWifiStatus(Lcom/qti/dpm/DpmService$DpmWifiInfo;)V
    invoke-static {v0, v9}, Lcom/qti/dpm/DpmService;->access$800(Lcom/qti/dpm/DpmService;Lcom/qti/dpm/DpmService$DpmWifiInfo;)V

    goto :goto_0

    .line 483
    .end local v9    # "dpmWifiInfo":Lcom/qti/dpm/DpmService$DpmWifiInfo;
    :cond_4
    const-string v30, "SERVICE"

    const-string v31, "DPM received action Network State Changed, null WifiManager"

    # invokes: Lcom/qti/dpm/DpmService;->logw(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v30 .. v31}, Lcom/qti/dpm/DpmService;->access$900(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 485
    :cond_5
    const-string v30, "android.intent.action.ANY_DATA_STATE"

    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_8

    .line 486
    const-string v30, "apnType"

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 487
    .local v5, "apnType":Ljava/lang/String;
    if-nez v5, :cond_6

    .line 488
    const-string v30, "SERVICE"

    const-string v31, "DPM error getting apnType"

    # invokes: Lcom/qti/dpm/DpmService;->loge(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v30 .. v31}, Lcom/qti/dpm/DpmService;->access$1000(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 492
    :cond_6
    const-string v30, "default"

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_7

    .line 493
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qti/dpm/DpmService$1;->this$0:Lcom/qti/dpm/DpmService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, p2

    # invokes: Lcom/qti/dpm/DpmService;->setWwanInfo(Landroid/content/Intent;)V
    invoke-static {v0, v1}, Lcom/qti/dpm/DpmService;->access$1100(Lcom/qti/dpm/DpmService;Landroid/content/Intent;)V

    .line 494
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qti/dpm/DpmService$1;->this$0:Lcom/qti/dpm/DpmService;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/qti/dpm/DpmService;->getWwanInfo()Lcom/qti/dpm/DpmService$DpmWwanInfo;

    move-result-object v10

    .line 495
    .local v10, "dpmWwanInfo":Lcom/qti/dpm/DpmService$DpmWwanInfo;
    if-eqz v10, :cond_0

    .line 496
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qti/dpm/DpmService$1;->this$0:Lcom/qti/dpm/DpmService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    # invokes: Lcom/qti/dpm/DpmService;->sendWwanStatus(Lcom/qti/dpm/DpmService$DpmWwanInfo;)V
    invoke-static {v0, v10}, Lcom/qti/dpm/DpmService;->access$1200(Lcom/qti/dpm/DpmService;Lcom/qti/dpm/DpmService$DpmWwanInfo;)V

    goto/16 :goto_0

    .line 499
    .end local v10    # "dpmWwanInfo":Lcom/qti/dpm/DpmService$DpmWwanInfo;
    :cond_7
    const-string v30, "SERVICE"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "DPM currently does not support this apnType="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    # invokes: Lcom/qti/dpm/DpmService;->dlogd(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v30 .. v31}, Lcom/qti/dpm/DpmService;->access$1300(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 501
    .end local v5    # "apnType":Ljava/lang/String;
    :cond_8
    const-string v30, "android.net.conn.TETHER_STATE_CHANGED"

    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_15

    .line 502
    const-string v30, "availableArray"

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 504
    .local v7, "available":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v30, "activeArray"

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 506
    .local v4, "active":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v30, "erroredArray"

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    .line 509
    .local v11, "errored":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v30, "SERVICE"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "available = "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " active = "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " errored = "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    # invokes: Lcom/qti/dpm/DpmService;->logd(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v30 .. v31}, Lcom/qti/dpm/DpmService;->access$300(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qti/dpm/DpmService$1;->this$0:Lcom/qti/dpm/DpmService;

    move-object/from16 v30, v0

    # getter for: Lcom/qti/dpm/DpmService;->mContext:Landroid/content/Context;
    invoke-static/range {v30 .. v30}, Lcom/qti/dpm/DpmService;->access$1400(Lcom/qti/dpm/DpmService;)Landroid/content/Context;

    move-result-object v30

    const-string v31, "connectivity"

    invoke-virtual/range {v30 .. v31}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/net/ConnectivityManager;

    .line 514
    .local v17, "mCm":Landroid/net/ConnectivityManager;
    invoke-virtual/range {v17 .. v17}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v19

    .line 515
    .local v19, "mWifiRegexs":[Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v18

    .line 516
    .local v18, "mUsbRegexs":[Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Landroid/net/ConnectivityManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v16

    .line 518
    .local v16, "mBluetoothRegexs":[Ljava/lang/String;
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_9
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_b

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    .local v21, "o":Ljava/lang/Object;
    move-object/from16 v27, v21

    .line 519
    check-cast v27, Ljava/lang/String;

    .line 520
    .local v27, "s":Ljava/lang/String;
    move-object/from16 v6, v19

    .local v6, "arr$":[Ljava/lang/String;
    array-length v15, v6

    .local v15, "len$":I
    const/4 v13, 0x0

    .local v13, "i$":I
    :goto_1
    if-ge v13, v15, :cond_9

    aget-object v24, v6, v13

    .line 521
    .local v24, "regex":Ljava/lang/String;
    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_a

    .line 522
    const-string v30, "SERVICE"

    const-string v31, "wifi tethered"

    # invokes: Lcom/qti/dpm/DpmService;->logd(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v30 .. v31}, Lcom/qti/dpm/DpmService;->access$300(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qti/dpm/DpmService$1;->this$0:Lcom/qti/dpm/DpmService;

    move-object/from16 v30, v0

    const/16 v31, 0x1

    # setter for: Lcom/qti/dpm/DpmService;->wifiTethered:Z
    invoke-static/range {v30 .. v31}, Lcom/qti/dpm/DpmService;->access$1502(Lcom/qti/dpm/DpmService;Z)Z

    .line 520
    :cond_a
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 528
    .end local v6    # "arr$":[Ljava/lang/String;
    .end local v13    # "i$":I
    .end local v15    # "len$":I
    .end local v21    # "o":Ljava/lang/Object;
    .end local v24    # "regex":Ljava/lang/String;
    .end local v27    # "s":Ljava/lang/String;
    :cond_b
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_c
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_e

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    .local v23, "ousb":Ljava/lang/Object;
    move-object/from16 v29, v23

    .line 529
    check-cast v29, Ljava/lang/String;

    .line 530
    .local v29, "susb":Ljava/lang/String;
    move-object/from16 v6, v18

    .restart local v6    # "arr$":[Ljava/lang/String;
    array-length v15, v6

    .restart local v15    # "len$":I
    const/4 v13, 0x0

    .restart local v13    # "i$":I
    :goto_2
    if-ge v13, v15, :cond_c

    aget-object v26, v6, v13

    .line 531
    .local v26, "regexusb":Ljava/lang/String;
    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_d

    .line 532
    const-string v30, "SERVICE"

    const-string v31, "usb tethered"

    # invokes: Lcom/qti/dpm/DpmService;->logd(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v30 .. v31}, Lcom/qti/dpm/DpmService;->access$300(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qti/dpm/DpmService$1;->this$0:Lcom/qti/dpm/DpmService;

    move-object/from16 v30, v0

    const/16 v31, 0x1

    # setter for: Lcom/qti/dpm/DpmService;->usbTethered:Z
    invoke-static/range {v30 .. v31}, Lcom/qti/dpm/DpmService;->access$1602(Lcom/qti/dpm/DpmService;Z)Z

    .line 530
    :cond_d
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 538
    .end local v6    # "arr$":[Ljava/lang/String;
    .end local v13    # "i$":I
    .end local v15    # "len$":I
    .end local v23    # "ousb":Ljava/lang/Object;
    .end local v26    # "regexusb":Ljava/lang/String;
    .end local v29    # "susb":Ljava/lang/String;
    :cond_e
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_f
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_11

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    .local v22, "obt":Ljava/lang/Object;
    move-object/from16 v28, v22

    .line 539
    check-cast v28, Ljava/lang/String;

    .line 540
    .local v28, "sbt":Ljava/lang/String;
    move-object/from16 v6, v16

    .restart local v6    # "arr$":[Ljava/lang/String;
    array-length v15, v6

    .restart local v15    # "len$":I
    const/4 v13, 0x0

    .restart local v13    # "i$":I
    :goto_3
    if-ge v13, v15, :cond_f

    aget-object v25, v6, v13

    .line 541
    .local v25, "regexbt":Ljava/lang/String;
    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_10

    .line 542
    const-string v30, "SERVICE"

    const-string v31, "bluetooth tethered"

    # invokes: Lcom/qti/dpm/DpmService;->logd(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v30 .. v31}, Lcom/qti/dpm/DpmService;->access$300(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qti/dpm/DpmService$1;->this$0:Lcom/qti/dpm/DpmService;

    move-object/from16 v30, v0

    const/16 v31, 0x1

    # setter for: Lcom/qti/dpm/DpmService;->bluetoothTethered:Z
    invoke-static/range {v30 .. v31}, Lcom/qti/dpm/DpmService;->access$1702(Lcom/qti/dpm/DpmService;Z)Z

    .line 540
    :cond_10
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 548
    .end local v6    # "arr$":[Ljava/lang/String;
    .end local v13    # "i$":I
    .end local v15    # "len$":I
    .end local v22    # "obt":Ljava/lang/Object;
    .end local v25    # "regexbt":Ljava/lang/String;
    .end local v28    # "sbt":Ljava/lang/String;
    :cond_11
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v30

    if-nez v30, :cond_12

    .line 549
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qti/dpm/DpmService$1;->this$0:Lcom/qti/dpm/DpmService;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    # setter for: Lcom/qti/dpm/DpmService;->wifiTethered:Z
    invoke-static/range {v30 .. v31}, Lcom/qti/dpm/DpmService;->access$1502(Lcom/qti/dpm/DpmService;Z)Z

    .line 550
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qti/dpm/DpmService$1;->this$0:Lcom/qti/dpm/DpmService;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    # setter for: Lcom/qti/dpm/DpmService;->usbTethered:Z
    invoke-static/range {v30 .. v31}, Lcom/qti/dpm/DpmService;->access$1602(Lcom/qti/dpm/DpmService;Z)Z

    .line 551
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qti/dpm/DpmService$1;->this$0:Lcom/qti/dpm/DpmService;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    # setter for: Lcom/qti/dpm/DpmService;->bluetoothTethered:Z
    invoke-static/range {v30 .. v31}, Lcom/qti/dpm/DpmService;->access$1702(Lcom/qti/dpm/DpmService;Z)Z

    .line 552
    const-string v30, "SERVICE"

    const-string v31, "Tethering disabled"

    # invokes: Lcom/qti/dpm/DpmService;->logd(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v30 .. v31}, Lcom/qti/dpm/DpmService;->access$300(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qti/dpm/DpmService$1;->this$0:Lcom/qti/dpm/DpmService;

    move-object/from16 v30, v0

    # getter for: Lcom/qti/dpm/DpmService;->wifiTethered:Z
    invoke-static/range {v30 .. v30}, Lcom/qti/dpm/DpmService;->access$1500(Lcom/qti/dpm/DpmService;)Z

    move-result v30

    if-nez v30, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qti/dpm/DpmService$1;->this$0:Lcom/qti/dpm/DpmService;

    move-object/from16 v30, v0

    # getter for: Lcom/qti/dpm/DpmService;->usbTethered:Z
    invoke-static/range {v30 .. v30}, Lcom/qti/dpm/DpmService;->access$1600(Lcom/qti/dpm/DpmService;)Z

    move-result v30

    if-nez v30, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qti/dpm/DpmService$1;->this$0:Lcom/qti/dpm/DpmService;

    move-object/from16 v30, v0

    # getter for: Lcom/qti/dpm/DpmService;->bluetoothTethered:Z
    invoke-static/range {v30 .. v30}, Lcom/qti/dpm/DpmService;->access$1700(Lcom/qti/dpm/DpmService;)Z

    move-result v30

    if-eqz v30, :cond_14

    .line 556
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qti/dpm/DpmService$1;->this$0:Lcom/qti/dpm/DpmService;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qti/dpm/DpmService$1;->this$0:Lcom/qti/dpm/DpmService;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-boolean v0, v0, Lcom/qti/dpm/DpmService;->DPM_EVENT_STATE_ON:Z

    move/from16 v31, v0

    # invokes: Lcom/qti/dpm/DpmService;->sendTetheringState(Z)V
    invoke-static/range {v30 .. v31}, Lcom/qti/dpm/DpmService;->access$1800(Lcom/qti/dpm/DpmService;Z)V

    goto/16 :goto_0

    .line 558
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qti/dpm/DpmService$1;->this$0:Lcom/qti/dpm/DpmService;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qti/dpm/DpmService$1;->this$0:Lcom/qti/dpm/DpmService;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-boolean v0, v0, Lcom/qti/dpm/DpmService;->DPM_EVENT_STATE_OFF:Z

    move/from16 v31, v0

    # invokes: Lcom/qti/dpm/DpmService;->sendTetheringState(Z)V
    invoke-static/range {v30 .. v31}, Lcom/qti/dpm/DpmService;->access$1800(Lcom/qti/dpm/DpmService;Z)V

    goto/16 :goto_0

    .line 561
    .end local v4    # "active":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7    # "available":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11    # "errored":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v16    # "mBluetoothRegexs":[Ljava/lang/String;
    .end local v17    # "mCm":Landroid/net/ConnectivityManager;
    .end local v18    # "mUsbRegexs":[Ljava/lang/String;
    .end local v19    # "mWifiRegexs":[Ljava/lang/String;
    :cond_15
    const-string v30, "android.net.conn.CONNECTIVITY_CHANGE_SUPL"

    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_18

    .line 563
    const-string v30, "networkInfo"

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v14

    check-cast v14, Landroid/net/NetworkInfo;

    .line 565
    .local v14, "info":Landroid/net/NetworkInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qti/dpm/DpmService$1;->this$0:Lcom/qti/dpm/DpmService;

    move-object/from16 v30, v0

    # getter for: Lcom/qti/dpm/DpmService;->mContext:Landroid/content/Context;
    invoke-static/range {v30 .. v30}, Lcom/qti/dpm/DpmService;->access$1400(Lcom/qti/dpm/DpmService;)Landroid/content/Context;

    move-result-object v30

    const-string v31, "connectivity"

    invoke-virtual/range {v30 .. v31}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/ConnectivityManager;

    .line 567
    .local v8, "connManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v14}, Landroid/net/NetworkInfo;->getType()I

    move-result v30

    move/from16 v0, v30

    invoke-virtual {v8, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v14

    .line 569
    const-string v30, "noConnectivity"

    const/16 v31, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v30

    if-nez v30, :cond_16

    invoke-virtual {v14}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v30

    if-nez v30, :cond_17

    .line 572
    :cond_16
    const/16 v20, 0x0

    .line 578
    .local v20, "networkState":Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qti/dpm/DpmService$1;->this$0:Lcom/qti/dpm/DpmService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v20

    # invokes: Lcom/qti/dpm/DpmService;->sendSuplState(Z)V
    invoke-static {v0, v1}, Lcom/qti/dpm/DpmService;->access$1900(Lcom/qti/dpm/DpmService;Z)V

    goto/16 :goto_0

    .line 576
    .end local v20    # "networkState":Z
    :cond_17
    const/16 v20, 0x1

    .restart local v20    # "networkState":Z
    goto :goto_4

    .line 582
    .end local v8    # "connManager":Landroid/net/ConnectivityManager;
    .end local v14    # "info":Landroid/net/NetworkInfo;
    .end local v20    # "networkState":Z
    :cond_18
    const-string v30, "SERVICE"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "DPM received unexpected action: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    # invokes: Lcom/qti/dpm/DpmService;->logw(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v30 .. v31}, Lcom/qti/dpm/DpmService;->access$900(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

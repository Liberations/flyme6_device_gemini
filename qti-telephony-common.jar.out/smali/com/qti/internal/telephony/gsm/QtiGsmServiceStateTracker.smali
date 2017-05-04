.class public Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;
.super Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;
.source "QtiGsmServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker$1;
    }
.end annotation


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "QtiGsmSST"


# instance fields
.field private final ACTION_RAC_CHANGED:Ljava/lang/String;

.field private mConfigResUtil:Lcom/android/internal/telephony/ConfigResourceUtil;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mQtiPlmnOverride:Lcom/qti/internal/telephony/uicc/QtiPlmnOverride;

.field private mRac:I

.field private final mRacChange:Ljava/lang/String;

.field private mRat:I

.field private final mRatInfo:Ljava/lang/String;

.field private mTac:I


# direct methods
.method static synthetic -set0(Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;I)I
    .locals 0

    iput p1, p0, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->mRac:I

    return p1
.end method

.method static synthetic -set1(Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;I)I
    .locals 0

    iput p1, p0, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->mRat:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;)V
    .locals 0

    invoke-direct {p0}, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->enableBackgroundData()V

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .locals 3
    .param p1, "phone"    # Lcom/android/internal/telephony/gsm/GSMPhone;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    .line 51
    const-string/jumbo v1, "qualcomm.intent.action.ACTION_RAC_CHANGED"

    iput-object v1, p0, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->ACTION_RAC_CHANGED:Ljava/lang/String;

    .line 52
    const-string/jumbo v1, "rat"

    iput-object v1, p0, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->mRatInfo:Ljava/lang/String;

    .line 53
    const-string/jumbo v1, "rac"

    iput-object v1, p0, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->mRacChange:Ljava/lang/String;

    .line 56
    const/4 v1, -0x1

    iput v1, p0, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->mTac:I

    .line 58
    new-instance v1, Lcom/android/internal/telephony/ConfigResourceUtil;

    invoke-direct {v1}, Lcom/android/internal/telephony/ConfigResourceUtil;-><init>()V

    iput-object v1, p0, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->mConfigResUtil:Lcom/android/internal/telephony/ConfigResourceUtil;

    .line 60
    new-instance v1, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker$1;

    invoke-direct {v1, p0}, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker$1;-><init>(Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;)V

    iput-object v1, p0, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 77
    new-instance v1, Lcom/qti/internal/telephony/uicc/QtiPlmnOverride;

    invoke-direct {v1}, Lcom/qti/internal/telephony/uicc/QtiPlmnOverride;-><init>()V

    iput-object v1, p0, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->mQtiPlmnOverride:Lcom/qti/internal/telephony/uicc/QtiPlmnOverride;

    .line 79
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 80
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "qualcomm.intent.action.ACTION_RAC_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 75
    return-void
.end method

.method private enableBackgroundData()V
    .locals 0

    .prologue
    .line 232
    return-void
.end method


# virtual methods
.method protected handlePollStateResult(ILandroid/os/AsyncResult;)V
    .locals 17
    .param p1, "what"    # I
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 91
    const/4 v6, 0x0

    .line 94
    .local v6, "handled":Z
    move-object/from16 v0, p2

    iget-object v13, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->mPollingContext:[I

    if-eq v13, v14, :cond_0

    .line 95
    return-void

    .line 97
    :cond_0
    move-object/from16 v0, p2

    iget-object v13, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v13, :cond_5

    .line 98
    const/4 v3, 0x0

    .line 100
    .local v3, "err":Lcom/android/internal/telephony/CommandException$Error;
    move-object/from16 v0, p2

    iget-object v13, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v13, v13, Lcom/android/internal/telephony/CommandException;

    if-eqz v13, :cond_1

    .line 101
    move-object/from16 v0, p2

    iget-object v13, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v13, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v13}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v3

    .line 104
    .end local v3    # "err":Lcom/android/internal/telephony/CommandException$Error;
    :cond_1
    sget-object v13, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v3, v13, :cond_2

    .line 106
    invoke-virtual/range {p0 .. p0}, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->cancelPollState()V

    .line 107
    return-void

    .line 110
    :cond_2
    sget-object v13, Lcom/android/internal/telephony/CommandException$Error;->OP_NOT_ALLOWED_BEFORE_REG_NW:Lcom/android/internal/telephony/CommandException$Error;

    if-eq v3, v13, :cond_3

    .line 111
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "RIL implementation has returned an error where it must succeed"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 112
    move-object/from16 v0, p2

    iget-object v14, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 111
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 206
    :cond_3
    :goto_0
    if-eqz v6, :cond_4

    .line 207
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->mPollingContext:[I

    const/4 v14, 0x0

    aget v15, v13, v14

    add-int/lit8 v15, v15, -0x1

    aput v15, v13, v14

    .line 208
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->mPollingContext:[I

    const/4 v14, 0x0

    aget v13, v13, v14

    if-nez v13, :cond_4

    .line 209
    invoke-virtual/range {p0 .. p0}, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->updateRoamingState()V

    .line 210
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->mEmergencyOnly:Z

    invoke-virtual {v13, v14}, Landroid/telephony/ServiceState;->setEmergencyOnly(Z)V

    .line 211
    invoke-virtual/range {p0 .. p0}, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->pollStateDone()V

    .line 88
    :cond_4
    return-void

    .line 115
    :cond_5
    packed-switch p1, :pswitch_data_0

    .line 197
    :try_start_0
    invoke-super/range {p0 .. p2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->handlePollStateResult(ILandroid/os/AsyncResult;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 201
    :catch_0
    move-exception v5

    .line 202
    .local v5, "ex":Ljava/lang/RuntimeException;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Exception while polling service state. Probably malformed RIL response."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 117
    .end local v5    # "ex":Ljava/lang/RuntimeException;
    :pswitch_0
    const/4 v6, 0x1

    .line 118
    :try_start_1
    move-object/from16 v0, p2

    iget-object v9, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v9, [Ljava/lang/String;

    .line 120
    .local v9, "states":[Ljava/lang/String;
    const/4 v12, 0x0

    .line 121
    .local v12, "type":I
    const/4 v8, 0x4

    .line 122
    .local v8, "regState":I
    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->mNewReasonDataDenied:I

    .line 123
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->mNewMaxDataCalls:I

    .line 124
    array-length v13, v9
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    if-lez v13, :cond_9

    .line 126
    const/4 v13, 0x0

    :try_start_2
    aget-object v13, v9, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 130
    array-length v13, v9

    const/4 v14, 0x4

    if-lt v13, v14, :cond_6

    const/4 v13, 0x3

    aget-object v13, v9, v13

    if-eqz v13, :cond_6

    .line 131
    const/4 v13, 0x3

    aget-object v13, v9, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 133
    :cond_6
    array-length v13, v9

    const/4 v14, 0x5

    if-lt v13, v14, :cond_7

    .line 134
    const/4 v13, 0x3

    if-ne v8, v13, :cond_7

    .line 136
    const/4 v13, 0x4

    aget-object v13, v9, v13

    .line 135
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->mNewReasonDataDenied:I

    .line 138
    :cond_7
    array-length v13, v9

    const/4 v14, 0x6

    if-lt v13, v14, :cond_8

    .line 139
    const/4 v13, 0x5

    aget-object v13, v9, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->mNewMaxDataCalls:I

    .line 142
    :cond_8
    array-length v13, v9

    const/4 v14, 0x7

    if-lt v13, v14, :cond_9

    .line 143
    const/4 v13, 0x6

    aget-object v13, v9, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 144
    .local v11, "tac":I
    const-string/jumbo v13, "QtiGsmSST"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Updated TAC:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 145
    const-string/jumbo v15, ", old TAC:"

    .line 144
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 145
    move-object/from16 v0, p0

    iget v15, v0, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->mTac:I

    .line 144
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    move-object/from16 v0, p0

    iget v13, v0, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->mTac:I

    if-eq v13, v11, :cond_9

    .line 147
    move-object/from16 v0, p0

    iput v11, v0, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->mTac:I

    .line 148
    invoke-direct/range {p0 .. p0}, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->enableBackgroundData()V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 155
    .end local v11    # "tac":I
    :cond_9
    :goto_1
    :try_start_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->regCodeToServiceState(I)I

    move-result v2

    .line 156
    .local v2, "dataRegState":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v13, v2}, Landroid/telephony/ServiceState;->setDataRegState(I)V

    .line 157
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->regCodeIsRoaming(I)Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->mDataRoaming:Z

    .line 158
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v13, v12}, Landroid/telephony/ServiceState;->setRilDataRadioTechnology(I)V

    .line 160
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "handlPollStateResultMessage: GsmSST setDataRegState="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 162
    const-string/jumbo v14, " regState="

    .line 160
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 164
    const-string/jumbo v14, " dataRadioTechnology="

    .line 160
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 151
    .end local v2    # "dataRegState":I
    :catch_1
    move-exception v4

    .line 152
    .local v4, "ex":Ljava/lang/NumberFormatException;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "error parsing GprsRegistrationState: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 170
    .end local v4    # "ex":Ljava/lang/NumberFormatException;
    .end local v8    # "regState":I
    .end local v9    # "states":[Ljava/lang/String;
    .end local v12    # "type":I
    :pswitch_1
    const/4 v6, 0x1

    .line 171
    move-object/from16 v0, p2

    iget-object v7, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, [Ljava/lang/String;

    .line 173
    .local v7, "opNames":[Ljava/lang/String;
    if-eqz v7, :cond_3

    array-length v13, v7

    const/4 v14, 0x3

    if-lt v13, v14, :cond_3

    .line 175
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual/range {p0 .. p0}, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->getPhoneId()I

    move-result v14

    invoke-virtual {v13, v14}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v13

    if-eqz v13, :cond_a

    .line 176
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual/range {p0 .. p0}, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->getPhoneId()I

    move-result v14

    invoke-virtual {v13, v14}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/internal/telephony/uicc/UiccCard;->getOperatorBrandOverride()Ljava/lang/String;

    move-result-object v1

    .line 178
    :goto_2
    if-eqz v1, :cond_b

    .line 179
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "EVENT_POLL_STATE_OPERATOR: use brandOverride="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 180
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    const/4 v14, 0x2

    aget-object v14, v7, v14

    invoke-virtual {v13, v1, v1, v14}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 177
    :cond_a
    const/4 v1, 0x0

    .local v1, "brandOverride":Ljava/lang/String;
    goto :goto_2

    .line 182
    .end local v1    # "brandOverride":Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->mQtiPlmnOverride:Lcom/qti/internal/telephony/uicc/QtiPlmnOverride;

    const/4 v14, 0x2

    aget-object v14, v7, v14

    invoke-virtual {v13, v14}, Lcom/qti/internal/telephony/uicc/QtiPlmnOverride;->containsCarrier(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 183
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->mConfigResUtil:Lcom/android/internal/telephony/ConfigResourceUtil;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v13}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v13

    .line 184
    const-string/jumbo v14, "config_plmn_name_override_enabled"

    .line 183
    invoke-static {v13, v14}, Lcom/android/internal/telephony/ConfigResourceUtil;->getBooleanValue(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v13

    .line 182
    if-eqz v13, :cond_c

    .line 185
    const/4 v10, 0x0

    .line 186
    .local v10, "strOperatorLong":Ljava/lang/String;
    const-string/jumbo v13, "EVENT_POLL_STATE_OPERATOR: use plmnOverride"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 187
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->mQtiPlmnOverride:Lcom/qti/internal/telephony/uicc/QtiPlmnOverride;

    const/4 v14, 0x2

    aget-object v14, v7, v14

    invoke-virtual {v13, v14}, Lcom/qti/internal/telephony/uicc/QtiPlmnOverride;->getPlmn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 188
    .local v10, "strOperatorLong":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    const/4 v14, 0x1

    aget-object v14, v7, v14

    const/4 v15, 0x2

    aget-object v15, v7, v15

    invoke-virtual {v13, v10, v14, v15}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 191
    .end local v10    # "strOperatorLong":Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    const/4 v14, 0x0

    aget-object v14, v7, v14

    const/4 v15, 0x1

    aget-object v15, v7, v15

    const/16 v16, 0x2

    aget-object v16, v7, v16

    invoke-virtual/range {v13 .. v16}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 115
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected pollStateDone()V
    .locals 3

    .prologue
    .line 219
    invoke-super {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollStateDone()V

    .line 220
    iget-object v1, p0, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->mNewCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v1

    .line 221
    iget-object v2, p0, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->mCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v2}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v2

    .line 220
    if-eq v1, v2, :cond_1

    const/4 v0, 0x1

    .line 222
    .local v0, "hasLacChanged":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 224
    invoke-direct {p0}, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->enableBackgroundData()V

    .line 218
    :cond_0
    return-void

    .line 220
    .end local v0    # "hasLacChanged":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "hasLacChanged":Z
    goto :goto_0
.end method

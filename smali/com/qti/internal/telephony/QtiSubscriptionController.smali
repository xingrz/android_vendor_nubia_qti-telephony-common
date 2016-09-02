.class public Lcom/qti/internal/telephony/QtiSubscriptionController;
.super Lcom/android/internal/telephony/SubscriptionController;
.source "QtiSubscriptionController.java"


# static fields
.field private static final APM_SIM_NOT_PWDN_PROPERTY:Ljava/lang/String; = "persist.radio.apm_sim_not_pwdn"

.field private static final DUMMY_SUB_ID_BASE:I = 0x7ffffffb

.field static final LOG_TAG:Ljava/lang/String; = "QtiSubscriptionController"

.field private static final NOT_PROVISIONED:I = 0x0

.field private static final PROVISIONED:I = 0x1

.field private static final SETTING_USER_PREF_DATA_SUB:Ljava/lang/String; = "user_preferred_data_sub"

.field private static sCi:[Lcom/android/internal/telephony/CommandsInterface;

.field private static sNumPhones:I


# instance fields
.field private mIsShutDownInProgress:Z

.field private mTelecomManager:Landroid/telecom/TelecomManager;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 61
    const/4 v0, 0x0

    sput-object v0, Lcom/qti/internal/telephony/QtiSubscriptionController;->sCi:[Lcom/android/internal/telephony/CommandsInterface;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 101
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;-><init>(Landroid/content/Context;)V

    .line 72
    iput-boolean v1, p0, Lcom/qti/internal/telephony/QtiSubscriptionController;->mIsShutDownInProgress:Z

    .line 102
    const-string v0, " init by Context"

    invoke-direct {p0, v0}, Lcom/qti/internal/telephony/QtiSubscriptionController;->logd(Ljava/lang/String;)V

    .line 104
    sput v1, Lcom/qti/internal/telephony/QtiSubscriptionController;->mDefaultPhoneId:I

    .line 105
    const v0, 0x7ffffffb

    sput v0, Lcom/qti/internal/telephony/QtiSubscriptionController;->mDefaultFallbackSubId:I

    .line 106
    iget-object v0, p0, Lcom/qti/internal/telephony/QtiSubscriptionController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v0

    iput-object v0, p0, Lcom/qti/internal/telephony/QtiSubscriptionController;->mTelecomManager:Landroid/telecom/TelecomManager;

    .line 107
    iget-object v0, p0, Lcom/qti/internal/telephony/QtiSubscriptionController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/qti/internal/telephony/QtiSubscriptionController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 108
    return-void
.end method

.method private clearDefaultDataSubId()V
    .registers 5

    .prologue
    .line 503
    iget-object v2, p0, Lcom/qti/internal/telephony/QtiSubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/qti/internal/telephony/QtiSubscriptionController;->getActiveSubscriptionInfoList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 506
    .local v1, "records":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[clearDefaultDataSubId] records: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/qti/internal/telephony/QtiSubscriptionController;->logdl(Ljava/lang/String;)V

    .line 507
    invoke-virtual {p0}, Lcom/qti/internal/telephony/QtiSubscriptionController;->getDefaultDataSubId()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/qti/internal/telephony/QtiSubscriptionController;->shouldDefaultBeCleared(Ljava/util/List;I)Z

    move-result v2

    if-eqz v2, :cond_52

    .line 508
    const v2, 0x7ffffffb

    sget v3, Lcom/qti/internal/telephony/QtiSubscriptionController;->mDefaultPhoneId:I

    add-int v0, v2, v3

    .line 510
    .local v0, "dummySubId":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[clearDefaultDataSubId] clear default data sub id dummySubId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/qti/internal/telephony/QtiSubscriptionController;->logdl(Ljava/lang/String;)V

    .line 511
    iget-object v2, p0, Lcom/qti/internal/telephony/QtiSubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "multi_sim_data_call"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 515
    .end local v0    # "dummySubId":I
    :cond_52
    return-void
.end method

.method private clearVoiceSubId()V
    .registers 4

    .prologue
    .line 111
    iget-object v1, p0, Lcom/qti/internal/telephony/QtiSubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/qti/internal/telephony/QtiSubscriptionController;->getActiveSubscriptionInfoList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 113
    .local v0, "records":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[clearVoiceSubId] records: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/qti/internal/telephony/QtiSubscriptionController;->logdl(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0}, Lcom/qti/internal/telephony/QtiSubscriptionController;->getDefaultVoiceSubId()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/qti/internal/telephony/QtiSubscriptionController;->shouldDefaultBeCleared(Ljava/util/List;I)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 115
    const-string v1, "[clearVoiceSubId] clear voice sub id"

    invoke-virtual {p0, v1}, Lcom/qti/internal/telephony/QtiSubscriptionController;->logdl(Ljava/lang/String;)V

    .line 116
    const v1, 0x7ffffffb

    invoke-virtual {p0, v1}, Lcom/qti/internal/telephony/QtiSubscriptionController;->setDefaultVoiceSubId(I)V

    .line 118
    :cond_35
    return-void
.end method

.method public static getInstance()Lcom/qti/internal/telephony/QtiSubscriptionController;
    .registers 2

    .prologue
    .line 93
    sget-object v0, Lcom/qti/internal/telephony/QtiSubscriptionController;->sInstance:Lcom/android/internal/telephony/SubscriptionController;

    if-nez v0, :cond_b

    .line 94
    const-string v0, "QtiSubscriptionController"

    const-string v1, "getInstance null"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_b
    sget-object v0, Lcom/qti/internal/telephony/QtiSubscriptionController;->sInstance:Lcom/android/internal/telephony/SubscriptionController;

    check-cast v0, Lcom/qti/internal/telephony/QtiSubscriptionController;

    return-object v0
.end method

.method private getPhoneIdFromDummySubId(I)I
    .registers 3
    .param p1, "subId"    # I

    .prologue
    .line 166
    const v0, 0x7ffffffb

    sub-int v0, p1, v0

    return v0
.end method

.method private getUiccProvisionStatus(I)I
    .registers 4
    .param p1, "slotId"    # I

    .prologue
    .line 393
    invoke-static {}, Lcom/qti/internal/telephony/ExtTelephonyServiceImpl;->getInstance()Lcom/qti/internal/telephony/ExtTelephonyServiceImpl;

    move-result-object v0

    .line 394
    .local v0, "extTelService":Lcom/qti/internal/telephony/ExtTelephonyServiceImpl;
    if-eqz v0, :cond_f

    .line 395
    invoke-static {}, Lcom/qti/internal/telephony/ExtTelephonyServiceImpl;->getInstance()Lcom/qti/internal/telephony/ExtTelephonyServiceImpl;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/qti/internal/telephony/ExtTelephonyServiceImpl;->getCurrentUiccCardProvisioningStatus(I)I

    move-result v1

    .line 398
    :goto_e
    return v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method private getUserPrefDataSubIdFromDB()I
    .registers 4

    .prologue
    .line 485
    iget-object v0, p0, Lcom/qti/internal/telephony/QtiSubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "user_preferred_data_sub"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private handleDataPreference(I)V
    .registers 10
    .param p1, "nextActiveSubId"    # I

    .prologue
    .line 365
    invoke-direct {p0}, Lcom/qti/internal/telephony/QtiSubscriptionController;->getUserPrefDataSubIdFromDB()I

    move-result v4

    .line 366
    .local v4, "userPrefDataSubId":I
    invoke-virtual {p0}, Lcom/qti/internal/telephony/QtiSubscriptionController;->getDefaultDataSubId()I

    move-result v0

    .line 368
    .local v0, "currentDataSubId":I
    iget-object v6, p0, Lcom/qti/internal/telephony/QtiSubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/qti/internal/telephony/QtiSubscriptionController;->getActiveSubscriptionInfoList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 370
    .local v3, "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-nez v3, :cond_15

    .line 390
    :cond_14
    :goto_14
    return-void

    .line 373
    :cond_15
    const/4 v5, 0x0

    .line 374
    .local v5, "userPrefSubValid":Z
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1a
    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    .line 375
    .local v2, "subInfo":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v6

    if-ne v6, v4, :cond_1a

    .line 376
    const/4 v5, 0x1

    goto :goto_1a

    .line 379
    .end local v2    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :cond_2e
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "havePrefSub = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " user pref subId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " current dds "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " next active subId "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/qti/internal/telephony/QtiSubscriptionController;->logd(Ljava/lang/String;)V

    .line 384
    if-eqz v5, :cond_70

    invoke-direct {p0, v4}, Lcom/qti/internal/telephony/QtiSubscriptionController;->isSubProvisioned(I)Z

    move-result v6

    if-eqz v6, :cond_70

    if-eq v0, v4, :cond_70

    .line 386
    invoke-virtual {p0, v4}, Lcom/qti/internal/telephony/QtiSubscriptionController;->setDefaultDataSubId(I)V

    goto :goto_14

    .line 387
    :cond_70
    invoke-direct {p0, v0}, Lcom/qti/internal/telephony/QtiSubscriptionController;->isSubProvisioned(I)Z

    move-result v6

    if-nez v6, :cond_14

    .line 388
    invoke-virtual {p0, p1}, Lcom/qti/internal/telephony/QtiSubscriptionController;->setDefaultDataSubId(I)V

    goto :goto_14
.end method

.method public static init(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/qti/internal/telephony/QtiSubscriptionController;
    .registers 6
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    .line 80
    const-class v1, Lcom/qti/internal/telephony/QtiSubscriptionController;

    monitor-enter v1

    .line 81
    :try_start_3
    sget-object v0, Lcom/qti/internal/telephony/QtiSubscriptionController;->sInstance:Lcom/android/internal/telephony/SubscriptionController;

    if-nez v0, :cond_20

    .line 82
    new-instance v0, Lcom/qti/internal/telephony/QtiSubscriptionController;

    invoke-direct {v0, p0}, Lcom/qti/internal/telephony/QtiSubscriptionController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/qti/internal/telephony/QtiSubscriptionController;->sInstance:Lcom/android/internal/telephony/SubscriptionController;

    .line 83
    sput-object p1, Lcom/qti/internal/telephony/QtiSubscriptionController;->sCi:[Lcom/android/internal/telephony/CommandsInterface;

    .line 84
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    sput v0, Lcom/qti/internal/telephony/QtiSubscriptionController;->sNumPhones:I

    .line 88
    :goto_1a
    sget-object v0, Lcom/qti/internal/telephony/QtiSubscriptionController;->sInstance:Lcom/android/internal/telephony/SubscriptionController;

    check-cast v0, Lcom/qti/internal/telephony/QtiSubscriptionController;

    monitor-exit v1

    return-object v0

    .line 86
    :cond_20
    const-string v0, "QtiSubscriptionController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times!  sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/qti/internal/telephony/QtiSubscriptionController;->sInstance:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a

    .line 89
    :catchall_3b
    move-exception v0

    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_3 .. :try_end_3d} :catchall_3b

    throw v0
.end method

.method private isNonSimAccountFound()Z
    .registers 6

    .prologue
    .line 448
    iget-object v3, p0, Lcom/qti/internal/telephony/QtiSubscriptionController;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v3}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .line 451
    .local v2, "phoneAccounts":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/telecom/PhoneAccountHandle;>;"
    :cond_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 452
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/PhoneAccountHandle;

    .line 453
    .local v1, "phoneAccountHandle":Landroid/telecom/PhoneAccountHandle;
    iget-object v3, p0, Lcom/qti/internal/telephony/QtiSubscriptionController;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v3, v1}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v0

    .line 454
    .local v0, "phoneAccount":Landroid/telecom/PhoneAccount;
    iget-object v3, p0, Lcom/qti/internal/telephony/QtiSubscriptionController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3, v0}, Landroid/telephony/TelephonyManager;->getSubIdForPhoneAccount(Landroid/telecom/PhoneAccount;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_a

    .line 456
    const-string v3, "Other than SIM account found. "

    invoke-direct {p0, v3}, Lcom/qti/internal/telephony/QtiSubscriptionController;->logi(Ljava/lang/String;)V

    .line 457
    const/4 v3, 0x1

    .line 461
    .end local v0    # "phoneAccount":Landroid/telecom/PhoneAccount;
    .end local v1    # "phoneAccountHandle":Landroid/telecom/PhoneAccountHandle;
    :goto_2b
    return v3

    .line 460
    :cond_2c
    const-string v3, "Other than SIM account not found "

    invoke-direct {p0, v3}, Lcom/qti/internal/telephony/QtiSubscriptionController;->logi(Ljava/lang/String;)V

    .line 461
    const/4 v3, 0x0

    goto :goto_2b
.end method

.method private isRadioAvailableOnAllSubs()Z
    .registers 3

    .prologue
    .line 245
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget v1, Lcom/qti/internal/telephony/QtiSubscriptionController;->sNumPhones:I

    if-ge v0, v1, :cond_1c

    .line 246
    sget-object v1, Lcom/qti/internal/telephony/QtiSubscriptionController;->sCi:[Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v1, :cond_19

    sget-object v1, Lcom/qti/internal/telephony/QtiSubscriptionController;->sCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_19

    const/4 v1, 0x0

    .line 248
    :goto_18
    return v1

    .line 245
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 248
    :cond_1c
    const/4 v1, 0x1

    goto :goto_18
.end method

.method private isSubProvisioned(I)Z
    .registers 6
    .param p1, "subId"    # I

    .prologue
    .line 405
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isUsableSubIdValue(I)Z

    move-result v0

    .line 407
    .local v0, "isSubIdUsable":Z
    if-eqz v0, :cond_36

    .line 408
    invoke-virtual {p0, p1}, Lcom/qti/internal/telephony/QtiSubscriptionController;->getSlotId(I)I

    move-result v1

    .line 409
    .local v1, "slotId":I
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSlotId(I)Z

    move-result v2

    if-eqz v2, :cond_15

    const v2, 0x7ffffffb

    if-lt p1, v2, :cond_37

    .line 410
    :cond_15
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Invalid slotId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " or subId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qti/internal/telephony/QtiSubscriptionController;->loge(Ljava/lang/String;)V

    .line 411
    const/4 v0, 0x0

    .line 419
    .end local v1    # "slotId":I
    :cond_36
    :goto_36
    return v0

    .line 413
    .restart local v1    # "slotId":I
    :cond_37
    invoke-direct {p0, v1}, Lcom/qti/internal/telephony/QtiSubscriptionController;->getUiccProvisionStatus(I)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3f

    .line 414
    const/4 v0, 0x0

    .line 416
    :cond_3f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSubProvisioned, state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " subId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qti/internal/telephony/QtiSubscriptionController;->loge(Ljava/lang/String;)V

    goto :goto_36
.end method

.method private isUpdateUserPrefsRequired()Z
    .registers 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 252
    const-string v4, "persist.radio.apm_sim_not_pwdn"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_3c

    move v1, v2

    .line 253
    .local v1, "isApmSimNotPwrDown":Z
    :goto_b
    iget-object v4, p0, Lcom/qti/internal/telephony/QtiSubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "airplane_mode_on"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 257
    .local v0, "isAPMOn":I
    if-ne v0, v2, :cond_3e

    if-nez v1, :cond_3e

    .line 258
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isUpdateUserPrefsRequired, isApmSimNotPwrDown = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", isAPMOn:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qti/internal/telephony/QtiSubscriptionController;->logd(Ljava/lang/String;)V

    .line 274
    :goto_3b
    return v3

    .end local v0    # "isAPMOn":I
    .end local v1    # "isApmSimNotPwrDown":Z
    :cond_3c
    move v1, v3

    .line 252
    goto :goto_b

    .line 264
    .restart local v0    # "isAPMOn":I
    .restart local v1    # "isApmSimNotPwrDown":Z
    :cond_3e
    invoke-direct {p0}, Lcom/qti/internal/telephony/QtiSubscriptionController;->isRadioAvailableOnAllSubs()Z

    move-result v4

    if-nez v4, :cond_4a

    .line 265
    const-string v2, " isUpdateUserPrefsRequired, radio not available"

    invoke-direct {p0, v2}, Lcom/qti/internal/telephony/QtiSubscriptionController;->logd(Ljava/lang/String;)V

    goto :goto_3b

    .line 270
    :cond_4a
    iget-boolean v4, p0, Lcom/qti/internal/telephony/QtiSubscriptionController;->mIsShutDownInProgress:Z

    if-eqz v4, :cond_67

    .line 271
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " mIsShutDownInProgress: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v4, p0, Lcom/qti/internal/telephony/QtiSubscriptionController;->mIsShutDownInProgress:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qti/internal/telephony/QtiSubscriptionController;->logd(Ljava/lang/String;)V

    goto :goto_3b

    :cond_67
    move v3, v2

    .line 274
    goto :goto_3b
.end method

.method private logd(Ljava/lang/String;)V
    .registers 3
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 490
    const-string v0, "QtiSubscriptionController"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .registers 3
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 498
    const-string v0, "QtiSubscriptionController"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .registers 3
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 494
    const-string v0, "QtiSubscriptionController"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    return-void
.end method

.method private subscriptionIdToPhoneAccountHandle(I)Landroid/telecom/PhoneAccountHandle;
    .registers 6
    .param p1, "subId"    # I

    .prologue
    .line 465
    iget-object v3, p0, Lcom/qti/internal/telephony/QtiSubscriptionController;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v3}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .line 468
    .local v2, "phoneAccounts":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/telecom/PhoneAccountHandle;>;"
    :cond_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 469
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/PhoneAccountHandle;

    .line 470
    .local v1, "phoneAccountHandle":Landroid/telecom/PhoneAccountHandle;
    iget-object v3, p0, Lcom/qti/internal/telephony/QtiSubscriptionController;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v3, v1}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v0

    .line 471
    .local v0, "phoneAccount":Landroid/telecom/PhoneAccount;
    iget-object v3, p0, Lcom/qti/internal/telephony/QtiSubscriptionController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3, v0}, Landroid/telephony/TelephonyManager;->getSubIdForPhoneAccount(Landroid/telecom/PhoneAccount;)I

    move-result v3

    if-ne p1, v3, :cond_a

    .line 476
    .end local v0    # "phoneAccount":Landroid/telecom/PhoneAccount;
    .end local v1    # "phoneAccountHandle":Landroid/telecom/PhoneAccountHandle;
    :goto_24
    return-object v1

    :cond_25
    const/4 v1, 0x0

    goto :goto_24
.end method


# virtual methods
.method public clearDefaultsForInactiveSubIds()V
    .registers 6

    .prologue
    .line 190
    const-string v3, "clearDefaultsForInactiveSubIds"

    invoke-virtual {p0, v3}, Lcom/qti/internal/telephony/QtiSubscriptionController;->enforceModifyPhoneState(Ljava/lang/String;)V

    .line 193
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 195
    .local v0, "identity":J
    :try_start_9
    iget-object v3, p0, Lcom/qti/internal/telephony/QtiSubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/qti/internal/telephony/QtiSubscriptionController;->getActiveSubscriptionInfoList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 197
    .local v2, "records":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[clearDefaultsForInactiveSubIds] records: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/qti/internal/telephony/QtiSubscriptionController;->logdl(Ljava/lang/String;)V

    .line 198
    invoke-virtual {p0}, Lcom/qti/internal/telephony/QtiSubscriptionController;->getDefaultDataSubId()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/qti/internal/telephony/QtiSubscriptionController;->shouldDefaultBeCleared(Ljava/util/List;I)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 199
    const-string v3, "[clearDefaultsForInactiveSubIds] clearing default data sub id"

    invoke-direct {p0, v3}, Lcom/qti/internal/telephony/QtiSubscriptionController;->logd(Ljava/lang/String;)V

    .line 200
    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Lcom/qti/internal/telephony/QtiSubscriptionController;->setDefaultDataSubId(I)V

    .line 202
    :cond_3c
    invoke-virtual {p0}, Lcom/qti/internal/telephony/QtiSubscriptionController;->getDefaultSmsSubId()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/qti/internal/telephony/QtiSubscriptionController;->shouldDefaultBeCleared(Ljava/util/List;I)Z

    move-result v3

    if-eqz v3, :cond_4f

    .line 203
    const-string v3, "[clearDefaultsForInactiveSubIds] clearing default sms sub id"

    invoke-virtual {p0, v3}, Lcom/qti/internal/telephony/QtiSubscriptionController;->logdl(Ljava/lang/String;)V

    .line 204
    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Lcom/qti/internal/telephony/QtiSubscriptionController;->setDefaultSmsSubId(I)V

    .line 206
    :cond_4f
    invoke-virtual {p0}, Lcom/qti/internal/telephony/QtiSubscriptionController;->getDefaultVoiceSubId()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/qti/internal/telephony/QtiSubscriptionController;->shouldDefaultBeCleared(Ljava/util/List;I)Z

    move-result v3

    if-eqz v3, :cond_64

    .line 207
    const-string v3, "[clearDefaultsForInactiveSubIds] clearing default voice sub id"

    invoke-virtual {p0, v3}, Lcom/qti/internal/telephony/QtiSubscriptionController;->logdl(Ljava/lang/String;)V

    .line 208
    const v3, 0x7ffffffb

    invoke-virtual {p0, v3}, Lcom/qti/internal/telephony/QtiSubscriptionController;->setDefaultVoiceSubId(I)V
    :try_end_64
    .catchall {:try_start_9 .. :try_end_64} :catchall_68

    .line 211
    :cond_64
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 213
    return-void

    .line 211
    .end local v2    # "records":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :catchall_68
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method protected getDummySubIds(I)[I
    .registers 6
    .param p1, "slotIdx"    # I

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/qti/internal/telephony/QtiSubscriptionController;->getActiveSubInfoCountMax()I

    move-result v2

    .line 173
    .local v2, "numSubs":I
    if-lez v2, :cond_14

    .line 174
    new-array v0, v2, [I

    .line 175
    .local v0, "dummyValues":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    if-ge v1, v2, :cond_15

    .line 176
    const v3, 0x7ffffffb

    add-int/2addr v3, p1

    aput v3, v0, v1

    .line 175
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 184
    .end local v0    # "dummyValues":[I
    .end local v1    # "i":I
    :cond_14
    const/4 v0, 0x0

    :cond_15
    return-object v0
.end method

.method public getPhoneId(I)I
    .registers 4
    .param p1, "subId"    # I

    .prologue
    .line 144
    const v0, 0x7fffffff

    if-ne p1, v0, :cond_1f

    .line 145
    invoke-virtual {p0}, Lcom/qti/internal/telephony/QtiSubscriptionController;->getDefaultSubId()I

    move-result p1

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[getPhoneId] asked for default subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qti/internal/telephony/QtiSubscriptionController;->logdl(Ljava/lang/String;)V

    .line 149
    :cond_1f
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 151
    const-string v0, "[getPhoneId]- invalid subId return=-1"

    invoke-virtual {p0, v0}, Lcom/qti/internal/telephony/QtiSubscriptionController;->logdl(Ljava/lang/String;)V

    .line 154
    const/4 v0, -0x1

    .line 162
    :goto_2b
    return v0

    .line 157
    :cond_2c
    const v0, 0x7ffffffb

    if-lt p1, v0, :cond_4c

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPhoneId, received dummy subId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qti/internal/telephony/QtiSubscriptionController;->logd(Ljava/lang/String;)V

    .line 159
    invoke-direct {p0, p1}, Lcom/qti/internal/telephony/QtiSubscriptionController;->getPhoneIdFromDummySubId(I)I

    move-result v0

    goto :goto_2b

    .line 162
    :cond_4c
    invoke-super {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v0

    goto :goto_2b
.end method

.method public getSlotId(I)I
    .registers 4
    .param p1, "subId"    # I

    .prologue
    .line 124
    const v0, 0x7fffffff

    if-ne p1, v0, :cond_9

    .line 125
    invoke-virtual {p0}, Lcom/qti/internal/telephony/QtiSubscriptionController;->getDefaultSubId()I

    move-result p1

    .line 127
    :cond_9
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-nez v0, :cond_16

    .line 128
    const-string v0, "[getSlotId]- subId invalid"

    invoke-direct {p0, v0}, Lcom/qti/internal/telephony/QtiSubscriptionController;->logd(Ljava/lang/String;)V

    .line 129
    const/4 v0, -0x1

    .line 136
    :goto_15
    return v0

    .line 132
    :cond_16
    const v0, 0x7ffffffb

    if-lt p1, v0, :cond_36

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPhoneId, received dummy subId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qti/internal/telephony/QtiSubscriptionController;->logd(Ljava/lang/String;)V

    .line 134
    invoke-direct {p0, p1}, Lcom/qti/internal/telephony/QtiSubscriptionController;->getPhoneIdFromDummySubId(I)I

    move-result v0

    goto :goto_15

    .line 136
    :cond_36
    invoke-super {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->getSlotId(I)I

    move-result v0

    goto :goto_15
.end method

.method public isSMSPromptEnabled()Z
    .registers 6

    .prologue
    .line 424
    const/4 v0, 0x0

    .line 425
    .local v0, "prompt":Z
    const/4 v2, 0x0

    .line 427
    .local v2, "value":I
    :try_start_2
    iget-object v3, p0, Lcom/qti/internal/telephony/QtiSubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "multi_sim_sms_prompt"

    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_d
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2 .. :try_end_d} :catch_12

    move-result v2

    .line 432
    :goto_e
    if-nez v2, :cond_19

    const/4 v0, 0x0

    .line 435
    :goto_11
    return v0

    .line 429
    :catch_12
    move-exception v1

    .line 430
    .local v1, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    const-string v3, "Settings Exception Reading Dual Sim SMS Prompt Values"

    invoke-direct {p0, v3}, Lcom/qti/internal/telephony/QtiSubscriptionController;->loge(Ljava/lang/String;)V

    goto :goto_e

    .line 432
    .end local v1    # "snfe":Landroid/provider/Settings$SettingNotFoundException;
    :cond_19
    const/4 v0, 0x1

    goto :goto_11
.end method

.method public setSMSPromptEnabled(Z)V
    .registers 5
    .param p1, "enabled"    # Z

    .prologue
    .line 440
    const-string v1, "setSMSPromptEnabled"

    invoke-virtual {p0, v1}, Lcom/qti/internal/telephony/QtiSubscriptionController;->enforceModifyPhoneState(Ljava/lang/String;)V

    .line 441
    if-nez p1, :cond_2a

    const/4 v0, 0x0

    .line 442
    .local v0, "value":I
    :goto_8
    iget-object v1, p0, Lcom/qti/internal/telephony/QtiSubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "multi_sim_sms_prompt"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 444
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSMSPromptOption to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qti/internal/telephony/QtiSubscriptionController;->logi(Ljava/lang/String;)V

    .line 445
    return-void

    .line 441
    .end local v0    # "value":I
    :cond_2a
    const/4 v0, 0x1

    goto :goto_8
.end method

.method protected shouldDefaultBeCleared(Ljava/util/List;I)Z
    .registers 11
    .param p2, "subId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .local p1, "records":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 217
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[shouldDefaultBeCleared: subId] "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/qti/internal/telephony/QtiSubscriptionController;->logdl(Ljava/lang/String;)V

    .line 218
    if-nez p1, :cond_31

    .line 219
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[shouldDefaultBeCleared] return true no records subId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/qti/internal/telephony/QtiSubscriptionController;->logdl(Ljava/lang/String;)V

    .line 241
    :goto_30
    return v4

    .line 222
    :cond_31
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v6

    if-nez v6, :cond_4f

    .line 224
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[shouldDefaultBeCleared] return false only one subId, subId="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/qti/internal/telephony/QtiSubscriptionController;->logdl(Ljava/lang/String;)V

    move v4, v5

    .line 225
    goto :goto_30

    .line 227
    :cond_4f
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_53
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_93

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    .line 228
    .local v2, "record":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    .line 229
    .local v1, "id":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[shouldDefaultBeCleared] Record.id: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/qti/internal/telephony/QtiSubscriptionController;->logdl(Ljava/lang/String;)V

    .line 230
    if-ne v1, p2, :cond_53

    .line 231
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[shouldDefaultBeCleared] return false subId is active, subId="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/qti/internal/telephony/QtiSubscriptionController;->logdl(Ljava/lang/String;)V

    move v4, v5

    .line 232
    goto :goto_30

    .line 235
    .end local v1    # "id":I
    .end local v2    # "record":Landroid/telephony/SubscriptionInfo;
    :cond_93
    invoke-virtual {p0, p2}, Lcom/qti/internal/telephony/QtiSubscriptionController;->getSlotId(I)I

    move-result v3

    .line 236
    .local v3, "slotId":I
    invoke-direct {p0, v3}, Lcom/qti/internal/telephony/QtiSubscriptionController;->getUiccProvisionStatus(I)I

    move-result v6

    if-ne v6, v4, :cond_b6

    .line 237
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[shouldDefaultBeCleared] return false subId is provisioned, subId="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/qti/internal/telephony/QtiSubscriptionController;->logdl(Ljava/lang/String;)V

    move v4, v5

    .line 238
    goto/16 :goto_30

    .line 240
    :cond_b6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[shouldDefaultBeCleared] return true not active subId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/qti/internal/telephony/QtiSubscriptionController;->logdl(Ljava/lang/String;)V

    goto/16 :goto_30
.end method

.method public shutdownRequestReceived()V
    .registers 2

    .prologue
    .line 480
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qti/internal/telephony/QtiSubscriptionController;->mIsShutDownInProgress:Z

    .line 481
    const-string v0, "ShutDown in Progress. "

    invoke-direct {p0, v0}, Lcom/qti/internal/telephony/QtiSubscriptionController;->logi(Ljava/lang/String;)V

    .line 482
    return-void
.end method

.method declared-synchronized updateUserPreferences()V
    .registers 11

    .prologue
    const/4 v9, 0x1

    .line 283
    monitor-enter p0

    const/4 v2, 0x0

    .line 284
    .local v2, "mNextActivatedSub":Landroid/telephony/SubscriptionInfo;
    const/4 v0, 0x0

    .line 285
    .local v0, "activeCount":I
    :try_start_4
    invoke-direct {p0}, Lcom/qti/internal/telephony/QtiSubscriptionController;->isUpdateUserPrefsRequired()Z

    move-result v7

    if-nez v7, :cond_11

    .line 286
    const-string v7, "Invalid use case, Ignore Updating User Preference!!!"

    invoke-direct {p0, v7}, Lcom/qti/internal/telephony/QtiSubscriptionController;->logd(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_34

    .line 362
    :cond_f
    :goto_f
    monitor-exit p0

    return-void

    .line 289
    :cond_11
    :try_start_11
    iget-object v7, p0, Lcom/qti/internal/telephony/QtiSubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/qti/internal/telephony/QtiSubscriptionController;->getActiveSubscriptionInfoList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 292
    .local v4, "sil":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v4, :cond_23

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v7, v9, :cond_37

    .line 293
    :cond_23
    const-string v7, "updateUserPreferences: Subscription list is empty"

    invoke-direct {p0, v7}, Lcom/qti/internal/telephony/QtiSubscriptionController;->logi(Ljava/lang/String;)V

    .line 294
    invoke-direct {p0}, Lcom/qti/internal/telephony/QtiSubscriptionController;->clearVoiceSubId()V

    .line 296
    invoke-direct {p0}, Lcom/qti/internal/telephony/QtiSubscriptionController;->clearDefaultDataSubId()V

    .line 298
    const v7, 0x7ffffffb

    sput v7, Lcom/qti/internal/telephony/QtiSubscriptionController;->mDefaultFallbackSubId:I
    :try_end_33
    .catchall {:try_start_11 .. :try_end_33} :catchall_34

    goto :goto_f

    .line 283
    .end local v4    # "sil":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :catchall_34
    move-exception v7

    monitor-exit p0

    throw v7

    .line 304
    .restart local v4    # "sil":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :cond_37
    :try_start_37
    const-string v7, "persist.radio.aosp_usr_pref_sel"

    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_46

    .line 305
    const-string v7, "updateUserPreferences: AOSP user preference option enabled "

    invoke-direct {p0, v7}, Lcom/qti/internal/telephony/QtiSubscriptionController;->logi(Ljava/lang/String;)V

    goto :goto_f

    .line 310
    :cond_46
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_4a
    :goto_4a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_66

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/SubscriptionInfo;

    .line 311
    .local v6, "subInfo":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v7

    invoke-direct {p0, v7}, Lcom/qti/internal/telephony/QtiSubscriptionController;->getUiccProvisionStatus(I)I

    move-result v7

    if-ne v7, v9, :cond_4a

    .line 312
    add-int/lit8 v0, v0, 0x1

    .line 313
    if-nez v2, :cond_4a

    move-object v2, v6

    goto :goto_4a

    .line 316
    .end local v6    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :cond_66
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateUserPreferences:: active sub count = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " dds = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/qti/internal/telephony/QtiSubscriptionController;->getDefaultDataSubId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " voice = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/qti/internal/telephony/QtiSubscriptionController;->getDefaultVoiceSubId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " sms = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/qti/internal/telephony/QtiSubscriptionController;->getDefaultSmsSubId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/qti/internal/telephony/QtiSubscriptionController;->logd(Ljava/lang/String;)V

    .line 322
    if-ne v0, v9, :cond_ac

    .line 323
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/qti/internal/telephony/QtiSubscriptionController;->setSMSPromptEnabled(Z)V

    .line 329
    :cond_ac
    if-eqz v2, :cond_f

    invoke-virtual {p0}, Lcom/qti/internal/telephony/QtiSubscriptionController;->getActiveSubInfoCountMax()I

    move-result v7

    if-eq v7, v9, :cond_f

    .line 338
    invoke-virtual {p0}, Lcom/qti/internal/telephony/QtiSubscriptionController;->getDefaultSmsSubId()I

    move-result v7

    invoke-direct {p0, v7}, Lcom/qti/internal/telephony/QtiSubscriptionController;->isSubProvisioned(I)Z

    move-result v7

    if-nez v7, :cond_c5

    .line 339
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/qti/internal/telephony/QtiSubscriptionController;->setDefaultSmsSubId(I)V

    .line 341
    :cond_c5
    invoke-virtual {p0}, Lcom/qti/internal/telephony/QtiSubscriptionController;->getDefaultVoiceSubId()I

    move-result v7

    invoke-direct {p0, v7}, Lcom/qti/internal/telephony/QtiSubscriptionController;->isSubProvisioned(I)Z

    move-result v7

    if-nez v7, :cond_d6

    .line 342
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/qti/internal/telephony/QtiSubscriptionController;->setDefaultVoiceSubId(I)V

    .line 350
    :cond_d6
    invoke-direct {p0}, Lcom/qti/internal/telephony/QtiSubscriptionController;->isNonSimAccountFound()Z

    move-result v7

    if-nez v7, :cond_101

    if-ne v0, v9, :cond_101

    .line 351
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    .line 352
    .local v5, "subId":I
    invoke-direct {p0, v5}, Lcom/qti/internal/telephony/QtiSubscriptionController;->subscriptionIdToPhoneAccountHandle(I)Landroid/telecom/PhoneAccountHandle;

    move-result-object v3

    .line 353
    .local v3, "phoneAccountHandle":Landroid/telecom/PhoneAccountHandle;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "set default phoneaccount to  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/qti/internal/telephony/QtiSubscriptionController;->logi(Ljava/lang/String;)V

    .line 354
    iget-object v7, p0, Lcom/qti/internal/telephony/QtiSubscriptionController;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v7, v3}, Landroid/telecom/TelecomManager;->setUserSelectedOutgoingPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V

    .line 356
    .end local v3    # "phoneAccountHandle":Landroid/telecom/PhoneAccountHandle;
    .end local v5    # "subId":I
    :cond_101
    sget v7, Lcom/qti/internal/telephony/QtiSubscriptionController;->mDefaultFallbackSubId:I

    invoke-direct {p0, v7}, Lcom/qti/internal/telephony/QtiSubscriptionController;->isSubProvisioned(I)Z

    move-result v7

    if-nez v7, :cond_110

    .line 357
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/qti/internal/telephony/QtiSubscriptionController;->setDefaultFallbackSubId(I)V

    .line 360
    :cond_110
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateUserPreferences: after currentDds = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/qti/internal/telephony/QtiSubscriptionController;->getDefaultDataSubId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " voice = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/qti/internal/telephony/QtiSubscriptionController;->getDefaultVoiceSubId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " sms = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/qti/internal/telephony/QtiSubscriptionController;->getDefaultSmsSubId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/qti/internal/telephony/QtiSubscriptionController;->logd(Ljava/lang/String;)V
    :try_end_146
    .catchall {:try_start_37 .. :try_end_146} :catchall_34

    goto/16 :goto_f
.end method

.class public Lcom/qti/internal/telephony/QtiRadioCapabilityController;
.super Landroid/os/Handler;
.source "QtiRadioCapabilityController.java"


# static fields
.field static final ALLOW_FLEX_MAPPING_ON_INACTIVE_SUB_PROPERTY:Ljava/lang/String; = "persist.radio.flex_map_inactive"

.field private static final DBG:Z = true

.field private static final EVENT_GET_RADIO_CAPS_DONE:I = 0x3

.field private static final EVENT_RADIO_AVAILABLE:I = 0x1

.field private static final EVENT_RADIO_CAPS_AVAILABLE:I = 0x4

.field private static final EVENT_RADIO_NOT_AVAILABLE:I = 0x2

.field private static final EVENT_UPDATE_BINDING_DONE:I = 0x5

.field private static final FAILURE:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "QtiRadioCapabilityController"

.field private static final PRIMARY_STACK_ID:I = 0x0

.field private static final SUCCESS:I = 0x1

.field private static final VDBG:Z

.field private static final mNumPhones:I

.field private static sInstance:Lcom/qti/internal/telephony/QtiRadioCapabilityController;

.field private static sSetNwModeLock:Ljava/lang/Object;


# instance fields
.field private mCi:[Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field private mCurrentStackId:[I

.field private mIsSetPrefNwModeInProgress:Z

.field private mModemRatCapabilitiesAvailable:Z

.field private mPhone:[Lcom/android/internal/telephony/Phone;

.field private mPrefNwMode:[I

.field private mPreferredStackId:[I

.field private mQtiSubscriptionController:Lcom/qti/internal/telephony/QtiSubscriptionController;

.field private mRadioAccessFamily:[I

.field private mRadioCapability:[Lcom/android/internal/telephony/RadioCapability;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mStoredResponse:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 73
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    sput v0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    .line 74
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->sSetNwModeLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;[Lcom/android/internal/telephony/CommandsInterface;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneProxy"    # [Lcom/android/internal/telephony/Phone;
    .param p3, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 116
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 79
    iput-boolean v2, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mModemRatCapabilitiesAvailable:Z

    .line 80
    iput-boolean v2, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mIsSetPrefNwModeInProgress:Z

    .line 84
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mStoredResponse:Ljava/util/HashMap;

    .line 85
    iput-object v5, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mQtiSubscriptionController:Lcom/qti/internal/telephony/QtiSubscriptionController;

    .line 89
    sget v2, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mPreferredStackId:[I

    .line 90
    sget v2, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mCurrentStackId:[I

    .line 91
    sget v2, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mPrefNwMode:[I

    .line 93
    sget v2, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mRadioAccessFamily:[I

    .line 94
    sget v2, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    new-array v2, v2, [Lcom/android/internal/telephony/RadioCapability;

    iput-object v2, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mRadioCapability:[Lcom/android/internal/telephony/RadioCapability;

    .line 136
    new-instance v2, Lcom/qti/internal/telephony/QtiRadioCapabilityController$1;

    invoke-direct {v2, p0}, Lcom/qti/internal/telephony/QtiRadioCapabilityController$1;-><init>(Lcom/qti/internal/telephony/QtiRadioCapabilityController;)V

    iput-object v2, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 117
    iput-object p3, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    .line 118
    iput-object p1, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mContext:Landroid/content/Context;

    .line 119
    iput-object p2, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mPhone:[Lcom/android/internal/telephony/Phone;

    .line 121
    invoke-static {}, Lcom/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v2

    iput-object v2, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mQtiSubscriptionController:Lcom/qti/internal/telephony/QtiSubscriptionController;

    .line 123
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_44
    iget-object v2, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    array-length v2, v2

    if-ge v1, v2, :cond_6f

    .line 124
    iget-object v2, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v1

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, p0, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 125
    iget-object v2, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v1

    const/4 v3, 0x2

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, p0, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 126
    iget-object v2, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mStoredResponse:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    add-int/lit8 v1, v1, 0x1

    goto :goto_44

    .line 129
    :cond_6f
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_DONE"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 130
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_FAILED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 131
    iget-object v2, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 133
    const-string v2, "Constructor - Exit"

    invoke-direct {p0, v2}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->logd(Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method private areAllModemCapInfoReceived()Z
    .registers 3

    .prologue
    .line 226
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget v1, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    if-ge v0, v1, :cond_10

    .line 227
    iget-object v1, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mRadioCapability:[Lcom/android/internal/telephony/RadioCapability;

    aget-object v1, v1, v0

    if-nez v1, :cond_d

    const/4 v1, 0x0

    .line 229
    :goto_c
    return v1

    .line 226
    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 229
    :cond_10
    const/4 v1, 0x1

    goto :goto_c
.end method

.method public static getInstance()Lcom/qti/internal/telephony/QtiRadioCapabilityController;
    .registers 2

    .prologue
    .line 109
    sget-object v0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->sInstance:Lcom/qti/internal/telephony/QtiRadioCapabilityController;

    if-nez v0, :cond_b

    .line 110
    const-string v0, "QtiRadioCapabilityController"

    const-string v1, "QtiRadioCapabilityController.getInstance called before make"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_b
    sget-object v0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->sInstance:Lcom/qti/internal/telephony/QtiRadioCapabilityController;

    return-object v0
.end method

.method private getNetworkModeFromDB(I)I
    .registers 7
    .param p1, "phoneId"    # I

    .prologue
    .line 459
    iget-object v3, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mQtiSubscriptionController:Lcom/qti/internal/telephony/QtiSubscriptionController;

    invoke-virtual {v3, p1}, Lcom/qti/internal/telephony/QtiSubscriptionController;->getSubId(I)[I

    move-result-object v2

    .line 483
    .local v2, "subId":[I
    :try_start_6
    iget-object v3, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preferred_network_mode"

    invoke-static {v3, v4, p1}, Landroid/telephony/TelephonyManager;->getIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_11
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_6 .. :try_end_11} :catch_33

    move-result v0

    .line 489
    .local v0, "networkMode":I
    :goto_12
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " get slot based N/W mode, val["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->logd(Ljava/lang/String;)V

    .line 491
    return v0

    .line 485
    .end local v0    # "networkMode":I
    :catch_33
    move-exception v1

    .line 486
    .local v1, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    const-string v3, "getPreferredNetworkMode: Could not find PREFERRED_NETWORK_MODE!!!"

    invoke-direct {p0, v3}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->loge(Ljava/lang/String;)V

    .line 487
    sget v0, Lcom/android/internal/telephony/Phone;->PREFERRED_NT_MODE:I

    .restart local v0    # "networkMode":I
    goto :goto_12
.end method

.method private getNumOfRafSupportedForNwMode(II)I
    .registers 7
    .param p1, "nwMode"    # I
    .param p2, "radioAccessFamily"    # I

    .prologue
    .line 566
    const/4 v1, 0x0

    .line 567
    .local v1, "supportedRafMaskForNwMode":I
    const/4 v2, 0x1

    if-ne p2, v2, :cond_1c

    .line 568
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Modem Capabilites are null. Return!!, N/W mode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->loge(Ljava/lang/String;)V

    move v2, v1

    .line 579
    :goto_1b
    return v2

    .line 572
    :cond_1c
    invoke-static {p1}, Landroid/telephony/RadioAccessFamily;->getRafFromNetworkType(I)I

    move-result v0

    .line 574
    .local v0, "nwModeRaf":I
    and-int v1, p2, v0

    .line 576
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNumOfRATsSupportedForNwMode: nwMode["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " nwModeRaf = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] raf = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " supportedRafMaskForNwMode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->logv(Ljava/lang/String;)V

    .line 579
    invoke-static {v1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v2

    goto :goto_1b
.end method

.method private handleRadioCapsAvailable()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 271
    iput-boolean v2, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mModemRatCapabilitiesAvailable:Z

    .line 272
    const-string v0, "handleRadioCapsAvailable... "

    invoke-direct {p0, v0}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->logd(Ljava/lang/String;)V

    .line 273
    invoke-direct {p0, v1}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->updateStackBindingIfRequired(Z)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 274
    invoke-direct {p0, v2}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->setNWModeInProgressFlag(Z)V

    .line 278
    :goto_12
    return-void

    .line 276
    :cond_13
    invoke-direct {p0, v1}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->notifyRadioCapsUpdated(Z)V

    goto :goto_12
.end method

.method private handleUpdateBindingDone(I)V
    .registers 9
    .param p1, "result"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 239
    if-ne p1, v4, :cond_7

    .line 243
    invoke-direct {p0}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->updateNewNwModeToDB()V

    .line 246
    :cond_7
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    sget v5, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    if-ge v1, v5, :cond_12

    .line 247
    invoke-direct {p0, v1}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->sendSubscriptionSettings(I)V

    .line 246
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 251
    :cond_12
    invoke-direct {p0, v3}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->setNWModeInProgressFlag(Z)V

    .line 254
    if-ne p1, v4, :cond_18

    move v3, v4

    :cond_18
    invoke-direct {p0, v3}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->notifyRadioCapsUpdated(Z)V

    .line 257
    const/4 v1, 0x0

    :goto_1c
    sget v3, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    if-ge v1, v3, :cond_42

    .line 258
    const/4 v0, 0x0

    .line 259
    .local v0, "errorCode":I
    iget-object v3, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mStoredResponse:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    .line 260
    .local v2, "resp":Landroid/os/Message;
    if-eqz v2, :cond_3f

    .line 261
    if-eq p1, v4, :cond_32

    .line 262
    const/4 v0, 0x2

    .line 264
    :cond_32
    invoke-direct {p0, v2, v0}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->sendResponseToTarget(Landroid/os/Message;I)V

    .line 265
    iget-object v3, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mStoredResponse:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    :cond_3f
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 268
    .end local v0    # "errorCode":I
    .end local v2    # "resp":Landroid/os/Message;
    :cond_42
    return-void
.end method

.method private isAnyCallsInProgress()Z
    .registers 5

    .prologue
    .line 635
    const/4 v1, 0x0

    .line 636
    .local v1, "isCallInProgress":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    sget v2, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    if-ge v0, v2, :cond_13

    .line 637
    iget-object v2, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v0

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v2, v3, :cond_14

    .line 638
    const/4 v1, 0x1

    .line 642
    :cond_13
    return v1

    .line 636
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private isAnyPhoneInEcmState()Z
    .registers 4

    .prologue
    .line 646
    const/4 v1, 0x0

    .line 647
    .local v1, "isInEcmState":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    sget v2, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    if-ge v0, v2, :cond_11

    .line 648
    iget-object v2, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v0

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->isInEcm()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 649
    const/4 v1, 0x1

    .line 653
    :cond_11
    return v1

    .line 647
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private isCardAbsent(I)Z
    .registers 6
    .param p1, "phoneId"    # I

    .prologue
    .line 669
    const/4 v0, -0x1

    .line 671
    .local v0, "provisionStatus":I
    invoke-static {}, Lcom/qti/internal/telephony/ExtTelephonyServiceImpl;->getInstance()Lcom/qti/internal/telephony/ExtTelephonyServiceImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qti/internal/telephony/ExtTelephonyServiceImpl;->getUiccProvisionerInstance()Lcom/qti/internal/telephony/UiccCardProvisioner;

    move-result-object v1

    .line 674
    .local v1, "uiccProvisioner":Lcom/qti/internal/telephony/UiccCardProvisioner;
    if-eqz v1, :cond_25

    .line 675
    invoke-virtual {v1, p1}, Lcom/qti/internal/telephony/UiccCardProvisioner;->getCurrentUiccCardProvisioningStatus(I)I

    move-result v0

    .line 676
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "provisionStatus : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->logd(Ljava/lang/String;)V

    .line 678
    :cond_25
    const/4 v2, -0x2

    if-ne v0, v2, :cond_2a

    const/4 v2, 0x1

    :goto_29
    return v2

    :cond_2a
    const/4 v2, 0x0

    goto :goto_29
.end method

.method private isFlexMappingAllowedOnInactiveSub()Z
    .registers 3

    .prologue
    .line 235
    const-string v0, "persist.radio.flex_map_inactive"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private isNwModeSupportedOnStack(II)Z
    .registers 9
    .param p1, "nwMode"    # I
    .param p2, "stackId"    # I

    .prologue
    .line 432
    sget v4, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    new-array v3, v4, [I

    .line 433
    .local v3, "numRafSupported":[I
    const/4 v2, 0x0

    .line 434
    .local v2, "maxNumRafSupported":I
    const/4 v1, 0x0

    .line 437
    .local v1, "isSupported":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    sget v4, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    if-ge v0, v4, :cond_1e

    .line 438
    iget-object v4, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mRadioAccessFamily:[I

    aget v4, v4, v0

    invoke-direct {p0, p1, v4}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->getNumOfRafSupportedForNwMode(II)I

    move-result v4

    aput v4, v3, v0

    .line 439
    aget v4, v3, v0

    if-ge v2, v4, :cond_1b

    aget v2, v3, v0

    .line 437
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 443
    :cond_1e
    aget v4, v3, p2

    if-ne v4, v2, :cond_23

    const/4 v1, 0x1

    .line 445
    :cond_23
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "nwMode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", on stack:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v1, :cond_52

    const-string v4, "Supported"

    :goto_46
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->logd(Ljava/lang/String;)V

    .line 448
    return v1

    .line 445
    :cond_52
    const-string v4, "Not Supported"

    goto :goto_46
.end method

.method private isUiccProvisionInProgress()Z
    .registers 5

    .prologue
    .line 657
    const/4 v0, 0x0

    .line 658
    .local v0, "retVal":Z
    invoke-static {}, Lcom/qti/internal/telephony/ExtTelephonyServiceImpl;->getInstance()Lcom/qti/internal/telephony/ExtTelephonyServiceImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qti/internal/telephony/ExtTelephonyServiceImpl;->getUiccProvisionerInstance()Lcom/qti/internal/telephony/UiccCardProvisioner;

    move-result-object v1

    .line 661
    .local v1, "uiccProvisioner":Lcom/qti/internal/telephony/UiccCardProvisioner;
    if-eqz v1, :cond_25

    .line 662
    invoke-virtual {v1}, Lcom/qti/internal/telephony/UiccCardProvisioner;->isAnyProvisionRequestInProgress()Z

    move-result v0

    .line 663
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isUiccProvisionInProgress: retVal =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->logd(Ljava/lang/String;)V

    .line 665
    :cond_25
    return v0
.end method

.method private logd(Ljava/lang/String;)V
    .registers 3
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 702
    const-string v0, "QtiRadioCapabilityController"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .registers 3
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 710
    const-string v0, "QtiRadioCapabilityController"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .registers 3
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 706
    const-string v0, "QtiRadioCapabilityController"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    return-void
.end method

.method private logv(Ljava/lang/String;)V
    .registers 2
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 715
    return-void
.end method

.method public static make(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/qti/internal/telephony/QtiRadioCapabilityController;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneProxy"    # [Lcom/android/internal/telephony/Phone;
    .param p2, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    .line 99
    const-string v0, "QtiRadioCapabilityController"

    const-string v1, "getInstance"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    sget-object v0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->sInstance:Lcom/qti/internal/telephony/QtiRadioCapabilityController;

    if-nez v0, :cond_15

    .line 101
    new-instance v0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;

    invoke-direct {v0, p0, p1, p2}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;-><init>(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;[Lcom/android/internal/telephony/CommandsInterface;)V

    sput-object v0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->sInstance:Lcom/qti/internal/telephony/QtiRadioCapabilityController;

    .line 105
    :goto_12
    sget-object v0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->sInstance:Lcom/qti/internal/telephony/QtiRadioCapabilityController;

    return-object v0

    .line 103
    :cond_15
    const-string v0, "QtiRadioCapabilityController"

    const-string v1, "QtiRadioCapabilityController.make() should be called once"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12
.end method

.method private notifyRadioCapsUpdated(Z)V
    .registers 6
    .param p1, "isCrossMapDone"    # Z

    .prologue
    .line 614
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyRadioCapsUpdated: radio caps updated "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->logd(Ljava/lang/String;)V

    .line 616
    if-eqz p1, :cond_28

    .line 617
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_19
    sget v2, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    if-ge v0, v2, :cond_28

    .line 619
    iget-object v2, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mCurrentStackId:[I

    iget-object v3, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mPreferredStackId:[I

    aget v3, v3, v0

    aput v3, v2, v0

    .line 617
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 622
    .end local v0    # "i":I
    :cond_28
    new-instance v1, Landroid/content/Intent;

    const-string v2, "org.codeaurora.intent.action.ACTION_RADIO_CAPABILITY_UPDATED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 623
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 624
    return-void
.end method

.method private onGetRadioCapabilityDone(Landroid/os/AsyncResult;Lcom/android/internal/telephony/RadioCapability;I)V
    .registers 6
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "rc"    # Lcom/android/internal/telephony/RadioCapability;
    .param p3, "phoneId"    # I

    .prologue
    .line 204
    if-nez p2, :cond_2b

    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v0, v0, Lcom/android/internal/telephony/CommandException;

    if-eqz v0, :cond_2b

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onGetRadioCapabilityDone: EXIT!, result null or Exception = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " phoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->loge(Ljava/lang/String;)V

    .line 223
    :cond_2a
    :goto_2a
    return-void

    .line 209
    :cond_2b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onGetRadioCapabilityDone on phoneId["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] rc = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->logd(Ljava/lang/String;)V

    .line 211
    invoke-static {p3}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_87

    .line 212
    iget-object v0, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, p3

    invoke-interface {v0, p2}, Lcom/android/internal/telephony/Phone;->radioCapabilityUpdated(Lcom/android/internal/telephony/RadioCapability;)V

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " Updating in phone phoneId["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] rc = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->logd(Ljava/lang/String;)V

    .line 217
    invoke-direct {p0}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->areAllModemCapInfoReceived()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 218
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2a

    .line 221
    :cond_87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onGetRadioCapabilityDone: Invalid phoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->loge(Ljava/lang/String;)V

    goto :goto_2a
.end method

.method private processRadioAvailable(Landroid/os/AsyncResult;I)V
    .registers 6
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "phoneId"    # I

    .prologue
    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processRadioAvailable on phoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->logd(Ljava/lang/String;)V

    .line 193
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 194
    const/4 v1, 0x3

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {p0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 197
    .local v0, "getModemCapsMsg":Landroid/os/Message;
    iget-object v1, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, p2

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioCapability(Landroid/os/Message;)V

    .line 201
    .end local v0    # "getModemCapsMsg":Landroid/os/Message;
    :goto_2d
    return-void

    .line 199
    :cond_2e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processRadioAvailable: Invalid phoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->loge(Ljava/lang/String;)V

    goto :goto_2d
.end method

.method private processRadioNotAvailable(Landroid/os/AsyncResult;I)V
    .registers 5
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "phoneId"    # I

    .prologue
    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processRadioNotAvailable on phoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->logd(Ljava/lang/String;)V

    .line 282
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 283
    iget-object v0, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mRadioCapability:[Lcom/android/internal/telephony/RadioCapability;

    const/4 v1, 0x0

    aput-object v1, v0, p2

    .line 287
    :goto_21
    iget-boolean v0, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mModemRatCapabilitiesAvailable:Z

    if-eqz v0, :cond_28

    .line 288
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mModemRatCapabilitiesAvailable:Z

    .line 290
    :cond_28
    return-void

    .line 285
    :cond_29
    const-string v0, "Invalid Index!!!"

    invoke-direct {p0, v0}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->loge(Ljava/lang/String;)V

    goto :goto_21
.end method

.method private sendResponseToTarget(Landroid/os/Message;I)V
    .registers 5
    .param p1, "response"    # Landroid/os/Message;
    .param p2, "responseCode"    # I

    .prologue
    .line 627
    if-eqz p1, :cond_d

    .line 628
    invoke-static {p2}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    .line 629
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 630
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 632
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_d
    return-void
.end method

.method private sendSubscriptionSettings(I)V
    .registers 11
    .param p1, "phoneId"    # I

    .prologue
    const/4 v8, 0x0

    .line 583
    invoke-direct {p0, p1}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->getNetworkModeFromDB(I)I

    move-result v5

    .line 586
    .local v5, "type":I
    iget-object v6, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v6, v6, p1

    invoke-interface {v6, v5, v8}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 589
    iget-object v6, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v6, v6, p1

    check-cast v6, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .local v3, "phone":Lcom/android/internal/telephony/Phone;
    move-object v6, v3

    .line 590
    check-cast v6, Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6, v8}, Lcom/android/internal/telephony/PhoneBase;->restoreSavedNetworkSelection(Landroid/os/Message;)V

    .line 592
    iget-object v6, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mQtiSubscriptionController:Lcom/qti/internal/telephony/QtiSubscriptionController;

    invoke-virtual {v6}, Lcom/qti/internal/telephony/QtiSubscriptionController;->getDefaultDataSubId()I

    move-result v2

    .line 593
    .local v2, "ddsSubId":I
    iget-object v6, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mQtiSubscriptionController:Lcom/qti/internal/telephony/QtiSubscriptionController;

    invoke-virtual {v6, v2}, Lcom/qti/internal/telephony/QtiSubscriptionController;->getPhoneId(I)I

    move-result v1

    .line 594
    .local v1, "ddsPhoneId":I
    if-ne p1, v1, :cond_3d

    .line 595
    invoke-static {}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->getInstance()Lcom/android/internal/telephony/dataconnection/DctController;

    move-result-object v0

    check-cast v0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;

    .line 597
    .local v0, "dctCntrl":Lcom/qti/internal/telephony/dataconnection/QtiDctController;
    if-eqz v0, :cond_35

    .line 598
    invoke-virtual {v0, v2}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->informDdsToRil(I)V

    .line 600
    :cond_35
    iget-object v6, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v6, v6, p1

    const/4 v7, 0x1

    invoke-interface {v6, v7, v8}, Lcom/android/internal/telephony/CommandsInterface;->setDataAllowed(ZLandroid/os/Message;)V

    .line 603
    .end local v0    # "dctCntrl":Lcom/qti/internal/telephony/dataconnection/QtiDctController;
    :cond_3d
    iget-object v6, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mQtiSubscriptionController:Lcom/qti/internal/telephony/QtiSubscriptionController;

    invoke-virtual {v6, p1}, Lcom/qti/internal/telephony/QtiSubscriptionController;->getSubId(I)[I

    move-result-object v4

    .line 604
    .local v4, "subId":[I
    if-eqz v4, :cond_63

    array-length v6, v4

    if-lez v6, :cond_63

    iget-object v6, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mQtiSubscriptionController:Lcom/qti/internal/telephony/QtiSubscriptionController;

    const/4 v7, 0x0

    aget v7, v4, v7

    invoke-virtual {v6, v7}, Lcom/qti/internal/telephony/QtiSubscriptionController;->isActiveSubId(I)Z

    move-result v6

    if-eqz v6, :cond_63

    move-object v6, v3

    .line 606
    check-cast v6, Lcom/android/internal/telephony/PhoneBase;

    iget-object v6, v6, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    check-cast v3, Lcom/android/internal/telephony/PhoneBase;

    .end local v3    # "phone":Lcom/android/internal/telephony/Phone;
    iget-object v7, v3, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v7}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getDataEnabled()Z

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setDataEnabled(Z)V

    .line 609
    :cond_63
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sendSubscriptionSettings: nwMode["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " dds subId["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->logi(Ljava/lang/String;)V

    .line 611
    return-void
.end method

.method private setNWModeInProgressFlag(Z)V
    .registers 4
    .param p1, "newStatus"    # Z

    .prologue
    .line 682
    sget-object v1, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->sSetNwModeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 683
    :try_start_3
    iput-boolean p1, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mIsSetPrefNwModeInProgress:Z

    .line 684
    monitor-exit v1

    .line 685
    return-void

    .line 684
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method private syncCurrentStackInfo()V
    .registers 5

    .prologue
    .line 294
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget v1, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    if-ge v0, v1, :cond_72

    .line 295
    iget-object v1, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mCurrentStackId:[I

    iget-object v2, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mRadioCapability:[Lcom/android/internal/telephony/RadioCapability;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/android/internal/telephony/RadioCapability;->getLogicalModemUuid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v1, v0

    .line 296
    iget-object v1, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mRadioAccessFamily:[I

    iget-object v2, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mCurrentStackId:[I

    aget v2, v2, v0

    iget-object v3, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mRadioCapability:[Lcom/android/internal/telephony/RadioCapability;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/android/internal/telephony/RadioCapability;->getRadioAccessFamily()I

    move-result v3

    aput v3, v1, v2

    .line 299
    iget-object v2, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mPreferredStackId:[I

    iget-object v1, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mCurrentStackId:[I

    aget v1, v1, v0

    if-ltz v1, :cond_70

    iget-object v1, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mCurrentStackId:[I

    aget v1, v1, v0

    :goto_35
    aput v1, v2, v0

    .line 300
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syncCurrentStackInfo, current stackId["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mCurrentStackId:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " raf = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mRadioAccessFamily:[I

    iget-object v3, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mCurrentStackId:[I

    aget v3, v3, v0

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->logv(Ljava/lang/String;)V

    .line 294
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_70
    move v1, v0

    .line 299
    goto :goto_35

    .line 303
    :cond_72
    return-void
.end method

.method private syncPreferredNwModeFromDB()V
    .registers 4

    .prologue
    .line 452
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget v1, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    if-ge v0, v1, :cond_10

    .line 453
    iget-object v1, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mPrefNwMode:[I

    invoke-direct {p0, v0}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->getNetworkModeFromDB(I)I

    move-result v2

    aput v2, v1, v0

    .line 452
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 455
    :cond_10
    return-void
.end method

.method private updateNewNwModeToDB()V
    .registers 7

    .prologue
    .line 497
    const/4 v1, -0x1

    .line 498
    .local v1, "nwModeFromDB":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    sget v3, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    if-ge v0, v3, :cond_60

    .line 499
    invoke-direct {p0, v0}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->getNetworkModeFromDB(I)I

    move-result v1

    .line 503
    iget-object v3, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mPrefNwMode:[I

    aget v3, v3, v0

    if-eq v3, v1, :cond_5d

    .line 504
    iget-object v3, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mQtiSubscriptionController:Lcom/qti/internal/telephony/QtiSubscriptionController;

    invoke-virtual {v3, v0}, Lcom/qti/internal/telephony/QtiSubscriptionController;->getSubId(I)[I

    move-result-object v2

    .line 506
    .local v2, "subId":[I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateNewNwModeToDB: subId["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " new Nw mode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mPrefNwMode:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " old n/w mode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->logi(Ljava/lang/String;)V

    .line 515
    iget-object v3, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preferred_network_mode"

    iget-object v5, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mPrefNwMode:[I

    aget v5, v5, v0

    invoke-static {v3, v4, v0, v5}, Landroid/telephony/TelephonyManager;->putIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 498
    .end local v2    # "subId":[I
    :cond_5d
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 520
    :cond_60
    return-void
.end method

.method private updatePreferredStackIds(Z)V
    .registers 6
    .param p1, "isNwModeRequest"    # Z

    .prologue
    .line 378
    iget-boolean v2, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mModemRatCapabilitiesAvailable:Z

    if-eqz v2, :cond_a

    invoke-direct {p0}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->areAllModemCapInfoReceived()Z

    move-result v2

    if-nez v2, :cond_23

    .line 379
    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updatePreferredStackIds: Modem Caps not Available "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mModemRatCapabilitiesAvailable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->loge(Ljava/lang/String;)V

    .line 429
    :cond_22
    return-void

    .line 384
    :cond_23
    if-nez p1, :cond_28

    .line 386
    invoke-direct {p0}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->syncPreferredNwModeFromDB()V

    .line 388
    :cond_28
    invoke-direct {p0}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->syncCurrentStackInfo()V

    .line 390
    const/4 v0, 0x0

    .local v0, "curPhoneId":I
    :goto_2c
    sget v2, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    if-ge v0, v2, :cond_22

    .line 392
    iget-object v2, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mPrefNwMode:[I

    aget v2, v2, v0

    iget-object v3, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mCurrentStackId:[I

    aget v3, v3, v0

    invoke-direct {p0, v2, v3}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->isNwModeSupportedOnStack(II)Z

    move-result v2

    if-eqz v2, :cond_79

    .line 393
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updatePreferredStackIds: current stack["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mCurrentStackId:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]supports NwMode["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mPrefNwMode:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] on phoneId["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->logd(Ljava/lang/String;)V

    .line 390
    :cond_76
    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    .line 398
    :cond_79
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updatePreferredStackIds:  current stack["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mCurrentStackId:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "],  NwMode["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mPrefNwMode:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] on phoneId["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->logd(Ljava/lang/String;)V

    .line 404
    const/4 v1, 0x0

    .local v1, "otherPhoneId":I
    :goto_b2
    sget v2, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    if-ge v1, v2, :cond_76

    .line 406
    if-ne v1, v0, :cond_bb

    .line 404
    :cond_b8
    :goto_b8
    add-int/lit8 v1, v1, 0x1

    goto :goto_b2

    .line 407
    :cond_bb
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updatePreferredStackIds:  other stack["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mCurrentStackId:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "],  NwMode["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mPrefNwMode:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] on phoneId["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->logd(Ljava/lang/String;)V

    .line 411
    iget-object v2, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mPrefNwMode:[I

    aget v2, v2, v0

    iget-object v3, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mCurrentStackId:[I

    aget v3, v3, v1

    invoke-direct {p0, v2, v3}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->isNwModeSupportedOnStack(II)Z

    move-result v2

    if-eqz v2, :cond_b8

    .line 416
    invoke-direct {p0, v1}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->isCardAbsent(I)Z

    move-result v2

    if-nez v2, :cond_115

    iget-object v2, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mPrefNwMode:[I

    aget v2, v2, v1

    iget-object v3, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mCurrentStackId:[I

    aget v3, v3, v0

    invoke-direct {p0, v2, v3}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->isNwModeSupportedOnStack(II)Z

    move-result v2

    if-eqz v2, :cond_b8

    .line 419
    :cond_115
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updatePreferredStackIds: Cross Binding is possible between phoneId["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] and phoneId["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->logd(Ljava/lang/String;)V

    .line 423
    iget-object v2, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mPreferredStackId:[I

    iget-object v3, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mCurrentStackId:[I

    aget v3, v3, v1

    aput v3, v2, v0

    .line 424
    iget-object v2, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mPreferredStackId:[I

    iget-object v3, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mCurrentStackId:[I

    aget v3, v3, v0

    aput v3, v2, v1

    goto/16 :goto_b8
.end method

.method private declared-synchronized updateStackBindingIfRequired(Z)Z
    .registers 13
    .param p1, "isNwModeRequest"    # Z

    .prologue
    .line 313
    monitor-enter p0

    const/4 v4, 0x0

    .line 314
    .local v4, "isUpdateStackBindingRequired":Z
    const/4 v6, 0x0

    .line 315
    .local v6, "response":Z
    :try_start_3
    invoke-direct {p0}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->isAnyCallsInProgress()Z

    move-result v0

    .line 316
    .local v0, "callInProgress":Z
    invoke-direct {p0}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->isAnyPhoneInEcmState()Z

    move-result v3

    .line 317
    .local v3, "isInEcmState":Z
    const-string v8, "persist.radio.flexmap_type"

    const-string v9, "nw_mode"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 320
    .local v1, "flexMapSupportType":Ljava/lang/String;
    const-string v8, "updateStackBindingIfRequired"

    invoke-direct {p0, v8}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->logd(Ljava/lang/String;)V

    .line 321
    sget v8, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    const/4 v9, 0x1

    if-eq v8, v9, :cond_25

    const-string v8, "nw_mode"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4a

    .line 322
    :cond_25
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No need to update Stack Bindingm prop = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ph count = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->loge(Ljava/lang/String;)V
    :try_end_47
    .catchall {:try_start_3 .. :try_end_47} :catchall_110

    move v7, v6

    .line 352
    .end local v6    # "response":Z
    .local v7, "response":I
    :goto_48
    monitor-exit p0

    return v7

    .line 327
    .end local v7    # "response":I
    .restart local v6    # "response":Z
    :cond_4a
    if-nez v0, :cond_52

    if-nez v3, :cond_52

    :try_start_4e
    iget-boolean v8, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mModemRatCapabilitiesAvailable:Z

    if-nez v8, :cond_80

    .line 328
    :cond_52
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error: Call state = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", ecm state = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " rat cap available = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mModemRatCapabilitiesAvailable:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->loge(Ljava/lang/String;)V

    move v7, v6

    .line 330
    .restart local v7    # "response":I
    goto :goto_48

    .line 333
    .end local v7    # "response":I
    :cond_80
    invoke-direct {p0, p1}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->updatePreferredStackIds(Z)V

    .line 334
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_84
    sget v8, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    if-ge v2, v8, :cond_cf

    .line 335
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " pref stack["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mPreferredStackId:[I

    aget v9, v9, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " current stack["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mCurrentStackId:[I

    aget v9, v9, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->logv(Ljava/lang/String;)V

    .line 337
    iget-object v8, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mPreferredStackId:[I

    aget v8, v8, v2

    iget-object v9, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mCurrentStackId:[I

    aget v9, v9, v2

    if-eq v8, v9, :cond_102

    .line 339
    const/4 v4, 0x1

    .line 344
    :cond_cf
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " updateStackBindingIfRequired, required =  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->logd(Ljava/lang/String;)V

    .line 345
    if-eqz v4, :cond_10d

    .line 346
    sget v8, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    new-array v5, v8, [Landroid/telephony/RadioAccessFamily;

    .line 347
    .local v5, "rafs":[Landroid/telephony/RadioAccessFamily;
    const/4 v2, 0x0

    :goto_ec
    sget v8, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    if-ge v2, v8, :cond_105

    .line 348
    new-instance v8, Landroid/telephony/RadioAccessFamily;

    iget-object v9, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mRadioAccessFamily:[I

    iget-object v10, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mPreferredStackId:[I

    aget v10, v10, v2

    aget v9, v9, v10

    invoke-direct {v8, v2, v9}, Landroid/telephony/RadioAccessFamily;-><init>(II)V

    aput-object v8, v5, v2

    .line 347
    add-int/lit8 v2, v2, 0x1

    goto :goto_ec

    .line 334
    .end local v5    # "rafs":[Landroid/telephony/RadioAccessFamily;
    :cond_102
    add-int/lit8 v2, v2, 0x1

    goto :goto_84

    .line 350
    .restart local v5    # "rafs":[Landroid/telephony/RadioAccessFamily;
    :cond_105
    invoke-static {}, Lcom/android/internal/telephony/ProxyController;->getInstance()Lcom/android/internal/telephony/ProxyController;

    move-result-object v8

    invoke-virtual {v8, v5}, Lcom/android/internal/telephony/ProxyController;->setRadioCapability([Landroid/telephony/RadioAccessFamily;)Z
    :try_end_10c
    .catchall {:try_start_4e .. :try_end_10c} :catchall_110

    move-result v6

    .end local v5    # "rafs":[Landroid/telephony/RadioAccessFamily;
    :cond_10d
    move v7, v6

    .line 352
    .restart local v7    # "response":I
    goto/16 :goto_48

    .line 313
    .end local v0    # "callInProgress":Z
    .end local v1    # "flexMapSupportType":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "isInEcmState":Z
    .end local v7    # "response":I
    :catchall_110
    move-exception v8

    monitor-exit p0

    throw v8
.end method


# virtual methods
.method public getCurrentStackIdForPhoneId(I)I
    .registers 3
    .param p1, "phoneId"    # I

    .prologue
    .line 719
    iget-object v0, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mCurrentStackId:[I

    aget v0, v0, p1

    return v0
.end method

.method public getPrimarySub()I
    .registers 3

    .prologue
    .line 722
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget v1, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mNumPhones:I

    if-ge v0, v1, :cond_f

    .line 723
    invoke-virtual {p0, v0}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->getCurrentStackIdForPhoneId(I)I

    move-result v1

    if-nez v1, :cond_c

    .line 727
    .end local v0    # "i":I
    :goto_b
    return v0

    .line 722
    .restart local v0    # "i":I
    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 727
    :cond_f
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 154
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_8c

    .line 188
    :goto_5
    return-void

    .line 156
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 157
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 158
    .local v1, "phoneId":Ljava/lang/Integer;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_RADIO_AVAILABLE, phoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->logv(Ljava/lang/String;)V

    .line 159
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->processRadioAvailable(Landroid/os/AsyncResult;I)V

    goto :goto_5

    .line 163
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "phoneId":Ljava/lang/Integer;
    :pswitch_2c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 164
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 165
    .restart local v1    # "phoneId":Ljava/lang/Integer;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_GET_RADIO_CAPS_DONE, phoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->logv(Ljava/lang/String;)V

    .line 166
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/RadioCapability;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v0, v2, v3}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->onGetRadioCapabilityDone(Landroid/os/AsyncResult;Lcom/android/internal/telephony/RadioCapability;I)V

    goto :goto_5

    .line 170
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "phoneId":Ljava/lang/Integer;
    :pswitch_56
    invoke-direct {p0}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->handleRadioCapsAvailable()V

    goto :goto_5

    .line 174
    :pswitch_5a
    const-string v2, " EVENT_UPDATE_BINDING_DONE "

    invoke-direct {p0, v2}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->logv(Ljava/lang/String;)V

    .line 175
    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v2}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->handleUpdateBindingDone(I)V

    goto :goto_5

    .line 179
    :pswitch_65
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 180
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 181
    .restart local v1    # "phoneId":Ljava/lang/Integer;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_RADIO_NOT_AVAILABLE, phoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->logd(Ljava/lang/String;)V

    .line 182
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->processRadioNotAvailable(Landroid/os/AsyncResult;I)V

    goto/16 :goto_5

    .line 154
    :pswitch_data_8c
    .packed-switch 0x1
        :pswitch_6
        :pswitch_65
        :pswitch_2c
        :pswitch_56
        :pswitch_5a
    .end packed-switch
.end method

.method public isSetNWModeInProgress()Z
    .registers 4

    .prologue
    .line 688
    const/4 v0, 0x0

    .line 690
    .local v0, "retVal":Z
    sget-object v2, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->sSetNwModeLock:Ljava/lang/Object;

    monitor-enter v2

    .line 691
    :try_start_4
    iget-boolean v0, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mIsSetPrefNwModeInProgress:Z

    .line 692
    monitor-exit v2

    .line 693
    return v0

    .line 692
    :catchall_8
    move-exception v1

    monitor-exit v2
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public radioCapabilityUpdated(ILcom/android/internal/telephony/RadioCapability;)V
    .registers 5
    .param p1, "phoneId"    # I
    .param p2, "rc"    # Lcom/android/internal/telephony/RadioCapability;

    .prologue
    .line 697
    iget-object v0, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mRadioCapability:[Lcom/android/internal/telephony/RadioCapability;

    aput-object p2, v0, p1

    .line 698
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " radioCapabilityUpdated phoneId["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] rc = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->logd(Ljava/lang/String;)V

    .line 699
    return-void
.end method

.method public declared-synchronized setPreferredNetworkType(IILandroid/os/Message;)V
    .registers 8
    .param p1, "phoneId"    # I
    .param p2, "networkType"    # I
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 527
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->isSetNWModeInProgress()Z

    move-result v2

    if-nez v2, :cond_d

    invoke-direct {p0}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->isUiccProvisionInProgress()Z

    move-result v2

    if-eqz v2, :cond_33

    .line 528
    :cond_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPreferredNetworkType: In Progress, nwmode["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->loge(Ljava/lang/String;)V

    .line 529
    const/4 v2, 0x2

    invoke-direct {p0, p3, v2}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->sendResponseToTarget(Landroid/os/Message;I)V
    :try_end_31
    .catchall {:try_start_1 .. :try_end_31} :catchall_b7

    .line 563
    :goto_31
    monitor-exit p0

    return-void

    .line 532
    :cond_33
    :try_start_33
    iget-object v2, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mQtiSubscriptionController:Lcom/qti/internal/telephony/QtiSubscriptionController;

    invoke-virtual {v2, p1}, Lcom/qti/internal/telephony/QtiSubscriptionController;->getSubId(I)[I

    move-result-object v1

    .line 533
    .local v1, "subId":[I
    const/4 v0, 0x0

    .line 535
    .local v0, "isSubActive":Z
    if-eqz v1, :cond_48

    array-length v2, v1

    if-lez v2, :cond_48

    .line 536
    iget-object v2, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mQtiSubscriptionController:Lcom/qti/internal/telephony/QtiSubscriptionController;

    const/4 v3, 0x0

    aget v3, v1, v3

    invoke-virtual {v2, v3}, Lcom/qti/internal/telephony/QtiSubscriptionController;->isActiveSubId(I)Z

    move-result v0

    .line 539
    :cond_48
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPreferredNetworkType: nwMode["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isActive = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->logd(Ljava/lang/String;)V

    .line 542
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->setNWModeInProgressFlag(Z)V

    .line 543
    invoke-direct {p0}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->syncPreferredNwModeFromDB()V

    .line 546
    iget-object v2, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mPrefNwMode:[I

    aput p2, v2, p1

    .line 554
    invoke-direct {p0}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->isFlexMappingAllowedOnInactiveSub()Z

    move-result v2

    if-nez v2, :cond_85

    if-eqz v0, :cond_ba

    :cond_85
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->updateStackBindingIfRequired(Z)Z

    move-result v2

    if-eqz v2, :cond_ba

    .line 556
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPreferredNetworkType: store msg, nwMode["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->logv(Ljava/lang/String;)V

    .line 557
    iget-object v2, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mStoredResponse:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b5
    .catchall {:try_start_33 .. :try_end_b5} :catchall_b7

    goto/16 :goto_31

    .line 527
    .end local v0    # "isSubActive":Z
    .end local v1    # "subId":[I
    :catchall_b7
    move-exception v2

    monitor-exit p0

    throw v2

    .line 559
    .restart local v0    # "isSubActive":Z
    .restart local v1    # "subId":[I
    :cond_ba
    :try_start_ba
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPreferredNetworkType: sending nwMode["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->logv(Ljava/lang/String;)V

    .line 560
    iget-object v2, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, p1

    invoke-interface {v2, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 561
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->setNWModeInProgressFlag(Z)V
    :try_end_e5
    .catchall {:try_start_ba .. :try_end_e5} :catchall_b7

    goto/16 :goto_31
.end method

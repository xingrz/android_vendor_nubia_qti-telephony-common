.class public Lcom/qti/internal/telephony/ExtTelephonyServiceImpl;
.super Lcom/android/internal/telephony/IExtTelephony$Stub;
.source "ExtTelephonyServiceImpl.java"


# static fields
.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "ExtTelephonyServiceImpl"

.field private static final TELEPHONY_SERVICE_NAME:Ljava/lang/String; = "extphone"

.field private static sInstance:Lcom/qti/internal/telephony/ExtTelephonyServiceImpl;


# instance fields
.field private mCardProvisioner:Lcom/qti/internal/telephony/UiccCardProvisioner;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 30
    const/4 v0, 0x0

    sput-object v0, Lcom/qti/internal/telephony/ExtTelephonyServiceImpl;->sInstance:Lcom/qti/internal/telephony/ExtTelephonyServiceImpl;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/internal/telephony/IExtTelephony$Stub;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qti/internal/telephony/ExtTelephonyServiceImpl;->mCardProvisioner:Lcom/qti/internal/telephony/UiccCardProvisioner;

    .line 52
    const-string v0, "init constructor "

    invoke-direct {p0, v0}, Lcom/qti/internal/telephony/ExtTelephonyServiceImpl;->logd(Ljava/lang/String;)V

    .line 54
    iput-object p1, p0, Lcom/qti/internal/telephony/ExtTelephonyServiceImpl;->mContext:Landroid/content/Context;

    .line 55
    new-instance v0, Lcom/qti/internal/telephony/UiccCardProvisioner;

    invoke-direct {v0, p1}, Lcom/qti/internal/telephony/UiccCardProvisioner;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/qti/internal/telephony/ExtTelephonyServiceImpl;->mCardProvisioner:Lcom/qti/internal/telephony/UiccCardProvisioner;

    .line 57
    const-string v0, "extphone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_21

    .line 58
    const-string v0, "extphone"

    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 60
    :cond_21
    return-void
.end method

.method public static getInstance()Lcom/qti/internal/telephony/ExtTelephonyServiceImpl;
    .registers 2

    .prologue
    .line 45
    sget-object v0, Lcom/qti/internal/telephony/ExtTelephonyServiceImpl;->sInstance:Lcom/qti/internal/telephony/ExtTelephonyServiceImpl;

    if-nez v0, :cond_b

    .line 46
    const-string v0, "ExtTelephonyServiceImpl"

    const-string v1, "getInstance null"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :cond_b
    sget-object v0, Lcom/qti/internal/telephony/ExtTelephonyServiceImpl;->sInstance:Lcom/qti/internal/telephony/ExtTelephonyServiceImpl;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)Lcom/qti/internal/telephony/ExtTelephonyServiceImpl;
    .registers 5
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 34
    const-class v1, Lcom/qti/internal/telephony/ExtTelephonyServiceImpl;

    monitor-enter v1

    .line 35
    :try_start_3
    sget-object v0, Lcom/qti/internal/telephony/ExtTelephonyServiceImpl;->sInstance:Lcom/qti/internal/telephony/ExtTelephonyServiceImpl;

    if-nez v0, :cond_12

    .line 36
    new-instance v0, Lcom/qti/internal/telephony/ExtTelephonyServiceImpl;

    invoke-direct {v0, p0}, Lcom/qti/internal/telephony/ExtTelephonyServiceImpl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/qti/internal/telephony/ExtTelephonyServiceImpl;->sInstance:Lcom/qti/internal/telephony/ExtTelephonyServiceImpl;

    .line 40
    :goto_e
    sget-object v0, Lcom/qti/internal/telephony/ExtTelephonyServiceImpl;->sInstance:Lcom/qti/internal/telephony/ExtTelephonyServiceImpl;

    monitor-exit v1

    return-object v0

    .line 38
    :cond_12
    const-string v0, "ExtTelephonyServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times!  sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/qti/internal/telephony/ExtTelephonyServiceImpl;->sInstance:Lcom/qti/internal/telephony/ExtTelephonyServiceImpl;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 41
    :catchall_2d
    move-exception v0

    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw v0
.end method

.method private logd(Ljava/lang/String;)V
    .registers 3
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 164
    const-string v0, "ExtTelephonyServiceImpl"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .registers 3
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 168
    const-string v0, "ExtTelephonyServiceImpl"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    return-void
.end method


# virtual methods
.method public activateUiccCard(I)I
    .registers 3
    .param p1, "slotId"    # I

    .prologue
    .line 74
    iget-object v0, p0, Lcom/qti/internal/telephony/ExtTelephonyServiceImpl;->mCardProvisioner:Lcom/qti/internal/telephony/UiccCardProvisioner;

    invoke-virtual {v0, p1}, Lcom/qti/internal/telephony/UiccCardProvisioner;->activateUiccCard(I)I

    move-result v0

    return v0
.end method

.method public deactivateUiccCard(I)I
    .registers 3
    .param p1, "slotId"    # I

    .prologue
    .line 79
    iget-object v0, p0, Lcom/qti/internal/telephony/ExtTelephonyServiceImpl;->mCardProvisioner:Lcom/qti/internal/telephony/UiccCardProvisioner;

    invoke-virtual {v0, p1}, Lcom/qti/internal/telephony/UiccCardProvisioner;->deactivateUiccCard(I)I

    move-result v0

    return v0
.end method

.method public getCurrentUiccCardProvisioningStatus(I)I
    .registers 3
    .param p1, "slotId"    # I

    .prologue
    .line 64
    iget-object v0, p0, Lcom/qti/internal/telephony/ExtTelephonyServiceImpl;->mCardProvisioner:Lcom/qti/internal/telephony/UiccCardProvisioner;

    invoke-virtual {v0, p1}, Lcom/qti/internal/telephony/UiccCardProvisioner;->getCurrentUiccCardProvisioningStatus(I)I

    move-result v0

    return v0
.end method

.method public getPhoneIdForECall()I
    .registers 2

    .prologue
    .line 104
    invoke-static {}, Lcom/qti/internal/telephony/QtiEmergencyCallHelper;->getPhoneIdForECall()I

    move-result v0

    return v0
.end method

.method public getPrimaryStackPhoneId()I
    .locals 1

    .prologue
    .line 142
    invoke-static {}, Lcom/qti/internal/telephony/QtiEmergencyCallHelper;->getPrimaryStackPhoneId()I

    move-result v0

    return v0
.end method

.method public getUiccApplicationCount(I)I
    .registers 5
    .param p1, "slotId"    # I

    .prologue
    .line 117
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v0

    .line 118
    .local v0, "card":Lcom/android/internal/telephony/uicc/UiccCard;
    const/4 v1, 0x0

    .line 119
    .local v1, "count":I
    if-eqz v0, :cond_f

    .line 120
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCard;->getNumApplications()I

    move-result v1

    .line 122
    :cond_f
    return v1
.end method

.method public getUiccApplicationState(II)I
    .registers 6
    .param p1, "slotId"    # I
    .param p2, "appIndex"    # I

    .prologue
    .line 155
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v1

    .line 156
    .local v1, "card":Lcom/android/internal/telephony/uicc/UiccCard;
    const/4 v0, 0x0

    .line 157
    .local v0, "appState":I
    if-eqz v1, :cond_17

    .line 158
    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplicationIndex(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->ordinal()I

    move-result v0

    .line 160
    :cond_17
    return v0
.end method

.method public getUiccApplicationType(II)I
    .registers 6
    .param p1, "slotId"    # I
    .param p2, "appIndex"    # I

    .prologue
    .line 136
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v1

    .line 137
    .local v1, "card":Lcom/android/internal/telephony/uicc/UiccCard;
    const/4 v0, 0x0

    .line 138
    .local v0, "appType":I
    if-eqz v1, :cond_17

    .line 139
    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplicationIndex(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->ordinal()I

    move-result v0

    .line 141
    :cond_17
    return v0
.end method

.method public getUiccCardProvisioningUserPreference(I)I
    .registers 3
    .param p1, "slotId"    # I

    .prologue
    .line 69
    iget-object v0, p0, Lcom/qti/internal/telephony/ExtTelephonyServiceImpl;->mCardProvisioner:Lcom/qti/internal/telephony/UiccCardProvisioner;

    invoke-virtual {v0, p1}, Lcom/qti/internal/telephony/UiccCardProvisioner;->getUiccCardProvisioningUserPreference(I)I

    move-result v0

    return v0
.end method

.method public getUiccProvisionerInstance()Lcom/qti/internal/telephony/UiccCardProvisioner;
    .registers 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/qti/internal/telephony/ExtTelephonyServiceImpl;->mCardProvisioner:Lcom/qti/internal/telephony/UiccCardProvisioner;

    return-object v0
.end method

.method public isFdnEnabled()Z
    .registers 3

    .prologue
    .line 109
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    .line 110
    .local v0, "card":Lcom/android/internal/telephony/IccCard;
    if-eqz v0, :cond_f

    .line 111
    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getIccFdnEnabled()Z

    move-result v1

    .line 113
    :goto_e
    return v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public isSMSPromptEnabled()Z
    .registers 3

    .prologue
    .line 84
    invoke-static {}, Lcom/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v0

    if-nez v0, :cond_d

    .line 85
    const-string v0, "ExtTelephonyServiceImpl"

    const-string v1, "QtiSubscriptionController getInstance is null"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_d
    invoke-static {}, Lcom/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qti/internal/telephony/QtiSubscriptionController;->isSMSPromptEnabled()Z

    move-result v0

    return v0
.end method

.method public setSMSPromptEnabled(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .prologue
    .line 92
    invoke-static {}, Lcom/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v0

    if-nez v0, :cond_d

    .line 93
    const-string v0, "ExtTelephonyServiceImpl"

    const-string v1, "QtiSubscriptionController getInstance is null"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_d
    invoke-static {}, Lcom/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/qti/internal/telephony/QtiSubscriptionController;->setSMSPromptEnabled(Z)V

    .line 96
    return-void
.end method

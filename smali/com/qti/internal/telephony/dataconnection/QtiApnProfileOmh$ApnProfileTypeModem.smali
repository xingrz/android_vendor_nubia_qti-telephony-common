.class final enum Lcom/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;
.super Ljava/lang/Enum;
.source "QtiApnProfileOmh.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/internal/telephony/dataconnection/QtiApnProfileOmh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ApnProfileTypeModem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;

.field public static final enum PROFILE_TYPE_LBS:Lcom/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;

.field public static final enum PROFILE_TYPE_MMS:Lcom/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;

.field public static final enum PROFILE_TYPE_TETHERED:Lcom/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;

.field public static final enum PROFILE_TYPE_UNSPECIFIED:Lcom/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;


# instance fields
.field id:I

.field serviceType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 36
    new-instance v0, Lcom/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;

    const-string v1, "PROFILE_TYPE_UNSPECIFIED"

    const-string v2, "default"

    invoke-direct {v0, v1, v6, v4, v2}, Lcom/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;->PROFILE_TYPE_UNSPECIFIED:Lcom/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;

    .line 37
    new-instance v0, Lcom/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;

    const-string v1, "PROFILE_TYPE_MMS"

    const-string v2, "mms"

    invoke-direct {v0, v1, v4, v5, v2}, Lcom/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;->PROFILE_TYPE_MMS:Lcom/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;

    .line 38
    new-instance v0, Lcom/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;

    const-string v1, "PROFILE_TYPE_LBS"

    const/16 v2, 0x20

    const-string v3, "supl"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;->PROFILE_TYPE_LBS:Lcom/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;

    .line 39
    new-instance v0, Lcom/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;

    const-string v1, "PROFILE_TYPE_TETHERED"

    const/16 v2, 0x40

    const-string v3, "dun"

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;->PROFILE_TYPE_TETHERED:Lcom/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;

    .line 34
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;

    sget-object v1, Lcom/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;->PROFILE_TYPE_UNSPECIFIED:Lcom/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;

    aput-object v1, v0, v6

    sget-object v1, Lcom/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;->PROFILE_TYPE_MMS:Lcom/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;

    aput-object v1, v0, v4

    sget-object v1, Lcom/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;->PROFILE_TYPE_LBS:Lcom/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;

    aput-object v1, v0, v5

    sget-object v1, Lcom/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;->PROFILE_TYPE_TETHERED:Lcom/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;

    aput-object v1, v0, v7

    sput-object v0, Lcom/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;->$VALUES:[Lcom/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .registers 5
    .param p3, "i"    # I
    .param p4, "serviceType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 45
    iput p3, p0, Lcom/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;->id:I

    .line 46
    iput-object p4, p0, Lcom/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;->serviceType:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public static getApnProfileTypeModem(Ljava/lang/String;)Lcom/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;
    .registers 2
    .param p0, "serviceType"    # Ljava/lang/String;

    .prologue
    .line 59
    const-string v0, "default"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 60
    sget-object v0, Lcom/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;->PROFILE_TYPE_UNSPECIFIED:Lcom/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;

    .line 69
    :goto_a
    return-object v0

    .line 61
    :cond_b
    const-string v0, "mms"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 62
    sget-object v0, Lcom/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;->PROFILE_TYPE_MMS:Lcom/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;

    goto :goto_a

    .line 63
    :cond_16
    const-string v0, "supl"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 64
    sget-object v0, Lcom/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;->PROFILE_TYPE_LBS:Lcom/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;

    goto :goto_a

    .line 65
    :cond_21
    const-string v0, "dun"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 66
    sget-object v0, Lcom/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;->PROFILE_TYPE_TETHERED:Lcom/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;

    goto :goto_a

    .line 69
    :cond_2c
    sget-object v0, Lcom/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;->PROFILE_TYPE_UNSPECIFIED:Lcom/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;

    goto :goto_a
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 34
    const-class v0, Lcom/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;

    return-object v0
.end method

.method public static values()[Lcom/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;
    .registers 1

    .prologue
    .line 34
    sget-object v0, Lcom/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;->$VALUES:[Lcom/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;

    invoke-virtual {v0}, [Lcom/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;

    return-object v0
.end method


# virtual methods
.method public getDataServiceType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;->serviceType:Ljava/lang/String;

    return-object v0
.end method

.method public getid()I
    .registers 2

    .prologue
    .line 50
    iget v0, p0, Lcom/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;->id:I

    return v0
.end method

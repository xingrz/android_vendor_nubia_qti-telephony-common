.class public Lcom/qti/internal/telephony/uicc/QtiPlmnOverride;
.super Ljava/lang/Object;
.source "QtiPlmnOverride.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "PlmnOverride"

.field static final PARTNER_PLMN_OVERRIDE_PATH:Ljava/lang/String; = "etc/plmn-conf.xml"


# instance fields
.field private mCarrierPlmnMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/qti/internal/telephony/uicc/QtiPlmnOverride;->mCarrierPlmnMap:Ljava/util/HashMap;

    .line 43
    invoke-direct {p0}, Lcom/qti/internal/telephony/uicc/QtiPlmnOverride;->loadPlmnOverrides()V

    .line 44
    return-void
.end method

.method private loadPlmnOverrides()V
    .registers 11

    .prologue
    .line 57
    new-instance v5, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v7

    const-string v8, "etc/plmn-conf.xml"

    invoke-direct {v5, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 61
    .local v5, "plmnFile":Ljava/io/File;
    :try_start_b
    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_10
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_10} :catch_2f

    .line 69
    .local v6, "plmnReader":Ljava/io/FileReader;
    :try_start_10
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 70
    .local v4, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v4, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 72
    const-string v7, "plmnOverrides"

    invoke-static {v4, v7}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 75
    :goto_1c
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 77
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 78
    .local v2, "name":Ljava/lang/String;
    const-string v7, "plmnOverride"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_59

    .line 87
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_2e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_10 .. :try_end_2e} :catch_6d
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_2e} :catch_87

    .line 93
    .end local v2    # "name":Ljava/lang/String;
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "plmnReader":Ljava/io/FileReader;
    :goto_2e
    return-void

    .line 62
    :catch_2f
    move-exception v1

    .line 63
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string v7, "PlmnOverride"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Can not open "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "etc/plmn-conf.xml"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e

    .line 82
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .restart local v2    # "name":Ljava/lang/String;
    .restart local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6    # "plmnReader":Ljava/io/FileReader;
    :cond_59
    const/4 v7, 0x0

    :try_start_5a
    const-string v8, "numeric"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 83
    .local v3, "numeric":Ljava/lang/String;
    const/4 v7, 0x0

    const-string v8, "plmn"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "data":Ljava/lang/String;
    iget-object v7, p0, Lcom/qti/internal/telephony/uicc/QtiPlmnOverride;->mCarrierPlmnMap:Ljava/util/HashMap;

    invoke-virtual {v7, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5a .. :try_end_6c} :catch_6d
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_6c} :catch_87

    goto :goto_1c

    .line 88
    .end local v0    # "data":Ljava/lang/String;
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "numeric":Ljava/lang/String;
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_6d
    move-exception v1

    .line 89
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v7, "PlmnOverride"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception in plmn-conf parser "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e

    .line 90
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_87
    move-exception v1

    .line 91
    .local v1, "e":Ljava/io/IOException;
    const-string v7, "PlmnOverride"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception in plmn-conf parser "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e
.end method


# virtual methods
.method public containsCarrier(Ljava/lang/String;)Z
    .registers 3
    .param p1, "carrier"    # Ljava/lang/String;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/qti/internal/telephony/uicc/QtiPlmnOverride;->mCarrierPlmnMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getPlmn(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "carrier"    # Ljava/lang/String;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/qti/internal/telephony/uicc/QtiPlmnOverride;->mCarrierPlmnMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

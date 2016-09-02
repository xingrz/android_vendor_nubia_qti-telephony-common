.class public Lcom/qualcomm/qcrilhook/EmbmsOemHook$SaiIndication;
.super Ljava/lang/Object;
.source "EmbmsOemHook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qcrilhook/EmbmsOemHook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SaiIndication"
.end annotation


# instance fields
.field public availableSaiList:[I

.field public campedSaiList:[I

.field public numSaiPerGroupList:[I

.field final synthetic this$0:Lcom/qualcomm/qcrilhook/EmbmsOemHook;

.field public traceId:I


# direct methods
.method public constructor <init>(Lcom/qualcomm/qcrilhook/EmbmsOemHook;Ljava/nio/ByteBuffer;)V
    .registers 13
    .param p2, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    const/4 v7, 0x0

    .line 1245
    iput-object p1, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$SaiIndication;->this$0:Lcom/qualcomm/qcrilhook/EmbmsOemHook;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1240
    iput-object v7, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$SaiIndication;->campedSaiList:[I

    .line 1241
    iput-object v7, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$SaiIndication;->numSaiPerGroupList:[I

    .line 1242
    iput-object v7, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$SaiIndication;->availableSaiList:[I

    .line 1243
    const/4 v7, 0x0

    iput v7, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$SaiIndication;->traceId:I

    .line 1247
    :goto_f
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v7

    if-eqz v7, :cond_10c

    .line 1249
    :try_start_15
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    .line 1250
    .local v6, "type":I
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    .line 1251
    .local v3, "length":S
    const/4 v4, 0x0

    .line 1254
    .local v4, "list":[I
    packed-switch v6, :pswitch_data_10e

    .line 1289
    # getter for: Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->access$000()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SaiIndication: Unexpected Type "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b
    .catch Ljava/nio/BufferUnderflowException; {:try_start_15 .. :try_end_3b} :catch_3c

    goto :goto_f

    .line 1292
    .end local v3    # "length":S
    .end local v4    # "list":[I
    .end local v6    # "type":I
    :catch_3c
    move-exception v1

    .line 1293
    .local v1, "e":Ljava/nio/BufferUnderflowException;
    # getter for: Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->access$000()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Unexpected buffer format when parsing for SaiIndication"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 1256
    .end local v1    # "e":Ljava/nio/BufferUnderflowException;
    .restart local v3    # "length":S
    .restart local v4    # "list":[I
    .restart local v6    # "type":I
    :pswitch_47
    :try_start_47
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    .line 1257
    .local v5, "listLength":B
    new-array v4, v5, [I

    .line 1258
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4e
    if-ge v2, v5, :cond_59

    .line 1259
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    aput v7, v4, v2

    .line 1258
    add-int/lit8 v2, v2, 0x1

    goto :goto_4e

    .line 1261
    :cond_59
    iput-object v4, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$SaiIndication;->campedSaiList:[I

    .line 1262
    # getter for: Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->access$000()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Camped list = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$SaiIndication;->campedSaiList:[I

    invoke-static {v9}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 1265
    .end local v2    # "i":I
    .end local v5    # "listLength":B
    :pswitch_7c
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    .line 1266
    .restart local v5    # "listLength":B
    new-array v4, v5, [I

    .line 1267
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_83
    if-ge v2, v5, :cond_8e

    .line 1268
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    aput v7, v4, v2

    .line 1267
    add-int/lit8 v2, v2, 0x1

    goto :goto_83

    .line 1270
    :cond_8e
    iput-object v4, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$SaiIndication;->numSaiPerGroupList:[I

    .line 1271
    # getter for: Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->access$000()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Number of SAI per group list = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$SaiIndication;->numSaiPerGroupList:[I

    invoke-static {v9}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    .line 1275
    .end local v2    # "i":I
    .end local v5    # "listLength":B
    :pswitch_b2
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    .line 1276
    .local v0, "availableLength":S
    new-array v4, v0, [I

    .line 1277
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_b9
    if-ge v2, v0, :cond_c4

    .line 1278
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    aput v7, v4, v2

    .line 1277
    add-int/lit8 v2, v2, 0x1

    goto :goto_b9

    .line 1280
    :cond_c4
    iput-object v4, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$SaiIndication;->availableSaiList:[I

    .line 1281
    # getter for: Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->access$000()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Available SAI list = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$SaiIndication;->availableSaiList:[I

    invoke-static {v9}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    .line 1285
    .end local v0    # "availableLength":S
    .end local v2    # "i":I
    :pswitch_e8
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    iput v7, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$SaiIndication;->traceId:I

    .line 1286
    # getter for: Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->access$000()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "traceId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$SaiIndication;->traceId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10a
    .catch Ljava/nio/BufferUnderflowException; {:try_start_47 .. :try_end_10a} :catch_3c

    goto/16 :goto_f

    .line 1296
    .end local v3    # "length":S
    .end local v4    # "list":[I
    .end local v6    # "type":I
    :cond_10c
    return-void

    .line 1254
    nop

    :pswitch_data_10e
    .packed-switch 0x1
        :pswitch_e8
        :pswitch_47
        :pswitch_7c
        :pswitch_b2
    .end packed-switch
.end method

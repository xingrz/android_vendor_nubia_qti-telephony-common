.class public Lcom/qualcomm/qcrilhook/EmbmsOemHook$E911StateIndication;
.super Ljava/lang/Object;
.source "EmbmsOemHook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qcrilhook/EmbmsOemHook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "E911StateIndication"
.end annotation


# instance fields
.field public code:I

.field public state:I

.field final synthetic this$0:Lcom/qualcomm/qcrilhook/EmbmsOemHook;

.field public traceId:I


# direct methods
.method public constructor <init>(Lcom/qualcomm/qcrilhook/EmbmsOemHook;Ljava/nio/ByteBuffer;S)V
    .registers 10
    .param p2, "buf"    # Ljava/nio/ByteBuffer;
    .param p3, "msgId"    # S

    .prologue
    .line 1380
    iput-object p1, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$E911StateIndication;->this$0:Lcom/qualcomm/qcrilhook/EmbmsOemHook;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1377
    const/4 v3, 0x0

    iput v3, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$E911StateIndication;->traceId:I

    .line 1382
    :goto_8
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_b6

    .line 1384
    :try_start_e
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    invoke-static {v3}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->toUnsigned(B)S

    move-result v2

    .line 1385
    .local v2, "type":I
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    invoke-static {v3}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->toUnsigned(S)I

    move-result v1

    .line 1387
    .local v1, "length":I
    sparse-switch v2, :sswitch_data_b8

    .line 1407
    # getter for: Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "E911 State: Unexpected Type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b
    .catch Ljava/nio/BufferUnderflowException; {:try_start_e .. :try_end_3b} :catch_3c

    goto :goto_8

    .line 1410
    .end local v1    # "length":I
    .end local v2    # "type":I
    :catch_3c
    move-exception v0

    .line 1411
    .local v0, "e":Ljava/nio/BufferUnderflowException;
    # getter for: Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Unexpected buffer format when parsing for E911 Notification"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 1392
    .end local v0    # "e":Ljava/nio/BufferUnderflowException;
    .restart local v1    # "length":I
    .restart local v2    # "type":I
    :sswitch_47
    const/16 v3, 0x1b

    if-ne p3, v3, :cond_6e

    .line 1393
    :try_start_4b
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    iput v3, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$E911StateIndication;->code:I

    .line 1394
    # getter for: Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "response code = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$E911StateIndication;->code:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 1399
    :cond_6e
    :sswitch_6e
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    iput v3, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$E911StateIndication;->state:I

    .line 1400
    # getter for: Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "E911 State = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$E911StateIndication;->state:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 1403
    :sswitch_92
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    iput v3, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$E911StateIndication;->traceId:I

    .line 1404
    # getter for: Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "traceId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$E911StateIndication;->traceId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b4
    .catch Ljava/nio/BufferUnderflowException; {:try_start_4b .. :try_end_b4} :catch_3c

    goto/16 :goto_8

    .line 1414
    .end local v1    # "length":I
    .end local v2    # "type":I
    :cond_b6
    return-void

    .line 1387
    nop

    :sswitch_data_b8
    .sparse-switch
        0x1 -> :sswitch_92
        0x2 -> :sswitch_47
        0x10 -> :sswitch_6e
    .end sparse-switch
.end method

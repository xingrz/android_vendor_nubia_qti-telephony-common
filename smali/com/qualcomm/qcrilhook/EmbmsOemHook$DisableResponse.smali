.class public Lcom/qualcomm/qcrilhook/EmbmsOemHook$DisableResponse;
.super Ljava/lang/Object;
.source "EmbmsOemHook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qcrilhook/EmbmsOemHook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DisableResponse"
.end annotation


# instance fields
.field public callId:B

.field public code:I

.field public status:I

.field final synthetic this$0:Lcom/qualcomm/qcrilhook/EmbmsOemHook;

.field public traceId:I


# direct methods
.method public constructor <init>(Lcom/qualcomm/qcrilhook/EmbmsOemHook;ILjava/nio/ByteBuffer;)V
    .registers 9
    .param p2, "error"    # I
    .param p3, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    const/4 v2, 0x0

    .line 1561
    iput-object p1, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$DisableResponse;->this$0:Lcom/qualcomm/qcrilhook/EmbmsOemHook;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1556
    iput v2, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$DisableResponse;->code:I

    .line 1559
    iput-byte v2, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$DisableResponse;->callId:B

    .line 1562
    iput p2, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$DisableResponse;->status:I

    .line 1565
    :goto_c
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_aa

    .line 1566
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    invoke-static {v2}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->toUnsigned(B)S

    move-result v1

    .line 1567
    .local v1, "type":I
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    invoke-static {v2}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->toUnsigned(S)I

    move-result v0

    .line 1569
    .local v0, "length":I
    sparse-switch v1, :sswitch_data_ac

    .line 1583
    # getter for: Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DisableResponse: Unexpected Type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 1571
    :sswitch_40
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    iput-byte v2, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$DisableResponse;->callId:B

    .line 1572
    # getter for: Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-byte v4, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$DisableResponse;->callId:B

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 1575
    :sswitch_63
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$DisableResponse;->code:I

    .line 1576
    # getter for: Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "code = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$DisableResponse;->code:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 1579
    :sswitch_86
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$DisableResponse;->traceId:I

    .line 1580
    # getter for: Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "traceId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$DisableResponse;->traceId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 1587
    .end local v0    # "length":I
    .end local v1    # "type":I
    :cond_aa
    return-void

    .line 1569
    nop

    :sswitch_data_ac
    .sparse-switch
        0x1 -> :sswitch_86
        0x2 -> :sswitch_63
        0x10 -> :sswitch_40
    .end sparse-switch
.end method

.class public Lcom/qualcomm/qcrilhook/EmbmsOemHook$SigStrengthResponse;
.super Ljava/lang/Object;
.source "EmbmsOemHook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qcrilhook/EmbmsOemHook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SigStrengthResponse"
.end annotation


# instance fields
.field public code:I

.field public esnr:[F

.field public mbsfnAreaId:[I

.field public snr:[F

.field public status:I

.field final synthetic this$0:Lcom/qualcomm/qcrilhook/EmbmsOemHook;

.field public tmgiPerMbsfn:[I

.field public tmgilist:[B

.field public traceId:I


# direct methods
.method public constructor <init>(Lcom/qualcomm/qcrilhook/EmbmsOemHook;ILjava/nio/ByteBuffer;)V
    .registers 21
    .param p2, "status"    # I
    .param p3, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 2030
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/qualcomm/qcrilhook/EmbmsOemHook$SigStrengthResponse;->this$0:Lcom/qualcomm/qcrilhook/EmbmsOemHook;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2021
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$SigStrengthResponse;->code:I

    .line 2022
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$SigStrengthResponse;->traceId:I

    .line 2024
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$SigStrengthResponse;->snr:[F

    .line 2025
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$SigStrengthResponse;->mbsfnAreaId:[I

    .line 2026
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$SigStrengthResponse;->esnr:[F

    .line 2027
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$SigStrengthResponse;->tmgiPerMbsfn:[I

    .line 2028
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$SigStrengthResponse;->tmgilist:[B

    .line 2031
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/qualcomm/qcrilhook/EmbmsOemHook$SigStrengthResponse;->status:I

    .line 2033
    :goto_32
    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v14

    if-eqz v14, :cond_1de

    .line 2035
    :try_start_38
    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->get()B

    move-result v13

    .line 2036
    .local v13, "type":I
    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v6

    .line 2038
    .local v6, "length":S
    sparse-switch v13, :sswitch_data_220

    .line 2089
    # getter for: Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->access$000()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "SigStrengthResponse: Unexpected Type "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5d
    .catch Ljava/nio/BufferUnderflowException; {:try_start_38 .. :try_end_5d} :catch_5e

    goto :goto_32

    .line 2092
    .end local v6    # "length":S
    .end local v13    # "type":I
    :catch_5e
    move-exception v2

    .line 2093
    .local v2, "e":Ljava/nio/BufferUnderflowException;
    # getter for: Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->access$000()Ljava/lang/String;

    move-result-object v14

    const-string v15, "Invalid format of byte buffer received in SigStrengthResponse"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_32

    .line 2040
    .end local v2    # "e":Ljava/nio/BufferUnderflowException;
    .restart local v6    # "length":S
    .restart local v13    # "type":I
    :sswitch_69
    :try_start_69
    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->get()B

    move-result v10

    .line 2041
    .local v10, "snrLength":B
    new-array v9, v10, [F

    .line 2042
    .local v9, "snrArray":[F
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_70
    if-ge v5, v10, :cond_7b

    .line 2043
    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v14

    aput v14, v9, v5

    .line 2042
    add-int/lit8 v5, v5, 0x1

    goto :goto_70

    .line 2045
    :cond_7b
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$SigStrengthResponse;->snr:[F

    .line 2046
    # getter for: Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->access$000()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "SNR = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$SigStrengthResponse;->snr:[F

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_32

    .line 2049
    .end local v5    # "i":I
    .end local v9    # "snrArray":[F
    .end local v10    # "snrLength":B
    :sswitch_a4
    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->get()B

    move-result v8

    .line 2050
    .local v8, "mbsfnLength":B
    new-array v7, v8, [I

    .line 2051
    .local v7, "mbsfnArray":[I
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_ab
    if-ge v5, v8, :cond_b6

    .line 2052
    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v14

    aput v14, v7, v5

    .line 2051
    add-int/lit8 v5, v5, 0x1

    goto :goto_ab

    .line 2054
    :cond_b6
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$SigStrengthResponse;->mbsfnAreaId:[I

    .line 2055
    # getter for: Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->access$000()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "MBSFN_Area_ID = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$SigStrengthResponse;->mbsfnAreaId:[I

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_32

    .line 2058
    .end local v5    # "i":I
    .end local v7    # "mbsfnArray":[I
    .end local v8    # "mbsfnLength":B
    :sswitch_e0
    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    .line 2059
    .local v4, "esnrLength":B
    new-array v3, v4, [F

    .line 2060
    .local v3, "esnrArray":[F
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_e7
    if-ge v5, v4, :cond_f2

    .line 2061
    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v14

    aput v14, v3, v5

    .line 2060
    add-int/lit8 v5, v5, 0x1

    goto :goto_e7

    .line 2063
    :cond_f2
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$SigStrengthResponse;->esnr:[F

    .line 2064
    # getter for: Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->access$000()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "EXCESS SNR = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$SigStrengthResponse;->esnr:[F

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_32

    .line 2067
    .end local v3    # "esnrArray":[F
    .end local v4    # "esnrLength":B
    .end local v5    # "i":I
    :sswitch_11c
    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->get()B

    move-result v12

    .line 2068
    .local v12, "tmgiPerMbsfnLength":B
    new-array v11, v12, [I

    .line 2069
    .local v11, "tmgiPerMbsfnArray":[I
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_123
    if-ge v5, v12, :cond_12e

    .line 2070
    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v14

    aput v14, v11, v5

    .line 2069
    add-int/lit8 v5, v5, 0x1

    goto :goto_123

    .line 2072
    :cond_12e
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$SigStrengthResponse;->tmgiPerMbsfn:[I

    .line 2073
    # getter for: Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->access$000()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "NUMBER OF TMGI PER MBSFN = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$SigStrengthResponse;->tmgiPerMbsfn:[I

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_32

    .line 2077
    .end local v5    # "i":I
    .end local v11    # "tmgiPerMbsfnArray":[I
    .end local v12    # "tmgiPerMbsfnLength":B
    :sswitch_158
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    # invokes: Lcom/qualcomm/qcrilhook/EmbmsOemHook;->parseActiveTmgi(Ljava/nio/ByteBuffer;)[B
    invoke-static {v0, v1}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->access$600(Lcom/qualcomm/qcrilhook/EmbmsOemHook;Ljava/nio/ByteBuffer;)[B

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$SigStrengthResponse;->tmgilist:[B

    .line 2078
    # getter for: Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->access$000()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "tmgiArray = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$SigStrengthResponse;->tmgilist:[B

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_32

    .line 2081
    :sswitch_18a
    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$SigStrengthResponse;->code:I

    .line 2082
    # getter for: Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->access$000()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "code = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$SigStrengthResponse;->code:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_32

    .line 2085
    :sswitch_1b4
    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$SigStrengthResponse;->traceId:I

    .line 2086
    # getter for: Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->access$000()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "traceId = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$SigStrengthResponse;->traceId:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1dc
    .catch Ljava/nio/BufferUnderflowException; {:try_start_69 .. :try_end_1dc} :catch_5e

    goto/16 :goto_32

    .line 2097
    .end local v6    # "length":S
    .end local v13    # "type":I
    :cond_1de
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$SigStrengthResponse;->snr:[F

    if-nez v14, :cond_1eb

    const/4 v14, 0x0

    new-array v14, v14, [F

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$SigStrengthResponse;->snr:[F

    .line 2098
    :cond_1eb
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$SigStrengthResponse;->esnr:[F

    if-nez v14, :cond_1f8

    const/4 v14, 0x0

    new-array v14, v14, [F

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$SigStrengthResponse;->esnr:[F

    .line 2099
    :cond_1f8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$SigStrengthResponse;->tmgiPerMbsfn:[I

    if-nez v14, :cond_205

    const/4 v14, 0x0

    new-array v14, v14, [I

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$SigStrengthResponse;->tmgiPerMbsfn:[I

    .line 2100
    :cond_205
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$SigStrengthResponse;->mbsfnAreaId:[I

    if-nez v14, :cond_212

    const/4 v14, 0x0

    new-array v14, v14, [I

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$SigStrengthResponse;->mbsfnAreaId:[I

    .line 2101
    :cond_212
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$SigStrengthResponse;->tmgilist:[B

    if-nez v14, :cond_21f

    const/4 v14, 0x0

    new-array v14, v14, [B

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$SigStrengthResponse;->tmgilist:[B

    .line 2102
    :cond_21f
    return-void

    .line 2038
    :sswitch_data_220
    .sparse-switch
        0x1 -> :sswitch_1b4
        0x2 -> :sswitch_18a
        0x10 -> :sswitch_a4
        0x11 -> :sswitch_69
        0x12 -> :sswitch_e0
        0x13 -> :sswitch_11c
        0x14 -> :sswitch_158
    .end sparse-switch
.end method

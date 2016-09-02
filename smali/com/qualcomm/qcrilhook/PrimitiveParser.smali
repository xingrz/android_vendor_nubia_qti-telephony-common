.class public Lcom/qualcomm/qcrilhook/PrimitiveParser;
.super Ljava/lang/Object;
.source "PrimitiveParser.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkByte(I)V
    .registers 2
    .param p0, "val"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 29
    and-int/lit16 v0, p0, -0x100

    if-eqz v0, :cond_a

    .line 30
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-direct {v0}, Ljava/lang/NumberFormatException;-><init>()V

    throw v0

    .line 32
    :cond_a
    return-void
.end method

.method public static checkByte(S)V
    .registers 2
    .param p0, "val"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 22
    const v0, 0xff00

    and-int/2addr v0, p0

    if-eqz v0, :cond_c

    .line 23
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-direct {v0}, Ljava/lang/NumberFormatException;-><init>()V

    throw v0

    .line 25
    :cond_c
    return-void
.end method

.method public static checkInt(J)V
    .registers 6
    .param p0, "val"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 63
    const-wide v0, -0x100000000L

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_12

    .line 64
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-direct {v0}, Ljava/lang/NumberFormatException;-><init>()V

    throw v0

    .line 66
    :cond_12
    return-void
.end method

.method public static checkShort(I)V
    .registers 2
    .param p0, "val"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 51
    const/high16 v0, -0x10000

    and-int/2addr v0, p0

    if-eqz v0, :cond_b

    .line 52
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-direct {v0}, Ljava/lang/NumberFormatException;-><init>()V

    throw v0

    .line 54
    :cond_b
    return-void
.end method

.method public static parseByte(C)B
    .registers 2
    .param p0, "val"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-static {p0}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->checkByte(I)V

    .line 47
    and-int/lit16 v0, p0, 0xff

    int-to-byte v0, v0

    return v0
.end method

.method public static parseByte(I)B
    .registers 2
    .param p0, "val"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 41
    invoke-static {p0}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->checkByte(I)V

    .line 42
    and-int/lit16 v0, p0, 0xff

    int-to-byte v0, v0

    return v0
.end method

.method public static parseByte(S)B
    .registers 2
    .param p0, "val"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 36
    invoke-static {p0}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->checkByte(S)V

    .line 37
    and-int/lit16 v0, p0, 0xff

    int-to-byte v0, v0

    return v0
.end method

.method public static parseInt(J)I
    .registers 4
    .param p0, "val"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 70
    invoke-static {p0, p1}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->checkInt(J)V

    .line 71
    const-wide v0, 0xffffffffL

    and-long/2addr v0, p0

    long-to-int v0, v0

    return v0
.end method

.method public static parseLong(Ljava/lang/String;)J
    .registers 5
    .param p0, "val"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 79
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, p0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 80
    .local v0, "buf":Ljava/nio/ByteBuffer;
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 82
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v2

    return-wide v2
.end method

.method public static parseShort(I)S
    .registers 2
    .param p0, "val"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 58
    invoke-static {p0}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->checkShort(I)V

    .line 59
    const v0, 0xffff

    and-int/2addr v0, p0

    int-to-short v0, v0

    return v0
.end method

.method public static parseUnsignedByte(Ljava/lang/String;)B
    .registers 3
    .param p0, "in"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 99
    invoke-static {p0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v0

    .line 100
    .local v0, "t":S
    const v1, 0xff00

    and-int/2addr v1, v0

    if-eqz v1, :cond_10

    .line 101
    new-instance v1, Ljava/lang/NumberFormatException;

    invoke-direct {v1}, Ljava/lang/NumberFormatException;-><init>()V

    throw v1

    .line 103
    :cond_10
    and-int/lit16 v1, v0, 0xff

    int-to-byte v1, v1

    return v1
.end method

.method public static parseUnsignedInt(Ljava/lang/String;)I
    .registers 7
    .param p0, "in"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 115
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 116
    .local v0, "t":J
    const-wide v2, -0x100000000L

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_16

    .line 117
    new-instance v2, Ljava/lang/NumberFormatException;

    invoke-direct {v2}, Ljava/lang/NumberFormatException;-><init>()V

    throw v2

    .line 119
    :cond_16
    const-wide v2, 0xffffffffL

    and-long/2addr v2, v0

    long-to-int v2, v2

    return v2
.end method

.method public static parseUnsignedShort(Ljava/lang/String;)S
    .registers 3
    .param p0, "in"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 107
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 108
    .local v0, "t":I
    const/high16 v1, -0x10000

    and-int/2addr v1, v0

    if-eqz v1, :cond_f

    .line 109
    new-instance v1, Ljava/lang/NumberFormatException;

    invoke-direct {v1}, Ljava/lang/NumberFormatException;-><init>()V

    throw v1

    .line 111
    :cond_f
    const v1, 0xffff

    and-int/2addr v1, v0

    int-to-short v1, v1

    return v1
.end method

.method public static toUnsigned(S)I
    .registers 2
    .param p0, "val"    # S

    .prologue
    .line 90
    const v0, 0xffff

    and-int/2addr v0, p0

    return v0
.end method

.method public static toUnsigned(I)J
    .registers 3
    .param p0, "val"    # I

    .prologue
    .line 94
    and-int/lit8 v0, p0, -0x1

    int-to-long v0, v0

    return-wide v0
.end method

.method public static toUnsigned(B)S
    .registers 2
    .param p0, "val"    # B

    .prologue
    .line 86
    and-int/lit16 v0, p0, 0xff

    int-to-short v0, v0

    return v0
.end method

.method public static toUnsignedString(B)Ljava/lang/String;
    .registers 2
    .param p0, "in"    # B

    .prologue
    .line 123
    invoke-static {p0}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->toUnsigned(B)S

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toUnsignedString(I)Ljava/lang/String;
    .registers 3
    .param p0, "in"    # I

    .prologue
    .line 131
    invoke-static {p0}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->toUnsigned(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toUnsignedString(S)Ljava/lang/String;
    .registers 2
    .param p0, "in"    # S

    .prologue
    .line 127
    invoke-static {p0}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->toUnsigned(S)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

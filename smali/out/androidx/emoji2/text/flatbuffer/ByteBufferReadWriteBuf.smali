.class public Landroidx/emoji2/text/flatbuffer/ByteBufferReadWriteBuf;
.super Ljava/lang/Object;
.source "ByteBufferReadWriteBuf.java"

# interfaces
.implements Landroidx/emoji2/text/flatbuffer/ReadWriteBuf;


# instance fields
.field private final buffer:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .registers 3

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Landroidx/emoji2/text/flatbuffer/ByteBufferReadWriteBuf;->buffer:Ljava/nio/ByteBuffer;

    .line 12
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public data()[B
    .registers 2

    .line 57
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/ByteBufferReadWriteBuf;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method public get(I)B
    .registers 3

    .line 22
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/ByteBufferReadWriteBuf;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p1

    return p1
.end method

.method public getBoolean(I)Z
    .registers 2

    .line 17
    invoke-virtual {p0, p1}, Landroidx/emoji2/text/flatbuffer/ByteBufferReadWriteBuf;->get(I)B

    move-result p1

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method

.method public getDouble(I)D
    .registers 4

    .line 47
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/ByteBufferReadWriteBuf;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloat(I)F
    .registers 3

    .line 42
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/ByteBufferReadWriteBuf;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getFloat(I)F

    move-result p1

    return p1
.end method

.method public getInt(I)I
    .registers 3

    .line 32
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/ByteBufferReadWriteBuf;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p1

    return p1
.end method

.method public getLong(I)J
    .registers 4

    .line 37
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/ByteBufferReadWriteBuf;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getShort(I)S
    .registers 3

    .line 27
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/ByteBufferReadWriteBuf;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result p1

    return p1
.end method

.method public getString(II)Ljava/lang/String;
    .registers 4

    .line 52
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/ByteBufferReadWriteBuf;->buffer:Ljava/nio/ByteBuffer;

    invoke-static {v0, p1, p2}, Landroidx/emoji2/text/flatbuffer/Utf8Safe;->decodeUtf8Buffer(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public limit()I
    .registers 2

    .line 157
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/ByteBufferReadWriteBuf;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    return v0
.end method

.method public put(B)V
    .registers 3

    .line 72
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/ByteBufferReadWriteBuf;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public put([BII)V
    .registers 5

    .line 67
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/ByteBufferReadWriteBuf;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public putBoolean(Z)V
    .registers 3

    .line 62
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/ByteBufferReadWriteBuf;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public putDouble(D)V
    .registers 4

    .line 97
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/ByteBufferReadWriteBuf;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public putFloat(F)V
    .registers 3

    .line 92
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/ByteBufferReadWriteBuf;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public putInt(I)V
    .registers 3

    .line 82
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/ByteBufferReadWriteBuf;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public putLong(J)V
    .registers 4

    .line 87
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/ByteBufferReadWriteBuf;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public putShort(S)V
    .registers 3

    .line 77
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/ByteBufferReadWriteBuf;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public requestCapacity(I)Z
    .registers 3

    .line 162
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/ByteBufferReadWriteBuf;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    if-gt p1, v0, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method

.method public set(IB)V
    .registers 4

    add-int/lit8 v0, p1, 0x1

    .line 107
    invoke-virtual {p0, v0}, Landroidx/emoji2/text/flatbuffer/ByteBufferReadWriteBuf;->requestCapacity(I)Z

    .line 108
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/ByteBufferReadWriteBuf;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public set(I[BII)V
    .registers 7

    sub-int v0, p4, p3

    add-int/2addr v0, p1

    .line 113
    invoke-virtual {p0, v0}, Landroidx/emoji2/text/flatbuffer/ByteBufferReadWriteBuf;->requestCapacity(I)Z

    .line 114
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/ByteBufferReadWriteBuf;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 115
    iget-object v1, p0, Landroidx/emoji2/text/flatbuffer/ByteBufferReadWriteBuf;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 116
    iget-object p1, p0, Landroidx/emoji2/text/flatbuffer/ByteBufferReadWriteBuf;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p2, p3, p4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 117
    iget-object p1, p0, Landroidx/emoji2/text/flatbuffer/ByteBufferReadWriteBuf;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method public setBoolean(IZ)V
    .registers 3

    .line 102
    invoke-virtual {p0, p1, p2}, Landroidx/emoji2/text/flatbuffer/ByteBufferReadWriteBuf;->set(IB)V

    return-void
.end method

.method public setDouble(ID)V
    .registers 5

    add-int/lit8 v0, p1, 0x8

    .line 146
    invoke-virtual {p0, v0}, Landroidx/emoji2/text/flatbuffer/ByteBufferReadWriteBuf;->requestCapacity(I)Z

    .line 147
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/ByteBufferReadWriteBuf;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->putDouble(ID)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public setFloat(IF)V
    .registers 4

    add-int/lit8 v0, p1, 0x4

    .line 140
    invoke-virtual {p0, v0}, Landroidx/emoji2/text/flatbuffer/ByteBufferReadWriteBuf;->requestCapacity(I)Z

    .line 141
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/ByteBufferReadWriteBuf;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putFloat(IF)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public setInt(II)V
    .registers 4

    add-int/lit8 v0, p1, 0x4

    .line 128
    invoke-virtual {p0, v0}, Landroidx/emoji2/text/flatbuffer/ByteBufferReadWriteBuf;->requestCapacity(I)Z

    .line 129
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/ByteBufferReadWriteBuf;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public setLong(IJ)V
    .registers 5

    add-int/lit8 v0, p1, 0x8

    .line 134
    invoke-virtual {p0, v0}, Landroidx/emoji2/text/flatbuffer/ByteBufferReadWriteBuf;->requestCapacity(I)Z

    .line 135
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/ByteBufferReadWriteBuf;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public setShort(IS)V
    .registers 4

    add-int/lit8 v0, p1, 0x2

    .line 122
    invoke-virtual {p0, v0}, Landroidx/emoji2/text/flatbuffer/ByteBufferReadWriteBuf;->requestCapacity(I)Z

    .line 123
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/ByteBufferReadWriteBuf;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public writePosition()I
    .registers 2

    .line 152
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/ByteBufferReadWriteBuf;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0
.end method

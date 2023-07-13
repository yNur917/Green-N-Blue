.class Lcom/google/firebase/database/tubesock/WebSocketWriter;
.super Ljava/lang/Object;
.source "WebSocketWriter.java"


# instance fields
.field private channel:Ljava/nio/channels/WritableByteChannel;

.field private closeSent:Z

.field private final innerThread:Ljava/lang/Thread;

.field private pendingBuffers:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final random:Ljava/util/Random;

.field private volatile stop:Z

.field private websocket:Lcom/google/firebase/database/tubesock/WebSocket;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/tubesock/WebSocket;Ljava/lang/String;I)V
    .registers 7

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocketWriter;->random:Ljava/util/Random;

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/google/firebase/database/tubesock/WebSocketWriter;->stop:Z

    .line 35
    iput-boolean v0, p0, Lcom/google/firebase/database/tubesock/WebSocketWriter;->closeSent:Z

    .line 42
    invoke-static {}, Lcom/google/firebase/database/tubesock/WebSocket;->getThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/database/tubesock/WebSocketWriter$1;

    invoke-direct {v1, p0}, Lcom/google/firebase/database/tubesock/WebSocketWriter$1;-><init>(Lcom/google/firebase/database/tubesock/WebSocketWriter;)V

    .line 43
    invoke-interface {v0, v1}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocketWriter;->innerThread:Ljava/lang/Thread;

    .line 51
    invoke-static {}, Lcom/google/firebase/database/tubesock/WebSocket;->getIntializer()Lcom/google/firebase/database/tubesock/ThreadInitializer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/firebase/database/tubesock/WebSocketWriter;->getInnerThread()Ljava/lang/Thread;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "Writer-"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, v1, p2}, Lcom/google/firebase/database/tubesock/ThreadInitializer;->setName(Ljava/lang/Thread;Ljava/lang/String;)V

    .line 52
    iput-object p1, p0, Lcom/google/firebase/database/tubesock/WebSocketWriter;->websocket:Lcom/google/firebase/database/tubesock/WebSocket;

    .line 53
    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/database/tubesock/WebSocketWriter;->pendingBuffers:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method

.method static synthetic access$000(Lcom/google/firebase/database/tubesock/WebSocketWriter;)V
    .registers 1

    .line 30
    invoke-direct {p0}, Lcom/google/firebase/database/tubesock/WebSocketWriter;->runWriter()V

    return-void
.end method

.method private frameInBuffer(BZ[B)Ljava/nio/ByteBuffer;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_4

    const/4 v0, 0x6

    goto :goto_5

    :cond_4
    const/4 v0, 0x2

    .line 65
    :goto_5
    array-length v1, p3

    const v2, 0xffff

    const/16 v3, 0x7e

    if-ge v1, v3, :cond_e

    goto :goto_15

    :cond_e
    if-gt v1, v2, :cond_13

    add-int/lit8 v0, v0, 0x2

    goto :goto_15

    :cond_13
    add-int/lit8 v0, v0, 0x8

    .line 73
    :goto_15
    array-length v4, p3

    add-int/2addr v4, v0

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    or-int/lit8 p1, p1, -0x80

    int-to-byte p1, p1

    .line 77
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/4 p1, 0x0

    if-ge v1, v3, :cond_2d

    if-eqz p2, :cond_28

    or-int/lit16 v1, v1, 0x80

    :cond_28
    int-to-byte v1, v1

    .line 85
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_4c

    :cond_2d
    if-gt v1, v2, :cond_3c

    if-eqz p2, :cond_33

    const/16 v3, 0xfe

    :cond_33
    int-to-byte v2, v3

    .line 91
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-short v1, v1

    .line 93
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    goto :goto_4c

    :cond_3c
    const/16 v2, 0x7f

    if-eqz p2, :cond_42

    const/16 v2, 0xff

    :cond_42
    int-to-byte v2, v2

    .line 99
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 101
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 102
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    :goto_4c
    if-eqz p2, :cond_66

    .line 107
    invoke-direct {p0}, Lcom/google/firebase/database/tubesock/WebSocketWriter;->generateMask()[B

    move-result-object p2

    .line 108
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 110
    :goto_55
    array-length v1, p3

    if-ge p1, v1, :cond_66

    .line 111
    aget-byte v1, p3, p1

    rem-int/lit8 v2, p1, 0x4

    aget-byte v2, p2, v2

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 p1, p1, 0x1

    goto :goto_55

    .line 115
    :cond_66
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-object v0
.end method

.method private generateMask()[B
    .registers 3

    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 121
    iget-object v1, p0, Lcom/google/firebase/database/tubesock/WebSocketWriter;->random:Ljava/util/Random;

    invoke-virtual {v1, v0}, Ljava/util/Random;->nextBytes([B)V

    return-object v0
.end method

.method private handleError(Lcom/google/firebase/database/tubesock/WebSocketException;)V
    .registers 3

    .line 146
    iget-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocketWriter;->websocket:Lcom/google/firebase/database/tubesock/WebSocket;

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/tubesock/WebSocket;->handleReceiverError(Lcom/google/firebase/database/tubesock/WebSocketException;)V

    return-void
.end method

.method private runWriter()V
    .registers 4

    .line 151
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/google/firebase/database/tubesock/WebSocketWriter;->stop:Z

    if-nez v0, :cond_e

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_e

    .line 152
    invoke-direct {p0}, Lcom/google/firebase/database/tubesock/WebSocketWriter;->writeMessage()V

    goto :goto_0

    :cond_e
    const/4 v0, 0x0

    .line 155
    :goto_f
    iget-object v1, p0, Lcom/google/firebase/database/tubesock/WebSocketWriter;->pendingBuffers:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v1

    if-ge v0, v1, :cond_28

    .line 156
    invoke-direct {p0}, Lcom/google/firebase/database/tubesock/WebSocketWriter;->writeMessage()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1a} :catch_1d
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_1a} :catch_28

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :catch_1d
    move-exception v0

    .line 159
    new-instance v1, Lcom/google/firebase/database/tubesock/WebSocketException;

    const-string v2, "IO Exception"

    invoke-direct {v1, v2, v0}, Lcom/google/firebase/database/tubesock/WebSocketException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, v1}, Lcom/google/firebase/database/tubesock/WebSocketWriter;->handleError(Lcom/google/firebase/database/tubesock/WebSocketException;)V

    :catch_28
    :cond_28
    return-void
.end method

.method private writeMessage()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocketWriter;->pendingBuffers:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 138
    iget-object v1, p0, Lcom/google/firebase/database/tubesock/WebSocketWriter;->channel:Ljava/nio/channels/WritableByteChannel;

    invoke-interface {v1, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    return-void
.end method


# virtual methods
.method getInnerThread()Ljava/lang/Thread;
    .registers 2

    .line 167
    iget-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocketWriter;->innerThread:Ljava/lang/Thread;

    return-object v0
.end method

.method declared-synchronized send(BZ[B)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 126
    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/firebase/database/tubesock/WebSocketWriter;->frameInBuffer(BZ[B)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 127
    iget-boolean p3, p0, Lcom/google/firebase/database/tubesock/WebSocketWriter;->stop:Z

    const/16 v0, 0x8

    if-eqz p3, :cond_1a

    iget-boolean p3, p0, Lcom/google/firebase/database/tubesock/WebSocketWriter;->closeSent:Z

    if-nez p3, :cond_12

    if-ne p1, v0, :cond_12

    goto :goto_1a

    .line 128
    :cond_12
    new-instance p1, Lcom/google/firebase/database/tubesock/WebSocketException;

    const-string p2, "Shouldn\'t be sending"

    invoke-direct {p1, p2}, Lcom/google/firebase/database/tubesock/WebSocketException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1a
    :goto_1a
    if-ne p1, v0, :cond_1f

    const/4 p1, 0x1

    .line 131
    iput-boolean p1, p0, Lcom/google/firebase/database/tubesock/WebSocketWriter;->closeSent:Z

    .line 133
    :cond_1f
    iget-object p1, p0, Lcom/google/firebase/database/tubesock/WebSocketWriter;->pendingBuffers:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p1, p2}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_26

    .line 134
    monitor-exit p0

    return-void

    :catchall_26
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method setOutput(Ljava/io/OutputStream;)V
    .registers 2

    .line 57
    invoke-static {p1}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/OutputStream;)Ljava/nio/channels/WritableByteChannel;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/database/tubesock/WebSocketWriter;->channel:Ljava/nio/channels/WritableByteChannel;

    return-void
.end method

.method stopIt()V
    .registers 2

    const/4 v0, 0x1

    .line 142
    iput-boolean v0, p0, Lcom/google/firebase/database/tubesock/WebSocketWriter;->stop:Z

    return-void
.end method

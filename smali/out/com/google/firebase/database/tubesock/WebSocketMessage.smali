.class public Lcom/google/firebase/database/tubesock/WebSocketMessage;
.super Ljava/lang/Object;
.source "WebSocketMessage.java"


# instance fields
.field private byteMessage:[B

.field private opcode:B

.field private stringMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/google/firebase/database/tubesock/WebSocketMessage;->stringMessage:Ljava/lang/String;

    const/4 p1, 0x1

    .line 29
    iput-byte p1, p0, Lcom/google/firebase/database/tubesock/WebSocketMessage;->opcode:B

    return-void
.end method

.method public constructor <init>([B)V
    .registers 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/google/firebase/database/tubesock/WebSocketMessage;->byteMessage:[B

    const/4 p1, 0x2

    .line 24
    iput-byte p1, p0, Lcom/google/firebase/database/tubesock/WebSocketMessage;->opcode:B

    return-void
.end method


# virtual methods
.method public getBytes()[B
    .registers 2

    .line 41
    iget-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocketMessage;->byteMessage:[B

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .registers 2

    .line 45
    iget-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocketMessage;->stringMessage:Ljava/lang/String;

    return-object v0
.end method

.method public isBinary()Z
    .registers 3

    .line 37
    iget-byte v0, p0, Lcom/google/firebase/database/tubesock/WebSocketMessage;->opcode:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public isText()Z
    .registers 3

    .line 33
    iget-byte v0, p0, Lcom/google/firebase/database/tubesock/WebSocketMessage;->opcode:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

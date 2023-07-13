.class Lcom/google/firebase/database/tubesock/MessageBuilderFactory$BinaryBuilder;
.super Ljava/lang/Object;
.source "MessageBuilderFactory.java"

# interfaces
.implements Lcom/google/firebase/database/tubesock/MessageBuilderFactory$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/database/tubesock/MessageBuilderFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BinaryBuilder"
.end annotation


# instance fields
.field private pendingByteCount:I

.field private pendingBytes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Lcom/google/firebase/database/tubesock/MessageBuilderFactory$BinaryBuilder;->pendingByteCount:I

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/database/tubesock/MessageBuilderFactory$BinaryBuilder;->pendingBytes:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public appendBytes([B)Z
    .registers 3

    .line 51
    iget-object v0, p0, Lcom/google/firebase/database/tubesock/MessageBuilderFactory$BinaryBuilder;->pendingBytes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    iget v0, p0, Lcom/google/firebase/database/tubesock/MessageBuilderFactory$BinaryBuilder;->pendingByteCount:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/firebase/database/tubesock/MessageBuilderFactory$BinaryBuilder;->pendingByteCount:I

    const/4 p1, 0x1

    return p1
.end method

.method public toMessage()Lcom/google/firebase/database/tubesock/WebSocketMessage;
    .registers 7

    .line 58
    iget v0, p0, Lcom/google/firebase/database/tubesock/MessageBuilderFactory$BinaryBuilder;->pendingByteCount:I

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 60
    :goto_7
    iget-object v4, p0, Lcom/google/firebase/database/tubesock/MessageBuilderFactory$BinaryBuilder;->pendingBytes:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_20

    .line 61
    iget-object v4, p0, Lcom/google/firebase/database/tubesock/MessageBuilderFactory$BinaryBuilder;->pendingBytes:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 62
    array-length v5, v4

    invoke-static {v4, v1, v0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 63
    array-length v4, v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 65
    :cond_20
    new-instance v1, Lcom/google/firebase/database/tubesock/WebSocketMessage;

    invoke-direct {v1, v0}, Lcom/google/firebase/database/tubesock/WebSocketMessage;-><init>([B)V

    return-object v1
.end method

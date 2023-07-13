.class public Lcom/google/firebase/database/core/ValidationPath;
.super Ljava/lang/Object;
.source "ValidationPath.java"


# static fields
.field public static final MAX_PATH_DEPTH:I = 0x20

.field public static final MAX_PATH_LENGTH_BYTES:I = 0x300


# instance fields
.field private byteLength:I

.field private final parts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/firebase/database/core/Path;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/database/DatabaseException;
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/database/core/ValidationPath;->parts:Ljava/util/List;

    const/4 v0, 0x0

    .line 33
    iput v0, p0, Lcom/google/firebase/database/core/ValidationPath;->byteLength:I

    .line 39
    invoke-virtual {p1}, Lcom/google/firebase/database/core/Path;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_11
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/database/snapshot/ChildKey;

    .line 40
    iget-object v2, p0, Lcom/google/firebase/database/core/ValidationPath;->parts:Ljava/util/List;

    invoke-virtual {v1}, Lcom/google/firebase/database/snapshot/ChildKey;->asString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 44
    :cond_27
    iget-object p1, p0, Lcom/google/firebase/database/core/ValidationPath;->parts:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/google/firebase/database/core/ValidationPath;->byteLength:I

    .line 45
    :goto_34
    iget-object p1, p0, Lcom/google/firebase/database/core/ValidationPath;->parts:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_50

    .line 46
    iget p1, p0, Lcom/google/firebase/database/core/ValidationPath;->byteLength:I

    iget-object v1, p0, Lcom/google/firebase/database/core/ValidationPath;->parts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lcom/google/firebase/database/core/ValidationPath;->utf8Bytes(Ljava/lang/CharSequence;)I

    move-result v1

    add-int/2addr p1, v1

    iput p1, p0, Lcom/google/firebase/database/core/ValidationPath;->byteLength:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_34

    .line 48
    :cond_50
    invoke-direct {p0}, Lcom/google/firebase/database/core/ValidationPath;->checkValid()V

    return-void
.end method

.method private checkValid()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/database/DatabaseException;
        }
    .end annotation

    .line 101
    iget v0, p0, Lcom/google/firebase/database/core/ValidationPath;->byteLength:I

    const/16 v1, 0x300

    if-gt v0, v1, :cond_2c

    .line 109
    iget-object v0, p0, Lcom/google/firebase/database/core/ValidationPath;->parts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x20

    if-gt v0, v1, :cond_11

    return-void

    .line 110
    :cond_11
    new-instance v0, Lcom/google/firebase/database/DatabaseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Path specified exceeds the maximum depth that can be written (32) or object contains a cycle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-direct {p0}, Lcom/google/firebase/database/core/ValidationPath;->toErrorString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_2c
    new-instance v0, Lcom/google/firebase/database/DatabaseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Data has a key path longer than 768 bytes ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/google/firebase/database/core/ValidationPath;->byteLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static joinStringList(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 127
    :goto_6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1d

    if-lez v1, :cond_11

    .line 129
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    :cond_11
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 133
    :cond_1d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private pop()Ljava/lang/String;
    .registers 4

    .line 91
    iget-object v0, p0, Lcom/google/firebase/database/core/ValidationPath;->parts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 92
    iget v1, p0, Lcom/google/firebase/database/core/ValidationPath;->byteLength:I

    invoke-static {v0}, Lcom/google/firebase/database/core/ValidationPath;->utf8Bytes(Ljava/lang/CharSequence;)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/firebase/database/core/ValidationPath;->byteLength:I

    .line 94
    iget-object v1, p0, Lcom/google/firebase/database/core/ValidationPath;->parts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_25

    .line 95
    iget v1, p0, Lcom/google/firebase/database/core/ValidationPath;->byteLength:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/firebase/database/core/ValidationPath;->byteLength:I

    :cond_25
    return-object v0
.end method

.method private push(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/database/DatabaseException;
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/google/firebase/database/core/ValidationPath;->parts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_e

    .line 83
    iget v0, p0, Lcom/google/firebase/database/core/ValidationPath;->byteLength:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/firebase/database/core/ValidationPath;->byteLength:I

    .line 85
    :cond_e
    iget-object v0, p0, Lcom/google/firebase/database/core/ValidationPath;->parts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    iget v0, p0, Lcom/google/firebase/database/core/ValidationPath;->byteLength:I

    invoke-static {p1}, Lcom/google/firebase/database/core/ValidationPath;->utf8Bytes(Ljava/lang/CharSequence;)I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/firebase/database/core/ValidationPath;->byteLength:I

    .line 87
    invoke-direct {p0}, Lcom/google/firebase/database/core/ValidationPath;->checkValid()V

    return-void
.end method

.method private toErrorString()Ljava/lang/String;
    .registers 4

    .line 119
    iget-object v0, p0, Lcom/google/firebase/database/core/ValidationPath;->parts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_b

    const-string v0, ""

    return-object v0

    .line 122
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "in path \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/firebase/database/core/ValidationPath;->parts:Ljava/util/List;

    const-string v2, "/"

    invoke-static {v2, v1}, Lcom/google/firebase/database/core/ValidationPath;->joinStringList(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static utf8Bytes(Ljava/lang/CharSequence;)I
    .registers 6

    .line 142
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_6
    if-ge v1, v0, :cond_2a

    .line 143
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x7f

    if-gt v3, v4, :cond_13

    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    :cond_13
    const/16 v4, 0x7ff

    if-gt v3, v4, :cond_1a

    add-int/lit8 v2, v2, 0x2

    goto :goto_27

    .line 148
    :cond_1a
    invoke-static {v3}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_25

    add-int/lit8 v2, v2, 0x4

    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    :cond_25
    add-int/lit8 v2, v2, 0x3

    :goto_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_2a
    return v2
.end method

.method public static validateWithObject(Lcom/google/firebase/database/core/Path;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/database/DatabaseException;
        }
    .end annotation

    .line 52
    new-instance v0, Lcom/google/firebase/database/core/ValidationPath;

    invoke-direct {v0, p0}, Lcom/google/firebase/database/core/ValidationPath;-><init>(Lcom/google/firebase/database/core/Path;)V

    invoke-direct {v0, p1}, Lcom/google/firebase/database/core/ValidationPath;->withObject(Ljava/lang/Object;)V

    return-void
.end method

.method private withObject(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/database/DatabaseException;
        }
    .end annotation

    .line 56
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_32

    .line 57
    check-cast p1, Ljava/util/Map;

    .line 58
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "."

    .line 59
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_23

    goto :goto_e

    .line 62
    :cond_23
    invoke-direct {p0, v1}, Lcom/google/firebase/database/core/ValidationPath;->push(Ljava/lang/String;)V

    .line 63
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/firebase/database/core/ValidationPath;->withObject(Ljava/lang/Object;)V

    .line 64
    invoke-direct {p0}, Lcom/google/firebase/database/core/ValidationPath;->pop()Ljava/lang/String;

    goto :goto_e

    :cond_31
    return-void

    .line 69
    :cond_32
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_53

    .line 70
    check-cast p1, Ljava/util/List;

    const/4 v0, 0x0

    .line 71
    :goto_39
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_53

    .line 72
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 73
    invoke-direct {p0, v1}, Lcom/google/firebase/database/core/ValidationPath;->push(Ljava/lang/String;)V

    .line 74
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/firebase/database/core/ValidationPath;->withObject(Ljava/lang/Object;)V

    .line 75
    invoke-direct {p0}, Lcom/google/firebase/database/core/ValidationPath;->pop()Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    goto :goto_39

    :cond_53
    return-void
.end method

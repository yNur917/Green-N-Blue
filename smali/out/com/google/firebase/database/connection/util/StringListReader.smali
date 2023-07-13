.class public Lcom/google/firebase/database/connection/util/StringListReader;
.super Ljava/io/Reader;
.source "StringListReader.java"


# instance fields
.field private charPos:I

.field private closed:Z

.field private frozen:Z

.field private markedCharPos:I

.field private markedStringListPos:I

.field private stringListPos:I

.field private strings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 36
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/google/firebase/database/connection/util/StringListReader;->strings:Ljava/util/List;

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/google/firebase/database/connection/util/StringListReader;->closed:Z

    .line 31
    iget v1, p0, Lcom/google/firebase/database/connection/util/StringListReader;->charPos:I

    iput v1, p0, Lcom/google/firebase/database/connection/util/StringListReader;->markedCharPos:I

    .line 32
    iget v1, p0, Lcom/google/firebase/database/connection/util/StringListReader;->stringListPos:I

    iput v1, p0, Lcom/google/firebase/database/connection/util/StringListReader;->markedStringListPos:I

    .line 34
    iput-boolean v0, p0, Lcom/google/firebase/database/connection/util/StringListReader;->frozen:Z

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/database/connection/util/StringListReader;->strings:Ljava/util/List;

    return-void
.end method

.method private advance(J)J
    .registers 10

    const-wide/16 v0, 0x0

    .line 91
    :goto_2
    iget v2, p0, Lcom/google/firebase/database/connection/util/StringListReader;->stringListPos:I

    iget-object v3, p0, Lcom/google/firebase/database/connection/util/StringListReader;->strings:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2f

    cmp-long v2, v0, p1

    if-gez v2, :cond_2f

    .line 92
    invoke-direct {p0}, Lcom/google/firebase/database/connection/util/StringListReader;->currentStringRemainingChars()I

    move-result v2

    sub-long v3, p1, v0

    int-to-long v5, v2

    cmp-long v2, v3, v5

    if-gez v2, :cond_24

    .line 95
    iget v2, p0, Lcom/google/firebase/database/connection/util/StringListReader;->charPos:I

    int-to-long v5, v2

    add-long/2addr v5, v3

    long-to-int v2, v5

    iput v2, p0, Lcom/google/firebase/database/connection/util/StringListReader;->charPos:I

    add-long/2addr v0, v3

    goto :goto_2

    :cond_24
    add-long/2addr v0, v5

    const/4 v2, 0x0

    .line 99
    iput v2, p0, Lcom/google/firebase/database/connection/util/StringListReader;->charPos:I

    .line 100
    iget v2, p0, Lcom/google/firebase/database/connection/util/StringListReader;->stringListPos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/firebase/database/connection/util/StringListReader;->stringListPos:I

    goto :goto_2

    :cond_2f
    return-wide v0
.end method

.method private checkState()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    iget-boolean v0, p0, Lcom/google/firebase/database/connection/util/StringListReader;->closed:Z

    if-nez v0, :cond_11

    .line 84
    iget-boolean v0, p0, Lcom/google/firebase/database/connection/util/StringListReader;->frozen:Z

    if-eqz v0, :cond_9

    return-void

    .line 85
    :cond_9
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Reader needs to be frozen before read operations can be called"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_11
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream already closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private currentString()Ljava/lang/String;
    .registers 3

    .line 72
    iget v0, p0, Lcom/google/firebase/database/connection/util/StringListReader;->stringListPos:I

    iget-object v1, p0, Lcom/google/firebase/database/connection/util/StringListReader;->strings:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_15

    iget-object v0, p0, Lcom/google/firebase/database/connection/util/StringListReader;->strings:Ljava/util/List;

    iget v1, p0, Lcom/google/firebase/database/connection/util/StringListReader;->stringListPos:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    return-object v0
.end method

.method private currentStringRemainingChars()I
    .registers 3

    .line 76
    invoke-direct {p0}, Lcom/google/firebase/database/connection/util/StringListReader;->currentString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    goto :goto_f

    .line 77
    :cond_8
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/google/firebase/database/connection/util/StringListReader;->charPos:I

    sub-int/2addr v0, v1

    :goto_f
    return v0
.end method


# virtual methods
.method public addString(Ljava/lang/String;)V
    .registers 3

    .line 41
    iget-boolean v0, p0, Lcom/google/firebase/database/connection/util/StringListReader;->frozen:Z

    if-nez v0, :cond_10

    .line 44
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_f

    .line 45
    iget-object v0, p0, Lcom/google/firebase/database/connection/util/StringListReader;->strings:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_f
    return-void

    .line 42
    :cond_10
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Trying to add string after reading"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 185
    invoke-direct {p0}, Lcom/google/firebase/database/connection/util/StringListReader;->checkState()V

    const/4 v0, 0x1

    .line 186
    iput-boolean v0, p0, Lcom/google/firebase/database/connection/util/StringListReader;->closed:Z

    return-void
.end method

.method public freeze()V
    .registers 3

    .line 50
    iget-boolean v0, p0, Lcom/google/firebase/database/connection/util/StringListReader;->frozen:Z

    if-nez v0, :cond_8

    const/4 v0, 0x1

    .line 53
    iput-boolean v0, p0, Lcom/google/firebase/database/connection/util/StringListReader;->frozen:Z

    return-void

    .line 51
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Trying to freeze frozen StringListReader"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public mark(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 159
    invoke-direct {p0}, Lcom/google/firebase/database/connection/util/StringListReader;->checkState()V

    .line 160
    iget p1, p0, Lcom/google/firebase/database/connection/util/StringListReader;->charPos:I

    iput p1, p0, Lcom/google/firebase/database/connection/util/StringListReader;->markedCharPos:I

    .line 161
    iget p1, p0, Lcom/google/firebase/database/connection/util/StringListReader;->stringListPos:I

    iput p1, p0, Lcom/google/firebase/database/connection/util/StringListReader;->markedStringListPos:I

    return-void
.end method

.method public markSupported()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    invoke-direct {p0}, Lcom/google/firebase/database/connection/util/StringListReader;->checkState()V

    .line 130
    invoke-direct {p0}, Lcom/google/firebase/database/connection/util/StringListReader;->currentString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b

    const/4 v0, -0x1

    return v0

    .line 134
    :cond_b
    iget v1, p0, Lcom/google/firebase/database/connection/util/StringListReader;->charPos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const-wide/16 v1, 0x1

    .line 135
    invoke-direct {p0, v1, v2}, Lcom/google/firebase/database/connection/util/StringListReader;->advance(J)J

    return v0
.end method

.method public read(Ljava/nio/CharBuffer;)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    invoke-direct {p0}, Lcom/google/firebase/database/connection/util/StringListReader;->checkState()V

    .line 109
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v0

    .line 111
    invoke-direct {p0}, Lcom/google/firebase/database/connection/util/StringListReader;->currentString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :goto_c
    if-lez v0, :cond_37

    if-eqz v1, :cond_37

    .line 113
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget v3, p0, Lcom/google/firebase/database/connection/util/StringListReader;->charPos:I

    sub-int/2addr v1, v3

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 114
    iget-object v3, p0, Lcom/google/firebase/database/connection/util/StringListReader;->strings:Ljava/util/List;

    iget v4, p0, Lcom/google/firebase/database/connection/util/StringListReader;->stringListPos:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget v4, p0, Lcom/google/firebase/database/connection/util/StringListReader;->charPos:I

    add-int v5, v4, v1

    invoke-virtual {p1, v3, v4, v5}, Ljava/nio/CharBuffer;->put(Ljava/lang/String;II)Ljava/nio/CharBuffer;

    sub-int/2addr v0, v1

    add-int/2addr v2, v1

    int-to-long v3, v1

    .line 117
    invoke-direct {p0, v3, v4}, Lcom/google/firebase/database/connection/util/StringListReader;->advance(J)J

    .line 118
    invoke-direct {p0}, Lcom/google/firebase/database/connection/util/StringListReader;->currentString()Ljava/lang/String;

    move-result-object v1

    goto :goto_c

    :cond_37
    if-gtz v2, :cond_3e

    if-eqz v1, :cond_3c

    goto :goto_3e

    :cond_3c
    const/4 p1, -0x1

    return p1

    :cond_3e
    :goto_3e
    return v2
.end method

.method public read([CII)I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 166
    invoke-direct {p0}, Lcom/google/firebase/database/connection/util/StringListReader;->checkState()V

    .line 168
    invoke-direct {p0}, Lcom/google/firebase/database/connection/util/StringListReader;->currentString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_8
    if-eqz v0, :cond_29

    if-ge v1, p3, :cond_29

    .line 170
    invoke-direct {p0}, Lcom/google/firebase/database/connection/util/StringListReader;->currentStringRemainingChars()I

    move-result v2

    sub-int v3, p3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 171
    iget v3, p0, Lcom/google/firebase/database/connection/util/StringListReader;->charPos:I

    add-int v4, v3, v2

    add-int v5, p2, v1

    invoke-virtual {v0, v3, v4, p1, v5}, Ljava/lang/String;->getChars(II[CI)V

    add-int/2addr v1, v2

    int-to-long v2, v2

    .line 173
    invoke-direct {p0, v2, v3}, Lcom/google/firebase/database/connection/util/StringListReader;->advance(J)J

    .line 174
    invoke-direct {p0}, Lcom/google/firebase/database/connection/util/StringListReader;->currentString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_29
    if-gtz v1, :cond_30

    if-eqz v0, :cond_2e

    goto :goto_30

    :cond_2e
    const/4 p1, -0x1

    return p1

    :cond_30
    :goto_30
    return v1
.end method

.method public ready()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 148
    invoke-direct {p0}, Lcom/google/firebase/database/connection/util/StringListReader;->checkState()V

    const/4 v0, 0x1

    return v0
.end method

.method public reset()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    iget v0, p0, Lcom/google/firebase/database/connection/util/StringListReader;->markedCharPos:I

    iput v0, p0, Lcom/google/firebase/database/connection/util/StringListReader;->charPos:I

    .line 68
    iget v0, p0, Lcom/google/firebase/database/connection/util/StringListReader;->markedStringListPos:I

    iput v0, p0, Lcom/google/firebase/database/connection/util/StringListReader;->stringListPos:I

    return-void
.end method

.method public skip(J)J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 142
    invoke-direct {p0}, Lcom/google/firebase/database/connection/util/StringListReader;->checkState()V

    .line 143
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/database/connection/util/StringListReader;->advance(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    iget-object v1, p0, Lcom/google/firebase/database/connection/util/StringListReader;->strings:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 60
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    .line 62
    :cond_1b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

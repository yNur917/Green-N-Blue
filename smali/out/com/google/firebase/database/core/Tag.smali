.class public final Lcom/google/firebase/database/core/Tag;
.super Ljava/lang/Object;
.source "Tag.java"


# instance fields
.field private final tagNumber:J


# direct methods
.method public constructor <init>(J)V
    .registers 3

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-wide p1, p0, Lcom/google/firebase/database/core/Tag;->tagNumber:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_1e

    .line 38
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_1e

    .line 42
    :cond_12
    check-cast p1, Lcom/google/firebase/database/core/Tag;

    .line 44
    iget-wide v2, p0, Lcom/google/firebase/database/core/Tag;->tagNumber:J

    iget-wide v4, p1, Lcom/google/firebase/database/core/Tag;->tagNumber:J

    cmp-long p1, v2, v4

    if-eqz p1, :cond_1d

    return v1

    :cond_1d
    return v0

    :cond_1e
    :goto_1e
    return v1
.end method

.method public getTagNumber()J
    .registers 3

    .line 25
    iget-wide v0, p0, Lcom/google/firebase/database/core/Tag;->tagNumber:J

    return-wide v0
.end method

.method public hashCode()I
    .registers 5

    .line 53
    iget-wide v0, p0, Lcom/google/firebase/database/core/Tag;->tagNumber:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tag{tagNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/google/firebase/database/core/Tag;->tagNumber:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

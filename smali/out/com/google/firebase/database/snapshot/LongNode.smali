.class public Lcom/google/firebase/database/snapshot/LongNode;
.super Lcom/google/firebase/database/snapshot/LeafNode;
.source "LongNode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/firebase/database/snapshot/LeafNode<",
        "Lcom/google/firebase/database/snapshot/LongNode;",
        ">;"
    }
.end annotation


# instance fields
.field private final value:J


# direct methods
.method public constructor <init>(Ljava/lang/Long;Lcom/google/firebase/database/snapshot/Node;)V
    .registers 3

    .line 24
    invoke-direct {p0, p2}, Lcom/google/firebase/database/snapshot/LeafNode;-><init>(Lcom/google/firebase/database/snapshot/Node;)V

    .line 25
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/firebase/database/snapshot/LongNode;->value:J

    return-void
.end method


# virtual methods
.method protected bridge synthetic compareLeafValues(Lcom/google/firebase/database/snapshot/LeafNode;)I
    .registers 2

    .line 19
    check-cast p1, Lcom/google/firebase/database/snapshot/LongNode;

    invoke-virtual {p0, p1}, Lcom/google/firebase/database/snapshot/LongNode;->compareLeafValues(Lcom/google/firebase/database/snapshot/LongNode;)I

    move-result p1

    return p1
.end method

.method protected compareLeafValues(Lcom/google/firebase/database/snapshot/LongNode;)I
    .registers 6

    .line 54
    iget-wide v0, p0, Lcom/google/firebase/database/snapshot/LongNode;->value:J

    iget-wide v2, p1, Lcom/google/firebase/database/snapshot/LongNode;->value:J

    invoke-static {v0, v1, v2, v3}, Lcom/google/firebase/database/core/utilities/Utilities;->compareLongs(JJ)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8

    .line 59
    instance-of v0, p1, Lcom/google/firebase/database/snapshot/LongNode;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 62
    :cond_6
    check-cast p1, Lcom/google/firebase/database/snapshot/LongNode;

    .line 63
    iget-wide v2, p0, Lcom/google/firebase/database/snapshot/LongNode;->value:J

    iget-wide v4, p1, Lcom/google/firebase/database/snapshot/LongNode;->value:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/google/firebase/database/snapshot/LongNode;->priority:Lcom/google/firebase/database/snapshot/Node;

    iget-object p1, p1, Lcom/google/firebase/database/snapshot/LongNode;->priority:Lcom/google/firebase/database/snapshot/Node;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1b

    const/4 v1, 0x1

    :cond_1b
    return v1
.end method

.method public getHashRepresentation(Lcom/google/firebase/database/snapshot/Node$HashVersion;)Ljava/lang/String;
    .registers 5

    .line 35
    invoke-virtual {p0, p1}, Lcom/google/firebase/database/snapshot/LongNode;->getPriorityHash(Lcom/google/firebase/database/snapshot/Node$HashVersion;)Ljava/lang/String;

    move-result-object p1

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "number:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/google/firebase/database/snapshot/LongNode;->value:J

    long-to-double v1, v1

    invoke-static {v1, v2}, Lcom/google/firebase/database/core/utilities/Utilities;->doubleToHashString(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getLeafType()Lcom/google/firebase/database/snapshot/LeafNode$LeafType;
    .registers 2

    .line 49
    sget-object v0, Lcom/google/firebase/database/snapshot/LeafNode$LeafType;->Number:Lcom/google/firebase/database/snapshot/LeafNode$LeafType;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 3

    .line 30
    iget-wide v0, p0, Lcom/google/firebase/database/snapshot/LongNode;->value:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    .line 68
    iget-wide v0, p0, Lcom/google/firebase/database/snapshot/LongNode;->value:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v1, v0

    iget-object v0, p0, Lcom/google/firebase/database/snapshot/LongNode;->priority:Lcom/google/firebase/database/snapshot/Node;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public updatePriority(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/LongNode;
    .registers 5

    .line 43
    new-instance v0, Lcom/google/firebase/database/snapshot/LongNode;

    iget-wide v1, p0, Lcom/google/firebase/database/snapshot/LongNode;->value:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/firebase/database/snapshot/LongNode;-><init>(Ljava/lang/Long;Lcom/google/firebase/database/snapshot/Node;)V

    return-object v0
.end method

.method public bridge synthetic updatePriority(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;
    .registers 2

    .line 19
    invoke-virtual {p0, p1}, Lcom/google/firebase/database/snapshot/LongNode;->updatePriority(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/LongNode;

    move-result-object p1

    return-object p1
.end method

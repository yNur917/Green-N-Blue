.class public Lcom/google/firebase/database/snapshot/DoubleNode;
.super Lcom/google/firebase/database/snapshot/LeafNode;
.source "DoubleNode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/firebase/database/snapshot/LeafNode<",
        "Lcom/google/firebase/database/snapshot/DoubleNode;",
        ">;"
    }
.end annotation


# instance fields
.field private final value:Ljava/lang/Double;


# direct methods
.method public constructor <init>(Ljava/lang/Double;Lcom/google/firebase/database/snapshot/Node;)V
    .registers 3

    .line 26
    invoke-direct {p0, p2}, Lcom/google/firebase/database/snapshot/LeafNode;-><init>(Lcom/google/firebase/database/snapshot/Node;)V

    .line 27
    iput-object p1, p0, Lcom/google/firebase/database/snapshot/DoubleNode;->value:Ljava/lang/Double;

    return-void
.end method


# virtual methods
.method protected compareLeafValues(Lcom/google/firebase/database/snapshot/DoubleNode;)I
    .registers 3

    .line 57
    iget-object v0, p0, Lcom/google/firebase/database/snapshot/DoubleNode;->value:Ljava/lang/Double;

    iget-object p1, p1, Lcom/google/firebase/database/snapshot/DoubleNode;->value:Ljava/lang/Double;

    invoke-virtual {v0, p1}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    move-result p1

    return p1
.end method

.method protected bridge synthetic compareLeafValues(Lcom/google/firebase/database/snapshot/LeafNode;)I
    .registers 2

    .line 21
    check-cast p1, Lcom/google/firebase/database/snapshot/DoubleNode;

    invoke-virtual {p0, p1}, Lcom/google/firebase/database/snapshot/DoubleNode;->compareLeafValues(Lcom/google/firebase/database/snapshot/DoubleNode;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 62
    instance-of v0, p1, Lcom/google/firebase/database/snapshot/DoubleNode;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 65
    :cond_6
    check-cast p1, Lcom/google/firebase/database/snapshot/DoubleNode;

    .line 66
    iget-object v0, p0, Lcom/google/firebase/database/snapshot/DoubleNode;->value:Ljava/lang/Double;

    iget-object v2, p1, Lcom/google/firebase/database/snapshot/DoubleNode;->value:Ljava/lang/Double;

    invoke-virtual {v0, v2}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/google/firebase/database/snapshot/DoubleNode;->priority:Lcom/google/firebase/database/snapshot/Node;

    iget-object p1, p1, Lcom/google/firebase/database/snapshot/DoubleNode;->priority:Lcom/google/firebase/database/snapshot/Node;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1d

    const/4 v1, 0x1

    :cond_1d
    return v1
.end method

.method public getHashRepresentation(Lcom/google/firebase/database/snapshot/Node$HashVersion;)Ljava/lang/String;
    .registers 5

    .line 37
    invoke-virtual {p0, p1}, Lcom/google/firebase/database/snapshot/DoubleNode;->getPriorityHash(Lcom/google/firebase/database/snapshot/Node$HashVersion;)Ljava/lang/String;

    move-result-object p1

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "number:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/google/firebase/database/snapshot/DoubleNode;->value:Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/firebase/database/core/utilities/Utilities;->doubleToHashString(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getLeafType()Lcom/google/firebase/database/snapshot/LeafNode$LeafType;
    .registers 2

    .line 51
    sget-object v0, Lcom/google/firebase/database/snapshot/LeafNode$LeafType;->Number:Lcom/google/firebase/database/snapshot/LeafNode$LeafType;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 2

    .line 32
    iget-object v0, p0, Lcom/google/firebase/database/snapshot/DoubleNode;->value:Ljava/lang/Double;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 71
    iget-object v0, p0, Lcom/google/firebase/database/snapshot/DoubleNode;->value:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/google/firebase/database/snapshot/DoubleNode;->priority:Lcom/google/firebase/database/snapshot/Node;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public updatePriority(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/DoubleNode;
    .registers 4

    .line 45
    invoke-static {p1}, Lcom/google/firebase/database/snapshot/PriorityUtilities;->isValidPriority(Lcom/google/firebase/database/snapshot/Node;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/firebase/database/core/utilities/Utilities;->hardAssert(Z)V

    .line 46
    new-instance v0, Lcom/google/firebase/database/snapshot/DoubleNode;

    iget-object v1, p0, Lcom/google/firebase/database/snapshot/DoubleNode;->value:Ljava/lang/Double;

    invoke-direct {v0, v1, p1}, Lcom/google/firebase/database/snapshot/DoubleNode;-><init>(Ljava/lang/Double;Lcom/google/firebase/database/snapshot/Node;)V

    return-object v0
.end method

.method public bridge synthetic updatePriority(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;
    .registers 2

    .line 21
    invoke-virtual {p0, p1}, Lcom/google/firebase/database/snapshot/DoubleNode;->updatePriority(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/DoubleNode;

    move-result-object p1

    return-object p1
.end method

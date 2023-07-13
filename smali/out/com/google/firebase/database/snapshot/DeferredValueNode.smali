.class public Lcom/google/firebase/database/snapshot/DeferredValueNode;
.super Lcom/google/firebase/database/snapshot/LeafNode;
.source "DeferredValueNode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/firebase/database/snapshot/LeafNode<",
        "Lcom/google/firebase/database/snapshot/DeferredValueNode;",
        ">;"
    }
.end annotation


# instance fields
.field private value:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;Lcom/google/firebase/database/snapshot/Node;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/firebase/database/snapshot/Node;",
            ")V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p2}, Lcom/google/firebase/database/snapshot/LeafNode;-><init>(Lcom/google/firebase/database/snapshot/Node;)V

    .line 27
    iput-object p1, p0, Lcom/google/firebase/database/snapshot/DeferredValueNode;->value:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method protected compareLeafValues(Lcom/google/firebase/database/snapshot/DeferredValueNode;)I
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method protected bridge synthetic compareLeafValues(Lcom/google/firebase/database/snapshot/LeafNode;)I
    .registers 2

    .line 21
    check-cast p1, Lcom/google/firebase/database/snapshot/DeferredValueNode;

    invoke-virtual {p0, p1}, Lcom/google/firebase/database/snapshot/DeferredValueNode;->compareLeafValues(Lcom/google/firebase/database/snapshot/DeferredValueNode;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 59
    instance-of v0, p1, Lcom/google/firebase/database/snapshot/DeferredValueNode;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 62
    :cond_6
    check-cast p1, Lcom/google/firebase/database/snapshot/DeferredValueNode;

    .line 63
    iget-object v0, p0, Lcom/google/firebase/database/snapshot/DeferredValueNode;->value:Ljava/util/Map;

    iget-object v2, p1, Lcom/google/firebase/database/snapshot/DeferredValueNode;->value:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/google/firebase/database/snapshot/DeferredValueNode;->priority:Lcom/google/firebase/database/snapshot/Node;

    iget-object p1, p1, Lcom/google/firebase/database/snapshot/DeferredValueNode;->priority:Lcom/google/firebase/database/snapshot/Node;

    .line 64
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1d

    const/4 v1, 0x1

    :cond_1d
    return v1
.end method

.method public getHashRepresentation(Lcom/google/firebase/database/snapshot/Node$HashVersion;)Ljava/lang/String;
    .registers 3

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lcom/google/firebase/database/snapshot/DeferredValueNode;->getPriorityHash(Lcom/google/firebase/database/snapshot/Node$HashVersion;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "deferredValue:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/google/firebase/database/snapshot/DeferredValueNode;->value:Ljava/util/Map;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getLeafType()Lcom/google/firebase/database/snapshot/LeafNode$LeafType;
    .registers 2

    .line 48
    sget-object v0, Lcom/google/firebase/database/snapshot/LeafNode$LeafType;->DeferredValue:Lcom/google/firebase/database/snapshot/LeafNode$LeafType;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 2

    .line 32
    iget-object v0, p0, Lcom/google/firebase/database/snapshot/DeferredValueNode;->value:Ljava/util/Map;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 69
    iget-object v0, p0, Lcom/google/firebase/database/snapshot/DeferredValueNode;->value:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/google/firebase/database/snapshot/DeferredValueNode;->priority:Lcom/google/firebase/database/snapshot/Node;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public updatePriority(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/DeferredValueNode;
    .registers 4

    .line 42
    invoke-static {p1}, Lcom/google/firebase/database/snapshot/PriorityUtilities;->isValidPriority(Lcom/google/firebase/database/snapshot/Node;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/firebase/database/core/utilities/Utilities;->hardAssert(Z)V

    .line 43
    new-instance v0, Lcom/google/firebase/database/snapshot/DeferredValueNode;

    iget-object v1, p0, Lcom/google/firebase/database/snapshot/DeferredValueNode;->value:Ljava/util/Map;

    invoke-direct {v0, v1, p1}, Lcom/google/firebase/database/snapshot/DeferredValueNode;-><init>(Ljava/util/Map;Lcom/google/firebase/database/snapshot/Node;)V

    return-object v0
.end method

.method public bridge synthetic updatePriority(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;
    .registers 2

    .line 21
    invoke-virtual {p0, p1}, Lcom/google/firebase/database/snapshot/DeferredValueNode;->updatePriority(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/DeferredValueNode;

    move-result-object p1

    return-object p1
.end method

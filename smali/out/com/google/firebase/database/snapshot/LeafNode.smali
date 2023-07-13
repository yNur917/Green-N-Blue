.class public abstract Lcom/google/firebase/database/snapshot/LeafNode;
.super Ljava/lang/Object;
.source "LeafNode.java"

# interfaces
.implements Lcom/google/firebase/database/snapshot/Node;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/database/snapshot/LeafNode$LeafType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/firebase/database/snapshot/LeafNode;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/firebase/database/snapshot/Node;"
    }
.end annotation


# instance fields
.field private lazyHash:Ljava/lang/String;

.field protected final priority:Lcom/google/firebase/database/snapshot/Node;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/snapshot/Node;)V
    .registers 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/google/firebase/database/snapshot/LeafNode;->priority:Lcom/google/firebase/database/snapshot/Node;

    return-void
.end method

.method private static compareLongDoubleNodes(Lcom/google/firebase/database/snapshot/LongNode;Lcom/google/firebase/database/snapshot/DoubleNode;)I
    .registers 4

    .line 169
    invoke-virtual {p0}, Lcom/google/firebase/database/snapshot/LongNode;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    .line 170
    invoke-virtual {p1}, Lcom/google/firebase/database/snapshot/DoubleNode;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p0, p1}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    move-result p0

    return p0
.end method


# virtual methods
.method protected abstract compareLeafValues(Lcom/google/firebase/database/snapshot/LeafNode;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation
.end method

.method public compareTo(Lcom/google/firebase/database/snapshot/Node;)I
    .registers 5

    .line 175
    invoke-interface {p1}, Lcom/google/firebase/database/snapshot/Node;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p1, 0x1

    return p1

    .line 177
    :cond_8
    instance-of v0, p1, Lcom/google/firebase/database/snapshot/ChildrenNode;

    const/4 v1, -0x1

    if-eqz v0, :cond_e

    return v1

    .line 180
    :cond_e
    invoke-interface {p1}, Lcom/google/firebase/database/snapshot/Node;->isLeafNode()Z

    move-result v0

    const-string v2, "Node is not leaf node!"

    invoke-static {v0, v2}, Lcom/google/firebase/database/core/utilities/Utilities;->hardAssert(ZLjava/lang/String;)V

    .line 181
    instance-of v0, p0, Lcom/google/firebase/database/snapshot/LongNode;

    if-eqz v0, :cond_29

    instance-of v0, p1, Lcom/google/firebase/database/snapshot/DoubleNode;

    if-eqz v0, :cond_29

    .line 182
    move-object v0, p0

    check-cast v0, Lcom/google/firebase/database/snapshot/LongNode;

    check-cast p1, Lcom/google/firebase/database/snapshot/DoubleNode;

    invoke-static {v0, p1}, Lcom/google/firebase/database/snapshot/LeafNode;->compareLongDoubleNodes(Lcom/google/firebase/database/snapshot/LongNode;Lcom/google/firebase/database/snapshot/DoubleNode;)I

    move-result p1

    return p1

    .line 183
    :cond_29
    instance-of v0, p0, Lcom/google/firebase/database/snapshot/DoubleNode;

    if-eqz v0, :cond_3d

    instance-of v0, p1, Lcom/google/firebase/database/snapshot/LongNode;

    if-eqz v0, :cond_3d

    .line 184
    check-cast p1, Lcom/google/firebase/database/snapshot/LongNode;

    move-object v0, p0

    check-cast v0, Lcom/google/firebase/database/snapshot/DoubleNode;

    invoke-static {p1, v0}, Lcom/google/firebase/database/snapshot/LeafNode;->compareLongDoubleNodes(Lcom/google/firebase/database/snapshot/LongNode;Lcom/google/firebase/database/snapshot/DoubleNode;)I

    move-result p1

    mul-int/lit8 p1, p1, -0x1

    return p1

    .line 186
    :cond_3d
    check-cast p1, Lcom/google/firebase/database/snapshot/LeafNode;

    invoke-virtual {p0, p1}, Lcom/google/firebase/database/snapshot/LeafNode;->leafCompare(Lcom/google/firebase/database/snapshot/LeafNode;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 26
    check-cast p1, Lcom/google/firebase/database/snapshot/Node;

    invoke-virtual {p0, p1}, Lcom/google/firebase/database/snapshot/LeafNode;->compareTo(Lcom/google/firebase/database/snapshot/Node;)I

    move-result p1

    return p1
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public getChild(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;
    .registers 3

    .line 60
    invoke-virtual {p1}, Lcom/google/firebase/database/core/Path;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p0

    .line 62
    :cond_7
    invoke-virtual {p1}, Lcom/google/firebase/database/core/Path;->getFront()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/database/snapshot/ChildKey;->isPriorityChildName()Z

    move-result p1

    if-eqz p1, :cond_14

    .line 63
    iget-object p1, p0, Lcom/google/firebase/database/snapshot/LeafNode;->priority:Lcom/google/firebase/database/snapshot/Node;

    return-object p1

    .line 65
    :cond_14
    invoke-static {}, Lcom/google/firebase/database/snapshot/EmptyNode;->Empty()Lcom/google/firebase/database/snapshot/EmptyNode;

    move-result-object p1

    return-object p1
.end method

.method public getChildCount()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getHash()Ljava/lang/String;
    .registers 2

    .line 136
    iget-object v0, p0, Lcom/google/firebase/database/snapshot/LeafNode;->lazyHash:Ljava/lang/String;

    if-nez v0, :cond_10

    .line 137
    sget-object v0, Lcom/google/firebase/database/snapshot/Node$HashVersion;->V1:Lcom/google/firebase/database/snapshot/Node$HashVersion;

    invoke-virtual {p0, v0}, Lcom/google/firebase/database/snapshot/LeafNode;->getHashRepresentation(Lcom/google/firebase/database/snapshot/Node$HashVersion;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/database/core/utilities/Utilities;->sha1HexDigest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/database/snapshot/LeafNode;->lazyHash:Ljava/lang/String;

    .line 139
    :cond_10
    iget-object v0, p0, Lcom/google/firebase/database/snapshot/LeafNode;->lazyHash:Ljava/lang/String;

    return-object v0
.end method

.method public getImmediateChild(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/snapshot/Node;
    .registers 2

    .line 104
    invoke-virtual {p1}, Lcom/google/firebase/database/snapshot/ChildKey;->isPriorityChildName()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 105
    iget-object p1, p0, Lcom/google/firebase/database/snapshot/LeafNode;->priority:Lcom/google/firebase/database/snapshot/Node;

    return-object p1

    .line 107
    :cond_9
    invoke-static {}, Lcom/google/firebase/database/snapshot/EmptyNode;->Empty()Lcom/google/firebase/database/snapshot/EmptyNode;

    move-result-object p1

    return-object p1
.end method

.method protected abstract getLeafType()Lcom/google/firebase/database/snapshot/LeafNode$LeafType;
.end method

.method public getPredecessorChildKey(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/snapshot/ChildKey;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public getPriority()Lcom/google/firebase/database/snapshot/Node;
    .registers 2

    .line 55
    iget-object v0, p0, Lcom/google/firebase/database/snapshot/LeafNode;->priority:Lcom/google/firebase/database/snapshot/Node;

    return-object v0
.end method

.method protected getPriorityHash(Lcom/google/firebase/database/snapshot/Node$HashVersion;)Ljava/lang/String;
    .registers 5

    .line 143
    sget-object v0, Lcom/google/firebase/database/snapshot/LeafNode$1;->$SwitchMap$com$google$firebase$database$snapshot$Node$HashVersion:[I

    invoke-virtual {p1}, Lcom/google/firebase/database/snapshot/Node$HashVersion;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_26

    const/4 v1, 0x2

    if-ne v0, v1, :cond_f

    goto :goto_26

    .line 152
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown hash version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_26
    :goto_26
    iget-object v0, p0, Lcom/google/firebase/database/snapshot/LeafNode;->priority:Lcom/google/firebase/database/snapshot/Node;

    invoke-interface {v0}, Lcom/google/firebase/database/snapshot/Node;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_31

    const-string p1, ""

    return-object p1

    .line 149
    :cond_31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "priority:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/firebase/database/snapshot/LeafNode;->priority:Lcom/google/firebase/database/snapshot/Node;

    invoke-interface {v1, p1}, Lcom/google/firebase/database/snapshot/Node;->getHashRepresentation(Lcom/google/firebase/database/snapshot/Node$HashVersion;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSuccessorChildKey(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/snapshot/ChildKey;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public getValue(Z)Ljava/lang/Object;
    .registers 4

    if-eqz p1, :cond_25

    .line 113
    iget-object p1, p0, Lcom/google/firebase/database/snapshot/LeafNode;->priority:Lcom/google/firebase/database/snapshot/Node;

    invoke-interface {p1}, Lcom/google/firebase/database/snapshot/Node;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_25

    .line 116
    :cond_b
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 117
    invoke-virtual {p0}, Lcom/google/firebase/database/snapshot/LeafNode;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, ".value"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    iget-object v0, p0, Lcom/google/firebase/database/snapshot/LeafNode;->priority:Lcom/google/firebase/database/snapshot/Node;

    invoke-interface {v0}, Lcom/google/firebase/database/snapshot/Node;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, ".priority"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    .line 114
    :cond_25
    :goto_25
    invoke-virtual {p0}, Lcom/google/firebase/database/snapshot/LeafNode;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public hasChild(Lcom/google/firebase/database/snapshot/ChildKey;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public abstract hashCode()I
.end method

.method public isEmpty()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isLeafNode()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/firebase/database/snapshot/NamedNode;",
            ">;"
        }
    .end annotation

    .line 160
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method protected leafCompare(Lcom/google/firebase/database/snapshot/LeafNode;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/snapshot/LeafNode<",
            "*>;)I"
        }
    .end annotation

    .line 194
    invoke-virtual {p0}, Lcom/google/firebase/database/snapshot/LeafNode;->getLeafType()Lcom/google/firebase/database/snapshot/LeafNode$LeafType;

    move-result-object v0

    .line 195
    invoke-virtual {p1}, Lcom/google/firebase/database/snapshot/LeafNode;->getLeafType()Lcom/google/firebase/database/snapshot/LeafNode$LeafType;

    move-result-object v1

    .line 196
    invoke-virtual {v0, v1}, Lcom/google/firebase/database/snapshot/LeafNode$LeafType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 199
    invoke-virtual {p0, p1}, Lcom/google/firebase/database/snapshot/LeafNode;->compareLeafValues(Lcom/google/firebase/database/snapshot/LeafNode;)I

    move-result p1

    return p1

    .line 202
    :cond_13
    invoke-virtual {v0, v1}, Lcom/google/firebase/database/snapshot/LeafNode$LeafType;->compareTo(Ljava/lang/Enum;)I

    move-result p1

    return p1
.end method

.method public reverseIterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/firebase/database/snapshot/NamedNode;",
            ">;"
        }
    .end annotation

    .line 165
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    const/4 v0, 0x1

    .line 214
    invoke-virtual {p0, v0}, Lcom/google/firebase/database/snapshot/LeafNode;->getValue(Z)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 215
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x64

    if-gt v1, v2, :cond_12

    goto :goto_28

    :cond_12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "..."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_28
    return-object v0
.end method

.method public updateChild(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;
    .registers 6

    .line 71
    invoke-virtual {p1}, Lcom/google/firebase/database/core/Path;->getFront()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v0

    if-nez v0, :cond_7

    return-object p2

    .line 74
    :cond_7
    invoke-interface {p2}, Lcom/google/firebase/database/snapshot/Node;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual {v0}, Lcom/google/firebase/database/snapshot/ChildKey;->isPriorityChildName()Z

    move-result v1

    if-nez v1, :cond_14

    return-object p0

    .line 77
    :cond_14
    invoke-virtual {p1}, Lcom/google/firebase/database/core/Path;->getFront()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/database/snapshot/ChildKey;->isPriorityChildName()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_27

    invoke-virtual {p1}, Lcom/google/firebase/database/core/Path;->size()I

    move-result v1

    if-ne v1, v2, :cond_26

    goto :goto_27

    :cond_26
    const/4 v2, 0x0

    :cond_27
    :goto_27
    invoke-static {v2}, Lcom/google/firebase/database/core/utilities/Utilities;->hardAssert(Z)V

    .line 78
    invoke-static {}, Lcom/google/firebase/database/snapshot/EmptyNode;->Empty()Lcom/google/firebase/database/snapshot/EmptyNode;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/firebase/database/core/Path;->popFront()Lcom/google/firebase/database/core/Path;

    move-result-object p1

    invoke-virtual {v1, p1, p2}, Lcom/google/firebase/database/snapshot/EmptyNode;->updateChild(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/google/firebase/database/snapshot/LeafNode;->updateImmediateChild(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object p1

    return-object p1
.end method

.method public updateImmediateChild(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;
    .registers 4

    .line 125
    invoke-virtual {p1}, Lcom/google/firebase/database/snapshot/ChildKey;->isPriorityChildName()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 126
    invoke-virtual {p0, p2}, Lcom/google/firebase/database/snapshot/LeafNode;->updatePriority(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object p1

    return-object p1

    .line 127
    :cond_b
    invoke-interface {p2}, Lcom/google/firebase/database/snapshot/Node;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    return-object p0

    .line 130
    :cond_12
    invoke-static {}, Lcom/google/firebase/database/snapshot/EmptyNode;->Empty()Lcom/google/firebase/database/snapshot/EmptyNode;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/database/snapshot/EmptyNode;->updateImmediateChild(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object p1

    iget-object p2, p0, Lcom/google/firebase/database/snapshot/LeafNode;->priority:Lcom/google/firebase/database/snapshot/Node;

    invoke-interface {p1, p2}, Lcom/google/firebase/database/snapshot/Node;->updatePriority(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object p1

    return-object p1
.end method

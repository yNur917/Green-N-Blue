.class public Lcom/google/firebase/database/core/view/filter/IndexedFilter;
.super Ljava/lang/Object;
.source "IndexedFilter.java"

# interfaces
.implements Lcom/google/firebase/database/core/view/filter/NodeFilter;


# instance fields
.field private final index:Lcom/google/firebase/database/snapshot/Index;


# direct methods
.method public constructor <init>(Lcom/google/firebase/database/snapshot/Index;)V
    .registers 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/google/firebase/database/core/view/filter/IndexedFilter;->index:Lcom/google/firebase/database/snapshot/Index;

    return-void
.end method


# virtual methods
.method public filtersNodes()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getIndex()Lcom/google/firebase/database/snapshot/Index;
    .registers 2

    .line 129
    iget-object v0, p0, Lcom/google/firebase/database/core/view/filter/IndexedFilter;->index:Lcom/google/firebase/database/snapshot/Index;

    return-object v0
.end method

.method public getIndexedFilter()Lcom/google/firebase/database/core/view/filter/NodeFilter;
    .registers 1

    return-object p0
.end method

.method public updateChild(Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/view/filter/NodeFilter$CompleteChildSource;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/snapshot/IndexedNode;
    .registers 9

    .line 43
    iget-object p5, p0, Lcom/google/firebase/database/core/view/filter/IndexedFilter;->index:Lcom/google/firebase/database/snapshot/Index;

    invoke-virtual {p1, p5}, Lcom/google/firebase/database/snapshot/IndexedNode;->hasIndex(Lcom/google/firebase/database/snapshot/Index;)Z

    move-result p5

    const-string v0, "The index must match the filter"

    invoke-static {p5, v0}, Lcom/google/firebase/database/core/utilities/Utilities;->hardAssert(ZLjava/lang/String;)V

    .line 44
    invoke-virtual {p1}, Lcom/google/firebase/database/snapshot/IndexedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object p5

    .line 45
    invoke-interface {p5, p2}, Lcom/google/firebase/database/snapshot/Node;->getImmediateChild(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    .line 47
    invoke-interface {v0, p4}, Lcom/google/firebase/database/snapshot/Node;->getChild(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v1

    invoke-interface {p3, p4}, Lcom/google/firebase/database/snapshot/Node;->getChild(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object p4

    invoke-virtual {v1, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_2c

    .line 51
    invoke-interface {v0}, Lcom/google/firebase/database/snapshot/Node;->isEmpty()Z

    move-result p4

    invoke-interface {p3}, Lcom/google/firebase/database/snapshot/Node;->isEmpty()Z

    move-result v1

    if-ne p4, v1, :cond_2c

    return-object p1

    :cond_2c
    if-eqz p6, :cond_61

    .line 61
    invoke-interface {p3}, Lcom/google/firebase/database/snapshot/Node;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_4c

    .line 62
    invoke-interface {p5, p2}, Lcom/google/firebase/database/snapshot/Node;->hasChild(Lcom/google/firebase/database/snapshot/ChildKey;)Z

    move-result p4

    if-eqz p4, :cond_42

    .line 63
    invoke-static {p2, v0}, Lcom/google/firebase/database/core/view/Change;->childRemovedChange(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/core/view/Change;

    move-result-object p4

    invoke-virtual {p6, p4}, Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;->trackChildChange(Lcom/google/firebase/database/core/view/Change;)V

    goto :goto_61

    .line 66
    :cond_42
    invoke-interface {p5}, Lcom/google/firebase/database/snapshot/Node;->isLeafNode()Z

    move-result p4

    const-string p6, "A child remove without an old child only makes sense on a leaf node"

    .line 65
    invoke-static {p4, p6}, Lcom/google/firebase/database/core/utilities/Utilities;->hardAssert(ZLjava/lang/String;)V

    goto :goto_61

    .line 69
    :cond_4c
    invoke-interface {v0}, Lcom/google/firebase/database/snapshot/Node;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_5a

    .line 70
    invoke-static {p2, p3}, Lcom/google/firebase/database/core/view/Change;->childAddedChange(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/core/view/Change;

    move-result-object p4

    invoke-virtual {p6, p4}, Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;->trackChildChange(Lcom/google/firebase/database/core/view/Change;)V

    goto :goto_61

    .line 72
    :cond_5a
    invoke-static {p2, p3, v0}, Lcom/google/firebase/database/core/view/Change;->childChangedChange(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/core/view/Change;

    move-result-object p4

    invoke-virtual {p6, p4}, Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;->trackChildChange(Lcom/google/firebase/database/core/view/Change;)V

    .line 75
    :cond_61
    :goto_61
    invoke-interface {p5}, Lcom/google/firebase/database/snapshot/Node;->isLeafNode()Z

    move-result p4

    if-eqz p4, :cond_6e

    invoke-interface {p3}, Lcom/google/firebase/database/snapshot/Node;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_6e

    return-object p1

    .line 79
    :cond_6e
    invoke-virtual {p1, p2, p3}, Lcom/google/firebase/database/snapshot/IndexedNode;->updateChild(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object p1

    return-object p1
.end method

.method public updateFullNode(Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/snapshot/IndexedNode;
    .registers 8

    .line 86
    iget-object v0, p0, Lcom/google/firebase/database/core/view/filter/IndexedFilter;->index:Lcom/google/firebase/database/snapshot/Index;

    .line 87
    invoke-virtual {p2, v0}, Lcom/google/firebase/database/snapshot/IndexedNode;->hasIndex(Lcom/google/firebase/database/snapshot/Index;)Z

    move-result v0

    const-string v1, "Can\'t use IndexedNode that doesn\'t have filter\'s index"

    .line 86
    invoke-static {v0, v1}, Lcom/google/firebase/database/core/utilities/Utilities;->hardAssert(ZLjava/lang/String;)V

    if-eqz p3, :cond_a1

    .line 89
    invoke-virtual {p1}, Lcom/google/firebase/database/snapshot/IndexedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/firebase/database/snapshot/Node;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_15
    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/database/snapshot/NamedNode;

    .line 90
    invoke-virtual {p2}, Lcom/google/firebase/database/snapshot/IndexedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/firebase/database/snapshot/NamedNode;->getName()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/firebase/database/snapshot/Node;->hasChild(Lcom/google/firebase/database/snapshot/ChildKey;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 92
    invoke-virtual {v1}, Lcom/google/firebase/database/snapshot/NamedNode;->getName()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/firebase/database/snapshot/NamedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/firebase/database/core/view/Change;->childRemovedChange(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/core/view/Change;

    move-result-object v1

    .line 91
    invoke-virtual {p3, v1}, Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;->trackChildChange(Lcom/google/firebase/database/core/view/Change;)V

    goto :goto_15

    .line 95
    :cond_3f
    invoke-virtual {p2}, Lcom/google/firebase/database/snapshot/IndexedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/firebase/database/snapshot/Node;->isLeafNode()Z

    move-result v0

    if-nez v0, :cond_a1

    .line 96
    invoke-virtual {p2}, Lcom/google/firebase/database/snapshot/IndexedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/firebase/database/snapshot/Node;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_51
    :goto_51
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/database/snapshot/NamedNode;

    .line 97
    invoke-virtual {p1}, Lcom/google/firebase/database/snapshot/IndexedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/firebase/database/snapshot/NamedNode;->getName()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/firebase/database/snapshot/Node;->hasChild(Lcom/google/firebase/database/snapshot/ChildKey;)Z

    move-result v2

    if-eqz v2, :cond_91

    .line 98
    invoke-virtual {p1}, Lcom/google/firebase/database/snapshot/IndexedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/firebase/database/snapshot/NamedNode;->getName()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/firebase/database/snapshot/Node;->getImmediateChild(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v2

    .line 99
    invoke-virtual {v1}, Lcom/google/firebase/database/snapshot/NamedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_51

    .line 101
    invoke-virtual {v1}, Lcom/google/firebase/database/snapshot/NamedNode;->getName()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/firebase/database/snapshot/NamedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v1

    invoke-static {v3, v1, v2}, Lcom/google/firebase/database/core/view/Change;->childChangedChange(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/core/view/Change;

    move-result-object v1

    .line 100
    invoke-virtual {p3, v1}, Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;->trackChildChange(Lcom/google/firebase/database/core/view/Change;)V

    goto :goto_51

    .line 105
    :cond_91
    invoke-virtual {v1}, Lcom/google/firebase/database/snapshot/NamedNode;->getName()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/firebase/database/snapshot/NamedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/firebase/database/core/view/Change;->childAddedChange(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/core/view/Change;

    move-result-object v1

    .line 104
    invoke-virtual {p3, v1}, Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;->trackChildChange(Lcom/google/firebase/database/core/view/Change;)V

    goto :goto_51

    :cond_a1
    return-object p2
.end method

.method public updatePriority(Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/IndexedNode;
    .registers 4

    .line 115
    invoke-virtual {p1}, Lcom/google/firebase/database/snapshot/IndexedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/firebase/database/snapshot/Node;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    return-object p1

    .line 118
    :cond_b
    invoke-virtual {p1, p2}, Lcom/google/firebase/database/snapshot/IndexedNode;->updatePriority(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object p1

    return-object p1
.end method

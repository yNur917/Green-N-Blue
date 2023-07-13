.class public Lcom/google/firebase/database/core/view/CacheNode;
.super Ljava/lang/Object;
.source "CacheNode.java"


# instance fields
.field private final filtered:Z

.field private final fullyInitialized:Z

.field private final indexedNode:Lcom/google/firebase/database/snapshot/IndexedNode;


# direct methods
.method public constructor <init>(Lcom/google/firebase/database/snapshot/IndexedNode;ZZ)V
    .registers 4

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/google/firebase/database/core/view/CacheNode;->indexedNode:Lcom/google/firebase/database/snapshot/IndexedNode;

    .line 36
    iput-boolean p2, p0, Lcom/google/firebase/database/core/view/CacheNode;->fullyInitialized:Z

    .line 37
    iput-boolean p3, p0, Lcom/google/firebase/database/core/view/CacheNode;->filtered:Z

    return-void
.end method


# virtual methods
.method public getIndexedNode()Lcom/google/firebase/database/snapshot/IndexedNode;
    .registers 2

    .line 73
    iget-object v0, p0, Lcom/google/firebase/database/core/view/CacheNode;->indexedNode:Lcom/google/firebase/database/snapshot/IndexedNode;

    return-object v0
.end method

.method public getNode()Lcom/google/firebase/database/snapshot/Node;
    .registers 2

    .line 69
    iget-object v0, p0, Lcom/google/firebase/database/core/view/CacheNode;->indexedNode:Lcom/google/firebase/database/snapshot/IndexedNode;

    invoke-virtual {v0}, Lcom/google/firebase/database/snapshot/IndexedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    return-object v0
.end method

.method public isCompleteForChild(Lcom/google/firebase/database/snapshot/ChildKey;)Z
    .registers 3

    .line 65
    invoke-virtual {p0}, Lcom/google/firebase/database/core/view/CacheNode;->isFullyInitialized()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/google/firebase/database/core/view/CacheNode;->filtered:Z

    if-eqz v0, :cond_16

    :cond_a
    iget-object v0, p0, Lcom/google/firebase/database/core/view/CacheNode;->indexedNode:Lcom/google/firebase/database/snapshot/IndexedNode;

    invoke-virtual {v0}, Lcom/google/firebase/database/snapshot/IndexedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/firebase/database/snapshot/Node;->hasChild(Lcom/google/firebase/database/snapshot/ChildKey;)Z

    move-result p1

    if-eqz p1, :cond_18

    :cond_16
    const/4 p1, 0x1

    goto :goto_19

    :cond_18
    const/4 p1, 0x0

    :goto_19
    return p1
.end method

.method public isCompleteForPath(Lcom/google/firebase/database/core/Path;)Z
    .registers 3

    .line 56
    invoke-virtual {p1}, Lcom/google/firebase/database/core/Path;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 57
    invoke-virtual {p0}, Lcom/google/firebase/database/core/view/CacheNode;->isFullyInitialized()Z

    move-result p1

    if-eqz p1, :cond_12

    iget-boolean p1, p0, Lcom/google/firebase/database/core/view/CacheNode;->filtered:Z

    if-nez p1, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    return p1

    .line 59
    :cond_14
    invoke-virtual {p1}, Lcom/google/firebase/database/core/Path;->getFront()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object p1

    .line 60
    invoke-virtual {p0, p1}, Lcom/google/firebase/database/core/view/CacheNode;->isCompleteForChild(Lcom/google/firebase/database/snapshot/ChildKey;)Z

    move-result p1

    return p1
.end method

.method public isFiltered()Z
    .registers 2

    .line 52
    iget-boolean v0, p0, Lcom/google/firebase/database/core/view/CacheNode;->filtered:Z

    return v0
.end method

.method public isFullyInitialized()Z
    .registers 2

    .line 45
    iget-boolean v0, p0, Lcom/google/firebase/database/core/view/CacheNode;->fullyInitialized:Z

    return v0
.end method

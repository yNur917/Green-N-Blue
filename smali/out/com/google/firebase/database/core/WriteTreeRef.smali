.class public Lcom/google/firebase/database/core/WriteTreeRef;
.super Ljava/lang/Object;
.source "WriteTreeRef.java"


# instance fields
.field private final treePath:Lcom/google/firebase/database/core/Path;

.field private final writeTree:Lcom/google/firebase/database/core/WriteTree;


# direct methods
.method public constructor <init>(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/WriteTree;)V
    .registers 3

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/google/firebase/database/core/WriteTreeRef;->treePath:Lcom/google/firebase/database/core/Path;

    .line 48
    iput-object p2, p0, Lcom/google/firebase/database/core/WriteTreeRef;->writeTree:Lcom/google/firebase/database/core/WriteTree;

    return-void
.end method


# virtual methods
.method public calcCompleteChild(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/core/view/CacheNode;)Lcom/google/firebase/database/snapshot/Node;
    .registers 5

    .line 123
    iget-object v0, p0, Lcom/google/firebase/database/core/WriteTreeRef;->writeTree:Lcom/google/firebase/database/core/WriteTree;

    iget-object v1, p0, Lcom/google/firebase/database/core/WriteTreeRef;->treePath:Lcom/google/firebase/database/core/Path;

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/firebase/database/core/WriteTree;->calcCompleteChild(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/core/view/CacheNode;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object p1

    return-object p1
.end method

.method public calcCompleteEventCache(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;
    .registers 3

    .line 57
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/database/core/WriteTreeRef;->calcCompleteEventCache(Lcom/google/firebase/database/snapshot/Node;Ljava/util/List;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object p1

    return-object p1
.end method

.method public calcCompleteEventCache(Lcom/google/firebase/database/snapshot/Node;Ljava/util/List;)Lcom/google/firebase/database/snapshot/Node;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/snapshot/Node;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/google/firebase/database/snapshot/Node;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 61
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/firebase/database/core/WriteTreeRef;->calcCompleteEventCache(Lcom/google/firebase/database/snapshot/Node;Ljava/util/List;Z)Lcom/google/firebase/database/snapshot/Node;

    move-result-object p1

    return-object p1
.end method

.method public calcCompleteEventCache(Lcom/google/firebase/database/snapshot/Node;Ljava/util/List;Z)Lcom/google/firebase/database/snapshot/Node;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/snapshot/Node;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)",
            "Lcom/google/firebase/database/snapshot/Node;"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/google/firebase/database/core/WriteTreeRef;->writeTree:Lcom/google/firebase/database/core/WriteTree;

    iget-object v1, p0, Lcom/google/firebase/database/core/WriteTreeRef;->treePath:Lcom/google/firebase/database/core/Path;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/google/firebase/database/core/WriteTree;->calcCompleteEventCache(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;Ljava/util/List;Z)Lcom/google/firebase/database/snapshot/Node;

    move-result-object p1

    return-object p1
.end method

.method public calcCompleteEventChildren(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;
    .registers 4

    .line 75
    iget-object v0, p0, Lcom/google/firebase/database/core/WriteTreeRef;->writeTree:Lcom/google/firebase/database/core/WriteTree;

    iget-object v1, p0, Lcom/google/firebase/database/core/WriteTreeRef;->treePath:Lcom/google/firebase/database/core/Path;

    invoke-virtual {v0, v1, p1}, Lcom/google/firebase/database/core/WriteTree;->calcCompleteEventChildren(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object p1

    return-object p1
.end method

.method public calcEventCacheAfterServerOverwrite(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;
    .registers 6

    .line 95
    iget-object v0, p0, Lcom/google/firebase/database/core/WriteTreeRef;->writeTree:Lcom/google/firebase/database/core/WriteTree;

    iget-object v1, p0, Lcom/google/firebase/database/core/WriteTreeRef;->treePath:Lcom/google/firebase/database/core/Path;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/google/firebase/database/core/WriteTree;->calcEventCacheAfterServerOverwrite(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object p1

    return-object p1
.end method

.method public calcNextNodeAfterPost(Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/NamedNode;ZLcom/google/firebase/database/snapshot/Index;)Lcom/google/firebase/database/snapshot/NamedNode;
    .registers 11

    .line 114
    iget-object v0, p0, Lcom/google/firebase/database/core/WriteTreeRef;->writeTree:Lcom/google/firebase/database/core/WriteTree;

    iget-object v1, p0, Lcom/google/firebase/database/core/WriteTreeRef;->treePath:Lcom/google/firebase/database/core/Path;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/firebase/database/core/WriteTree;->calcNextNodeAfterPost(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/NamedNode;ZLcom/google/firebase/database/snapshot/Index;)Lcom/google/firebase/database/snapshot/NamedNode;

    move-result-object p1

    return-object p1
.end method

.method public child(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/core/WriteTreeRef;
    .registers 4

    .line 128
    new-instance v0, Lcom/google/firebase/database/core/WriteTreeRef;

    iget-object v1, p0, Lcom/google/firebase/database/core/WriteTreeRef;->treePath:Lcom/google/firebase/database/core/Path;

    invoke-virtual {v1, p1}, Lcom/google/firebase/database/core/Path;->child(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/core/Path;

    move-result-object p1

    iget-object v1, p0, Lcom/google/firebase/database/core/WriteTreeRef;->writeTree:Lcom/google/firebase/database/core/WriteTree;

    invoke-direct {v0, p1, v1}, Lcom/google/firebase/database/core/WriteTreeRef;-><init>(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/WriteTree;)V

    return-object v0
.end method

.method public shadowingWrite(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;
    .registers 4

    .line 105
    iget-object v0, p0, Lcom/google/firebase/database/core/WriteTreeRef;->writeTree:Lcom/google/firebase/database/core/WriteTree;

    iget-object v1, p0, Lcom/google/firebase/database/core/WriteTreeRef;->treePath:Lcom/google/firebase/database/core/Path;

    invoke-virtual {v1, p1}, Lcom/google/firebase/database/core/Path;->child(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/Path;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/core/WriteTree;->shadowingWrite(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object p1

    return-object p1
.end method

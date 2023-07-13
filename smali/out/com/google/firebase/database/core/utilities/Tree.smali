.class public Lcom/google/firebase/database/core/utilities/Tree;
.super Ljava/lang/Object;
.source "Tree.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/database/core/utilities/Tree$TreeFilter;,
        Lcom/google/firebase/database/core/utilities/Tree$TreeVisitor;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private name:Lcom/google/firebase/database/snapshot/ChildKey;

.field private node:Lcom/google/firebase/database/core/utilities/TreeNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/database/core/utilities/TreeNode<",
            "TT;>;"
        }
    .end annotation
.end field

.field private parent:Lcom/google/firebase/database/core/utilities/Tree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/database/core/utilities/Tree<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 45
    new-instance v0, Lcom/google/firebase/database/core/utilities/TreeNode;

    invoke-direct {v0}, Lcom/google/firebase/database/core/utilities/TreeNode;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v1, v1, v0}, Lcom/google/firebase/database/core/utilities/Tree;-><init>(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/core/utilities/Tree;Lcom/google/firebase/database/core/utilities/TreeNode;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/core/utilities/Tree;Lcom/google/firebase/database/core/utilities/TreeNode;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/snapshot/ChildKey;",
            "Lcom/google/firebase/database/core/utilities/Tree<",
            "TT;>;",
            "Lcom/google/firebase/database/core/utilities/TreeNode<",
            "TT;>;)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/google/firebase/database/core/utilities/Tree;->name:Lcom/google/firebase/database/snapshot/ChildKey;

    .line 40
    iput-object p2, p0, Lcom/google/firebase/database/core/utilities/Tree;->parent:Lcom/google/firebase/database/core/utilities/Tree;

    .line 41
    iput-object p3, p0, Lcom/google/firebase/database/core/utilities/Tree;->node:Lcom/google/firebase/database/core/utilities/TreeNode;

    return-void
.end method

.method private updateChild(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/core/utilities/Tree;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/snapshot/ChildKey;",
            "Lcom/google/firebase/database/core/utilities/Tree<",
            "TT;>;)V"
        }
    .end annotation

    .line 171
    invoke-virtual {p2}, Lcom/google/firebase/database/core/utilities/Tree;->isEmpty()Z

    move-result v0

    .line 172
    iget-object v1, p0, Lcom/google/firebase/database/core/utilities/Tree;->node:Lcom/google/firebase/database/core/utilities/TreeNode;

    iget-object v1, v1, Lcom/google/firebase/database/core/utilities/TreeNode;->children:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v0, :cond_1b

    if-eqz v1, :cond_1b

    .line 174
    iget-object p2, p0, Lcom/google/firebase/database/core/utilities/Tree;->node:Lcom/google/firebase/database/core/utilities/TreeNode;

    iget-object p2, p2, Lcom/google/firebase/database/core/utilities/TreeNode;->children:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    invoke-direct {p0}, Lcom/google/firebase/database/core/utilities/Tree;->updateParents()V

    goto :goto_2b

    :cond_1b
    if-nez v0, :cond_2b

    if-nez v1, :cond_2b

    .line 177
    iget-object v0, p0, Lcom/google/firebase/database/core/utilities/Tree;->node:Lcom/google/firebase/database/core/utilities/TreeNode;

    iget-object v0, v0, Lcom/google/firebase/database/core/utilities/TreeNode;->children:Ljava/util/Map;

    iget-object p2, p2, Lcom/google/firebase/database/core/utilities/Tree;->node:Lcom/google/firebase/database/core/utilities/TreeNode;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    invoke-direct {p0}, Lcom/google/firebase/database/core/utilities/Tree;->updateParents()V

    :cond_2b
    :goto_2b
    return-void
.end method

.method private updateParents()V
    .registers 3

    .line 165
    iget-object v0, p0, Lcom/google/firebase/database/core/utilities/Tree;->parent:Lcom/google/firebase/database/core/utilities/Tree;

    if-eqz v0, :cond_9

    .line 166
    iget-object v1, p0, Lcom/google/firebase/database/core/utilities/Tree;->name:Lcom/google/firebase/database/snapshot/ChildKey;

    invoke-direct {v0, v1, p0}, Lcom/google/firebase/database/core/utilities/Tree;->updateChild(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/core/utilities/Tree;)V

    :cond_9
    return-void
.end method


# virtual methods
.method public forEachAncestor(Lcom/google/firebase/database/core/utilities/Tree$TreeFilter;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/utilities/Tree$TreeFilter<",
            "TT;>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 139
    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/database/core/utilities/Tree;->forEachAncestor(Lcom/google/firebase/database/core/utilities/Tree$TreeFilter;Z)Z

    move-result p1

    return p1
.end method

.method public forEachAncestor(Lcom/google/firebase/database/core/utilities/Tree$TreeFilter;Z)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/utilities/Tree$TreeFilter<",
            "TT;>;Z)Z"
        }
    .end annotation

    if-eqz p2, :cond_4

    move-object p2, p0

    goto :goto_6

    .line 143
    :cond_4
    iget-object p2, p0, Lcom/google/firebase/database/core/utilities/Tree;->parent:Lcom/google/firebase/database/core/utilities/Tree;

    :goto_6
    if-eqz p2, :cond_13

    .line 145
    invoke-interface {p1, p2}, Lcom/google/firebase/database/core/utilities/Tree$TreeFilter;->filterTreeNode(Lcom/google/firebase/database/core/utilities/Tree;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 p1, 0x1

    return p1

    .line 148
    :cond_10
    iget-object p2, p2, Lcom/google/firebase/database/core/utilities/Tree;->parent:Lcom/google/firebase/database/core/utilities/Tree;

    goto :goto_6

    :cond_13
    const/4 p1, 0x0

    return p1
.end method

.method public forEachChild(Lcom/google/firebase/database/core/utilities/Tree$TreeVisitor;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/utilities/Tree$TreeVisitor<",
            "TT;>;)V"
        }
    .end annotation

    .line 155
    iget-object v0, p0, Lcom/google/firebase/database/core/utilities/Tree;->node:Lcom/google/firebase/database/core/utilities/TreeNode;

    iget-object v0, v0, Lcom/google/firebase/database/core/utilities/TreeNode;->children:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    .line 156
    :goto_d
    array-length v2, v0

    if-ge v1, v2, :cond_2b

    .line 158
    aget-object v2, v0, v1

    check-cast v2, Ljava/util/Map$Entry;

    .line 159
    new-instance v3, Lcom/google/firebase/database/core/utilities/Tree;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/firebase/database/snapshot/ChildKey;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/database/core/utilities/TreeNode;

    invoke-direct {v3, v4, p0, v2}, Lcom/google/firebase/database/core/utilities/Tree;-><init>(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/core/utilities/Tree;Lcom/google/firebase/database/core/utilities/TreeNode;)V

    .line 160
    invoke-interface {p1, v3}, Lcom/google/firebase/database/core/utilities/Tree$TreeVisitor;->visitTree(Lcom/google/firebase/database/core/utilities/Tree;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_2b
    return-void
.end method

.method public forEachDescendant(Lcom/google/firebase/database/core/utilities/Tree$TreeVisitor;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/utilities/Tree$TreeVisitor<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 112
    invoke-virtual {p0, p1, v0, v0}, Lcom/google/firebase/database/core/utilities/Tree;->forEachDescendant(Lcom/google/firebase/database/core/utilities/Tree$TreeVisitor;ZZ)V

    return-void
.end method

.method public forEachDescendant(Lcom/google/firebase/database/core/utilities/Tree$TreeVisitor;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/utilities/Tree$TreeVisitor<",
            "TT;>;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 116
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/firebase/database/core/utilities/Tree;->forEachDescendant(Lcom/google/firebase/database/core/utilities/Tree$TreeVisitor;ZZ)V

    return-void
.end method

.method public forEachDescendant(Lcom/google/firebase/database/core/utilities/Tree$TreeVisitor;ZZ)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/utilities/Tree$TreeVisitor<",
            "TT;>;ZZ)V"
        }
    .end annotation

    if-eqz p2, :cond_7

    if-nez p3, :cond_7

    .line 122
    invoke-interface {p1, p0}, Lcom/google/firebase/database/core/utilities/Tree$TreeVisitor;->visitTree(Lcom/google/firebase/database/core/utilities/Tree;)V

    .line 125
    :cond_7
    new-instance v0, Lcom/google/firebase/database/core/utilities/Tree$1;

    invoke-direct {v0, p0, p1, p3}, Lcom/google/firebase/database/core/utilities/Tree$1;-><init>(Lcom/google/firebase/database/core/utilities/Tree;Lcom/google/firebase/database/core/utilities/Tree$TreeVisitor;Z)V

    invoke-virtual {p0, v0}, Lcom/google/firebase/database/core/utilities/Tree;->forEachChild(Lcom/google/firebase/database/core/utilities/Tree$TreeVisitor;)V

    if-eqz p2, :cond_16

    if-eqz p3, :cond_16

    .line 134
    invoke-interface {p1, p0}, Lcom/google/firebase/database/core/utilities/Tree$TreeVisitor;->visitTree(Lcom/google/firebase/database/core/utilities/Tree;)V

    :cond_16
    return-void
.end method

.method public getName()Lcom/google/firebase/database/snapshot/ChildKey;
    .registers 2

    .line 91
    iget-object v0, p0, Lcom/google/firebase/database/core/utilities/Tree;->name:Lcom/google/firebase/database/snapshot/ChildKey;

    return-object v0
.end method

.method public getParent()Lcom/google/firebase/database/core/utilities/Tree;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/firebase/database/core/utilities/Tree<",
            "TT;>;"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/google/firebase/database/core/utilities/Tree;->parent:Lcom/google/firebase/database/core/utilities/Tree;

    return-object v0
.end method

.method public getPath()Lcom/google/firebase/database/core/Path;
    .registers 5

    .line 95
    iget-object v0, p0, Lcom/google/firebase/database/core/utilities/Tree;->parent:Lcom/google/firebase/database/core/utilities/Tree;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1b

    .line 96
    iget-object v0, p0, Lcom/google/firebase/database/core/utilities/Tree;->name:Lcom/google/firebase/database/snapshot/ChildKey;

    if-eqz v0, :cond_b

    const/4 v1, 0x1

    :cond_b
    invoke-static {v1}, Lcom/google/firebase/database/core/utilities/Utilities;->hardAssert(Z)V

    .line 97
    iget-object v0, p0, Lcom/google/firebase/database/core/utilities/Tree;->parent:Lcom/google/firebase/database/core/utilities/Tree;

    invoke-virtual {v0}, Lcom/google/firebase/database/core/utilities/Tree;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/database/core/utilities/Tree;->name:Lcom/google/firebase/database/snapshot/ChildKey;

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/core/Path;->child(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/core/Path;

    move-result-object v0

    return-object v0

    .line 99
    :cond_1b
    iget-object v0, p0, Lcom/google/firebase/database/core/utilities/Tree;->name:Lcom/google/firebase/database/snapshot/ChildKey;

    if-eqz v0, :cond_2b

    new-instance v0, Lcom/google/firebase/database/core/Path;

    new-array v2, v2, [Lcom/google/firebase/database/snapshot/ChildKey;

    iget-object v3, p0, Lcom/google/firebase/database/core/utilities/Tree;->name:Lcom/google/firebase/database/snapshot/ChildKey;

    aput-object v3, v2, v1

    invoke-direct {v0, v2}, Lcom/google/firebase/database/core/Path;-><init>([Lcom/google/firebase/database/snapshot/ChildKey;)V

    goto :goto_2f

    :cond_2b
    invoke-static {}, Lcom/google/firebase/database/core/Path;->getEmptyPath()Lcom/google/firebase/database/core/Path;

    move-result-object v0

    :goto_2f
    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/google/firebase/database/core/utilities/Tree;->node:Lcom/google/firebase/database/core/utilities/TreeNode;

    iget-object v0, v0, Lcom/google/firebase/database/core/utilities/TreeNode;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hasChildren()Z
    .registers 2

    .line 104
    iget-object v0, p0, Lcom/google/firebase/database/core/utilities/Tree;->node:Lcom/google/firebase/database/core/utilities/TreeNode;

    iget-object v0, v0, Lcom/google/firebase/database/core/utilities/TreeNode;->children:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 108
    iget-object v0, p0, Lcom/google/firebase/database/core/utilities/Tree;->node:Lcom/google/firebase/database/core/utilities/TreeNode;

    iget-object v0, v0, Lcom/google/firebase/database/core/utilities/TreeNode;->value:Ljava/lang/Object;

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/google/firebase/database/core/utilities/Tree;->node:Lcom/google/firebase/database/core/utilities/TreeNode;

    iget-object v0, v0, Lcom/google/firebase/database/core/utilities/TreeNode;->children:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public lastNodeOnPath(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/utilities/TreeNode;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/Path;",
            ")",
            "Lcom/google/firebase/database/core/utilities/TreeNode<",
            "TT;>;"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/google/firebase/database/core/utilities/Tree;->node:Lcom/google/firebase/database/core/utilities/TreeNode;

    .line 50
    invoke-virtual {p1}, Lcom/google/firebase/database/core/Path;->getFront()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v1

    :goto_6
    if-eqz v1, :cond_29

    .line 53
    iget-object v2, v0, Lcom/google/firebase/database/core/utilities/TreeNode;->children:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    iget-object v2, v0, Lcom/google/firebase/database/core/utilities/TreeNode;->children:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/database/core/utilities/TreeNode;

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    :goto_1a
    if-nez v1, :cond_1d

    return-object v0

    .line 58
    :cond_1d
    invoke-virtual {p1}, Lcom/google/firebase/database/core/Path;->popFront()Lcom/google/firebase/database/core/Path;

    move-result-object p1

    .line 59
    invoke-virtual {p1}, Lcom/google/firebase/database/core/Path;->getFront()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v0

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_6

    :cond_29
    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/google/firebase/database/core/utilities/Tree;->node:Lcom/google/firebase/database/core/utilities/TreeNode;

    iput-object p1, v0, Lcom/google/firebase/database/core/utilities/TreeNode;->value:Ljava/lang/Object;

    .line 83
    invoke-direct {p0}, Lcom/google/firebase/database/core/utilities/Tree;->updateParents()V

    return-void
.end method

.method public subTree(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/utilities/Tree;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/Path;",
            ")",
            "Lcom/google/firebase/database/core/utilities/Tree<",
            "TT;>;"
        }
    .end annotation

    .line 66
    invoke-virtual {p1}, Lcom/google/firebase/database/core/Path;->getFront()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v0

    move-object v1, p0

    :goto_5
    if-eqz v0, :cond_30

    .line 69
    iget-object v2, v1, Lcom/google/firebase/database/core/utilities/Tree;->node:Lcom/google/firebase/database/core/utilities/TreeNode;

    iget-object v2, v2, Lcom/google/firebase/database/core/utilities/TreeNode;->children:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    iget-object v2, v1, Lcom/google/firebase/database/core/utilities/Tree;->node:Lcom/google/firebase/database/core/utilities/TreeNode;

    iget-object v2, v2, Lcom/google/firebase/database/core/utilities/TreeNode;->children:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/database/core/utilities/TreeNode;

    goto :goto_21

    :cond_1c
    new-instance v2, Lcom/google/firebase/database/core/utilities/TreeNode;

    invoke-direct {v2}, Lcom/google/firebase/database/core/utilities/TreeNode;-><init>()V

    .line 70
    :goto_21
    new-instance v3, Lcom/google/firebase/database/core/utilities/Tree;

    invoke-direct {v3, v0, v1, v2}, Lcom/google/firebase/database/core/utilities/Tree;-><init>(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/core/utilities/Tree;Lcom/google/firebase/database/core/utilities/TreeNode;)V

    .line 71
    invoke-virtual {p1}, Lcom/google/firebase/database/core/Path;->popFront()Lcom/google/firebase/database/core/Path;

    move-result-object p1

    .line 72
    invoke-virtual {p1}, Lcom/google/firebase/database/core/Path;->getFront()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v0

    move-object v1, v3

    goto :goto_5

    :cond_30
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, ""

    .line 184
    invoke-virtual {p0, v0}, Lcom/google/firebase/database/core/utilities/Tree;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method toString(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 188
    iget-object v0, p0, Lcom/google/firebase/database/core/utilities/Tree;->name:Lcom/google/firebase/database/snapshot/ChildKey;

    if-nez v0, :cond_7

    const-string v0, "<anon>"

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Lcom/google/firebase/database/snapshot/ChildKey;->asString()Ljava/lang/String;

    move-result-object v0

    .line 189
    :goto_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/firebase/database/core/utilities/Tree;->node:Lcom/google/firebase/database/core/utilities/TreeNode;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\t"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/core/utilities/TreeNode;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

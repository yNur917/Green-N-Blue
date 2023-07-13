.class public Lcom/google/firebase/database/core/persistence/PruneForest;
.super Ljava/lang/Object;
.source "PruneForest.java"


# static fields
.field private static final KEEP_PREDICATE:Lcom/google/firebase/database/core/utilities/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/database/core/utilities/Predicate<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final KEEP_TREE:Lcom/google/firebase/database/core/utilities/ImmutableTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/database/core/utilities/ImmutableTree<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final PRUNE_PREDICATE:Lcom/google/firebase/database/core/utilities/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/database/core/utilities/Predicate<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final PRUNE_TREE:Lcom/google/firebase/database/core/utilities/ImmutableTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/database/core/utilities/ImmutableTree<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final pruneForest:Lcom/google/firebase/database/core/utilities/ImmutableTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/database/core/utilities/ImmutableTree<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 38
    new-instance v0, Lcom/google/firebase/database/core/persistence/PruneForest$1;

    invoke-direct {v0}, Lcom/google/firebase/database/core/persistence/PruneForest$1;-><init>()V

    sput-object v0, Lcom/google/firebase/database/core/persistence/PruneForest;->KEEP_PREDICATE:Lcom/google/firebase/database/core/utilities/Predicate;

    .line 46
    new-instance v0, Lcom/google/firebase/database/core/persistence/PruneForest$2;

    invoke-direct {v0}, Lcom/google/firebase/database/core/persistence/PruneForest$2;-><init>()V

    sput-object v0, Lcom/google/firebase/database/core/persistence/PruneForest;->PRUNE_PREDICATE:Lcom/google/firebase/database/core/utilities/Predicate;

    .line 54
    new-instance v0, Lcom/google/firebase/database/core/utilities/ImmutableTree;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/firebase/database/core/utilities/ImmutableTree;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/google/firebase/database/core/persistence/PruneForest;->PRUNE_TREE:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    .line 55
    new-instance v0, Lcom/google/firebase/database/core/utilities/ImmutableTree;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/firebase/database/core/utilities/ImmutableTree;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/google/firebase/database/core/persistence/PruneForest;->KEEP_TREE:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-static {}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->emptyInstance()Lcom/google/firebase/database/core/utilities/ImmutableTree;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/database/core/persistence/PruneForest;->pruneForest:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    return-void
.end method

.method private constructor <init>(Lcom/google/firebase/database/core/utilities/ImmutableTree;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/utilities/ImmutableTree<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/google/firebase/database/core/persistence/PruneForest;->pruneForest:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    return-void
.end method

.method private doAll(Lcom/google/firebase/database/core/Path;Ljava/util/Set;Lcom/google/firebase/database/core/utilities/ImmutableTree;)Lcom/google/firebase/database/core/persistence/PruneForest;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/Path;",
            "Ljava/util/Set<",
            "Lcom/google/firebase/database/snapshot/ChildKey;",
            ">;",
            "Lcom/google/firebase/database/core/utilities/ImmutableTree<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/google/firebase/database/core/persistence/PruneForest;"
        }
    .end annotation

    .line 173
    iget-object v0, p0, Lcom/google/firebase/database/core/persistence/PruneForest;->pruneForest:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->subtree(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/utilities/ImmutableTree;

    move-result-object v0

    .line 174
    invoke-virtual {v0}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->getChildren()Lcom/google/firebase/database/collection/ImmutableSortedMap;

    move-result-object v1

    .line 175
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_e
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/database/snapshot/ChildKey;

    .line 176
    invoke-virtual {v1, v2, p3}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->insert(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/firebase/database/collection/ImmutableSortedMap;

    move-result-object v1

    goto :goto_e

    .line 178
    :cond_1f
    new-instance p2, Lcom/google/firebase/database/core/persistence/PruneForest;

    iget-object p3, p0, Lcom/google/firebase/database/core/persistence/PruneForest;->pruneForest:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    new-instance v2, Lcom/google/firebase/database/core/utilities/ImmutableTree;

    .line 180
    invoke-virtual {v0}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-direct {v2, v0, v1}, Lcom/google/firebase/database/core/utilities/ImmutableTree;-><init>(Ljava/lang/Object;Lcom/google/firebase/database/collection/ImmutableSortedMap;)V

    .line 179
    invoke-virtual {p3, p1, v2}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->setTree(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/utilities/ImmutableTree;)Lcom/google/firebase/database/core/utilities/ImmutableTree;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/firebase/database/core/persistence/PruneForest;-><init>(Lcom/google/firebase/database/core/utilities/ImmutableTree;)V

    return-object p2
.end method


# virtual methods
.method public affectsPath(Lcom/google/firebase/database/core/Path;)Z
    .registers 3

    .line 87
    iget-object v0, p0, Lcom/google/firebase/database/core/persistence/PruneForest;->pruneForest:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->rootMostValue(Lcom/google/firebase/database/core/Path;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/google/firebase/database/core/persistence/PruneForest;->pruneForest:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    .line 88
    invoke-virtual {v0, p1}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->subtree(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/utilities/ImmutableTree;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_15

    goto :goto_17

    :cond_15
    const/4 p1, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 p1, 0x1

    :goto_18
    return p1
.end method

.method public child(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/persistence/PruneForest;
    .registers 3

    .line 104
    invoke-virtual {p1}, Lcom/google/firebase/database/core/Path;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p0

    .line 107
    :cond_7
    invoke-virtual {p1}, Lcom/google/firebase/database/core/Path;->getFront()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/firebase/database/core/persistence/PruneForest;->child(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/core/persistence/PruneForest;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/firebase/database/core/Path;->popFront()Lcom/google/firebase/database/core/Path;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/core/persistence/PruneForest;->child(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/persistence/PruneForest;

    move-result-object p1

    return-object p1
.end method

.method public child(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/core/persistence/PruneForest;
    .registers 4

    .line 92
    iget-object v0, p0, Lcom/google/firebase/database/core/persistence/PruneForest;->pruneForest:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->getChild(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/core/utilities/ImmutableTree;

    move-result-object p1

    if-nez p1, :cond_16

    .line 94
    new-instance p1, Lcom/google/firebase/database/core/utilities/ImmutableTree;

    iget-object v0, p0, Lcom/google/firebase/database/core/persistence/PruneForest;->pruneForest:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    invoke-virtual {v0}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-direct {p1, v0}, Lcom/google/firebase/database/core/utilities/ImmutableTree;-><init>(Ljava/lang/Object;)V

    goto :goto_34

    .line 96
    :cond_16
    invoke-virtual {p1}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_34

    iget-object v0, p0, Lcom/google/firebase/database/core/persistence/PruneForest;->pruneForest:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    invoke-virtual {v0}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_34

    .line 97
    invoke-static {}, Lcom/google/firebase/database/core/Path;->getEmptyPath()Lcom/google/firebase/database/core/Path;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/database/core/persistence/PruneForest;->pruneForest:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    invoke-virtual {v1}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {p1, v0, v1}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->set(Lcom/google/firebase/database/core/Path;Ljava/lang/Object;)Lcom/google/firebase/database/core/utilities/ImmutableTree;

    move-result-object p1

    .line 100
    :cond_34
    :goto_34
    new-instance v0, Lcom/google/firebase/database/core/persistence/PruneForest;

    invoke-direct {v0, p1}, Lcom/google/firebase/database/core/persistence/PruneForest;-><init>(Lcom/google/firebase/database/core/utilities/ImmutableTree;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 188
    :cond_4
    instance-of v1, p1, Lcom/google/firebase/database/core/persistence/PruneForest;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 192
    :cond_a
    check-cast p1, Lcom/google/firebase/database/core/persistence/PruneForest;

    .line 194
    iget-object v1, p0, Lcom/google/firebase/database/core/persistence/PruneForest;->pruneForest:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    iget-object p1, p1, Lcom/google/firebase/database/core/persistence/PruneForest;->pruneForest:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    invoke-virtual {v1, p1}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_17

    return v2

    :cond_17
    return v0
.end method

.method public foldKeptNodes(Ljava/lang/Object;Lcom/google/firebase/database/core/utilities/ImmutableTree$TreeVisitor;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/google/firebase/database/core/utilities/ImmutableTree$TreeVisitor<",
            "Ljava/lang/Void;",
            "TT;>;)TT;"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/google/firebase/database/core/persistence/PruneForest;->pruneForest:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    new-instance v1, Lcom/google/firebase/database/core/persistence/PruneForest$3;

    invoke-direct {v1, p0, p2}, Lcom/google/firebase/database/core/persistence/PruneForest$3;-><init>(Lcom/google/firebase/database/core/persistence/PruneForest;Lcom/google/firebase/database/core/utilities/ImmutableTree$TreeVisitor;)V

    invoke-virtual {v0, p1, v1}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->fold(Ljava/lang/Object;Lcom/google/firebase/database/core/utilities/ImmutableTree$TreeVisitor;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .registers 2

    .line 203
    iget-object v0, p0, Lcom/google/firebase/database/core/persistence/PruneForest;->pruneForest:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    invoke-virtual {v0}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->hashCode()I

    move-result v0

    return v0
.end method

.method public keep(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/persistence/PruneForest;
    .registers 4

    .line 140
    iget-object v0, p0, Lcom/google/firebase/database/core/persistence/PruneForest;->pruneForest:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    sget-object v1, Lcom/google/firebase/database/core/persistence/PruneForest;->KEEP_PREDICATE:Lcom/google/firebase/database/core/utilities/Predicate;

    invoke-virtual {v0, p1, v1}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->rootMostValueMatching(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/utilities/Predicate;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_b

    return-object p0

    .line 144
    :cond_b
    iget-object v0, p0, Lcom/google/firebase/database/core/persistence/PruneForest;->pruneForest:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    sget-object v1, Lcom/google/firebase/database/core/persistence/PruneForest;->KEEP_TREE:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    invoke-virtual {v0, p1, v1}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->setTree(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/utilities/ImmutableTree;)Lcom/google/firebase/database/core/utilities/ImmutableTree;

    move-result-object p1

    .line 145
    new-instance v0, Lcom/google/firebase/database/core/persistence/PruneForest;

    invoke-direct {v0, p1}, Lcom/google/firebase/database/core/persistence/PruneForest;-><init>(Lcom/google/firebase/database/core/utilities/ImmutableTree;)V

    return-object v0
.end method

.method public keepAll(Lcom/google/firebase/database/core/Path;Ljava/util/Set;)Lcom/google/firebase/database/core/persistence/PruneForest;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/Path;",
            "Ljava/util/Set<",
            "Lcom/google/firebase/database/snapshot/ChildKey;",
            ">;)",
            "Lcom/google/firebase/database/core/persistence/PruneForest;"
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lcom/google/firebase/database/core/persistence/PruneForest;->pruneForest:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    sget-object v1, Lcom/google/firebase/database/core/persistence/PruneForest;->KEEP_PREDICATE:Lcom/google/firebase/database/core/utilities/Predicate;

    invoke-virtual {v0, p1, v1}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->rootMostValueMatching(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/utilities/Predicate;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_b

    return-object p0

    .line 154
    :cond_b
    sget-object v0, Lcom/google/firebase/database/core/persistence/PruneForest;->KEEP_TREE:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    invoke-direct {p0, p1, p2, v0}, Lcom/google/firebase/database/core/persistence/PruneForest;->doAll(Lcom/google/firebase/database/core/Path;Ljava/util/Set;Lcom/google/firebase/database/core/utilities/ImmutableTree;)Lcom/google/firebase/database/core/persistence/PruneForest;

    move-result-object p1

    return-object p1
.end method

.method public prune(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/persistence/PruneForest;
    .registers 4

    .line 127
    iget-object v0, p0, Lcom/google/firebase/database/core/persistence/PruneForest;->pruneForest:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    sget-object v1, Lcom/google/firebase/database/core/persistence/PruneForest;->KEEP_PREDICATE:Lcom/google/firebase/database/core/utilities/Predicate;

    invoke-virtual {v0, p1, v1}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->rootMostValueMatching(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/utilities/Predicate;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_23

    .line 130
    iget-object v0, p0, Lcom/google/firebase/database/core/persistence/PruneForest;->pruneForest:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    sget-object v1, Lcom/google/firebase/database/core/persistence/PruneForest;->PRUNE_PREDICATE:Lcom/google/firebase/database/core/utilities/Predicate;

    invoke-virtual {v0, p1, v1}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->rootMostValueMatching(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/utilities/Predicate;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_15

    return-object p0

    .line 134
    :cond_15
    iget-object v0, p0, Lcom/google/firebase/database/core/persistence/PruneForest;->pruneForest:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    sget-object v1, Lcom/google/firebase/database/core/persistence/PruneForest;->PRUNE_TREE:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    invoke-virtual {v0, p1, v1}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->setTree(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/utilities/ImmutableTree;)Lcom/google/firebase/database/core/utilities/ImmutableTree;

    move-result-object p1

    .line 135
    new-instance v0, Lcom/google/firebase/database/core/persistence/PruneForest;

    invoke-direct {v0, p1}, Lcom/google/firebase/database/core/persistence/PruneForest;-><init>(Lcom/google/firebase/database/core/utilities/ImmutableTree;)V

    return-object v0

    .line 128
    :cond_23
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can\'t prune path that was kept previously!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public pruneAll(Lcom/google/firebase/database/core/Path;Ljava/util/Set;)Lcom/google/firebase/database/core/persistence/PruneForest;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/Path;",
            "Ljava/util/Set<",
            "Lcom/google/firebase/database/snapshot/ChildKey;",
            ">;)",
            "Lcom/google/firebase/database/core/persistence/PruneForest;"
        }
    .end annotation

    .line 159
    iget-object v0, p0, Lcom/google/firebase/database/core/persistence/PruneForest;->pruneForest:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    sget-object v1, Lcom/google/firebase/database/core/persistence/PruneForest;->KEEP_PREDICATE:Lcom/google/firebase/database/core/utilities/Predicate;

    invoke-virtual {v0, p1, v1}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->rootMostValueMatching(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/utilities/Predicate;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1c

    .line 163
    iget-object v0, p0, Lcom/google/firebase/database/core/persistence/PruneForest;->pruneForest:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    sget-object v1, Lcom/google/firebase/database/core/persistence/PruneForest;->PRUNE_PREDICATE:Lcom/google/firebase/database/core/utilities/Predicate;

    invoke-virtual {v0, p1, v1}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->rootMostValueMatching(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/utilities/Predicate;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_15

    return-object p0

    .line 167
    :cond_15
    sget-object v0, Lcom/google/firebase/database/core/persistence/PruneForest;->PRUNE_TREE:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    invoke-direct {p0, p1, p2, v0}, Lcom/google/firebase/database/core/persistence/PruneForest;->doAll(Lcom/google/firebase/database/core/Path;Ljava/util/Set;Lcom/google/firebase/database/core/utilities/ImmutableTree;)Lcom/google/firebase/database/core/persistence/PruneForest;

    move-result-object p1

    return-object p1

    .line 160
    :cond_1c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Can\'t prune path that was kept previously!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public prunesAnything()Z
    .registers 3

    .line 66
    iget-object v0, p0, Lcom/google/firebase/database/core/persistence/PruneForest;->pruneForest:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    sget-object v1, Lcom/google/firebase/database/core/persistence/PruneForest;->PRUNE_PREDICATE:Lcom/google/firebase/database/core/utilities/Predicate;

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->containsMatchingValue(Lcom/google/firebase/database/core/utilities/Predicate;)Z

    move-result v0

    return v0
.end method

.method public shouldKeep(Lcom/google/firebase/database/core/Path;)Z
    .registers 3

    .line 82
    iget-object v0, p0, Lcom/google/firebase/database/core/persistence/PruneForest;->pruneForest:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->leafMostValue(Lcom/google/firebase/database/core/Path;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_12

    .line 83
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    return p1
.end method

.method public shouldPruneUnkeptDescendants(Lcom/google/firebase/database/core/Path;)Z
    .registers 3

    .line 77
    iget-object v0, p0, Lcom/google/firebase/database/core/persistence/PruneForest;->pruneForest:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->leafMostValue(Lcom/google/firebase/database/core/Path;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_12

    .line 78
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{PruneForest:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/firebase/database/core/persistence/PruneForest;->pruneForest:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    invoke-virtual {v1}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public Lcom/google/firebase/database/snapshot/IndexedNode;
.super Ljava/lang/Object;
.source "IndexedNode.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcom/google/firebase/database/snapshot/NamedNode;",
        ">;"
    }
.end annotation


# static fields
.field private static final FALLBACK_INDEX:Lcom/google/firebase/database/collection/ImmutableSortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/database/collection/ImmutableSortedSet<",
            "Lcom/google/firebase/database/snapshot/NamedNode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final index:Lcom/google/firebase/database/snapshot/Index;

.field private indexed:Lcom/google/firebase/database/collection/ImmutableSortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/database/collection/ImmutableSortedSet<",
            "Lcom/google/firebase/database/snapshot/NamedNode;",
            ">;"
        }
    .end annotation
.end field

.field private final node:Lcom/google/firebase/database/snapshot/Node;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 36
    new-instance v0, Lcom/google/firebase/database/collection/ImmutableSortedSet;

    .line 37
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/database/collection/ImmutableSortedSet;-><init>(Ljava/util/List;Ljava/util/Comparator;)V

    sput-object v0, Lcom/google/firebase/database/snapshot/IndexedNode;->FALLBACK_INDEX:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    return-void
.end method

.method private constructor <init>(Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/Index;)V
    .registers 3

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p2, p0, Lcom/google/firebase/database/snapshot/IndexedNode;->index:Lcom/google/firebase/database/snapshot/Index;

    .line 50
    iput-object p1, p0, Lcom/google/firebase/database/snapshot/IndexedNode;->node:Lcom/google/firebase/database/snapshot/Node;

    const/4 p1, 0x0

    .line 52
    iput-object p1, p0, Lcom/google/firebase/database/snapshot/IndexedNode;->indexed:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    return-void
.end method

.method private constructor <init>(Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/Index;Lcom/google/firebase/database/collection/ImmutableSortedSet;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/snapshot/Node;",
            "Lcom/google/firebase/database/snapshot/Index;",
            "Lcom/google/firebase/database/collection/ImmutableSortedSet<",
            "Lcom/google/firebase/database/snapshot/NamedNode;",
            ">;)V"
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p2, p0, Lcom/google/firebase/database/snapshot/IndexedNode;->index:Lcom/google/firebase/database/snapshot/Index;

    .line 57
    iput-object p1, p0, Lcom/google/firebase/database/snapshot/IndexedNode;->node:Lcom/google/firebase/database/snapshot/Node;

    .line 58
    iput-object p3, p0, Lcom/google/firebase/database/snapshot/IndexedNode;->indexed:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    return-void
.end method

.method private ensureIndexed()V
    .registers 8

    .line 62
    iget-object v0, p0, Lcom/google/firebase/database/snapshot/IndexedNode;->indexed:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    if-nez v0, :cond_61

    .line 64
    iget-object v0, p0, Lcom/google/firebase/database/snapshot/IndexedNode;->index:Lcom/google/firebase/database/snapshot/Index;

    invoke-static {}, Lcom/google/firebase/database/snapshot/KeyIndex;->getInstance()Lcom/google/firebase/database/snapshot/KeyIndex;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 65
    sget-object v0, Lcom/google/firebase/database/snapshot/IndexedNode;->FALLBACK_INDEX:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    iput-object v0, p0, Lcom/google/firebase/database/snapshot/IndexedNode;->indexed:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    goto :goto_61

    .line 67
    :cond_15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 69
    iget-object v1, p0, Lcom/google/firebase/database/snapshot/IndexedNode;->node:Lcom/google/firebase/database/snapshot/Node;

    invoke-interface {v1}, Lcom/google/firebase/database/snapshot/Node;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_51

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/firebase/database/snapshot/NamedNode;

    if-nez v3, :cond_3f

    .line 70
    iget-object v3, p0, Lcom/google/firebase/database/snapshot/IndexedNode;->index:Lcom/google/firebase/database/snapshot/Index;

    invoke-virtual {v4}, Lcom/google/firebase/database/snapshot/NamedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/firebase/database/snapshot/Index;->isDefinedOn(Lcom/google/firebase/database/snapshot/Node;)Z

    move-result v3

    if-eqz v3, :cond_3d

    goto :goto_3f

    :cond_3d
    const/4 v3, 0x0

    goto :goto_40

    :cond_3f
    :goto_3f
    const/4 v3, 0x1

    .line 71
    :goto_40
    new-instance v5, Lcom/google/firebase/database/snapshot/NamedNode;

    invoke-virtual {v4}, Lcom/google/firebase/database/snapshot/NamedNode;->getName()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v6

    invoke-virtual {v4}, Lcom/google/firebase/database/snapshot/NamedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v4

    invoke-direct {v5, v6, v4}, Lcom/google/firebase/database/snapshot/NamedNode;-><init>(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)V

    .line 72
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_22

    :cond_51
    if-eqz v3, :cond_5d

    .line 75
    new-instance v1, Lcom/google/firebase/database/collection/ImmutableSortedSet;

    iget-object v2, p0, Lcom/google/firebase/database/snapshot/IndexedNode;->index:Lcom/google/firebase/database/snapshot/Index;

    invoke-direct {v1, v0, v2}, Lcom/google/firebase/database/collection/ImmutableSortedSet;-><init>(Ljava/util/List;Ljava/util/Comparator;)V

    iput-object v1, p0, Lcom/google/firebase/database/snapshot/IndexedNode;->indexed:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    goto :goto_61

    .line 77
    :cond_5d
    sget-object v0, Lcom/google/firebase/database/snapshot/IndexedNode;->FALLBACK_INDEX:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    iput-object v0, p0, Lcom/google/firebase/database/snapshot/IndexedNode;->indexed:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    :cond_61
    :goto_61
    return-void
.end method

.method public static from(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/IndexedNode;
    .registers 3

    .line 84
    new-instance v0, Lcom/google/firebase/database/snapshot/IndexedNode;

    invoke-static {}, Lcom/google/firebase/database/snapshot/PriorityIndex;->getInstance()Lcom/google/firebase/database/snapshot/PriorityIndex;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/firebase/database/snapshot/IndexedNode;-><init>(Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/Index;)V

    return-object v0
.end method

.method public static from(Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/Index;)Lcom/google/firebase/database/snapshot/IndexedNode;
    .registers 3

    .line 88
    new-instance v0, Lcom/google/firebase/database/snapshot/IndexedNode;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/database/snapshot/IndexedNode;-><init>(Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/Index;)V

    return-object v0
.end method


# virtual methods
.method public getFirstChild()Lcom/google/firebase/database/snapshot/NamedNode;
    .registers 4

    .line 141
    iget-object v0, p0, Lcom/google/firebase/database/snapshot/IndexedNode;->node:Lcom/google/firebase/database/snapshot/Node;

    instance-of v0, v0, Lcom/google/firebase/database/snapshot/ChildrenNode;

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    .line 144
    :cond_8
    invoke-direct {p0}, Lcom/google/firebase/database/snapshot/IndexedNode;->ensureIndexed()V

    .line 145
    iget-object v0, p0, Lcom/google/firebase/database/snapshot/IndexedNode;->indexed:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    sget-object v1, Lcom/google/firebase/database/snapshot/IndexedNode;->FALLBACK_INDEX:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 146
    iget-object v0, p0, Lcom/google/firebase/database/snapshot/IndexedNode;->node:Lcom/google/firebase/database/snapshot/Node;

    check-cast v0, Lcom/google/firebase/database/snapshot/ChildrenNode;

    invoke-virtual {v0}, Lcom/google/firebase/database/snapshot/ChildrenNode;->getFirstChildKey()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v0

    .line 147
    new-instance v1, Lcom/google/firebase/database/snapshot/NamedNode;

    iget-object v2, p0, Lcom/google/firebase/database/snapshot/IndexedNode;->node:Lcom/google/firebase/database/snapshot/Node;

    invoke-interface {v2, v0}, Lcom/google/firebase/database/snapshot/Node;->getImmediateChild(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/firebase/database/snapshot/NamedNode;-><init>(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)V

    return-object v1

    .line 149
    :cond_29
    iget-object v0, p0, Lcom/google/firebase/database/snapshot/IndexedNode;->indexed:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    invoke-virtual {v0}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->getMinEntry()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/snapshot/NamedNode;

    return-object v0
.end method

.method public getLastChild()Lcom/google/firebase/database/snapshot/NamedNode;
    .registers 4

    .line 155
    iget-object v0, p0, Lcom/google/firebase/database/snapshot/IndexedNode;->node:Lcom/google/firebase/database/snapshot/Node;

    instance-of v0, v0, Lcom/google/firebase/database/snapshot/ChildrenNode;

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    .line 158
    :cond_8
    invoke-direct {p0}, Lcom/google/firebase/database/snapshot/IndexedNode;->ensureIndexed()V

    .line 159
    iget-object v0, p0, Lcom/google/firebase/database/snapshot/IndexedNode;->indexed:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    sget-object v1, Lcom/google/firebase/database/snapshot/IndexedNode;->FALLBACK_INDEX:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 160
    iget-object v0, p0, Lcom/google/firebase/database/snapshot/IndexedNode;->node:Lcom/google/firebase/database/snapshot/Node;

    check-cast v0, Lcom/google/firebase/database/snapshot/ChildrenNode;

    invoke-virtual {v0}, Lcom/google/firebase/database/snapshot/ChildrenNode;->getLastChildKey()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v0

    .line 161
    new-instance v1, Lcom/google/firebase/database/snapshot/NamedNode;

    iget-object v2, p0, Lcom/google/firebase/database/snapshot/IndexedNode;->node:Lcom/google/firebase/database/snapshot/Node;

    invoke-interface {v2, v0}, Lcom/google/firebase/database/snapshot/Node;->getImmediateChild(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/firebase/database/snapshot/NamedNode;-><init>(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)V

    return-object v1

    .line 163
    :cond_29
    iget-object v0, p0, Lcom/google/firebase/database/snapshot/IndexedNode;->indexed:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    invoke-virtual {v0}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->getMaxEntry()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/snapshot/NamedNode;

    return-object v0
.end method

.method public getNode()Lcom/google/firebase/database/snapshot/Node;
    .registers 2

    .line 96
    iget-object v0, p0, Lcom/google/firebase/database/snapshot/IndexedNode;->node:Lcom/google/firebase/database/snapshot/Node;

    return-object v0
.end method

.method public getPredecessorChildName(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/Index;)Lcom/google/firebase/database/snapshot/ChildKey;
    .registers 6

    .line 169
    iget-object v0, p0, Lcom/google/firebase/database/snapshot/IndexedNode;->index:Lcom/google/firebase/database/snapshot/Index;

    invoke-static {}, Lcom/google/firebase/database/snapshot/KeyIndex;->getInstance()Lcom/google/firebase/database/snapshot/KeyIndex;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/google/firebase/database/snapshot/IndexedNode;->index:Lcom/google/firebase/database/snapshot/Index;

    invoke-virtual {v0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_15

    goto :goto_1d

    .line 170
    :cond_15
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Index not available in IndexedNode!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 172
    :cond_1d
    :goto_1d
    invoke-direct {p0}, Lcom/google/firebase/database/snapshot/IndexedNode;->ensureIndexed()V

    .line 173
    iget-object p3, p0, Lcom/google/firebase/database/snapshot/IndexedNode;->indexed:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    sget-object v0, Lcom/google/firebase/database/snapshot/IndexedNode;->FALLBACK_INDEX:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    invoke-static {p3, v0}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_31

    .line 174
    iget-object p2, p0, Lcom/google/firebase/database/snapshot/IndexedNode;->node:Lcom/google/firebase/database/snapshot/Node;

    invoke-interface {p2, p1}, Lcom/google/firebase/database/snapshot/Node;->getPredecessorChildKey(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object p1

    return-object p1

    .line 176
    :cond_31
    iget-object p3, p0, Lcom/google/firebase/database/snapshot/IndexedNode;->indexed:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    new-instance v0, Lcom/google/firebase/database/snapshot/NamedNode;

    invoke-direct {v0, p1, p2}, Lcom/google/firebase/database/snapshot/NamedNode;-><init>(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)V

    invoke-virtual {p3, v0}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->getPredecessorEntry(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/database/snapshot/NamedNode;

    if-eqz p1, :cond_45

    .line 177
    invoke-virtual {p1}, Lcom/google/firebase/database/snapshot/NamedNode;->getName()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object p1

    goto :goto_46

    :cond_45
    const/4 p1, 0x0

    :goto_46
    return-object p1
.end method

.method public hasIndex(Lcom/google/firebase/database/snapshot/Index;)Z
    .registers 3

    .line 92
    iget-object v0, p0, Lcom/google/firebase/database/snapshot/IndexedNode;->index:Lcom/google/firebase/database/snapshot/Index;

    if-ne v0, p1, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    return p1
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/firebase/database/snapshot/NamedNode;",
            ">;"
        }
    .end annotation

    .line 101
    invoke-direct {p0}, Lcom/google/firebase/database/snapshot/IndexedNode;->ensureIndexed()V

    .line 102
    iget-object v0, p0, Lcom/google/firebase/database/snapshot/IndexedNode;->indexed:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    sget-object v1, Lcom/google/firebase/database/snapshot/IndexedNode;->FALLBACK_INDEX:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 103
    iget-object v0, p0, Lcom/google/firebase/database/snapshot/IndexedNode;->node:Lcom/google/firebase/database/snapshot/Node;

    invoke-interface {v0}, Lcom/google/firebase/database/snapshot/Node;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    .line 105
    :cond_14
    iget-object v0, p0, Lcom/google/firebase/database/snapshot/IndexedNode;->indexed:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    invoke-virtual {v0}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public reverseIterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/firebase/database/snapshot/NamedNode;",
            ">;"
        }
    .end annotation

    .line 110
    invoke-direct {p0}, Lcom/google/firebase/database/snapshot/IndexedNode;->ensureIndexed()V

    .line 111
    iget-object v0, p0, Lcom/google/firebase/database/snapshot/IndexedNode;->indexed:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    sget-object v1, Lcom/google/firebase/database/snapshot/IndexedNode;->FALLBACK_INDEX:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 112
    iget-object v0, p0, Lcom/google/firebase/database/snapshot/IndexedNode;->node:Lcom/google/firebase/database/snapshot/Node;

    invoke-interface {v0}, Lcom/google/firebase/database/snapshot/Node;->reverseIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    .line 114
    :cond_14
    iget-object v0, p0, Lcom/google/firebase/database/snapshot/IndexedNode;->indexed:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    invoke-virtual {v0}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->reverseIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public updateChild(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/IndexedNode;
    .registers 7

    .line 119
    iget-object v0, p0, Lcom/google/firebase/database/snapshot/IndexedNode;->node:Lcom/google/firebase/database/snapshot/Node;

    invoke-interface {v0, p1, p2}, Lcom/google/firebase/database/snapshot/Node;->updateImmediateChild(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    .line 120
    iget-object v1, p0, Lcom/google/firebase/database/snapshot/IndexedNode;->indexed:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    sget-object v2, Lcom/google/firebase/database/snapshot/IndexedNode;->FALLBACK_INDEX:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    iget-object v1, p0, Lcom/google/firebase/database/snapshot/IndexedNode;->index:Lcom/google/firebase/database/snapshot/Index;

    invoke-virtual {v1, p2}, Lcom/google/firebase/database/snapshot/Index;->isDefinedOn(Lcom/google/firebase/database/snapshot/Node;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 122
    new-instance p1, Lcom/google/firebase/database/snapshot/IndexedNode;

    iget-object p2, p0, Lcom/google/firebase/database/snapshot/IndexedNode;->index:Lcom/google/firebase/database/snapshot/Index;

    invoke-direct {p1, v0, p2, v2}, Lcom/google/firebase/database/snapshot/IndexedNode;-><init>(Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/Index;Lcom/google/firebase/database/collection/ImmutableSortedSet;)V

    return-object p1

    .line 123
    :cond_20
    iget-object v1, p0, Lcom/google/firebase/database/snapshot/IndexedNode;->indexed:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    if-eqz v1, :cond_53

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    goto :goto_53

    .line 127
    :cond_2b
    iget-object v1, p0, Lcom/google/firebase/database/snapshot/IndexedNode;->node:Lcom/google/firebase/database/snapshot/Node;

    invoke-interface {v1, p1}, Lcom/google/firebase/database/snapshot/Node;->getImmediateChild(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v1

    .line 128
    iget-object v2, p0, Lcom/google/firebase/database/snapshot/IndexedNode;->indexed:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    new-instance v3, Lcom/google/firebase/database/snapshot/NamedNode;

    invoke-direct {v3, p1, v1}, Lcom/google/firebase/database/snapshot/NamedNode;-><init>(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)V

    invoke-virtual {v2, v3}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->remove(Ljava/lang/Object;)Lcom/google/firebase/database/collection/ImmutableSortedSet;

    move-result-object v1

    .line 129
    invoke-interface {p2}, Lcom/google/firebase/database/snapshot/Node;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4b

    .line 130
    new-instance v2, Lcom/google/firebase/database/snapshot/NamedNode;

    invoke-direct {v2, p1, p2}, Lcom/google/firebase/database/snapshot/NamedNode;-><init>(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)V

    invoke-virtual {v1, v2}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->insert(Ljava/lang/Object;)Lcom/google/firebase/database/collection/ImmutableSortedSet;

    move-result-object v1

    .line 132
    :cond_4b
    new-instance p1, Lcom/google/firebase/database/snapshot/IndexedNode;

    iget-object p2, p0, Lcom/google/firebase/database/snapshot/IndexedNode;->index:Lcom/google/firebase/database/snapshot/Index;

    invoke-direct {p1, v0, p2, v1}, Lcom/google/firebase/database/snapshot/IndexedNode;-><init>(Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/Index;Lcom/google/firebase/database/collection/ImmutableSortedSet;)V

    return-object p1

    .line 125
    :cond_53
    :goto_53
    new-instance p1, Lcom/google/firebase/database/snapshot/IndexedNode;

    iget-object p2, p0, Lcom/google/firebase/database/snapshot/IndexedNode;->index:Lcom/google/firebase/database/snapshot/Index;

    const/4 v1, 0x0

    invoke-direct {p1, v0, p2, v1}, Lcom/google/firebase/database/snapshot/IndexedNode;-><init>(Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/Index;Lcom/google/firebase/database/collection/ImmutableSortedSet;)V

    return-object p1
.end method

.method public updatePriority(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/IndexedNode;
    .registers 5

    .line 137
    new-instance v0, Lcom/google/firebase/database/snapshot/IndexedNode;

    iget-object v1, p0, Lcom/google/firebase/database/snapshot/IndexedNode;->node:Lcom/google/firebase/database/snapshot/Node;

    invoke-interface {v1, p1}, Lcom/google/firebase/database/snapshot/Node;->updatePriority(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object p1

    iget-object v1, p0, Lcom/google/firebase/database/snapshot/IndexedNode;->index:Lcom/google/firebase/database/snapshot/Index;

    iget-object v2, p0, Lcom/google/firebase/database/snapshot/IndexedNode;->indexed:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    invoke-direct {v0, p1, v1, v2}, Lcom/google/firebase/database/snapshot/IndexedNode;-><init>(Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/Index;Lcom/google/firebase/database/collection/ImmutableSortedSet;)V

    return-object v0
.end method

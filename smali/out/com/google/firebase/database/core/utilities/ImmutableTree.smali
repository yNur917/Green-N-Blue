.class public final Lcom/google/firebase/database/core/utilities/ImmutableTree;
.super Ljava/lang/Object;
.source "ImmutableTree.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/database/core/utilities/ImmutableTree$TreeVisitor;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Ljava/util/Map$Entry<",
        "Lcom/google/firebase/database/core/Path;",
        "TT;>;>;"
    }
.end annotation


# static fields
.field private static final EMPTY:Lcom/google/firebase/database/core/utilities/ImmutableTree;

.field private static final EMPTY_CHILDREN:Lcom/google/firebase/database/collection/ImmutableSortedMap;


# instance fields
.field private final children:Lcom/google/firebase/database/collection/ImmutableSortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/database/collection/ImmutableSortedMap<",
            "Lcom/google/firebase/database/snapshot/ChildKey;",
            "Lcom/google/firebase/database/core/utilities/ImmutableTree<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 38
    const-class v0, Lcom/google/firebase/database/snapshot/ChildKey;

    .line 39
    invoke-static {v0}, Lcom/google/firebase/database/collection/StandardComparator;->getComparator(Ljava/lang/Class;)Lcom/google/firebase/database/collection/StandardComparator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/database/collection/ImmutableSortedMap$Builder;->emptyMap(Ljava/util/Comparator;)Lcom/google/firebase/database/collection/ImmutableSortedMap;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/database/core/utilities/ImmutableTree;->EMPTY_CHILDREN:Lcom/google/firebase/database/collection/ImmutableSortedMap;

    .line 42
    new-instance v1, Lcom/google/firebase/database/core/utilities/ImmutableTree;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Lcom/google/firebase/database/core/utilities/ImmutableTree;-><init>(Ljava/lang/Object;Lcom/google/firebase/database/collection/ImmutableSortedMap;)V

    sput-object v1, Lcom/google/firebase/database/core/utilities/ImmutableTree;->EMPTY:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 56
    sget-object v0, Lcom/google/firebase/database/core/utilities/ImmutableTree;->EMPTY_CHILDREN:Lcom/google/firebase/database/collection/ImmutableSortedMap;

    invoke-direct {p0, p1, v0}, Lcom/google/firebase/database/core/utilities/ImmutableTree;-><init>(Ljava/lang/Object;Lcom/google/firebase/database/collection/ImmutableSortedMap;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lcom/google/firebase/database/collection/ImmutableSortedMap;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/firebase/database/collection/ImmutableSortedMap<",
            "Lcom/google/firebase/database/snapshot/ChildKey;",
            "Lcom/google/firebase/database/core/utilities/ImmutableTree<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/google/firebase/database/core/utilities/ImmutableTree;->value:Ljava/lang/Object;

    .line 51
    iput-object p2, p0, Lcom/google/firebase/database/core/utilities/ImmutableTree;->children:Lcom/google/firebase/database/collection/ImmutableSortedMap;

    return-void
.end method

.method public static emptyInstance()Lcom/google/firebase/database/core/utilities/ImmutableTree;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/firebase/database/core/utilities/ImmutableTree<",
            "TV;>;"
        }
    .end annotation

    .line 46
    sget-object v0, Lcom/google/firebase/database/core/utilities/ImmutableTree;->EMPTY:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    return-object v0
.end method

.method private fold(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/utilities/ImmutableTree$TreeVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/firebase/database/core/Path;",
            "Lcom/google/firebase/database/core/utilities/ImmutableTree$TreeVisitor<",
            "-TT;TR;>;TR;)TR;"
        }
    .end annotation

    .line 272
    iget-object v0, p0, Lcom/google/firebase/database/core/utilities/ImmutableTree;->children:Lcom/google/firebase/database/collection/ImmutableSortedMap;

    invoke-virtual {v0}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 273
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/database/core/utilities/ImmutableTree;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/database/snapshot/ChildKey;

    invoke-virtual {p1, v1}, Lcom/google/firebase/database/core/Path;->child(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/core/Path;

    move-result-object v1

    invoke-direct {v2, v1, p2, p3}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->fold(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/utilities/ImmutableTree$TreeVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    goto :goto_6

    .line 275
    :cond_27
    iget-object v0, p0, Lcom/google/firebase/database/core/utilities/ImmutableTree;->value:Ljava/lang/Object;

    if-eqz v0, :cond_2f

    .line 276
    invoke-interface {p2, p1, v0, p3}, Lcom/google/firebase/database/core/utilities/ImmutableTree$TreeVisitor;->onNodeValue(Lcom/google/firebase/database/core/Path;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    :cond_2f
    return-object p3
.end method


# virtual methods
.method public containsMatchingValue(Lcom/google/firebase/database/core/utilities/Predicate;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/utilities/Predicate<",
            "-TT;>;)Z"
        }
    .end annotation

    .line 149
    iget-object v0, p0, Lcom/google/firebase/database/core/utilities/ImmutableTree;->value:Ljava/lang/Object;

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    invoke-interface {p1, v0}, Lcom/google/firebase/database/core/utilities/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    return v1

    .line 152
    :cond_c
    iget-object v0, p0, Lcom/google/firebase/database/core/utilities/ImmutableTree;->children:Lcom/google/firebase/database/collection/ImmutableSortedMap;

    invoke-virtual {v0}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 153
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/database/core/utilities/ImmutableTree;

    invoke-virtual {v2, p1}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->containsMatchingValue(Lcom/google/firebase/database/core/utilities/Predicate;)Z

    move-result v2

    if-eqz v2, :cond_12

    return v1

    :cond_2b
    const/4 p1, 0x0

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_37

    .line 332
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_37

    .line 336
    :cond_12
    check-cast p1, Lcom/google/firebase/database/core/utilities/ImmutableTree;

    .line 338
    iget-object v2, p0, Lcom/google/firebase/database/core/utilities/ImmutableTree;->children:Lcom/google/firebase/database/collection/ImmutableSortedMap;

    if-eqz v2, :cond_21

    iget-object v3, p1, Lcom/google/firebase/database/core/utilities/ImmutableTree;->children:Lcom/google/firebase/database/collection/ImmutableSortedMap;

    invoke-virtual {v2, v3}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    goto :goto_25

    :cond_21
    iget-object v2, p1, Lcom/google/firebase/database/core/utilities/ImmutableTree;->children:Lcom/google/firebase/database/collection/ImmutableSortedMap;

    if-eqz v2, :cond_26

    :goto_25
    return v1

    .line 341
    :cond_26
    iget-object v2, p0, Lcom/google/firebase/database/core/utilities/ImmutableTree;->value:Ljava/lang/Object;

    iget-object p1, p1, Lcom/google/firebase/database/core/utilities/ImmutableTree;->value:Ljava/lang/Object;

    if-eqz v2, :cond_33

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_36

    goto :goto_35

    :cond_33
    if-eqz p1, :cond_36

    :goto_35
    return v1

    :cond_36
    return v0

    :cond_37
    :goto_37
    return v1
.end method

.method public findRootMostMatchingPath(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/utilities/Predicate;)Lcom/google/firebase/database/core/Path;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/Path;",
            "Lcom/google/firebase/database/core/utilities/Predicate<",
            "-TT;>;)",
            "Lcom/google/firebase/database/core/Path;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/google/firebase/database/core/utilities/ImmutableTree;->value:Ljava/lang/Object;

    if-eqz v0, :cond_f

    invoke-interface {p2, v0}, Lcom/google/firebase/database/core/utilities/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 73
    invoke-static {}, Lcom/google/firebase/database/core/Path;->getEmptyPath()Lcom/google/firebase/database/core/Path;

    move-result-object p1

    return-object p1

    .line 75
    :cond_f
    invoke-virtual {p1}, Lcom/google/firebase/database/core/Path;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    return-object v1

    .line 78
    :cond_17
    invoke-virtual {p1}, Lcom/google/firebase/database/core/Path;->getFront()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v0

    .line 79
    iget-object v2, p0, Lcom/google/firebase/database/core/utilities/ImmutableTree;->children:Lcom/google/firebase/database/collection/ImmutableSortedMap;

    invoke-virtual {v2, v0}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/database/core/utilities/ImmutableTree;

    if-eqz v2, :cond_3f

    .line 81
    invoke-virtual {p1}, Lcom/google/firebase/database/core/Path;->popFront()Lcom/google/firebase/database/core/Path;

    move-result-object p1

    invoke-virtual {v2, p1, p2}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->findRootMostMatchingPath(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/utilities/Predicate;)Lcom/google/firebase/database/core/Path;

    move-result-object p1

    if-eqz p1, :cond_3f

    .line 84
    new-instance p2, Lcom/google/firebase/database/core/Path;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/firebase/database/snapshot/ChildKey;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-direct {p2, v1}, Lcom/google/firebase/database/core/Path;-><init>([Lcom/google/firebase/database/snapshot/ChildKey;)V

    invoke-virtual {p2, p1}, Lcom/google/firebase/database/core/Path;->child(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/Path;

    move-result-object p1

    return-object p1

    :cond_3f
    return-object v1
.end method

.method public findRootMostPathWithValue(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/Path;
    .registers 3

    .line 96
    sget-object v0, Lcom/google/firebase/database/core/utilities/Predicate;->TRUE:Lcom/google/firebase/database/core/utilities/Predicate;

    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->findRootMostMatchingPath(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/utilities/Predicate;)Lcom/google/firebase/database/core/Path;

    move-result-object p1

    return-object p1
.end method

.method public fold(Ljava/lang/Object;Lcom/google/firebase/database/core/utilities/ImmutableTree$TreeVisitor;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Lcom/google/firebase/database/core/utilities/ImmutableTree$TreeVisitor<",
            "-TT;TR;>;)TR;"
        }
    .end annotation

    .line 268
    invoke-static {}, Lcom/google/firebase/database/core/Path;->getEmptyPath()Lcom/google/firebase/database/core/Path;

    move-result-object v0

    invoke-direct {p0, v0, p2, p1}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->fold(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/utilities/ImmutableTree$TreeVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public foreach(Lcom/google/firebase/database/core/utilities/ImmutableTree$TreeVisitor;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/utilities/ImmutableTree$TreeVisitor<",
            "TT;",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 264
    invoke-static {}, Lcom/google/firebase/database/core/Path;->getEmptyPath()Lcom/google/firebase/database/core/Path;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->fold(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/utilities/ImmutableTree$TreeVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public get(Lcom/google/firebase/database/core/Path;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/Path;",
            ")TT;"
        }
    .end annotation

    .line 230
    invoke-virtual {p1}, Lcom/google/firebase/database/core/Path;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 231
    iget-object p1, p0, Lcom/google/firebase/database/core/utilities/ImmutableTree;->value:Ljava/lang/Object;

    return-object p1

    .line 233
    :cond_9
    invoke-virtual {p1}, Lcom/google/firebase/database/core/Path;->getFront()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v0

    .line 234
    iget-object v1, p0, Lcom/google/firebase/database/core/utilities/ImmutableTree;->children:Lcom/google/firebase/database/collection/ImmutableSortedMap;

    invoke-virtual {v1, v0}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/core/utilities/ImmutableTree;

    if-eqz v0, :cond_20

    .line 236
    invoke-virtual {p1}, Lcom/google/firebase/database/core/Path;->popFront()Lcom/google/firebase/database/core/Path;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->get(Lcom/google/firebase/database/core/Path;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_20
    const/4 p1, 0x0

    return-object p1
.end method

.method public getChild(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/core/utilities/ImmutableTree;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/snapshot/ChildKey;",
            ")",
            "Lcom/google/firebase/database/core/utilities/ImmutableTree<",
            "TT;>;"
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lcom/google/firebase/database/core/utilities/ImmutableTree;->children:Lcom/google/firebase/database/collection/ImmutableSortedMap;

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/database/core/utilities/ImmutableTree;

    if-eqz p1, :cond_b

    return-object p1

    .line 166
    :cond_b
    invoke-static {}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->emptyInstance()Lcom/google/firebase/database/core/utilities/ImmutableTree;

    move-result-object p1

    return-object p1
.end method

.method public getChildren()Lcom/google/firebase/database/collection/ImmutableSortedMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/firebase/database/collection/ImmutableSortedMap<",
            "Lcom/google/firebase/database/snapshot/ChildKey;",
            "Lcom/google/firebase/database/core/utilities/ImmutableTree<",
            "TT;>;>;"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/google/firebase/database/core/utilities/ImmutableTree;->children:Lcom/google/firebase/database/collection/ImmutableSortedMap;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/google/firebase/database/core/utilities/ImmutableTree;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .line 350
    iget-object v0, p0, Lcom/google/firebase/database/core/utilities/ImmutableTree;->value:Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    .line 351
    iget-object v2, p0, Lcom/google/firebase/database/core/utilities/ImmutableTree;->children:Lcom/google/firebase/database/collection/ImmutableSortedMap;

    if-eqz v2, :cond_15

    invoke-virtual {v2}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->hashCode()I

    move-result v1

    :cond_15
    add-int/2addr v0, v1

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 68
    iget-object v0, p0, Lcom/google/firebase/database/core/utilities/ImmutableTree;->value:Ljava/lang/Object;

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/google/firebase/database/core/utilities/ImmutableTree;->children:Lcom/google/firebase/database/collection/ImmutableSortedMap;

    invoke-virtual {v0}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Lcom/google/firebase/database/core/Path;",
            "TT;>;>;"
        }
    .end annotation

    .line 300
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 301
    new-instance v1, Lcom/google/firebase/database/core/utilities/ImmutableTree$2;

    invoke-direct {v1, p0, v0}, Lcom/google/firebase/database/core/utilities/ImmutableTree$2;-><init>(Lcom/google/firebase/database/core/utilities/ImmutableTree;Ljava/util/List;)V

    invoke-virtual {p0, v1}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->foreach(Lcom/google/firebase/database/core/utilities/ImmutableTree$TreeVisitor;)V

    .line 309
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public leafMostValue(Lcom/google/firebase/database/core/Path;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/Path;",
            ")TT;"
        }
    .end annotation

    .line 121
    sget-object v0, Lcom/google/firebase/database/core/utilities/Predicate;->TRUE:Lcom/google/firebase/database/core/utilities/Predicate;

    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->leafMostValueMatching(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/utilities/Predicate;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public leafMostValueMatching(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/utilities/Predicate;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/Path;",
            "Lcom/google/firebase/database/core/utilities/Predicate<",
            "-TT;>;)TT;"
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lcom/google/firebase/database/core/utilities/ImmutableTree;->value:Ljava/lang/Object;

    if-eqz v0, :cond_d

    invoke-interface {p2, v0}, Lcom/google/firebase/database/core/utilities/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/firebase/database/core/utilities/ImmutableTree;->value:Ljava/lang/Object;

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    .line 135
    :goto_e
    invoke-virtual {p1}, Lcom/google/firebase/database/core/Path;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v1, p0

    :cond_13
    :goto_13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/database/snapshot/ChildKey;

    .line 136
    iget-object v1, v1, Lcom/google/firebase/database/core/utilities/ImmutableTree;->children:Lcom/google/firebase/database/collection/ImmutableSortedMap;

    invoke-virtual {v1, v2}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/database/core/utilities/ImmutableTree;

    if-nez v1, :cond_2a

    return-object v0

    .line 140
    :cond_2a
    iget-object v2, v1, Lcom/google/firebase/database/core/utilities/ImmutableTree;->value:Ljava/lang/Object;

    if-eqz v2, :cond_13

    invoke-interface {p2, v2}, Lcom/google/firebase/database/core/utilities/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 141
    iget-object v0, v1, Lcom/google/firebase/database/core/utilities/ImmutableTree;->value:Ljava/lang/Object;

    goto :goto_13

    :cond_37
    return-object v0
.end method

.method public remove(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/utilities/ImmutableTree;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/Path;",
            ")",
            "Lcom/google/firebase/database/core/utilities/ImmutableTree<",
            "TT;>;"
        }
    .end annotation

    .line 201
    invoke-virtual {p1}, Lcom/google/firebase/database/core/Path;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 202
    iget-object p1, p0, Lcom/google/firebase/database/core/utilities/ImmutableTree;->children:Lcom/google/firebase/database/collection/ImmutableSortedMap;

    invoke-virtual {p1}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_13

    .line 203
    invoke-static {}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->emptyInstance()Lcom/google/firebase/database/core/utilities/ImmutableTree;

    move-result-object p1

    return-object p1

    .line 205
    :cond_13
    new-instance p1, Lcom/google/firebase/database/core/utilities/ImmutableTree;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/firebase/database/core/utilities/ImmutableTree;->children:Lcom/google/firebase/database/collection/ImmutableSortedMap;

    invoke-direct {p1, v0, v1}, Lcom/google/firebase/database/core/utilities/ImmutableTree;-><init>(Ljava/lang/Object;Lcom/google/firebase/database/collection/ImmutableSortedMap;)V

    return-object p1

    .line 208
    :cond_1c
    invoke-virtual {p1}, Lcom/google/firebase/database/core/Path;->getFront()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v0

    .line 209
    iget-object v1, p0, Lcom/google/firebase/database/core/utilities/ImmutableTree;->children:Lcom/google/firebase/database/collection/ImmutableSortedMap;

    invoke-virtual {v1, v0}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/database/core/utilities/ImmutableTree;

    if-eqz v1, :cond_5c

    .line 211
    invoke-virtual {p1}, Lcom/google/firebase/database/core/Path;->popFront()Lcom/google/firebase/database/core/Path;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->remove(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/utilities/ImmutableTree;

    move-result-object p1

    .line 213
    invoke-virtual {p1}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 214
    iget-object p1, p0, Lcom/google/firebase/database/core/utilities/ImmutableTree;->children:Lcom/google/firebase/database/collection/ImmutableSortedMap;

    invoke-virtual {p1, v0}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->remove(Ljava/lang/Object;)Lcom/google/firebase/database/collection/ImmutableSortedMap;

    move-result-object p1

    goto :goto_45

    .line 216
    :cond_3f
    iget-object v1, p0, Lcom/google/firebase/database/core/utilities/ImmutableTree;->children:Lcom/google/firebase/database/collection/ImmutableSortedMap;

    invoke-virtual {v1, v0, p1}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->insert(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/firebase/database/collection/ImmutableSortedMap;

    move-result-object p1

    .line 218
    :goto_45
    iget-object v0, p0, Lcom/google/firebase/database/core/utilities/ImmutableTree;->value:Ljava/lang/Object;

    if-nez v0, :cond_54

    invoke-virtual {p1}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 219
    invoke-static {}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->emptyInstance()Lcom/google/firebase/database/core/utilities/ImmutableTree;

    move-result-object p1

    return-object p1

    .line 221
    :cond_54
    new-instance v0, Lcom/google/firebase/database/core/utilities/ImmutableTree;

    iget-object v1, p0, Lcom/google/firebase/database/core/utilities/ImmutableTree;->value:Ljava/lang/Object;

    invoke-direct {v0, v1, p1}, Lcom/google/firebase/database/core/utilities/ImmutableTree;-><init>(Ljava/lang/Object;Lcom/google/firebase/database/collection/ImmutableSortedMap;)V

    return-object v0

    :cond_5c
    return-object p0
.end method

.method public rootMostValue(Lcom/google/firebase/database/core/Path;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/Path;",
            ")TT;"
        }
    .end annotation

    .line 100
    sget-object v0, Lcom/google/firebase/database/core/utilities/Predicate;->TRUE:Lcom/google/firebase/database/core/utilities/Predicate;

    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->rootMostValueMatching(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/utilities/Predicate;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public rootMostValueMatching(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/utilities/Predicate;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/Path;",
            "Lcom/google/firebase/database/core/utilities/Predicate<",
            "-TT;>;)TT;"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/google/firebase/database/core/utilities/ImmutableTree;->value:Ljava/lang/Object;

    if-eqz v0, :cond_d

    invoke-interface {p2, v0}, Lcom/google/firebase/database/core/utilities/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 105
    iget-object p1, p0, Lcom/google/firebase/database/core/utilities/ImmutableTree;->value:Ljava/lang/Object;

    return-object p1

    .line 108
    :cond_d
    invoke-virtual {p1}, Lcom/google/firebase/database/core/Path;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v0, p0

    :cond_12
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_37

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/database/snapshot/ChildKey;

    .line 109
    iget-object v0, v0, Lcom/google/firebase/database/core/utilities/ImmutableTree;->children:Lcom/google/firebase/database/collection/ImmutableSortedMap;

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/core/utilities/ImmutableTree;

    if-nez v0, :cond_2a

    return-object v2

    .line 112
    :cond_2a
    iget-object v1, v0, Lcom/google/firebase/database/core/utilities/ImmutableTree;->value:Ljava/lang/Object;

    if-eqz v1, :cond_12

    invoke-interface {p2, v1}, Lcom/google/firebase/database/core/utilities/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 113
    iget-object p1, v0, Lcom/google/firebase/database/core/utilities/ImmutableTree;->value:Ljava/lang/Object;

    return-object p1

    :cond_37
    return-object v2
.end method

.method public set(Lcom/google/firebase/database/core/Path;Ljava/lang/Object;)Lcom/google/firebase/database/core/utilities/ImmutableTree;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/Path;",
            "TT;)",
            "Lcom/google/firebase/database/core/utilities/ImmutableTree<",
            "TT;>;"
        }
    .end annotation

    .line 185
    invoke-virtual {p1}, Lcom/google/firebase/database/core/Path;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 186
    new-instance p1, Lcom/google/firebase/database/core/utilities/ImmutableTree;

    iget-object v0, p0, Lcom/google/firebase/database/core/utilities/ImmutableTree;->children:Lcom/google/firebase/database/collection/ImmutableSortedMap;

    invoke-direct {p1, p2, v0}, Lcom/google/firebase/database/core/utilities/ImmutableTree;-><init>(Ljava/lang/Object;Lcom/google/firebase/database/collection/ImmutableSortedMap;)V

    return-object p1

    .line 188
    :cond_e
    invoke-virtual {p1}, Lcom/google/firebase/database/core/Path;->getFront()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v0

    .line 189
    iget-object v1, p0, Lcom/google/firebase/database/core/utilities/ImmutableTree;->children:Lcom/google/firebase/database/collection/ImmutableSortedMap;

    invoke-virtual {v1, v0}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/database/core/utilities/ImmutableTree;

    if-nez v1, :cond_20

    .line 191
    invoke-static {}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->emptyInstance()Lcom/google/firebase/database/core/utilities/ImmutableTree;

    move-result-object v1

    .line 193
    :cond_20
    invoke-virtual {p1}, Lcom/google/firebase/database/core/Path;->popFront()Lcom/google/firebase/database/core/Path;

    move-result-object p1

    invoke-virtual {v1, p1, p2}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->set(Lcom/google/firebase/database/core/Path;Ljava/lang/Object;)Lcom/google/firebase/database/core/utilities/ImmutableTree;

    move-result-object p1

    .line 194
    iget-object p2, p0, Lcom/google/firebase/database/core/utilities/ImmutableTree;->children:Lcom/google/firebase/database/collection/ImmutableSortedMap;

    .line 195
    invoke-virtual {p2, v0, p1}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->insert(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/firebase/database/collection/ImmutableSortedMap;

    move-result-object p1

    .line 196
    new-instance p2, Lcom/google/firebase/database/core/utilities/ImmutableTree;

    iget-object v0, p0, Lcom/google/firebase/database/core/utilities/ImmutableTree;->value:Ljava/lang/Object;

    invoke-direct {p2, v0, p1}, Lcom/google/firebase/database/core/utilities/ImmutableTree;-><init>(Ljava/lang/Object;Lcom/google/firebase/database/collection/ImmutableSortedMap;)V

    return-object p2
.end method

.method public setTree(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/utilities/ImmutableTree;)Lcom/google/firebase/database/core/utilities/ImmutableTree;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/Path;",
            "Lcom/google/firebase/database/core/utilities/ImmutableTree<",
            "TT;>;)",
            "Lcom/google/firebase/database/core/utilities/ImmutableTree<",
            "TT;>;"
        }
    .end annotation

    .line 244
    invoke-virtual {p1}, Lcom/google/firebase/database/core/Path;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p2

    .line 247
    :cond_7
    invoke-virtual {p1}, Lcom/google/firebase/database/core/Path;->getFront()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v0

    .line 248
    iget-object v1, p0, Lcom/google/firebase/database/core/utilities/ImmutableTree;->children:Lcom/google/firebase/database/collection/ImmutableSortedMap;

    invoke-virtual {v1, v0}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/database/core/utilities/ImmutableTree;

    if-nez v1, :cond_19

    .line 250
    invoke-static {}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->emptyInstance()Lcom/google/firebase/database/core/utilities/ImmutableTree;

    move-result-object v1

    .line 252
    :cond_19
    invoke-virtual {p1}, Lcom/google/firebase/database/core/Path;->popFront()Lcom/google/firebase/database/core/Path;

    move-result-object p1

    invoke-virtual {v1, p1, p2}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->setTree(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/utilities/ImmutableTree;)Lcom/google/firebase/database/core/utilities/ImmutableTree;

    move-result-object p1

    .line 254
    invoke-virtual {p1}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_2e

    .line 255
    iget-object p1, p0, Lcom/google/firebase/database/core/utilities/ImmutableTree;->children:Lcom/google/firebase/database/collection/ImmutableSortedMap;

    invoke-virtual {p1, v0}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->remove(Ljava/lang/Object;)Lcom/google/firebase/database/collection/ImmutableSortedMap;

    move-result-object p1

    goto :goto_34

    .line 257
    :cond_2e
    iget-object p2, p0, Lcom/google/firebase/database/core/utilities/ImmutableTree;->children:Lcom/google/firebase/database/collection/ImmutableSortedMap;

    invoke-virtual {p2, v0, p1}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->insert(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/firebase/database/collection/ImmutableSortedMap;

    move-result-object p1

    .line 259
    :goto_34
    new-instance p2, Lcom/google/firebase/database/core/utilities/ImmutableTree;

    iget-object v0, p0, Lcom/google/firebase/database/core/utilities/ImmutableTree;->value:Ljava/lang/Object;

    invoke-direct {p2, v0, p1}, Lcom/google/firebase/database/core/utilities/ImmutableTree;-><init>(Ljava/lang/Object;Lcom/google/firebase/database/collection/ImmutableSortedMap;)V

    return-object p2
.end method

.method public subtree(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/utilities/ImmutableTree;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/Path;",
            ")",
            "Lcom/google/firebase/database/core/utilities/ImmutableTree<",
            "TT;>;"
        }
    .end annotation

    .line 171
    invoke-virtual {p1}, Lcom/google/firebase/database/core/Path;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p0

    .line 174
    :cond_7
    invoke-virtual {p1}, Lcom/google/firebase/database/core/Path;->getFront()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v0

    .line 175
    iget-object v1, p0, Lcom/google/firebase/database/core/utilities/ImmutableTree;->children:Lcom/google/firebase/database/collection/ImmutableSortedMap;

    invoke-virtual {v1, v0}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/core/utilities/ImmutableTree;

    if-eqz v0, :cond_1e

    .line 177
    invoke-virtual {p1}, Lcom/google/firebase/database/core/Path;->popFront()Lcom/google/firebase/database/core/Path;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->subtree(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/utilities/ImmutableTree;

    move-result-object p1

    return-object p1

    .line 179
    :cond_1e
    invoke-static {}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->emptyInstance()Lcom/google/firebase/database/core/utilities/ImmutableTree;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImmutableTree { value="

    .line 315
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    invoke-virtual {p0}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", children={"

    .line 317
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    iget-object v1, p0, Lcom/google/firebase/database/core/utilities/ImmutableTree;->children:Lcom/google/firebase/database/collection/ImmutableSortedMap;

    invoke-virtual {v1}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_42

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 319
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/database/snapshot/ChildKey;

    invoke-virtual {v3}, Lcom/google/firebase/database/snapshot/ChildKey;->asString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    .line 320
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1c

    :cond_42
    const-string v1, "} }"

    .line 323
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TT;>;"
        }
    .end annotation

    .line 282
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 283
    new-instance v1, Lcom/google/firebase/database/core/utilities/ImmutableTree$1;

    invoke-direct {v1, p0, v0}, Lcom/google/firebase/database/core/utilities/ImmutableTree$1;-><init>(Lcom/google/firebase/database/core/utilities/ImmutableTree;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v1}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->foreach(Lcom/google/firebase/database/core/utilities/ImmutableTree$TreeVisitor;)V

    return-object v0
.end method

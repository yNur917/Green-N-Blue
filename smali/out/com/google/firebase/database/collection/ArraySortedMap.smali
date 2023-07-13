.class public Lcom/google/firebase/database/collection/ArraySortedMap;
.super Lcom/google/firebase/database/collection/ImmutableSortedMap;
.source "ArraySortedMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/firebase/database/collection/ImmutableSortedMap<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "TK;>;"
        }
    .end annotation
.end field

.field private final keys:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TK;"
        }
    .end annotation
.end field

.field private final values:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Comparator;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "TK;>;)V"
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Lcom/google/firebase/database/collection/ImmutableSortedMap;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    .line 58
    iput-object v1, p0, Lcom/google/firebase/database/collection/ArraySortedMap;->keys:[Ljava/lang/Object;

    new-array v0, v0, [Ljava/lang/Object;

    .line 59
    iput-object v0, p0, Lcom/google/firebase/database/collection/ArraySortedMap;->values:[Ljava/lang/Object;

    .line 60
    iput-object p1, p0, Lcom/google/firebase/database/collection/ArraySortedMap;->comparator:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>(Ljava/util/Comparator;[Ljava/lang/Object;[Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "TK;>;[TK;[TV;)V"
        }
    .end annotation

    .line 64
    invoke-direct {p0}, Lcom/google/firebase/database/collection/ImmutableSortedMap;-><init>()V

    .line 65
    iput-object p2, p0, Lcom/google/firebase/database/collection/ArraySortedMap;->keys:[Ljava/lang/Object;

    .line 66
    iput-object p3, p0, Lcom/google/firebase/database/collection/ArraySortedMap;->values:[Ljava/lang/Object;

    .line 67
    iput-object p1, p0, Lcom/google/firebase/database/collection/ArraySortedMap;->comparator:Ljava/util/Comparator;

    return-void
.end method

.method static synthetic access$000(Lcom/google/firebase/database/collection/ArraySortedMap;)[Ljava/lang/Object;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/google/firebase/database/collection/ArraySortedMap;->keys:[Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/firebase/database/collection/ArraySortedMap;)[Ljava/lang/Object;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/google/firebase/database/collection/ArraySortedMap;->values:[Ljava/lang/Object;

    return-object p0
.end method

.method private static addToArray([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;ITT;)[TT;"
        }
    .end annotation

    .line 244
    array-length v0, p0

    add-int/lit8 v0, v0, 0x1

    .line 245
    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 246
    invoke-static {p0, v2, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 247
    aput-object p2, v1, p1

    add-int/lit8 p2, p1, 0x1

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    .line 248
    invoke-static {p0, p1, v1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public static buildFrom(Ljava/util/List;Ljava/util/Map;Lcom/google/firebase/database/collection/ImmutableSortedMap$Builder$KeyTranslator;Ljava/util/Comparator;)Lcom/google/firebase/database/collection/ArraySortedMap;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TA;>;",
            "Ljava/util/Map<",
            "TB;TC;>;",
            "Lcom/google/firebase/database/collection/ImmutableSortedMap$Builder$KeyTranslator<",
            "TA;TB;>;",
            "Ljava/util/Comparator<",
            "TA;>;)",
            "Lcom/google/firebase/database/collection/ArraySortedMap<",
            "TA;TC;>;"
        }
    .end annotation

    .line 33
    invoke-static {p0, p3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 34
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 35
    new-array v1, v0, [Ljava/lang/Object;

    .line 36
    new-array v0, v0, [Ljava/lang/Object;

    .line 38
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v2, 0x0

    :goto_10
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 39
    aput-object v3, v1, v2

    .line 40
    invoke-interface {p2, v3}, Lcom/google/firebase/database/collection/ImmutableSortedMap$Builder$KeyTranslator;->translate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 41
    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 44
    :cond_29
    new-instance p0, Lcom/google/firebase/database/collection/ArraySortedMap;

    invoke-direct {p0, p3, v1, v0}, Lcom/google/firebase/database/collection/ArraySortedMap;-><init>(Ljava/util/Comparator;[Ljava/lang/Object;[Ljava/lang/Object;)V

    return-object p0
.end method

.method private findKey(Ljava/lang/Object;)I
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    .line 279
    iget-object v0, p0, Lcom/google/firebase/database/collection/ArraySortedMap;->keys:[Ljava/lang/Object;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_5
    if-ge v2, v1, :cond_17

    aget-object v4, v0, v2

    .line 280
    iget-object v5, p0, Lcom/google/firebase/database/collection/ArraySortedMap;->comparator:Ljava/util/Comparator;

    invoke-interface {v5, p1, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-nez v4, :cond_12

    return v3

    :cond_12
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_17
    const/4 p1, -0x1

    return p1
.end method

.method private findKeyOrInsertPosition(Ljava/lang/Object;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    const/4 v0, 0x0

    .line 267
    :goto_1
    iget-object v1, p0, Lcom/google/firebase/database/collection/ArraySortedMap;->keys:[Ljava/lang/Object;

    array-length v2, v1

    if-ge v0, v2, :cond_13

    iget-object v2, p0, Lcom/google/firebase/database/collection/ArraySortedMap;->comparator:Ljava/util/Comparator;

    aget-object v1, v1, v0

    invoke-interface {v2, v1, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_13

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_13
    return v0
.end method

.method public static fromMap(Ljava/util/Map;Ljava/util/Comparator;)Lcom/google/firebase/database/collection/ArraySortedMap;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Ljava/util/Comparator<",
            "TK;>;)",
            "Lcom/google/firebase/database/collection/ArraySortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    .line 49
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {}, Lcom/google/firebase/database/collection/ImmutableSortedMap$Builder;->identityTranslator()Lcom/google/firebase/database/collection/ImmutableSortedMap$Builder$KeyTranslator;

    move-result-object v1

    .line 48
    invoke-static {v0, p0, v1, p1}, Lcom/google/firebase/database/collection/ArraySortedMap;->buildFrom(Ljava/util/List;Ljava/util/Map;Lcom/google/firebase/database/collection/ImmutableSortedMap$Builder$KeyTranslator;Ljava/util/Comparator;)Lcom/google/firebase/database/collection/ArraySortedMap;

    move-result-object p0

    return-object p0
.end method

.method private iterator(IZ)Ljava/util/Iterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 151
    new-instance v0, Lcom/google/firebase/database/collection/ArraySortedMap$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/firebase/database/collection/ArraySortedMap$1;-><init>(Lcom/google/firebase/database/collection/ArraySortedMap;IZ)V

    return-object v0
.end method

.method private static removeFromArray([Ljava/lang/Object;I)[Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)[TT;"
        }
    .end annotation

    .line 235
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    .line 236
    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 237
    invoke-static {p0, v2, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, p1, 0x1

    sub-int/2addr v0, p1

    .line 238
    invoke-static {p0, v2, v1, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method private static replaceInArray([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;ITT;)[TT;"
        }
    .end annotation

    .line 254
    array-length v0, p0

    .line 255
    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 256
    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 257
    aput-object p2, v1, p1

    return-object v1
.end method


# virtual methods
.method public containsKey(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .line 72
    invoke-direct {p0, p1}, Lcom/google/firebase/database/collection/ArraySortedMap;->findKey(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_9

    const/4 p1, 0x1

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    return p1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 77
    invoke-direct {p0, p1}, Lcom/google/firebase/database/collection/ArraySortedMap;->findKey(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_c

    .line 78
    iget-object v0, p0, Lcom/google/firebase/database/collection/ArraySortedMap;->values:[Ljava/lang/Object;

    aget-object p1, v0, p1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return-object p1
.end method

.method public getComparator()Ljava/util/Comparator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "TK;>;"
        }
    .end annotation

    .line 230
    iget-object v0, p0, Lcom/google/firebase/database/collection/ArraySortedMap;->comparator:Ljava/util/Comparator;

    return-object v0
.end method

.method public getMaxKey()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lcom/google/firebase/database/collection/ArraySortedMap;->keys:[Ljava/lang/Object;

    array-length v1, v0

    if-lez v1, :cond_b

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public getMinKey()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lcom/google/firebase/database/collection/ArraySortedMap;->keys:[Ljava/lang/Object;

    array-length v1, v0

    if-lez v1, :cond_9

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public getPredecessorKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .line 205
    invoke-direct {p0, p1}, Lcom/google/firebase/database/collection/ArraySortedMap;->findKey(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_12

    if-lez p1, :cond_10

    .line 209
    iget-object v0, p0, Lcom/google/firebase/database/collection/ArraySortedMap;->keys:[Ljava/lang/Object;

    add-int/lit8 p1, p1, -0x1

    aget-object p1, v0, p1

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    return-object p1

    .line 207
    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can\'t find predecessor of nonexistent key"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getSuccessorKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .line 215
    invoke-direct {p0, p1}, Lcom/google/firebase/database/collection/ArraySortedMap;->findKey(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_15

    .line 219
    iget-object v0, p0, Lcom/google/firebase/database/collection/ArraySortedMap;->keys:[Ljava/lang/Object;

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-ge p1, v1, :cond_13

    add-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    goto :goto_14

    :cond_13
    const/4 p1, 0x0

    :goto_14
    return-object p1

    .line 217
    :cond_15
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can\'t find successor of nonexistent key"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public inOrderTraversal(Lcom/google/firebase/database/collection/LLRBNode$NodeVisitor;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/collection/LLRBNode$NodeVisitor<",
            "TK;TV;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 145
    :goto_1
    iget-object v1, p0, Lcom/google/firebase/database/collection/ArraySortedMap;->keys:[Ljava/lang/Object;

    array-length v2, v1

    if-ge v0, v2, :cond_12

    .line 146
    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/google/firebase/database/collection/ArraySortedMap;->values:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-virtual {p1, v1, v2}, Lcom/google/firebase/database/collection/LLRBNode$NodeVisitor;->visitEntry(Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_12
    return-void
.end method

.method public indexOf(Ljava/lang/Object;)I
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    .line 225
    invoke-direct {p0, p1}, Lcom/google/firebase/database/collection/ArraySortedMap;->findKey(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public insert(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/firebase/database/collection/ImmutableSortedMap;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lcom/google/firebase/database/collection/ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 95
    invoke-direct {p0, p1}, Lcom/google/firebase/database/collection/ArraySortedMap;->findKey(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_26

    .line 97
    iget-object v1, p0, Lcom/google/firebase/database/collection/ArraySortedMap;->keys:[Ljava/lang/Object;

    aget-object v2, v1, v0

    if-ne v2, p1, :cond_14

    iget-object v2, p0, Lcom/google/firebase/database/collection/ArraySortedMap;->values:[Ljava/lang/Object;

    aget-object v2, v2, v0

    if-ne v2, p2, :cond_14

    return-object p0

    .line 101
    :cond_14
    invoke-static {v1, v0, p1}, Lcom/google/firebase/database/collection/ArraySortedMap;->replaceInArray([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    .line 102
    iget-object v1, p0, Lcom/google/firebase/database/collection/ArraySortedMap;->values:[Ljava/lang/Object;

    invoke-static {v1, v0, p2}, Lcom/google/firebase/database/collection/ArraySortedMap;->replaceInArray([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    .line 103
    new-instance v0, Lcom/google/firebase/database/collection/ArraySortedMap;

    iget-object v1, p0, Lcom/google/firebase/database/collection/ArraySortedMap;->comparator:Ljava/util/Comparator;

    invoke-direct {v0, v1, p1, p2}, Lcom/google/firebase/database/collection/ArraySortedMap;-><init>(Ljava/util/Comparator;[Ljava/lang/Object;[Ljava/lang/Object;)V

    return-object v0

    .line 106
    :cond_26
    iget-object v0, p0, Lcom/google/firebase/database/collection/ArraySortedMap;->keys:[Ljava/lang/Object;

    array-length v0, v0

    const/16 v1, 0x19

    if-le v0, v1, :cond_53

    .line 108
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/google/firebase/database/collection/ArraySortedMap;->keys:[Ljava/lang/Object;

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const/4 v1, 0x0

    .line 109
    :goto_38
    iget-object v2, p0, Lcom/google/firebase/database/collection/ArraySortedMap;->keys:[Ljava/lang/Object;

    array-length v3, v2

    if-ge v1, v3, :cond_49

    .line 110
    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/google/firebase/database/collection/ArraySortedMap;->values:[Ljava/lang/Object;

    aget-object v3, v3, v1

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_38

    .line 112
    :cond_49
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-object p1, p0, Lcom/google/firebase/database/collection/ArraySortedMap;->comparator:Ljava/util/Comparator;

    invoke-static {v0, p1}, Lcom/google/firebase/database/collection/RBTreeSortedMap;->fromMap(Ljava/util/Map;Ljava/util/Comparator;)Lcom/google/firebase/database/collection/RBTreeSortedMap;

    move-result-object p1

    return-object p1

    .line 115
    :cond_53
    invoke-direct {p0, p1}, Lcom/google/firebase/database/collection/ArraySortedMap;->findKeyOrInsertPosition(Ljava/lang/Object;)I

    move-result v0

    .line 116
    iget-object v1, p0, Lcom/google/firebase/database/collection/ArraySortedMap;->keys:[Ljava/lang/Object;

    invoke-static {v1, v0, p1}, Lcom/google/firebase/database/collection/ArraySortedMap;->addToArray([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    .line 117
    iget-object v1, p0, Lcom/google/firebase/database/collection/ArraySortedMap;->values:[Ljava/lang/Object;

    invoke-static {v1, v0, p2}, Lcom/google/firebase/database/collection/ArraySortedMap;->addToArray([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    .line 118
    new-instance v0, Lcom/google/firebase/database/collection/ArraySortedMap;

    iget-object v1, p0, Lcom/google/firebase/database/collection/ArraySortedMap;->comparator:Ljava/util/Comparator;

    invoke-direct {v0, v1, p1, p2}, Lcom/google/firebase/database/collection/ArraySortedMap;-><init>(Ljava/util/Comparator;[Ljava/lang/Object;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 140
    iget-object v0, p0, Lcom/google/firebase/database/collection/ArraySortedMap;->keys:[Ljava/lang/Object;

    array-length v0, v0

    if-nez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 176
    invoke-direct {p0, v0, v0}, Lcom/google/firebase/database/collection/ArraySortedMap;->iterator(IZ)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public iteratorFrom(Ljava/lang/Object;)Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 181
    invoke-direct {p0, p1}, Lcom/google/firebase/database/collection/ArraySortedMap;->findKeyOrInsertPosition(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, 0x0

    .line 182
    invoke-direct {p0, p1, v0}, Lcom/google/firebase/database/collection/ArraySortedMap;->iterator(IZ)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Lcom/google/firebase/database/collection/ImmutableSortedMap;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lcom/google/firebase/database/collection/ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 83
    invoke-direct {p0, p1}, Lcom/google/firebase/database/collection/ArraySortedMap;->findKey(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_8

    return-object p0

    .line 87
    :cond_8
    iget-object v0, p0, Lcom/google/firebase/database/collection/ArraySortedMap;->keys:[Ljava/lang/Object;

    invoke-static {v0, p1}, Lcom/google/firebase/database/collection/ArraySortedMap;->removeFromArray([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    .line 88
    iget-object v1, p0, Lcom/google/firebase/database/collection/ArraySortedMap;->values:[Ljava/lang/Object;

    invoke-static {v1, p1}, Lcom/google/firebase/database/collection/ArraySortedMap;->removeFromArray([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    .line 89
    new-instance v1, Lcom/google/firebase/database/collection/ArraySortedMap;

    iget-object v2, p0, Lcom/google/firebase/database/collection/ArraySortedMap;->comparator:Ljava/util/Comparator;

    invoke-direct {v1, v2, v0, p1}, Lcom/google/firebase/database/collection/ArraySortedMap;-><init>(Ljava/util/Comparator;[Ljava/lang/Object;[Ljava/lang/Object;)V

    return-object v1
.end method

.method public reverseIterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 200
    iget-object v0, p0, Lcom/google/firebase/database/collection/ArraySortedMap;->keys:[Ljava/lang/Object;

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-direct {p0, v0, v1}, Lcom/google/firebase/database/collection/ArraySortedMap;->iterator(IZ)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public reverseIteratorFrom(Ljava/lang/Object;)Ljava/util/Iterator;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 187
    invoke-direct {p0, p1}, Lcom/google/firebase/database/collection/ArraySortedMap;->findKeyOrInsertPosition(Ljava/lang/Object;)I

    move-result v0

    .line 191
    iget-object v1, p0, Lcom/google/firebase/database/collection/ArraySortedMap;->keys:[Ljava/lang/Object;

    array-length v2, v1

    const/4 v3, 0x1

    if-ge v0, v2, :cond_19

    iget-object v2, p0, Lcom/google/firebase/database/collection/ArraySortedMap;->comparator:Ljava/util/Comparator;

    aget-object v1, v1, v0

    invoke-interface {v2, v1, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    if-nez p1, :cond_19

    .line 192
    invoke-direct {p0, v0, v3}, Lcom/google/firebase/database/collection/ArraySortedMap;->iterator(IZ)Ljava/util/Iterator;

    move-result-object p1

    return-object p1

    :cond_19
    sub-int/2addr v0, v3

    .line 194
    invoke-direct {p0, v0, v3}, Lcom/google/firebase/database/collection/ArraySortedMap;->iterator(IZ)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .registers 2

    .line 135
    iget-object v0, p0, Lcom/google/firebase/database/collection/ArraySortedMap;->keys:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method

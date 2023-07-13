.class public Lcom/google/firebase/database/Query;
.super Ljava/lang/Object;
.source "Query.java"


# instance fields
.field private final orderByCalled:Z

.field protected final params:Lcom/google/firebase/database/core/view/QueryParams;

.field protected final path:Lcom/google/firebase/database/core/Path;

.field protected final repo:Lcom/google/firebase/database/core/Repo;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/core/Repo;Lcom/google/firebase/database/core/Path;)V
    .registers 3

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/google/firebase/database/Query;->repo:Lcom/google/firebase/database/core/Repo;

    .line 75
    iput-object p2, p0, Lcom/google/firebase/database/Query;->path:Lcom/google/firebase/database/core/Path;

    .line 76
    sget-object p1, Lcom/google/firebase/database/core/view/QueryParams;->DEFAULT_PARAMS:Lcom/google/firebase/database/core/view/QueryParams;

    iput-object p1, p0, Lcom/google/firebase/database/Query;->params:Lcom/google/firebase/database/core/view/QueryParams;

    const/4 p1, 0x0

    .line 77
    iput-boolean p1, p0, Lcom/google/firebase/database/Query;->orderByCalled:Z

    return-void
.end method

.method constructor <init>(Lcom/google/firebase/database/core/Repo;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/view/QueryParams;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/database/DatabaseException;
        }
    .end annotation

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/google/firebase/database/Query;->repo:Lcom/google/firebase/database/core/Repo;

    .line 67
    iput-object p2, p0, Lcom/google/firebase/database/Query;->path:Lcom/google/firebase/database/core/Path;

    .line 68
    iput-object p3, p0, Lcom/google/firebase/database/Query;->params:Lcom/google/firebase/database/core/view/QueryParams;

    .line 69
    iput-boolean p4, p0, Lcom/google/firebase/database/Query;->orderByCalled:Z

    .line 70
    invoke-virtual {p3}, Lcom/google/firebase/database/core/view/QueryParams;->isValid()Z

    move-result p1

    const-string p2, "Validation of queries failed."

    invoke-static {p1, p2}, Lcom/google/firebase/database/core/utilities/Utilities;->hardAssert(ZLjava/lang/String;)V

    return-void
.end method

.method private addEventRegistration(Lcom/google/firebase/database/core/EventRegistration;)V
    .registers 4

    .line 238
    invoke-static {}, Lcom/google/firebase/database/core/ZombieEventManager;->getInstance()Lcom/google/firebase/database/core/ZombieEventManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/core/ZombieEventManager;->recordEventRegistration(Lcom/google/firebase/database/core/EventRegistration;)V

    .line 239
    iget-object v0, p0, Lcom/google/firebase/database/Query;->repo:Lcom/google/firebase/database/core/Repo;

    new-instance v1, Lcom/google/firebase/database/Query$3;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/database/Query$3;-><init>(Lcom/google/firebase/database/Query;Lcom/google/firebase/database/core/EventRegistration;)V

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/core/Repo;->scheduleNow(Ljava/lang/Runnable;)V

    return-void
.end method

.method private endAt(Lcom/google/firebase/database/snapshot/Node;Ljava/lang/String;)Lcom/google/firebase/database/Query;
    .registers 6

    .line 667
    invoke-static {p2}, Lcom/google/firebase/database/core/utilities/Validation;->validateNullableKey(Ljava/lang/String;)V

    .line 668
    invoke-interface {p1}, Lcom/google/firebase/database/snapshot/Node;->isLeafNode()Z

    move-result v0

    if-nez v0, :cond_18

    invoke-interface {p1}, Lcom/google/firebase/database/snapshot/Node;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_18

    .line 669
    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Can only use simple values for endAt()"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_18
    :goto_18
    if-eqz p2, :cond_1f

    .line 671
    invoke-static {p2}, Lcom/google/firebase/database/snapshot/ChildKey;->fromString(Ljava/lang/String;)Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object p2

    goto :goto_20

    :cond_1f
    const/4 p2, 0x0

    .line 672
    :goto_20
    iget-object v0, p0, Lcom/google/firebase/database/Query;->params:Lcom/google/firebase/database/core/view/QueryParams;

    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/QueryParams;->hasEnd()Z

    move-result v0

    if-nez v0, :cond_47

    .line 675
    iget-object v0, p0, Lcom/google/firebase/database/Query;->params:Lcom/google/firebase/database/core/view/QueryParams;

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/database/core/view/QueryParams;->endAt(Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/core/view/QueryParams;

    move-result-object p1

    .line 676
    invoke-direct {p0, p1}, Lcom/google/firebase/database/Query;->validateLimit(Lcom/google/firebase/database/core/view/QueryParams;)V

    .line 677
    invoke-direct {p0, p1}, Lcom/google/firebase/database/Query;->validateQueryEndpoints(Lcom/google/firebase/database/core/view/QueryParams;)V

    .line 678
    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/QueryParams;->isValid()Z

    move-result p2

    invoke-static {p2}, Lcom/google/firebase/database/core/utilities/Utilities;->hardAssert(Z)V

    .line 679
    new-instance p2, Lcom/google/firebase/database/Query;

    iget-object v0, p0, Lcom/google/firebase/database/Query;->repo:Lcom/google/firebase/database/core/Repo;

    iget-object v1, p0, Lcom/google/firebase/database/Query;->path:Lcom/google/firebase/database/core/Path;

    iget-boolean v2, p0, Lcom/google/firebase/database/Query;->orderByCalled:Z

    invoke-direct {p2, v0, v1, p1, v2}, Lcom/google/firebase/database/Query;-><init>(Lcom/google/firebase/database/core/Repo;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/view/QueryParams;Z)V

    return-object p2

    .line 673
    :cond_47
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Can\'t call endAt() or equalTo() multiple times"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private endBefore(Lcom/google/firebase/database/snapshot/Node;Ljava/lang/String;)Lcom/google/firebase/database/Query;
    .registers 3

    .line 581
    invoke-static {p2}, Lcom/google/firebase/database/core/utilities/PushIdGenerator;->predecessor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/firebase/database/Query;->endAt(Lcom/google/firebase/database/snapshot/Node;Ljava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object p1

    return-object p1
.end method

.method private removeEventRegistration(Lcom/google/firebase/database/core/EventRegistration;)V
    .registers 4

    .line 227
    invoke-static {}, Lcom/google/firebase/database/core/ZombieEventManager;->getInstance()Lcom/google/firebase/database/core/ZombieEventManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/core/ZombieEventManager;->zombifyForRemove(Lcom/google/firebase/database/core/EventRegistration;)V

    .line 228
    iget-object v0, p0, Lcom/google/firebase/database/Query;->repo:Lcom/google/firebase/database/core/Repo;

    new-instance v1, Lcom/google/firebase/database/Query$2;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/database/Query$2;-><init>(Lcom/google/firebase/database/Query;Lcom/google/firebase/database/core/EventRegistration;)V

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/core/Repo;->scheduleNow(Ljava/lang/Runnable;)V

    return-void
.end method

.method private startAfter(Lcom/google/firebase/database/snapshot/Node;Ljava/lang/String;)Lcom/google/firebase/database/Query;
    .registers 3

    .line 376
    invoke-static {p2}, Lcom/google/firebase/database/core/utilities/PushIdGenerator;->successor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/firebase/database/Query;->startAt(Lcom/google/firebase/database/snapshot/Node;Ljava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object p1

    return-object p1
.end method

.method private startAt(Lcom/google/firebase/database/snapshot/Node;Ljava/lang/String;)Lcom/google/firebase/database/Query;
    .registers 6

    .line 462
    invoke-static {p2}, Lcom/google/firebase/database/core/utilities/Validation;->validateNullableKey(Ljava/lang/String;)V

    .line 463
    invoke-interface {p1}, Lcom/google/firebase/database/snapshot/Node;->isLeafNode()Z

    move-result v0

    if-nez v0, :cond_18

    invoke-interface {p1}, Lcom/google/firebase/database/snapshot/Node;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_18

    .line 464
    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Can only use simple values for startAt() and startAfter()"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 467
    :cond_18
    :goto_18
    iget-object v0, p0, Lcom/google/firebase/database/Query;->params:Lcom/google/firebase/database/core/view/QueryParams;

    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/QueryParams;->hasStart()Z

    move-result v0

    if-nez v0, :cond_60

    const/4 v0, 0x0

    if-eqz p2, :cond_41

    const-string v0, "[MIN_NAME]"

    .line 473
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 474
    invoke-static {}, Lcom/google/firebase/database/snapshot/ChildKey;->getMinName()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v0

    goto :goto_41

    :cond_30
    const-string v0, "[MAX_KEY]"

    .line 475
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 476
    invoke-static {}, Lcom/google/firebase/database/snapshot/ChildKey;->getMaxName()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v0

    goto :goto_41

    .line 478
    :cond_3d
    invoke-static {p2}, Lcom/google/firebase/database/snapshot/ChildKey;->fromString(Ljava/lang/String;)Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v0

    .line 481
    :cond_41
    :goto_41
    iget-object p2, p0, Lcom/google/firebase/database/Query;->params:Lcom/google/firebase/database/core/view/QueryParams;

    invoke-virtual {p2, p1, v0}, Lcom/google/firebase/database/core/view/QueryParams;->startAt(Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/core/view/QueryParams;

    move-result-object p1

    .line 482
    invoke-direct {p0, p1}, Lcom/google/firebase/database/Query;->validateLimit(Lcom/google/firebase/database/core/view/QueryParams;)V

    .line 483
    invoke-direct {p0, p1}, Lcom/google/firebase/database/Query;->validateQueryEndpoints(Lcom/google/firebase/database/core/view/QueryParams;)V

    .line 484
    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/QueryParams;->isValid()Z

    move-result p2

    invoke-static {p2}, Lcom/google/firebase/database/core/utilities/Utilities;->hardAssert(Z)V

    .line 485
    new-instance p2, Lcom/google/firebase/database/Query;

    iget-object v0, p0, Lcom/google/firebase/database/Query;->repo:Lcom/google/firebase/database/core/Repo;

    iget-object v1, p0, Lcom/google/firebase/database/Query;->path:Lcom/google/firebase/database/core/Path;

    iget-boolean v2, p0, Lcom/google/firebase/database/Query;->orderByCalled:Z

    invoke-direct {p2, v0, v1, p1, v2}, Lcom/google/firebase/database/Query;-><init>(Lcom/google/firebase/database/core/Repo;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/view/QueryParams;Z)V

    return-object p2

    .line 468
    :cond_60
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Can\'t call startAt(), startAfte(), or equalTo() multiple times"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private validateEqualToCall()V
    .registers 3

    .line 126
    iget-object v0, p0, Lcom/google/firebase/database/Query;->params:Lcom/google/firebase/database/core/view/QueryParams;

    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/QueryParams;->hasStart()Z

    move-result v0

    if-nez v0, :cond_19

    .line 129
    iget-object v0, p0, Lcom/google/firebase/database/Query;->params:Lcom/google/firebase/database/core/view/QueryParams;

    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/QueryParams;->hasEnd()Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    .line 130
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot combine equalTo() with endAt() or endBefore()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot combine equalTo() with startAt() or startAfter()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private validateLimit(Lcom/google/firebase/database/core/view/QueryParams;)V
    .registers 3

    .line 117
    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/QueryParams;->hasStart()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/QueryParams;->hasEnd()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/QueryParams;->hasLimit()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/QueryParams;->hasAnchoredLimit()Z

    move-result p1

    if-eqz p1, :cond_19

    goto :goto_21

    .line 118
    :cond_19
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can\'t combine startAt(), startAfter(), endAt(), endBefore(), and limit(). Use limitToFirst() or limitToLast() instead"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_21
    :goto_21
    return-void
.end method

.method private validateNoOrderByCall()V
    .registers 3

    .line 136
    iget-boolean v0, p0, Lcom/google/firebase/database/Query;->orderByCalled:Z

    if-nez v0, :cond_5

    return-void

    .line 137
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You can\'t combine multiple orderBy calls!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private validateQueryEndpoints(Lcom/google/firebase/database/core/view/QueryParams;)V
    .registers 6

    .line 84
    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/QueryParams;->getIndex()Lcom/google/firebase/database/snapshot/Index;

    move-result-object v0

    invoke-static {}, Lcom/google/firebase/database/snapshot/KeyIndex;->getInstance()Lcom/google/firebase/database/snapshot/KeyIndex;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    const-string v0, "You must use startAt(String value), startAfter(String value), endAt(String value), endBefore(String value) or equalTo(String value) in combination with orderByKey(). Other type of values or using the version with 2 parameters is not supported"

    .line 90
    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/QueryParams;->hasStart()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 91
    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/QueryParams;->getIndexStartValue()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v1

    .line 92
    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/QueryParams;->getIndexStartName()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v2

    .line 93
    invoke-static {}, Lcom/google/firebase/database/snapshot/ChildKey;->getMinName()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    instance-of v1, v1, Lcom/google/firebase/database/snapshot/StringNode;

    if-eqz v1, :cond_2d

    goto :goto_33

    .line 95
    :cond_2d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 98
    :cond_33
    :goto_33
    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/QueryParams;->hasEnd()Z

    move-result v1

    if-eqz v1, :cond_8d

    .line 99
    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/QueryParams;->getIndexEndValue()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v1

    .line 100
    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/QueryParams;->getIndexEndName()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object p1

    .line 101
    invoke-static {}, Lcom/google/firebase/database/snapshot/ChildKey;->getMaxName()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/google/firebase/database/snapshot/ChildKey;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_50

    instance-of p1, v1, Lcom/google/firebase/database/snapshot/StringNode;

    if-eqz p1, :cond_50

    goto :goto_8d

    .line 102
    :cond_50
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 105
    :cond_56
    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/QueryParams;->getIndex()Lcom/google/firebase/database/snapshot/Index;

    move-result-object v0

    invoke-static {}, Lcom/google/firebase/database/snapshot/PriorityIndex;->getInstance()Lcom/google/firebase/database/snapshot/PriorityIndex;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 106
    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/QueryParams;->hasStart()Z

    move-result v0

    if-eqz v0, :cond_74

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/QueryParams;->getIndexStartValue()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/database/snapshot/PriorityUtilities;->isValidPriority(Lcom/google/firebase/database/snapshot/Node;)Z

    move-result v0

    if-eqz v0, :cond_85

    .line 107
    :cond_74
    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/QueryParams;->hasEnd()Z

    move-result v0

    if-eqz v0, :cond_8d

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/QueryParams;->getIndexEndValue()Lcom/google/firebase/database/snapshot/Node;

    move-result-object p1

    invoke-static {p1}, Lcom/google/firebase/database/snapshot/PriorityUtilities;->isValidPriority(Lcom/google/firebase/database/snapshot/Node;)Z

    move-result p1

    if-eqz p1, :cond_85

    goto :goto_8d

    .line 108
    :cond_85
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "When using orderByPriority(), values provided to startAt(), startAfter(), endAt(), endBefore(), or equalTo() must be valid priorities."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8d
    :goto_8d
    return-void
.end method


# virtual methods
.method public addChildEventListener(Lcom/google/firebase/database/ChildEventListener;)Lcom/google/firebase/database/ChildEventListener;
    .registers 5

    .line 163
    new-instance v0, Lcom/google/firebase/database/core/ChildEventRegistration;

    iget-object v1, p0, Lcom/google/firebase/database/Query;->repo:Lcom/google/firebase/database/core/Repo;

    invoke-virtual {p0}, Lcom/google/firebase/database/Query;->getSpec()Lcom/google/firebase/database/core/view/QuerySpec;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lcom/google/firebase/database/core/ChildEventRegistration;-><init>(Lcom/google/firebase/database/core/Repo;Lcom/google/firebase/database/ChildEventListener;Lcom/google/firebase/database/core/view/QuerySpec;)V

    invoke-direct {p0, v0}, Lcom/google/firebase/database/Query;->addEventRegistration(Lcom/google/firebase/database/core/EventRegistration;)V

    return-object p1
.end method

.method public addListenerForSingleValueEvent(Lcom/google/firebase/database/ValueEventListener;)V
    .registers 5

    .line 183
    new-instance v0, Lcom/google/firebase/database/core/ValueEventRegistration;

    iget-object v1, p0, Lcom/google/firebase/database/Query;->repo:Lcom/google/firebase/database/core/Repo;

    new-instance v2, Lcom/google/firebase/database/Query$1;

    invoke-direct {v2, p0, p1}, Lcom/google/firebase/database/Query$1;-><init>(Lcom/google/firebase/database/Query;Lcom/google/firebase/database/ValueEventListener;)V

    .line 199
    invoke-virtual {p0}, Lcom/google/firebase/database/Query;->getSpec()Lcom/google/firebase/database/core/view/QuerySpec;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/google/firebase/database/core/ValueEventRegistration;-><init>(Lcom/google/firebase/database/core/Repo;Lcom/google/firebase/database/ValueEventListener;Lcom/google/firebase/database/core/view/QuerySpec;)V

    .line 183
    invoke-direct {p0, v0}, Lcom/google/firebase/database/Query;->addEventRegistration(Lcom/google/firebase/database/core/EventRegistration;)V

    return-void
.end method

.method public addValueEventListener(Lcom/google/firebase/database/ValueEventListener;)Lcom/google/firebase/database/ValueEventListener;
    .registers 5

    .line 150
    new-instance v0, Lcom/google/firebase/database/core/ValueEventRegistration;

    iget-object v1, p0, Lcom/google/firebase/database/Query;->repo:Lcom/google/firebase/database/core/Repo;

    invoke-virtual {p0}, Lcom/google/firebase/database/Query;->getSpec()Lcom/google/firebase/database/core/view/QuerySpec;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lcom/google/firebase/database/core/ValueEventRegistration;-><init>(Lcom/google/firebase/database/core/Repo;Lcom/google/firebase/database/ValueEventListener;Lcom/google/firebase/database/core/view/QuerySpec;)V

    invoke-direct {p0, v0}, Lcom/google/firebase/database/Query;->addEventRegistration(Lcom/google/firebase/database/core/EventRegistration;)V

    return-object p1
.end method

.method public endAt(D)Lcom/google/firebase/database/Query;
    .registers 4

    const/4 v0, 0x0

    .line 605
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/firebase/database/Query;->endAt(DLjava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object p1

    return-object p1
.end method

.method public endAt(DLjava/lang/String;)Lcom/google/firebase/database/Query;
    .registers 5

    .line 648
    new-instance v0, Lcom/google/firebase/database/snapshot/DoubleNode;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {}, Lcom/google/firebase/database/snapshot/PriorityUtilities;->NullPriority()Lcom/google/firebase/database/snapshot/Node;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lcom/google/firebase/database/snapshot/DoubleNode;-><init>(Ljava/lang/Double;Lcom/google/firebase/database/snapshot/Node;)V

    invoke-direct {p0, v0, p3}, Lcom/google/firebase/database/Query;->endAt(Lcom/google/firebase/database/snapshot/Node;Ljava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object p1

    return-object p1
.end method

.method public endAt(Ljava/lang/String;)Lcom/google/firebase/database/Query;
    .registers 3

    const/4 v0, 0x0

    .line 593
    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/database/Query;->endAt(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object p1

    return-object p1
.end method

.method public endAt(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/Query;
    .registers 5

    if-eqz p1, :cond_c

    .line 633
    new-instance v0, Lcom/google/firebase/database/snapshot/StringNode;

    invoke-static {}, Lcom/google/firebase/database/snapshot/PriorityUtilities;->NullPriority()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/google/firebase/database/snapshot/StringNode;-><init>(Ljava/lang/String;Lcom/google/firebase/database/snapshot/Node;)V

    goto :goto_10

    :cond_c
    invoke-static {}, Lcom/google/firebase/database/snapshot/EmptyNode;->Empty()Lcom/google/firebase/database/snapshot/EmptyNode;

    move-result-object v0

    .line 634
    :goto_10
    invoke-direct {p0, v0, p2}, Lcom/google/firebase/database/Query;->endAt(Lcom/google/firebase/database/snapshot/Node;Ljava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object p1

    return-object p1
.end method

.method public endAt(Z)Lcom/google/firebase/database/Query;
    .registers 3

    const/4 v0, 0x0

    .line 618
    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/database/Query;->endAt(ZLjava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object p1

    return-object p1
.end method

.method public endAt(ZLjava/lang/String;)Lcom/google/firebase/database/Query;
    .registers 5

    .line 663
    new-instance v0, Lcom/google/firebase/database/snapshot/BooleanNode;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {}, Lcom/google/firebase/database/snapshot/PriorityUtilities;->NullPriority()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/google/firebase/database/snapshot/BooleanNode;-><init>(Ljava/lang/Boolean;Lcom/google/firebase/database/snapshot/Node;)V

    invoke-direct {p0, v0, p2}, Lcom/google/firebase/database/Query;->endAt(Lcom/google/firebase/database/snapshot/Node;Ljava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object p1

    return-object p1
.end method

.method public endBefore(D)Lcom/google/firebase/database/Query;
    .registers 4

    .line 514
    invoke-static {}, Lcom/google/firebase/database/snapshot/ChildKey;->getMinName()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/snapshot/ChildKey;->asString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/firebase/database/Query;->endAt(DLjava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object p1

    return-object p1
.end method

.method public endBefore(DLjava/lang/String;)Lcom/google/firebase/database/Query;
    .registers 5

    .line 562
    new-instance v0, Lcom/google/firebase/database/snapshot/DoubleNode;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {}, Lcom/google/firebase/database/snapshot/PriorityUtilities;->NullPriority()Lcom/google/firebase/database/snapshot/Node;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lcom/google/firebase/database/snapshot/DoubleNode;-><init>(Ljava/lang/Double;Lcom/google/firebase/database/snapshot/Node;)V

    invoke-direct {p0, v0, p3}, Lcom/google/firebase/database/Query;->endBefore(Lcom/google/firebase/database/snapshot/Node;Ljava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object p1

    return-object p1
.end method

.method public endBefore(Ljava/lang/String;)Lcom/google/firebase/database/Query;
    .registers 4

    if-eqz p1, :cond_1b

    .line 498
    iget-object v0, p0, Lcom/google/firebase/database/Query;->params:Lcom/google/firebase/database/core/view/QueryParams;

    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/QueryParams;->getIndex()Lcom/google/firebase/database/snapshot/Index;

    move-result-object v0

    invoke-static {}, Lcom/google/firebase/database/snapshot/KeyIndex;->getInstance()Lcom/google/firebase/database/snapshot/KeyIndex;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 499
    invoke-static {p1}, Lcom/google/firebase/database/core/utilities/PushIdGenerator;->predecessor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/firebase/database/Query;->endAt(Ljava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object p1

    return-object p1

    .line 501
    :cond_1b
    invoke-static {}, Lcom/google/firebase/database/snapshot/ChildKey;->getMinName()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/snapshot/ChildKey;->asString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/database/Query;->endAt(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object p1

    return-object p1
.end method

.method public endBefore(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/Query;
    .registers 5

    if-eqz p1, :cond_16

    .line 542
    iget-object v0, p0, Lcom/google/firebase/database/Query;->params:Lcom/google/firebase/database/core/view/QueryParams;

    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/QueryParams;->getIndex()Lcom/google/firebase/database/snapshot/Index;

    move-result-object v0

    invoke-static {}, Lcom/google/firebase/database/snapshot/KeyIndex;->getInstance()Lcom/google/firebase/database/snapshot/KeyIndex;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 543
    invoke-static {p1}, Lcom/google/firebase/database/core/utilities/PushIdGenerator;->predecessor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_16
    if-eqz p1, :cond_22

    .line 546
    new-instance v0, Lcom/google/firebase/database/snapshot/StringNode;

    invoke-static {}, Lcom/google/firebase/database/snapshot/PriorityUtilities;->NullPriority()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/google/firebase/database/snapshot/StringNode;-><init>(Ljava/lang/String;Lcom/google/firebase/database/snapshot/Node;)V

    goto :goto_26

    :cond_22
    invoke-static {}, Lcom/google/firebase/database/snapshot/EmptyNode;->Empty()Lcom/google/firebase/database/snapshot/EmptyNode;

    move-result-object v0

    .line 547
    :goto_26
    invoke-direct {p0, v0, p2}, Lcom/google/firebase/database/Query;->endBefore(Lcom/google/firebase/database/snapshot/Node;Ljava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object p1

    return-object p1
.end method

.method public endBefore(Z)Lcom/google/firebase/database/Query;
    .registers 3

    .line 527
    invoke-static {}, Lcom/google/firebase/database/snapshot/ChildKey;->getMinName()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/snapshot/ChildKey;->asString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/database/Query;->endAt(ZLjava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object p1

    return-object p1
.end method

.method public endBefore(ZLjava/lang/String;)Lcom/google/firebase/database/Query;
    .registers 5

    .line 577
    new-instance v0, Lcom/google/firebase/database/snapshot/BooleanNode;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {}, Lcom/google/firebase/database/snapshot/PriorityUtilities;->NullPriority()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/google/firebase/database/snapshot/BooleanNode;-><init>(Ljava/lang/Boolean;Lcom/google/firebase/database/snapshot/Node;)V

    invoke-direct {p0, v0, p2}, Lcom/google/firebase/database/Query;->endBefore(Lcom/google/firebase/database/snapshot/Node;Ljava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object p1

    return-object p1
.end method

.method public equalTo(D)Lcom/google/firebase/database/Query;
    .registers 4

    .line 702
    invoke-direct {p0}, Lcom/google/firebase/database/Query;->validateEqualToCall()V

    .line 703
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/database/Query;->startAt(D)Lcom/google/firebase/database/Query;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/database/Query;->endAt(D)Lcom/google/firebase/database/Query;

    move-result-object p1

    return-object p1
.end method

.method public equalTo(DLjava/lang/String;)Lcom/google/firebase/database/Query;
    .registers 5

    .line 743
    invoke-direct {p0}, Lcom/google/firebase/database/Query;->validateEqualToCall()V

    .line 744
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/firebase/database/Query;->startAt(DLjava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/firebase/database/Query;->endAt(DLjava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object p1

    return-object p1
.end method

.method public equalTo(Ljava/lang/String;)Lcom/google/firebase/database/Query;
    .registers 3

    .line 690
    invoke-direct {p0}, Lcom/google/firebase/database/Query;->validateEqualToCall()V

    .line 691
    invoke-virtual {p0, p1}, Lcom/google/firebase/database/Query;->startAt(Ljava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/Query;->endAt(Ljava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object p1

    return-object p1
.end method

.method public equalTo(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/Query;
    .registers 4

    .line 729
    invoke-direct {p0}, Lcom/google/firebase/database/Query;->validateEqualToCall()V

    .line 730
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/database/Query;->startAt(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/database/Query;->endAt(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object p1

    return-object p1
.end method

.method public equalTo(Z)Lcom/google/firebase/database/Query;
    .registers 3

    .line 715
    invoke-direct {p0}, Lcom/google/firebase/database/Query;->validateEqualToCall()V

    .line 716
    invoke-virtual {p0, p1}, Lcom/google/firebase/database/Query;->startAt(Z)Lcom/google/firebase/database/Query;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/Query;->endAt(Z)Lcom/google/firebase/database/Query;

    move-result-object p1

    return-object p1
.end method

.method public equalTo(ZLjava/lang/String;)Lcom/google/firebase/database/Query;
    .registers 4

    .line 757
    invoke-direct {p0}, Lcom/google/firebase/database/Query;->validateEqualToCall()V

    .line 758
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/database/Query;->startAt(ZLjava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/database/Query;->endAt(ZLjava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object p1

    return-object p1
.end method

.method public get()Lcom/google/android/gms/tasks/Task;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/database/DataSnapshot;",
            ">;"
        }
    .end annotation

    .line 173
    iget-object v0, p0, Lcom/google/firebase/database/Query;->repo:Lcom/google/firebase/database/core/Repo;

    invoke-virtual {v0, p0}, Lcom/google/firebase/database/core/Repo;->getValue(Lcom/google/firebase/database/Query;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public getPath()Lcom/google/firebase/database/core/Path;
    .registers 2

    .line 889
    iget-object v0, p0, Lcom/google/firebase/database/Query;->path:Lcom/google/firebase/database/core/Path;

    return-object v0
.end method

.method public getRef()Lcom/google/firebase/database/DatabaseReference;
    .registers 4

    .line 876
    new-instance v0, Lcom/google/firebase/database/DatabaseReference;

    iget-object v1, p0, Lcom/google/firebase/database/Query;->repo:Lcom/google/firebase/database/core/Repo;

    invoke-virtual {p0}, Lcom/google/firebase/database/Query;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/database/DatabaseReference;-><init>(Lcom/google/firebase/database/core/Repo;Lcom/google/firebase/database/core/Path;)V

    return-object v0
.end method

.method public getRepo()Lcom/google/firebase/database/core/Repo;
    .registers 2

    .line 900
    iget-object v0, p0, Lcom/google/firebase/database/Query;->repo:Lcom/google/firebase/database/core/Repo;

    return-object v0
.end method

.method public getSpec()Lcom/google/firebase/database/core/view/QuerySpec;
    .registers 4

    .line 911
    new-instance v0, Lcom/google/firebase/database/core/view/QuerySpec;

    iget-object v1, p0, Lcom/google/firebase/database/Query;->path:Lcom/google/firebase/database/core/Path;

    iget-object v2, p0, Lcom/google/firebase/database/Query;->params:Lcom/google/firebase/database/core/view/QueryParams;

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/database/core/view/QuerySpec;-><init>(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/view/QueryParams;)V

    return-object v0
.end method

.method public keepSynced(Z)V
    .registers 4

    .line 259
    iget-object v0, p0, Lcom/google/firebase/database/Query;->path:Lcom/google/firebase/database/core/Path;

    invoke-virtual {v0}, Lcom/google/firebase/database/core/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/google/firebase/database/Query;->path:Lcom/google/firebase/database/core/Path;

    invoke-virtual {v0}, Lcom/google/firebase/database/core/Path;->getFront()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v0

    invoke-static {}, Lcom/google/firebase/database/snapshot/ChildKey;->getInfoKey()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/snapshot/ChildKey;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    goto :goto_21

    .line 260
    :cond_19
    new-instance p1, Lcom/google/firebase/database/DatabaseException;

    const-string v0, "Can\'t call keepSynced() on .info paths."

    invoke-direct {p1, v0}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 263
    :cond_21
    :goto_21
    iget-object v0, p0, Lcom/google/firebase/database/Query;->repo:Lcom/google/firebase/database/core/Repo;

    new-instance v1, Lcom/google/firebase/database/Query$4;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/database/Query$4;-><init>(Lcom/google/firebase/database/Query;Z)V

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/core/Repo;->scheduleNow(Ljava/lang/Runnable;)V

    return-void
.end method

.method public limitToFirst(I)Lcom/google/firebase/database/Query;
    .registers 6

    if-lez p1, :cond_24

    .line 773
    iget-object v0, p0, Lcom/google/firebase/database/Query;->params:Lcom/google/firebase/database/core/view/QueryParams;

    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/QueryParams;->hasLimit()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 777
    new-instance v0, Lcom/google/firebase/database/Query;

    iget-object v1, p0, Lcom/google/firebase/database/Query;->repo:Lcom/google/firebase/database/core/Repo;

    iget-object v2, p0, Lcom/google/firebase/database/Query;->path:Lcom/google/firebase/database/core/Path;

    iget-object v3, p0, Lcom/google/firebase/database/Query;->params:Lcom/google/firebase/database/core/view/QueryParams;

    invoke-virtual {v3, p1}, Lcom/google/firebase/database/core/view/QueryParams;->limitToFirst(I)Lcom/google/firebase/database/core/view/QueryParams;

    move-result-object p1

    iget-boolean v3, p0, Lcom/google/firebase/database/Query;->orderByCalled:Z

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/google/firebase/database/Query;-><init>(Lcom/google/firebase/database/core/Repo;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/view/QueryParams;Z)V

    return-object v0

    .line 774
    :cond_1c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can\'t call limitToLast on query with previously set limit!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 771
    :cond_24
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Limit must be a positive integer!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public limitToLast(I)Lcom/google/firebase/database/Query;
    .registers 6

    if-lez p1, :cond_24

    .line 792
    iget-object v0, p0, Lcom/google/firebase/database/Query;->params:Lcom/google/firebase/database/core/view/QueryParams;

    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/QueryParams;->hasLimit()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 796
    new-instance v0, Lcom/google/firebase/database/Query;

    iget-object v1, p0, Lcom/google/firebase/database/Query;->repo:Lcom/google/firebase/database/core/Repo;

    iget-object v2, p0, Lcom/google/firebase/database/Query;->path:Lcom/google/firebase/database/core/Path;

    iget-object v3, p0, Lcom/google/firebase/database/Query;->params:Lcom/google/firebase/database/core/view/QueryParams;

    invoke-virtual {v3, p1}, Lcom/google/firebase/database/core/view/QueryParams;->limitToLast(I)Lcom/google/firebase/database/core/view/QueryParams;

    move-result-object p1

    iget-boolean v3, p0, Lcom/google/firebase/database/Query;->orderByCalled:Z

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/google/firebase/database/Query;-><init>(Lcom/google/firebase/database/core/Repo;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/view/QueryParams;Z)V

    return-object v0

    .line 793
    :cond_1c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can\'t call limitToLast on query with previously set limit!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 790
    :cond_24
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Limit must be a positive integer!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public orderByChild(Ljava/lang/String;)Lcom/google/firebase/database/Query;
    .registers 6

    if-eqz p1, :cond_b1

    const-string v0, "$key"

    .line 811
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Can\'t use \'"

    if-nez v0, :cond_97

    const-string v0, ".key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_97

    const-string v0, "$priority"

    .line 815
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7d

    const-string v0, ".priority"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7d

    const-string v0, "$value"

    .line 819
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_63

    const-string v0, ".value"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_63

    .line 823
    invoke-static {p1}, Lcom/google/firebase/database/core/utilities/Validation;->validatePathString(Ljava/lang/String;)V

    .line 824
    invoke-direct {p0}, Lcom/google/firebase/database/Query;->validateNoOrderByCall()V

    .line 825
    new-instance v0, Lcom/google/firebase/database/core/Path;

    invoke-direct {v0, p1}, Lcom/google/firebase/database/core/Path;-><init>(Ljava/lang/String;)V

    .line 826
    invoke-virtual {v0}, Lcom/google/firebase/database/core/Path;->size()I

    move-result p1

    if-eqz p1, :cond_5b

    .line 829
    new-instance p1, Lcom/google/firebase/database/snapshot/PathIndex;

    invoke-direct {p1, v0}, Lcom/google/firebase/database/snapshot/PathIndex;-><init>(Lcom/google/firebase/database/core/Path;)V

    .line 830
    new-instance v0, Lcom/google/firebase/database/Query;

    iget-object v1, p0, Lcom/google/firebase/database/Query;->repo:Lcom/google/firebase/database/core/Repo;

    iget-object v2, p0, Lcom/google/firebase/database/Query;->path:Lcom/google/firebase/database/core/Path;

    iget-object v3, p0, Lcom/google/firebase/database/Query;->params:Lcom/google/firebase/database/core/view/QueryParams;

    invoke-virtual {v3, p1}, Lcom/google/firebase/database/core/view/QueryParams;->orderBy(Lcom/google/firebase/database/snapshot/Index;)Lcom/google/firebase/database/core/view/QueryParams;

    move-result-object p1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/google/firebase/database/Query;-><init>(Lcom/google/firebase/database/core/Repo;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/view/QueryParams;Z)V

    return-object v0

    .line 827
    :cond_5b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can\'t use empty path, use orderByValue() instead!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 820
    :cond_63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' as path, please use orderByValue() instead!"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 816
    :cond_7d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' as path, please use orderByPriority() instead!"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 812
    :cond_97
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' as path, please use orderByKey() instead!"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 809
    :cond_b1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Key can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public orderByKey()Lcom/google/firebase/database/Query;
    .registers 6

    .line 855
    invoke-direct {p0}, Lcom/google/firebase/database/Query;->validateNoOrderByCall()V

    .line 856
    iget-object v0, p0, Lcom/google/firebase/database/Query;->params:Lcom/google/firebase/database/core/view/QueryParams;

    invoke-static {}, Lcom/google/firebase/database/snapshot/KeyIndex;->getInstance()Lcom/google/firebase/database/snapshot/KeyIndex;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/core/view/QueryParams;->orderBy(Lcom/google/firebase/database/snapshot/Index;)Lcom/google/firebase/database/core/view/QueryParams;

    move-result-object v0

    .line 857
    invoke-direct {p0, v0}, Lcom/google/firebase/database/Query;->validateQueryEndpoints(Lcom/google/firebase/database/core/view/QueryParams;)V

    .line 858
    new-instance v1, Lcom/google/firebase/database/Query;

    iget-object v2, p0, Lcom/google/firebase/database/Query;->repo:Lcom/google/firebase/database/core/Repo;

    iget-object v3, p0, Lcom/google/firebase/database/Query;->path:Lcom/google/firebase/database/core/Path;

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/google/firebase/database/Query;-><init>(Lcom/google/firebase/database/core/Repo;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/view/QueryParams;Z)V

    return-object v1
.end method

.method public orderByPriority()Lcom/google/firebase/database/Query;
    .registers 6

    .line 841
    invoke-direct {p0}, Lcom/google/firebase/database/Query;->validateNoOrderByCall()V

    .line 842
    iget-object v0, p0, Lcom/google/firebase/database/Query;->params:Lcom/google/firebase/database/core/view/QueryParams;

    invoke-static {}, Lcom/google/firebase/database/snapshot/PriorityIndex;->getInstance()Lcom/google/firebase/database/snapshot/PriorityIndex;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/core/view/QueryParams;->orderBy(Lcom/google/firebase/database/snapshot/Index;)Lcom/google/firebase/database/core/view/QueryParams;

    move-result-object v0

    .line 843
    invoke-direct {p0, v0}, Lcom/google/firebase/database/Query;->validateQueryEndpoints(Lcom/google/firebase/database/core/view/QueryParams;)V

    .line 844
    new-instance v1, Lcom/google/firebase/database/Query;

    iget-object v2, p0, Lcom/google/firebase/database/Query;->repo:Lcom/google/firebase/database/core/Repo;

    iget-object v3, p0, Lcom/google/firebase/database/Query;->path:Lcom/google/firebase/database/core/Path;

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/google/firebase/database/Query;-><init>(Lcom/google/firebase/database/core/Repo;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/view/QueryParams;Z)V

    return-object v1
.end method

.method public orderByValue()Lcom/google/firebase/database/Query;
    .registers 6

    .line 869
    invoke-direct {p0}, Lcom/google/firebase/database/Query;->validateNoOrderByCall()V

    .line 870
    new-instance v0, Lcom/google/firebase/database/Query;

    iget-object v1, p0, Lcom/google/firebase/database/Query;->repo:Lcom/google/firebase/database/core/Repo;

    iget-object v2, p0, Lcom/google/firebase/database/Query;->path:Lcom/google/firebase/database/core/Path;

    iget-object v3, p0, Lcom/google/firebase/database/Query;->params:Lcom/google/firebase/database/core/view/QueryParams;

    invoke-static {}, Lcom/google/firebase/database/snapshot/ValueIndex;->getInstance()Lcom/google/firebase/database/snapshot/ValueIndex;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/firebase/database/core/view/QueryParams;->orderBy(Lcom/google/firebase/database/snapshot/Index;)Lcom/google/firebase/database/core/view/QueryParams;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/firebase/database/Query;-><init>(Lcom/google/firebase/database/core/Repo;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/view/QueryParams;Z)V

    return-object v0
.end method

.method public removeEventListener(Lcom/google/firebase/database/ChildEventListener;)V
    .registers 5

    if-eqz p1, :cond_11

    .line 223
    new-instance v0, Lcom/google/firebase/database/core/ChildEventRegistration;

    iget-object v1, p0, Lcom/google/firebase/database/Query;->repo:Lcom/google/firebase/database/core/Repo;

    invoke-virtual {p0}, Lcom/google/firebase/database/Query;->getSpec()Lcom/google/firebase/database/core/view/QuerySpec;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lcom/google/firebase/database/core/ChildEventRegistration;-><init>(Lcom/google/firebase/database/core/Repo;Lcom/google/firebase/database/ChildEventListener;Lcom/google/firebase/database/core/view/QuerySpec;)V

    invoke-direct {p0, v0}, Lcom/google/firebase/database/Query;->removeEventRegistration(Lcom/google/firebase/database/core/EventRegistration;)V

    return-void

    .line 221
    :cond_11
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "listener must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeEventListener(Lcom/google/firebase/database/ValueEventListener;)V
    .registers 5

    if-eqz p1, :cond_11

    .line 211
    new-instance v0, Lcom/google/firebase/database/core/ValueEventRegistration;

    iget-object v1, p0, Lcom/google/firebase/database/Query;->repo:Lcom/google/firebase/database/core/Repo;

    invoke-virtual {p0}, Lcom/google/firebase/database/Query;->getSpec()Lcom/google/firebase/database/core/view/QuerySpec;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lcom/google/firebase/database/core/ValueEventRegistration;-><init>(Lcom/google/firebase/database/core/Repo;Lcom/google/firebase/database/ValueEventListener;Lcom/google/firebase/database/core/view/QuerySpec;)V

    invoke-direct {p0, v0}, Lcom/google/firebase/database/Query;->removeEventRegistration(Lcom/google/firebase/database/core/EventRegistration;)V

    return-void

    .line 209
    :cond_11
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "listener must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public startAfter(D)Lcom/google/firebase/database/Query;
    .registers 4

    .line 309
    invoke-static {}, Lcom/google/firebase/database/snapshot/ChildKey;->getMaxName()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/snapshot/ChildKey;->asString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/firebase/database/Query;->startAt(DLjava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object p1

    return-object p1
.end method

.method public startAfter(DLjava/lang/String;)Lcom/google/firebase/database/Query;
    .registers 5

    .line 357
    new-instance v0, Lcom/google/firebase/database/snapshot/DoubleNode;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {}, Lcom/google/firebase/database/snapshot/PriorityUtilities;->NullPriority()Lcom/google/firebase/database/snapshot/Node;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lcom/google/firebase/database/snapshot/DoubleNode;-><init>(Ljava/lang/Double;Lcom/google/firebase/database/snapshot/Node;)V

    invoke-direct {p0, v0, p3}, Lcom/google/firebase/database/Query;->startAfter(Lcom/google/firebase/database/snapshot/Node;Ljava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object p1

    return-object p1
.end method

.method public startAfter(Ljava/lang/String;)Lcom/google/firebase/database/Query;
    .registers 4

    if-eqz p1, :cond_1b

    .line 293
    iget-object v0, p0, Lcom/google/firebase/database/Query;->params:Lcom/google/firebase/database/core/view/QueryParams;

    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/QueryParams;->getIndex()Lcom/google/firebase/database/snapshot/Index;

    move-result-object v0

    invoke-static {}, Lcom/google/firebase/database/snapshot/KeyIndex;->getInstance()Lcom/google/firebase/database/snapshot/KeyIndex;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 294
    invoke-static {p1}, Lcom/google/firebase/database/core/utilities/PushIdGenerator;->successor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/firebase/database/Query;->startAt(Ljava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object p1

    return-object p1

    .line 296
    :cond_1b
    invoke-static {}, Lcom/google/firebase/database/snapshot/ChildKey;->getMaxName()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/snapshot/ChildKey;->asString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/database/Query;->startAt(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object p1

    return-object p1
.end method

.method public startAfter(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/Query;
    .registers 5

    if-eqz p1, :cond_16

    .line 337
    iget-object v0, p0, Lcom/google/firebase/database/Query;->params:Lcom/google/firebase/database/core/view/QueryParams;

    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/QueryParams;->getIndex()Lcom/google/firebase/database/snapshot/Index;

    move-result-object v0

    invoke-static {}, Lcom/google/firebase/database/snapshot/KeyIndex;->getInstance()Lcom/google/firebase/database/snapshot/KeyIndex;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 338
    invoke-static {p1}, Lcom/google/firebase/database/core/utilities/PushIdGenerator;->successor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_16
    if-eqz p1, :cond_22

    .line 341
    new-instance v0, Lcom/google/firebase/database/snapshot/StringNode;

    invoke-static {}, Lcom/google/firebase/database/snapshot/PriorityUtilities;->NullPriority()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/google/firebase/database/snapshot/StringNode;-><init>(Ljava/lang/String;Lcom/google/firebase/database/snapshot/Node;)V

    goto :goto_26

    :cond_22
    invoke-static {}, Lcom/google/firebase/database/snapshot/EmptyNode;->Empty()Lcom/google/firebase/database/snapshot/EmptyNode;

    move-result-object v0

    .line 342
    :goto_26
    invoke-direct {p0, v0, p2}, Lcom/google/firebase/database/Query;->startAfter(Lcom/google/firebase/database/snapshot/Node;Ljava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object p1

    return-object p1
.end method

.method public startAfter(Z)Lcom/google/firebase/database/Query;
    .registers 3

    .line 322
    invoke-static {}, Lcom/google/firebase/database/snapshot/ChildKey;->getMaxName()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/snapshot/ChildKey;->asString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/database/Query;->startAt(ZLjava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object p1

    return-object p1
.end method

.method public startAfter(ZLjava/lang/String;)Lcom/google/firebase/database/Query;
    .registers 5

    .line 372
    new-instance v0, Lcom/google/firebase/database/snapshot/BooleanNode;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {}, Lcom/google/firebase/database/snapshot/PriorityUtilities;->NullPriority()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/google/firebase/database/snapshot/BooleanNode;-><init>(Ljava/lang/Boolean;Lcom/google/firebase/database/snapshot/Node;)V

    invoke-direct {p0, v0, p2}, Lcom/google/firebase/database/Query;->startAfter(Lcom/google/firebase/database/snapshot/Node;Ljava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object p1

    return-object p1
.end method

.method public startAt(D)Lcom/google/firebase/database/Query;
    .registers 4

    const/4 v0, 0x0

    .line 400
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/firebase/database/Query;->startAt(DLjava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object p1

    return-object p1
.end method

.method public startAt(DLjava/lang/String;)Lcom/google/firebase/database/Query;
    .registers 5

    .line 443
    new-instance v0, Lcom/google/firebase/database/snapshot/DoubleNode;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {}, Lcom/google/firebase/database/snapshot/PriorityUtilities;->NullPriority()Lcom/google/firebase/database/snapshot/Node;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lcom/google/firebase/database/snapshot/DoubleNode;-><init>(Ljava/lang/Double;Lcom/google/firebase/database/snapshot/Node;)V

    invoke-direct {p0, v0, p3}, Lcom/google/firebase/database/Query;->startAt(Lcom/google/firebase/database/snapshot/Node;Ljava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object p1

    return-object p1
.end method

.method public startAt(Ljava/lang/String;)Lcom/google/firebase/database/Query;
    .registers 3

    const/4 v0, 0x0

    .line 388
    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/database/Query;->startAt(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object p1

    return-object p1
.end method

.method public startAt(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/Query;
    .registers 5

    if-eqz p1, :cond_c

    .line 428
    new-instance v0, Lcom/google/firebase/database/snapshot/StringNode;

    invoke-static {}, Lcom/google/firebase/database/snapshot/PriorityUtilities;->NullPriority()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/google/firebase/database/snapshot/StringNode;-><init>(Ljava/lang/String;Lcom/google/firebase/database/snapshot/Node;)V

    goto :goto_10

    :cond_c
    invoke-static {}, Lcom/google/firebase/database/snapshot/EmptyNode;->Empty()Lcom/google/firebase/database/snapshot/EmptyNode;

    move-result-object v0

    .line 429
    :goto_10
    invoke-direct {p0, v0, p2}, Lcom/google/firebase/database/Query;->startAt(Lcom/google/firebase/database/snapshot/Node;Ljava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object p1

    return-object p1
.end method

.method public startAt(Z)Lcom/google/firebase/database/Query;
    .registers 3

    const/4 v0, 0x0

    .line 413
    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/database/Query;->startAt(ZLjava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object p1

    return-object p1
.end method

.method public startAt(ZLjava/lang/String;)Lcom/google/firebase/database/Query;
    .registers 5

    .line 458
    new-instance v0, Lcom/google/firebase/database/snapshot/BooleanNode;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {}, Lcom/google/firebase/database/snapshot/PriorityUtilities;->NullPriority()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/google/firebase/database/snapshot/BooleanNode;-><init>(Ljava/lang/Boolean;Lcom/google/firebase/database/snapshot/Node;)V

    invoke-direct {p0, v0, p2}, Lcom/google/firebase/database/Query;->startAt(Lcom/google/firebase/database/snapshot/Node;Ljava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object p1

    return-object p1
.end method

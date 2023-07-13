.class public Lcom/google/firebase/database/core/WriteTree;
.super Ljava/lang/Object;
.source "WriteTree.java"


# static fields
.field private static final DEFAULT_FILTER:Lcom/google/firebase/database/core/utilities/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/database/core/utilities/Predicate<",
            "Lcom/google/firebase/database/core/UserWriteRecord;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private allWrites:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/database/core/UserWriteRecord;",
            ">;"
        }
    .end annotation
.end field

.field private lastWriteId:Ljava/lang/Long;

.field private visibleWrites:Lcom/google/firebase/database/core/CompoundWrite;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 412
    new-instance v0, Lcom/google/firebase/database/core/WriteTree$2;

    invoke-direct {v0}, Lcom/google/firebase/database/core/WriteTree$2;-><init>()V

    sput-object v0, Lcom/google/firebase/database/core/WriteTree;->DEFAULT_FILTER:Lcom/google/firebase/database/core/utilities/Predicate;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-static {}, Lcom/google/firebase/database/core/CompoundWrite;->emptyWrite()Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/database/core/WriteTree;->visibleWrites:Lcom/google/firebase/database/core/CompoundWrite;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/database/core/WriteTree;->allWrites:Ljava/util/List;

    const-wide/16 v0, -0x1

    .line 60
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/database/core/WriteTree;->lastWriteId:Ljava/lang/Long;

    return-void
.end method

.method private static layerTree(Ljava/util/List;Lcom/google/firebase/database/core/utilities/Predicate;Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/CompoundWrite;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/firebase/database/core/UserWriteRecord;",
            ">;",
            "Lcom/google/firebase/database/core/utilities/Predicate<",
            "Lcom/google/firebase/database/core/UserWriteRecord;",
            ">;",
            "Lcom/google/firebase/database/core/Path;",
            ")",
            "Lcom/google/firebase/database/core/CompoundWrite;"
        }
    .end annotation

    .line 426
    invoke-static {}, Lcom/google/firebase/database/core/CompoundWrite;->emptyWrite()Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object v0

    .line 427
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_8
    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_96

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/database/core/UserWriteRecord;

    .line 433
    invoke-interface {p1, v1}, Lcom/google/firebase/database/core/utilities/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 434
    invoke-virtual {v1}, Lcom/google/firebase/database/core/UserWriteRecord;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v2

    .line 435
    invoke-virtual {v1}, Lcom/google/firebase/database/core/UserWriteRecord;->isOverwrite()Z

    move-result v3

    if-eqz v3, :cond_52

    .line 436
    invoke-virtual {p2, v2}, Lcom/google/firebase/database/core/Path;->contains(Lcom/google/firebase/database/core/Path;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 437
    invoke-static {p2, v2}, Lcom/google/firebase/database/core/Path;->getRelative(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/Path;

    move-result-object v2

    .line 438
    invoke-virtual {v1}, Lcom/google/firebase/database/core/UserWriteRecord;->getOverwrite()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/database/core/CompoundWrite;->addWrite(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object v0

    goto :goto_8

    .line 439
    :cond_37
    invoke-virtual {v2, p2}, Lcom/google/firebase/database/core/Path;->contains(Lcom/google/firebase/database/core/Path;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 442
    invoke-static {}, Lcom/google/firebase/database/core/Path;->getEmptyPath()Lcom/google/firebase/database/core/Path;

    move-result-object v3

    .line 443
    invoke-virtual {v1}, Lcom/google/firebase/database/core/UserWriteRecord;->getOverwrite()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v1

    invoke-static {v2, p2}, Lcom/google/firebase/database/core/Path;->getRelative(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/Path;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/firebase/database/snapshot/Node;->getChild(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v1

    .line 441
    invoke-virtual {v0, v3, v1}, Lcom/google/firebase/database/core/CompoundWrite;->addWrite(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object v0

    goto :goto_8

    .line 448
    :cond_52
    invoke-virtual {p2, v2}, Lcom/google/firebase/database/core/Path;->contains(Lcom/google/firebase/database/core/Path;)Z

    move-result v3

    if-eqz v3, :cond_65

    .line 449
    invoke-static {p2, v2}, Lcom/google/firebase/database/core/Path;->getRelative(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/Path;

    move-result-object v2

    .line 450
    invoke-virtual {v1}, Lcom/google/firebase/database/core/UserWriteRecord;->getMerge()Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/database/core/CompoundWrite;->addWrites(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/CompoundWrite;)Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object v0

    goto :goto_8

    .line 451
    :cond_65
    invoke-virtual {v2, p2}, Lcom/google/firebase/database/core/Path;->contains(Lcom/google/firebase/database/core/Path;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 452
    invoke-static {v2, p2}, Lcom/google/firebase/database/core/Path;->getRelative(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/Path;

    move-result-object v2

    .line 453
    invoke-virtual {v2}, Lcom/google/firebase/database/core/Path;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_82

    .line 454
    invoke-static {}, Lcom/google/firebase/database/core/Path;->getEmptyPath()Lcom/google/firebase/database/core/Path;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/firebase/database/core/UserWriteRecord;->getMerge()Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/database/core/CompoundWrite;->addWrites(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/CompoundWrite;)Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object v0

    goto :goto_8

    .line 456
    :cond_82
    invoke-virtual {v1}, Lcom/google/firebase/database/core/UserWriteRecord;->getMerge()Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/google/firebase/database/core/CompoundWrite;->getCompleteNode(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 458
    invoke-static {}, Lcom/google/firebase/database/core/Path;->getEmptyPath()Lcom/google/firebase/database/core/Path;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/database/core/CompoundWrite;->addWrite(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object v0

    goto/16 :goto_8

    :cond_96
    return-object v0
.end method

.method private recordContainsPath(Lcom/google/firebase/database/core/UserWriteRecord;Lcom/google/firebase/database/core/Path;)Z
    .registers 6

    .line 388
    invoke-virtual {p1}, Lcom/google/firebase/database/core/UserWriteRecord;->isOverwrite()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 389
    invoke-virtual {p1}, Lcom/google/firebase/database/core/UserWriteRecord;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/firebase/database/core/Path;->contains(Lcom/google/firebase/database/core/Path;)Z

    move-result p1

    return p1

    .line 391
    :cond_f
    invoke-virtual {p1}, Lcom/google/firebase/database/core/UserWriteRecord;->getMerge()Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/core/CompoundWrite;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 392
    invoke-virtual {p1}, Lcom/google/firebase/database/core/UserWriteRecord;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/database/core/Path;

    invoke-virtual {v2, v1}, Lcom/google/firebase/database/core/Path;->child(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/Path;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/firebase/database/core/Path;->contains(Lcom/google/firebase/database/core/Path;)Z

    move-result v1

    if-eqz v1, :cond_17

    const/4 p1, 0x1

    return p1

    :cond_39
    const/4 p1, 0x0

    return p1
.end method

.method private resetTree()V
    .registers 4

    .line 402
    iget-object v0, p0, Lcom/google/firebase/database/core/WriteTree;->allWrites:Ljava/util/List;

    sget-object v1, Lcom/google/firebase/database/core/WriteTree;->DEFAULT_FILTER:Lcom/google/firebase/database/core/utilities/Predicate;

    .line 403
    invoke-static {}, Lcom/google/firebase/database/core/Path;->getEmptyPath()Lcom/google/firebase/database/core/Path;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/firebase/database/core/WriteTree;->layerTree(Ljava/util/List;Lcom/google/firebase/database/core/utilities/Predicate;Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/database/core/WriteTree;->visibleWrites:Lcom/google/firebase/database/core/CompoundWrite;

    .line 404
    iget-object v0, p0, Lcom/google/firebase/database/core/WriteTree;->allWrites:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2f

    .line 405
    iget-object v0, p0, Lcom/google/firebase/database/core/WriteTree;->allWrites:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/core/UserWriteRecord;

    invoke-virtual {v0}, Lcom/google/firebase/database/core/UserWriteRecord;->getWriteId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/database/core/WriteTree;->lastWriteId:Ljava/lang/Long;

    goto :goto_37

    :cond_2f
    const-wide/16 v0, -0x1

    .line 407
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/database/core/WriteTree;->lastWriteId:Ljava/lang/Long;

    :goto_37
    return-void
.end method


# virtual methods
.method public addMerge(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/CompoundWrite;Ljava/lang/Long;)V
    .registers 9

    .line 82
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/firebase/database/core/WriteTree;->lastWriteId:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    invoke-static {v0}, Lcom/google/firebase/database/core/utilities/Utilities;->hardAssert(Z)V

    .line 83
    iget-object v0, p0, Lcom/google/firebase/database/core/WriteTree;->allWrites:Ljava/util/List;

    new-instance v1, Lcom/google/firebase/database/core/UserWriteRecord;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v1, v2, v3, p1, p2}, Lcom/google/firebase/database/core/UserWriteRecord;-><init>(JLcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/CompoundWrite;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    iget-object v0, p0, Lcom/google/firebase/database/core/WriteTree;->visibleWrites:Lcom/google/firebase/database/core/CompoundWrite;

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/database/core/CompoundWrite;->addWrites(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/CompoundWrite;)Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/database/core/WriteTree;->visibleWrites:Lcom/google/firebase/database/core/CompoundWrite;

    .line 85
    iput-object p3, p0, Lcom/google/firebase/database/core/WriteTree;->lastWriteId:Ljava/lang/Long;

    return-void
.end method

.method public addOverwrite(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;Ljava/lang/Long;Z)V
    .registers 13

    .line 72
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/firebase/database/core/WriteTree;->lastWriteId:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    invoke-static {v0}, Lcom/google/firebase/database/core/utilities/Utilities;->hardAssert(Z)V

    .line 73
    iget-object v0, p0, Lcom/google/firebase/database/core/WriteTree;->allWrites:Ljava/util/List;

    new-instance v7, Lcom/google/firebase/database/core/UserWriteRecord;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-object v1, v7

    move-object v4, p1

    move-object v5, p2

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/firebase/database/core/UserWriteRecord;-><init>(JLcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;Z)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p4, :cond_30

    .line 75
    iget-object p4, p0, Lcom/google/firebase/database/core/WriteTree;->visibleWrites:Lcom/google/firebase/database/core/CompoundWrite;

    invoke-virtual {p4, p1, p2}, Lcom/google/firebase/database/core/CompoundWrite;->addWrite(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/database/core/WriteTree;->visibleWrites:Lcom/google/firebase/database/core/CompoundWrite;

    .line 77
    :cond_30
    iput-object p3, p0, Lcom/google/firebase/database/core/WriteTree;->lastWriteId:Ljava/lang/Long;

    return-void
.end method

.method public calcCompleteChild(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/core/view/CacheNode;)Lcom/google/firebase/database/snapshot/Node;
    .registers 5

    .line 337
    invoke-virtual {p1, p2}, Lcom/google/firebase/database/core/Path;->child(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/core/Path;

    move-result-object p1

    .line 338
    iget-object v0, p0, Lcom/google/firebase/database/core/WriteTree;->visibleWrites:Lcom/google/firebase/database/core/CompoundWrite;

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/core/CompoundWrite;->getCompleteNode(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    if-eqz v0, :cond_d

    return-object v0

    .line 342
    :cond_d
    invoke-virtual {p3, p2}, Lcom/google/firebase/database/core/view/CacheNode;->isCompleteForChild(Lcom/google/firebase/database/snapshot/ChildKey;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 343
    iget-object v0, p0, Lcom/google/firebase/database/core/WriteTree;->visibleWrites:Lcom/google/firebase/database/core/CompoundWrite;

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/core/CompoundWrite;->childCompoundWrite(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object p1

    .line 344
    invoke-virtual {p3}, Lcom/google/firebase/database/core/view/CacheNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object p3

    invoke-interface {p3, p2}, Lcom/google/firebase/database/snapshot/Node;->getImmediateChild(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/firebase/database/core/CompoundWrite;->apply(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object p1

    return-object p1

    :cond_26
    const/4 p1, 0x0

    return-object p1
.end method

.method public calcCompleteEventCache(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;
    .registers 4

    .line 187
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/firebase/database/core/WriteTree;->calcCompleteEventCache(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;Ljava/util/List;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object p1

    return-object p1
.end method

.method public calcCompleteEventCache(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;Ljava/util/List;)Lcom/google/firebase/database/snapshot/Node;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/Path;",
            "Lcom/google/firebase/database/snapshot/Node;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/google/firebase/database/snapshot/Node;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 192
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/firebase/database/core/WriteTree;->calcCompleteEventCache(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;Ljava/util/List;Z)Lcom/google/firebase/database/snapshot/Node;

    move-result-object p1

    return-object p1
.end method

.method public calcCompleteEventCache(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;Ljava/util/List;Z)Lcom/google/firebase/database/snapshot/Node;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/Path;",
            "Lcom/google/firebase/database/snapshot/Node;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)",
            "Lcom/google/firebase/database/snapshot/Node;"
        }
    .end annotation

    .line 200
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_38

    if-nez p4, :cond_38

    .line 201
    iget-object p3, p0, Lcom/google/firebase/database/core/WriteTree;->visibleWrites:Lcom/google/firebase/database/core/CompoundWrite;

    invoke-virtual {p3, p1}, Lcom/google/firebase/database/core/CompoundWrite;->getCompleteNode(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object p3

    if-eqz p3, :cond_12

    return-object p3

    .line 205
    :cond_12
    iget-object p3, p0, Lcom/google/firebase/database/core/WriteTree;->visibleWrites:Lcom/google/firebase/database/core/CompoundWrite;

    invoke-virtual {p3, p1}, Lcom/google/firebase/database/core/CompoundWrite;->childCompoundWrite(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object p1

    .line 206
    invoke-virtual {p1}, Lcom/google/firebase/database/core/CompoundWrite;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_1f

    return-object p2

    :cond_1f
    if-nez p2, :cond_2c

    .line 208
    invoke-static {}, Lcom/google/firebase/database/core/Path;->getEmptyPath()Lcom/google/firebase/database/core/Path;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/google/firebase/database/core/CompoundWrite;->hasCompleteWrite(Lcom/google/firebase/database/core/Path;)Z

    move-result p3

    if-nez p3, :cond_2c

    return-object v1

    :cond_2c
    if-eqz p2, :cond_2f

    goto :goto_33

    .line 217
    :cond_2f
    invoke-static {}, Lcom/google/firebase/database/snapshot/EmptyNode;->Empty()Lcom/google/firebase/database/snapshot/EmptyNode;

    move-result-object p2

    .line 219
    :goto_33
    invoke-virtual {p1, p2}, Lcom/google/firebase/database/core/CompoundWrite;->apply(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object p1

    return-object p1

    .line 223
    :cond_38
    iget-object v0, p0, Lcom/google/firebase/database/core/WriteTree;->visibleWrites:Lcom/google/firebase/database/core/CompoundWrite;

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/core/CompoundWrite;->childCompoundWrite(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object v0

    if-nez p4, :cond_47

    .line 224
    invoke-virtual {v0}, Lcom/google/firebase/database/core/CompoundWrite;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_47

    return-object p2

    :cond_47
    if-nez p4, :cond_56

    if-nez p2, :cond_56

    .line 230
    invoke-static {}, Lcom/google/firebase/database/core/Path;->getEmptyPath()Lcom/google/firebase/database/core/Path;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/firebase/database/core/CompoundWrite;->hasCompleteWrite(Lcom/google/firebase/database/core/Path;)Z

    move-result v0

    if-nez v0, :cond_56

    return-object v1

    .line 233
    :cond_56
    new-instance v0, Lcom/google/firebase/database/core/WriteTree$1;

    invoke-direct {v0, p0, p4, p3, p1}, Lcom/google/firebase/database/core/WriteTree$1;-><init>(Lcom/google/firebase/database/core/WriteTree;ZLjava/util/List;Lcom/google/firebase/database/core/Path;)V

    .line 243
    iget-object p3, p0, Lcom/google/firebase/database/core/WriteTree;->allWrites:Ljava/util/List;

    invoke-static {p3, v0, p1}, Lcom/google/firebase/database/core/WriteTree;->layerTree(Ljava/util/List;Lcom/google/firebase/database/core/utilities/Predicate;Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object p1

    if-eqz p2, :cond_64

    goto :goto_68

    .line 244
    :cond_64
    invoke-static {}, Lcom/google/firebase/database/snapshot/EmptyNode;->Empty()Lcom/google/firebase/database/snapshot/EmptyNode;

    move-result-object p2

    .line 245
    :goto_68
    invoke-virtual {p1, p2}, Lcom/google/firebase/database/core/CompoundWrite;->apply(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object p1

    return-object p1
.end method

.method public calcCompleteEventChildren(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;
    .registers 9

    .line 257
    invoke-static {}, Lcom/google/firebase/database/snapshot/EmptyNode;->Empty()Lcom/google/firebase/database/snapshot/EmptyNode;

    move-result-object v0

    .line 258
    iget-object v1, p0, Lcom/google/firebase/database/core/WriteTree;->visibleWrites:Lcom/google/firebase/database/core/CompoundWrite;

    invoke-virtual {v1, p1}, Lcom/google/firebase/database/core/CompoundWrite;->getCompleteNode(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v1

    if-eqz v1, :cond_30

    .line 260
    invoke-interface {v1}, Lcom/google/firebase/database/snapshot/Node;->isLeafNode()Z

    move-result p1

    if-nez p1, :cond_2f

    .line 262
    invoke-interface {v1}, Lcom/google/firebase/database/snapshot/Node;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_16
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/firebase/database/snapshot/NamedNode;

    .line 264
    invoke-virtual {p2}, Lcom/google/firebase/database/snapshot/NamedNode;->getName()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/firebase/database/snapshot/NamedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object p2

    invoke-interface {v0, v1, p2}, Lcom/google/firebase/database/snapshot/Node;->updateImmediateChild(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    goto :goto_16

    :cond_2f
    return-object v0

    .line 272
    :cond_30
    iget-object v1, p0, Lcom/google/firebase/database/core/WriteTree;->visibleWrites:Lcom/google/firebase/database/core/CompoundWrite;

    invoke-virtual {v1, p1}, Lcom/google/firebase/database/core/CompoundWrite;->childCompoundWrite(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object p1

    .line 273
    invoke-interface {p2}, Lcom/google/firebase/database/snapshot/Node;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/database/snapshot/NamedNode;

    .line 274
    new-instance v2, Lcom/google/firebase/database/core/Path;

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/google/firebase/database/snapshot/ChildKey;

    const/4 v4, 0x0

    invoke-virtual {v1}, Lcom/google/firebase/database/snapshot/NamedNode;->getName()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {v2, v3}, Lcom/google/firebase/database/core/Path;-><init>([Lcom/google/firebase/database/snapshot/ChildKey;)V

    invoke-virtual {p1, v2}, Lcom/google/firebase/database/core/CompoundWrite;->childCompoundWrite(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/firebase/database/snapshot/NamedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/firebase/database/core/CompoundWrite;->apply(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v2

    .line 275
    invoke-virtual {v1}, Lcom/google/firebase/database/snapshot/NamedNode;->getName()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Lcom/google/firebase/database/snapshot/Node;->updateImmediateChild(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    goto :goto_3a

    .line 278
    :cond_6a
    invoke-virtual {p1}, Lcom/google/firebase/database/core/CompoundWrite;->getCompleteChildren()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_72
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/firebase/database/snapshot/NamedNode;

    .line 279
    invoke-virtual {p2}, Lcom/google/firebase/database/snapshot/NamedNode;->getName()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/firebase/database/snapshot/NamedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object p2

    invoke-interface {v0, v1, p2}, Lcom/google/firebase/database/snapshot/Node;->updateImmediateChild(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    goto :goto_72

    :cond_8b
    return-object v0
.end method

.method public calcEventCacheAfterServerOverwrite(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;
    .registers 6

    if-nez p3, :cond_7

    if-eqz p4, :cond_5

    goto :goto_7

    :cond_5
    const/4 p3, 0x0

    goto :goto_8

    :cond_7
    :goto_7
    const/4 p3, 0x1

    :goto_8
    const-string v0, "Either existingEventSnap or existingServerSnap must exist"

    .line 305
    invoke-static {p3, v0}, Lcom/google/firebase/database/core/utilities/Utilities;->hardAssert(ZLjava/lang/String;)V

    .line 308
    invoke-virtual {p1, p2}, Lcom/google/firebase/database/core/Path;->child(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/Path;

    move-result-object p1

    .line 309
    iget-object p3, p0, Lcom/google/firebase/database/core/WriteTree;->visibleWrites:Lcom/google/firebase/database/core/CompoundWrite;

    invoke-virtual {p3, p1}, Lcom/google/firebase/database/core/CompoundWrite;->hasCompleteWrite(Lcom/google/firebase/database/core/Path;)Z

    move-result p3

    if-eqz p3, :cond_1b

    const/4 p1, 0x0

    return-object p1

    .line 315
    :cond_1b
    iget-object p3, p0, Lcom/google/firebase/database/core/WriteTree;->visibleWrites:Lcom/google/firebase/database/core/CompoundWrite;

    invoke-virtual {p3, p1}, Lcom/google/firebase/database/core/CompoundWrite;->childCompoundWrite(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object p1

    .line 316
    invoke-virtual {p1}, Lcom/google/firebase/database/core/CompoundWrite;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_2c

    .line 318
    invoke-interface {p4, p2}, Lcom/google/firebase/database/snapshot/Node;->getChild(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object p1

    return-object p1

    .line 327
    :cond_2c
    invoke-interface {p4, p2}, Lcom/google/firebase/database/snapshot/Node;->getChild(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/firebase/database/core/CompoundWrite;->apply(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object p1

    return-object p1
.end method

.method public calcNextNodeAfterPost(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/NamedNode;ZLcom/google/firebase/database/snapshot/Index;)Lcom/google/firebase/database/snapshot/NamedNode;
    .registers 8

    .line 367
    iget-object v0, p0, Lcom/google/firebase/database/core/WriteTree;->visibleWrites:Lcom/google/firebase/database/core/CompoundWrite;

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/core/CompoundWrite;->childCompoundWrite(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object p1

    .line 368
    invoke-static {}, Lcom/google/firebase/database/core/Path;->getEmptyPath()Lcom/google/firebase/database/core/Path;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/firebase/database/core/CompoundWrite;->getCompleteNode(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    goto :goto_18

    :cond_12
    if-eqz p2, :cond_38

    .line 372
    invoke-virtual {p1, p2}, Lcom/google/firebase/database/core/CompoundWrite;->apply(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    .line 378
    :goto_18
    invoke-interface {v0}, Lcom/google/firebase/database/snapshot/Node;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1c
    :goto_1c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_38

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/firebase/database/snapshot/NamedNode;

    .line 379
    invoke-virtual {p5, p2, p3, p4}, Lcom/google/firebase/database/snapshot/Index;->compare(Lcom/google/firebase/database/snapshot/NamedNode;Lcom/google/firebase/database/snapshot/NamedNode;Z)I

    move-result v0

    if-lez v0, :cond_1c

    if-eqz v1, :cond_36

    .line 380
    invoke-virtual {p5, p2, v1, p4}, Lcom/google/firebase/database/snapshot/Index;->compare(Lcom/google/firebase/database/snapshot/NamedNode;Lcom/google/firebase/database/snapshot/NamedNode;Z)I

    move-result v0

    if-gez v0, :cond_1c

    :cond_36
    move-object v1, p2

    goto :goto_1c

    :cond_38
    return-object v1
.end method

.method public childWrites(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/WriteTreeRef;
    .registers 3

    .line 67
    new-instance v0, Lcom/google/firebase/database/core/WriteTreeRef;

    invoke-direct {v0, p1, p0}, Lcom/google/firebase/database/core/WriteTreeRef;-><init>(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/WriteTree;)V

    return-object v0
.end method

.method public getCompleteWriteData(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;
    .registers 3

    .line 179
    iget-object v0, p0, Lcom/google/firebase/database/core/WriteTree;->visibleWrites:Lcom/google/firebase/database/core/CompoundWrite;

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/core/CompoundWrite;->getCompleteNode(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object p1

    return-object p1
.end method

.method public getWrite(J)Lcom/google/firebase/database/core/UserWriteRecord;
    .registers 8

    .line 89
    iget-object v0, p0, Lcom/google/firebase/database/core/WriteTree;->allWrites:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/database/core/UserWriteRecord;

    .line 90
    invoke-virtual {v1}, Lcom/google/firebase/database/core/UserWriteRecord;->getWriteId()J

    move-result-wide v2

    cmp-long v4, v2, p1

    if-nez v4, :cond_6

    return-object v1

    :cond_1b
    const/4 p1, 0x0

    return-object p1
.end method

.method public purgeAllWrites()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/database/core/UserWriteRecord;",
            ">;"
        }
    .end annotation

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/firebase/database/core/WriteTree;->allWrites:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 100
    invoke-static {}, Lcom/google/firebase/database/core/CompoundWrite;->emptyWrite()Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firebase/database/core/WriteTree;->visibleWrites:Lcom/google/firebase/database/core/CompoundWrite;

    .line 101
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/firebase/database/core/WriteTree;->allWrites:Ljava/util/List;

    return-object v0
.end method

.method public removeWrite(J)Z
    .registers 10

    .line 124
    iget-object v0, p0, Lcom/google/firebase/database/core/WriteTree;->allWrites:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/database/core/UserWriteRecord;

    .line 125
    invoke-virtual {v3}, Lcom/google/firebase/database/core/UserWriteRecord;->getWriteId()J

    move-result-wide v4

    cmp-long v6, v4, p1

    if-nez v6, :cond_1d

    goto :goto_21

    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_20
    const/4 v3, 0x0

    :goto_21
    const/4 p1, 0x1

    if-eqz v3, :cond_26

    const/4 p2, 0x1

    goto :goto_27

    :cond_26
    const/4 p2, 0x0

    :goto_27
    const-string v0, "removeWrite called with nonexistent writeId"

    .line 131
    invoke-static {p2, v0}, Lcom/google/firebase/database/core/utilities/Utilities;->hardAssert(ZLjava/lang/String;)V

    .line 133
    iget-object p2, p0, Lcom/google/firebase/database/core/WriteTree;->allWrites:Ljava/util/List;

    invoke-interface {p2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 135
    invoke-virtual {v3}, Lcom/google/firebase/database/core/UserWriteRecord;->isVisible()Z

    move-result p2

    .line 137
    iget-object v0, p0, Lcom/google/firebase/database/core/WriteTree;->allWrites:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, p1

    const/4 v4, 0x0

    :goto_3d
    if-eqz p2, :cond_6f

    if-ltz v0, :cond_6f

    .line 140
    iget-object v5, p0, Lcom/google/firebase/database/core/WriteTree;->allWrites:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/firebase/database/core/UserWriteRecord;

    .line 141
    invoke-virtual {v5}, Lcom/google/firebase/database/core/UserWriteRecord;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_6c

    if-lt v0, v2, :cond_5d

    .line 142
    invoke-virtual {v3}, Lcom/google/firebase/database/core/UserWriteRecord;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/google/firebase/database/core/WriteTree;->recordContainsPath(Lcom/google/firebase/database/core/UserWriteRecord;Lcom/google/firebase/database/core/Path;)Z

    move-result v6

    if-eqz v6, :cond_5d

    const/4 p2, 0x0

    goto :goto_6c

    .line 145
    :cond_5d
    invoke-virtual {v3}, Lcom/google/firebase/database/core/UserWriteRecord;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v6

    invoke-virtual {v5}, Lcom/google/firebase/database/core/UserWriteRecord;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/google/firebase/database/core/Path;->contains(Lcom/google/firebase/database/core/Path;)Z

    move-result v5

    if-eqz v5, :cond_6c

    const/4 v4, 0x1

    :cond_6c
    :goto_6c
    add-int/lit8 v0, v0, -0x1

    goto :goto_3d

    :cond_6f
    if-nez p2, :cond_72

    return v1

    :cond_72
    if-eqz v4, :cond_78

    .line 158
    invoke-direct {p0}, Lcom/google/firebase/database/core/WriteTree;->resetTree()V

    return p1

    .line 162
    :cond_78
    invoke-virtual {v3}, Lcom/google/firebase/database/core/UserWriteRecord;->isOverwrite()Z

    move-result p2

    if-eqz p2, :cond_8b

    .line 163
    iget-object p2, p0, Lcom/google/firebase/database/core/WriteTree;->visibleWrites:Lcom/google/firebase/database/core/CompoundWrite;

    invoke-virtual {v3}, Lcom/google/firebase/database/core/UserWriteRecord;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/firebase/database/core/CompoundWrite;->removeWrite(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object p2

    iput-object p2, p0, Lcom/google/firebase/database/core/WriteTree;->visibleWrites:Lcom/google/firebase/database/core/CompoundWrite;

    goto :goto_b6

    .line 165
    :cond_8b
    invoke-virtual {v3}, Lcom/google/firebase/database/core/UserWriteRecord;->getMerge()Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/firebase/database/core/CompoundWrite;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_93
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 166
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/core/Path;

    .line 167
    iget-object v1, p0, Lcom/google/firebase/database/core/WriteTree;->visibleWrites:Lcom/google/firebase/database/core/CompoundWrite;

    invoke-virtual {v3}, Lcom/google/firebase/database/core/UserWriteRecord;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/firebase/database/core/Path;->child(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/Path;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/firebase/database/core/CompoundWrite;->removeWrite(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/database/core/WriteTree;->visibleWrites:Lcom/google/firebase/database/core/CompoundWrite;

    goto :goto_93

    :cond_b6
    :goto_b6
    return p1
.end method

.method public shadowingWrite(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;
    .registers 3

    .line 357
    iget-object v0, p0, Lcom/google/firebase/database/core/WriteTree;->visibleWrites:Lcom/google/firebase/database/core/CompoundWrite;

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/core/CompoundWrite;->getCompleteNode(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object p1

    return-object p1
.end method

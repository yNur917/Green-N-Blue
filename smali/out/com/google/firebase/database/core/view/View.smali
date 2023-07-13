.class public Lcom/google/firebase/database/core/view/View;
.super Ljava/lang/Object;
.source "View.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/database/core/view/View$OperationResult;
    }
.end annotation


# instance fields
.field private final eventGenerator:Lcom/google/firebase/database/core/view/EventGenerator;

.field private final eventRegistrations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/database/core/EventRegistration;",
            ">;"
        }
    .end annotation
.end field

.field private final processor:Lcom/google/firebase/database/core/view/ViewProcessor;

.field private final query:Lcom/google/firebase/database/core/view/QuerySpec;

.field private viewCache:Lcom/google/firebase/database/core/view/ViewCache;


# direct methods
.method public constructor <init>(Lcom/google/firebase/database/core/view/QuerySpec;Lcom/google/firebase/database/core/view/ViewCache;)V
    .registers 10

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/google/firebase/database/core/view/View;->query:Lcom/google/firebase/database/core/view/QuerySpec;

    .line 47
    new-instance v0, Lcom/google/firebase/database/core/view/filter/IndexedFilter;

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/QuerySpec;->getIndex()Lcom/google/firebase/database/snapshot/Index;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/firebase/database/core/view/filter/IndexedFilter;-><init>(Lcom/google/firebase/database/snapshot/Index;)V

    .line 48
    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/QuerySpec;->getParams()Lcom/google/firebase/database/core/view/QueryParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/database/core/view/QueryParams;->getNodeFilter()Lcom/google/firebase/database/core/view/filter/NodeFilter;

    move-result-object v1

    .line 49
    new-instance v2, Lcom/google/firebase/database/core/view/ViewProcessor;

    invoke-direct {v2, v1}, Lcom/google/firebase/database/core/view/ViewProcessor;-><init>(Lcom/google/firebase/database/core/view/filter/NodeFilter;)V

    iput-object v2, p0, Lcom/google/firebase/database/core/view/View;->processor:Lcom/google/firebase/database/core/view/ViewProcessor;

    .line 50
    invoke-virtual {p2}, Lcom/google/firebase/database/core/view/ViewCache;->getServerCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v2

    .line 51
    invoke-virtual {p2}, Lcom/google/firebase/database/core/view/ViewCache;->getEventCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object p2

    .line 54
    invoke-static {}, Lcom/google/firebase/database/snapshot/EmptyNode;->Empty()Lcom/google/firebase/database/snapshot/EmptyNode;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/QuerySpec;->getIndex()Lcom/google/firebase/database/snapshot/Index;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/firebase/database/snapshot/IndexedNode;->from(Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/Index;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v3

    .line 56
    invoke-virtual {v2}, Lcom/google/firebase/database/core/view/CacheNode;->getIndexedNode()Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5}, Lcom/google/firebase/database/core/view/filter/IndexedFilter;->updateFullNode(Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v4

    .line 58
    invoke-virtual {p2}, Lcom/google/firebase/database/core/view/CacheNode;->getIndexedNode()Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v6

    invoke-interface {v1, v3, v6, v5}, Lcom/google/firebase/database/core/view/filter/NodeFilter;->updateFullNode(Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v3

    .line 59
    new-instance v5, Lcom/google/firebase/database/core/view/CacheNode;

    .line 61
    invoke-virtual {v2}, Lcom/google/firebase/database/core/view/CacheNode;->isFullyInitialized()Z

    move-result v2

    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/filter/IndexedFilter;->filtersNodes()Z

    move-result v0

    invoke-direct {v5, v4, v2, v0}, Lcom/google/firebase/database/core/view/CacheNode;-><init>(Lcom/google/firebase/database/snapshot/IndexedNode;ZZ)V

    .line 62
    new-instance v0, Lcom/google/firebase/database/core/view/CacheNode;

    .line 63
    invoke-virtual {p2}, Lcom/google/firebase/database/core/view/CacheNode;->isFullyInitialized()Z

    move-result p2

    invoke-interface {v1}, Lcom/google/firebase/database/core/view/filter/NodeFilter;->filtersNodes()Z

    move-result v1

    invoke-direct {v0, v3, p2, v1}, Lcom/google/firebase/database/core/view/CacheNode;-><init>(Lcom/google/firebase/database/snapshot/IndexedNode;ZZ)V

    .line 65
    new-instance p2, Lcom/google/firebase/database/core/view/ViewCache;

    invoke-direct {p2, v0, v5}, Lcom/google/firebase/database/core/view/ViewCache;-><init>(Lcom/google/firebase/database/core/view/CacheNode;Lcom/google/firebase/database/core/view/CacheNode;)V

    iput-object p2, p0, Lcom/google/firebase/database/core/view/View;->viewCache:Lcom/google/firebase/database/core/view/ViewCache;

    .line 67
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/google/firebase/database/core/view/View;->eventRegistrations:Ljava/util/List;

    .line 69
    new-instance p2, Lcom/google/firebase/database/core/view/EventGenerator;

    invoke-direct {p2, p1}, Lcom/google/firebase/database/core/view/EventGenerator;-><init>(Lcom/google/firebase/database/core/view/QuerySpec;)V

    iput-object p2, p0, Lcom/google/firebase/database/core/view/View;->eventGenerator:Lcom/google/firebase/database/core/view/EventGenerator;

    return-void
.end method

.method private generateEventsForChanges(Ljava/util/List;Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/core/EventRegistration;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/firebase/database/core/view/Change;",
            ">;",
            "Lcom/google/firebase/database/snapshot/IndexedNode;",
            "Lcom/google/firebase/database/core/EventRegistration;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/firebase/database/core/view/DataEvent;",
            ">;"
        }
    .end annotation

    if-nez p3, :cond_5

    .line 203
    iget-object p3, p0, Lcom/google/firebase/database/core/view/View;->eventRegistrations:Ljava/util/List;

    goto :goto_f

    :cond_5
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/firebase/database/core/EventRegistration;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    .line 205
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    .line 207
    :goto_f
    iget-object v0, p0, Lcom/google/firebase/database/core/view/View;->eventGenerator:Lcom/google/firebase/database/core/view/EventGenerator;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/firebase/database/core/view/EventGenerator;->generateEventsForChanges(Ljava/util/List;Lcom/google/firebase/database/snapshot/IndexedNode;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public addEventRegistration(Lcom/google/firebase/database/core/EventRegistration;)V
    .registers 3

    .line 117
    iget-object v0, p0, Lcom/google/firebase/database/core/view/View;->eventRegistrations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public applyOperation(Lcom/google/firebase/database/core/operation/Operation;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/core/view/View$OperationResult;
    .registers 8

    .line 162
    invoke-virtual {p1}, Lcom/google/firebase/database/core/operation/Operation;->getType()Lcom/google/firebase/database/core/operation/Operation$OperationType;

    move-result-object v0

    sget-object v1, Lcom/google/firebase/database/core/operation/Operation$OperationType;->Merge:Lcom/google/firebase/database/core/operation/Operation$OperationType;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_34

    .line 163
    invoke-virtual {p1}, Lcom/google/firebase/database/core/operation/Operation;->getSource()Lcom/google/firebase/database/core/operation/OperationSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/core/operation/OperationSource;->getQueryParams()Lcom/google/firebase/database/core/view/QueryParams;

    move-result-object v0

    if-eqz v0, :cond_34

    .line 164
    iget-object v0, p0, Lcom/google/firebase/database/core/view/View;->viewCache:Lcom/google/firebase/database/core/view/ViewCache;

    .line 165
    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/ViewCache;->getCompleteServerSnap()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    const-string v1, "We should always have a full cache before handling merges"

    .line 164
    invoke-static {v0, v1}, Lcom/google/firebase/database/core/utilities/Utilities;->hardAssert(ZLjava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/google/firebase/database/core/view/View;->viewCache:Lcom/google/firebase/database/core/view/ViewCache;

    .line 168
    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/ViewCache;->getCompleteEventSnap()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    if-eqz v0, :cond_2e

    const/4 v0, 0x1

    goto :goto_2f

    :cond_2e
    const/4 v0, 0x0

    :goto_2f
    const-string v1, "Missing event cache, even though we have a server cache"

    .line 167
    invoke-static {v0, v1}, Lcom/google/firebase/database/core/utilities/Utilities;->hardAssert(ZLjava/lang/String;)V

    .line 171
    :cond_34
    iget-object v0, p0, Lcom/google/firebase/database/core/view/View;->viewCache:Lcom/google/firebase/database/core/view/ViewCache;

    .line 172
    iget-object v1, p0, Lcom/google/firebase/database/core/view/View;->processor:Lcom/google/firebase/database/core/view/ViewProcessor;

    .line 173
    invoke-virtual {v1, v0, p1, p2, p3}, Lcom/google/firebase/database/core/view/ViewProcessor;->applyOperation(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/core/operation/Operation;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/core/view/ViewProcessor$ProcessorResult;

    move-result-object p1

    .line 175
    iget-object p2, p1, Lcom/google/firebase/database/core/view/ViewProcessor$ProcessorResult;->viewCache:Lcom/google/firebase/database/core/view/ViewCache;

    .line 176
    invoke-virtual {p2}, Lcom/google/firebase/database/core/view/ViewCache;->getServerCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/firebase/database/core/view/CacheNode;->isFullyInitialized()Z

    move-result p2

    if-nez p2, :cond_52

    .line 177
    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/ViewCache;->getServerCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/firebase/database/core/view/CacheNode;->isFullyInitialized()Z

    move-result p2

    if-nez p2, :cond_53

    :cond_52
    const/4 v2, 0x1

    :cond_53
    const-string p2, "Once a server snap is complete, it should never go back"

    .line 175
    invoke-static {v2, p2}, Lcom/google/firebase/database/core/utilities/Utilities;->hardAssert(ZLjava/lang/String;)V

    .line 180
    iget-object p2, p1, Lcom/google/firebase/database/core/view/ViewProcessor$ProcessorResult;->viewCache:Lcom/google/firebase/database/core/view/ViewCache;

    iput-object p2, p0, Lcom/google/firebase/database/core/view/View;->viewCache:Lcom/google/firebase/database/core/view/ViewCache;

    .line 181
    iget-object p2, p1, Lcom/google/firebase/database/core/view/ViewProcessor$ProcessorResult;->changes:Ljava/util/List;

    iget-object p3, p1, Lcom/google/firebase/database/core/view/ViewProcessor$ProcessorResult;->viewCache:Lcom/google/firebase/database/core/view/ViewCache;

    .line 183
    invoke-virtual {p3}, Lcom/google/firebase/database/core/view/ViewCache;->getEventCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/firebase/database/core/view/CacheNode;->getIndexedNode()Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object p3

    const/4 v0, 0x0

    .line 182
    invoke-direct {p0, p2, p3, v0}, Lcom/google/firebase/database/core/view/View;->generateEventsForChanges(Ljava/util/List;Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/core/EventRegistration;)Ljava/util/List;

    move-result-object p2

    .line 184
    new-instance p3, Lcom/google/firebase/database/core/view/View$OperationResult;

    iget-object p1, p1, Lcom/google/firebase/database/core/view/ViewProcessor$ProcessorResult;->changes:Ljava/util/List;

    invoke-direct {p3, p2, p1}, Lcom/google/firebase/database/core/view/View$OperationResult;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object p3
.end method

.method public getCompleteNode()Lcom/google/firebase/database/snapshot/Node;
    .registers 2

    .line 88
    iget-object v0, p0, Lcom/google/firebase/database/core/view/View;->viewCache:Lcom/google/firebase/database/core/view/ViewCache;

    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/ViewCache;->getCompleteEventSnap()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    return-object v0
.end method

.method public getCompleteServerCache(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;
    .registers 4

    .line 100
    iget-object v0, p0, Lcom/google/firebase/database/core/view/View;->viewCache:Lcom/google/firebase/database/core/view/ViewCache;

    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/ViewCache;->getCompleteServerSnap()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 104
    iget-object v1, p0, Lcom/google/firebase/database/core/view/View;->query:Lcom/google/firebase/database/core/view/QuerySpec;

    invoke-virtual {v1}, Lcom/google/firebase/database/core/view/QuerySpec;->loadsAllData()Z

    move-result v1

    if-nez v1, :cond_24

    .line 105
    invoke-virtual {p1}, Lcom/google/firebase/database/core/Path;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_29

    invoke-virtual {p1}, Lcom/google/firebase/database/core/Path;->getFront()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/firebase/database/snapshot/Node;->getImmediateChild(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/firebase/database/snapshot/Node;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_29

    .line 106
    :cond_24
    invoke-interface {v0, p1}, Lcom/google/firebase/database/snapshot/Node;->getChild(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object p1

    return-object p1

    :cond_29
    const/4 p1, 0x0

    return-object p1
.end method

.method public getEventCache()Lcom/google/firebase/database/snapshot/Node;
    .registers 2

    .line 96
    iget-object v0, p0, Lcom/google/firebase/database/core/view/View;->viewCache:Lcom/google/firebase/database/core/view/ViewCache;

    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/ViewCache;->getEventCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/CacheNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    return-object v0
.end method

.method getEventRegistrations()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/database/core/EventRegistration;",
            ">;"
        }
    .end annotation

    .line 212
    iget-object v0, p0, Lcom/google/firebase/database/core/view/View;->eventRegistrations:Ljava/util/List;

    return-object v0
.end method

.method public getInitialEvents(Lcom/google/firebase/database/core/EventRegistration;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/EventRegistration;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/firebase/database/core/view/DataEvent;",
            ">;"
        }
    .end annotation

    .line 188
    iget-object v0, p0, Lcom/google/firebase/database/core/view/View;->viewCache:Lcom/google/firebase/database/core/view/ViewCache;

    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/ViewCache;->getEventCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v0

    .line 189
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 190
    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/CacheNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/firebase/database/snapshot/Node;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/database/snapshot/NamedNode;

    .line 191
    invoke-virtual {v3}, Lcom/google/firebase/database/snapshot/NamedNode;->getName()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v4

    invoke-virtual {v3}, Lcom/google/firebase/database/snapshot/NamedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/google/firebase/database/core/view/Change;->childAddedChange(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/core/view/Change;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 193
    :cond_2f
    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/CacheNode;->isFullyInitialized()Z

    move-result v2

    if-eqz v2, :cond_40

    .line 194
    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/CacheNode;->getIndexedNode()Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v2

    invoke-static {v2}, Lcom/google/firebase/database/core/view/Change;->valueChange(Lcom/google/firebase/database/snapshot/IndexedNode;)Lcom/google/firebase/database/core/view/Change;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    :cond_40
    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/CacheNode;->getIndexedNode()Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v0

    invoke-direct {p0, v1, v0, p1}, Lcom/google/firebase/database/core/view/View;->generateEventsForChanges(Ljava/util/List;Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/core/EventRegistration;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getQuery()Lcom/google/firebase/database/core/view/QuerySpec;
    .registers 2

    .line 84
    iget-object v0, p0, Lcom/google/firebase/database/core/view/View;->query:Lcom/google/firebase/database/core/view/QuerySpec;

    return-object v0
.end method

.method public getServerCache()Lcom/google/firebase/database/snapshot/Node;
    .registers 2

    .line 92
    iget-object v0, p0, Lcom/google/firebase/database/core/view/View;->viewCache:Lcom/google/firebase/database/core/view/ViewCache;

    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/ViewCache;->getServerCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/CacheNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 113
    iget-object v0, p0, Lcom/google/firebase/database/core/view/View;->eventRegistrations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public removeEventRegistration(Lcom/google/firebase/database/core/EventRegistration;Lcom/google/firebase/database/DatabaseError;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/EventRegistration;",
            "Lcom/google/firebase/database/DatabaseError;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/firebase/database/core/view/Event;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_33

    .line 124
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_c

    const/4 v2, 0x1

    goto :goto_d

    :cond_c
    const/4 v2, 0x0

    :goto_d
    const-string v3, "A cancel should cancel all event registrations"

    .line 125
    invoke-static {v2, v3}, Lcom/google/firebase/database/core/utilities/Utilities;->hardAssert(ZLjava/lang/String;)V

    .line 126
    iget-object v2, p0, Lcom/google/firebase/database/core/view/View;->query:Lcom/google/firebase/database/core/view/QuerySpec;

    invoke-virtual {v2}, Lcom/google/firebase/database/core/view/QuerySpec;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v2

    .line 127
    iget-object v3, p0, Lcom/google/firebase/database/core/view/View;->eventRegistrations:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_37

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/firebase/database/core/EventRegistration;

    .line 128
    new-instance v5, Lcom/google/firebase/database/core/view/CancelEvent;

    invoke-direct {v5, v4, p2, v2}, Lcom/google/firebase/database/core/view/CancelEvent;-><init>(Lcom/google/firebase/database/core/EventRegistration;Lcom/google/firebase/database/DatabaseError;Lcom/google/firebase/database/core/Path;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    .line 131
    :cond_33
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    :cond_37
    if-eqz p1, :cond_70

    const/4 p2, -0x1

    const/4 v2, -0x1

    .line 137
    :goto_3b
    iget-object v3, p0, Lcom/google/firebase/database/core/view/View;->eventRegistrations:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_5c

    .line 138
    iget-object v3, p0, Lcom/google/firebase/database/core/view/View;->eventRegistrations:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/database/core/EventRegistration;

    .line 139
    invoke-virtual {v3, p1}, Lcom/google/firebase/database/core/EventRegistration;->isSameListener(Lcom/google/firebase/database/core/EventRegistration;)Z

    move-result v4

    if-eqz v4, :cond_59

    .line 141
    invoke-virtual {v3}, Lcom/google/firebase/database/core/EventRegistration;->isZombied()Z

    move-result v2

    if-eqz v2, :cond_58

    goto :goto_5d

    :cond_58
    move v2, v0

    :cond_59
    add-int/lit8 v0, v0, 0x1

    goto :goto_3b

    :cond_5c
    move v0, v2

    :goto_5d
    if-eq v0, p2, :cond_8b

    .line 147
    iget-object p1, p0, Lcom/google/firebase/database/core/view/View;->eventRegistrations:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/database/core/EventRegistration;

    .line 148
    iget-object p2, p0, Lcom/google/firebase/database/core/view/View;->eventRegistrations:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 149
    invoke-virtual {p1}, Lcom/google/firebase/database/core/EventRegistration;->zombify()V

    goto :goto_8b

    .line 152
    :cond_70
    iget-object p1, p0, Lcom/google/firebase/database/core/view/View;->eventRegistrations:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_76
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_86

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/firebase/database/core/EventRegistration;

    .line 153
    invoke-virtual {p2}, Lcom/google/firebase/database/core/EventRegistration;->zombify()V

    goto :goto_76

    .line 155
    :cond_86
    iget-object p1, p0, Lcom/google/firebase/database/core/view/View;->eventRegistrations:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_8b
    :goto_8b
    return-object v1
.end method

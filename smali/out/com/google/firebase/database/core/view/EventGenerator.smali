.class public Lcom/google/firebase/database/core/view/EventGenerator;
.super Ljava/lang/Object;
.source "EventGenerator.java"


# instance fields
.field private final index:Lcom/google/firebase/database/snapshot/Index;

.field private final query:Lcom/google/firebase/database/core/view/QuerySpec;


# direct methods
.method public constructor <init>(Lcom/google/firebase/database/core/view/QuerySpec;)V
    .registers 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/google/firebase/database/core/view/EventGenerator;->query:Lcom/google/firebase/database/core/view/QuerySpec;

    .line 36
    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/QuerySpec;->getIndex()Lcom/google/firebase/database/snapshot/Index;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/database/core/view/EventGenerator;->index:Lcom/google/firebase/database/snapshot/Index;

    return-void
.end method

.method static synthetic access$000(Lcom/google/firebase/database/core/view/EventGenerator;)Lcom/google/firebase/database/snapshot/Index;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/google/firebase/database/core/view/EventGenerator;->index:Lcom/google/firebase/database/snapshot/Index;

    return-object p0
.end method

.method private changeComparator()Ljava/util/Comparator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Lcom/google/firebase/database/core/view/Change;",
            ">;"
        }
    .end annotation

    .line 103
    new-instance v0, Lcom/google/firebase/database/core/view/EventGenerator$1;

    invoke-direct {v0, p0}, Lcom/google/firebase/database/core/view/EventGenerator$1;-><init>(Lcom/google/firebase/database/core/view/EventGenerator;)V

    return-object v0
.end method

.method private generateEvent(Lcom/google/firebase/database/core/view/Change;Lcom/google/firebase/database/core/EventRegistration;Lcom/google/firebase/database/snapshot/IndexedNode;)Lcom/google/firebase/database/core/view/DataEvent;
    .registers 7

    .line 64
    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/Change;->getEventType()Lcom/google/firebase/database/core/view/Event$EventType;

    move-result-object v0

    sget-object v1, Lcom/google/firebase/database/core/view/Event$EventType;->VALUE:Lcom/google/firebase/database/core/view/Event$EventType;

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/core/view/Event$EventType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 65
    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/Change;->getEventType()Lcom/google/firebase/database/core/view/Event$EventType;

    move-result-object v0

    sget-object v1, Lcom/google/firebase/database/core/view/Event$EventType;->CHILD_REMOVED:Lcom/google/firebase/database/core/view/Event$EventType;

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/core/view/Event$EventType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_2f

    .line 70
    :cond_19
    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/Change;->getChildKey()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/Change;->getIndexedNode()Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/database/snapshot/IndexedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/database/core/view/EventGenerator;->index:Lcom/google/firebase/database/snapshot/Index;

    .line 69
    invoke-virtual {p3, v0, v1, v2}, Lcom/google/firebase/database/snapshot/IndexedNode;->getPredecessorChildName(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/Index;)Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object p3

    .line 71
    invoke-virtual {p1, p3}, Lcom/google/firebase/database/core/view/Change;->changeWithPrevName(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/core/view/Change;

    move-result-object p1

    .line 73
    :cond_2f
    :goto_2f
    iget-object p3, p0, Lcom/google/firebase/database/core/view/EventGenerator;->query:Lcom/google/firebase/database/core/view/QuerySpec;

    invoke-virtual {p2, p1, p3}, Lcom/google/firebase/database/core/EventRegistration;->createEvent(Lcom/google/firebase/database/core/view/Change;Lcom/google/firebase/database/core/view/QuerySpec;)Lcom/google/firebase/database/core/view/DataEvent;

    move-result-object p1

    return-object p1
.end method

.method private generateEventsForType(Ljava/util/List;Lcom/google/firebase/database/core/view/Event$EventType;Ljava/util/List;Ljava/util/List;Lcom/google/firebase/database/snapshot/IndexedNode;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/firebase/database/core/view/DataEvent;",
            ">;",
            "Lcom/google/firebase/database/core/view/Event$EventType;",
            "Ljava/util/List<",
            "Lcom/google/firebase/database/core/view/Change;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/firebase/database/core/EventRegistration;",
            ">;",
            "Lcom/google/firebase/database/snapshot/IndexedNode;",
            ")V"
        }
    .end annotation

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 46
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_9
    :goto_9
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/database/core/view/Change;

    .line 47
    invoke-virtual {v1}, Lcom/google/firebase/database/core/view/Change;->getEventType()Lcom/google/firebase/database/core/view/Event$EventType;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/google/firebase/database/core/view/Event$EventType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 48
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 51
    :cond_23
    invoke-direct {p0}, Lcom/google/firebase/database/core/view/EventGenerator;->changeComparator()Ljava/util/Comparator;

    move-result-object p3

    invoke-static {v0, p3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 52
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_2e
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_58

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/core/view/Change;

    .line 53
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3e
    :goto_3e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/database/core/EventRegistration;

    .line 54
    invoke-virtual {v2, p2}, Lcom/google/firebase/database/core/EventRegistration;->respondsTo(Lcom/google/firebase/database/core/view/Event$EventType;)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 55
    invoke-direct {p0, v0, v2, p5}, Lcom/google/firebase/database/core/view/EventGenerator;->generateEvent(Lcom/google/firebase/database/core/view/Change;Lcom/google/firebase/database/core/EventRegistration;Lcom/google/firebase/database/snapshot/IndexedNode;)Lcom/google/firebase/database/core/view/DataEvent;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3e

    :cond_58
    return-void
.end method


# virtual methods
.method public generateEventsForChanges(Ljava/util/List;Lcom/google/firebase/database/snapshot/IndexedNode;Ljava/util/List;)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/firebase/database/core/view/Change;",
            ">;",
            "Lcom/google/firebase/database/snapshot/IndexedNode;",
            "Ljava/util/List<",
            "Lcom/google/firebase/database/core/EventRegistration;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/google/firebase/database/core/view/DataEvent;",
            ">;"
        }
    .end annotation

    .line 78
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 80
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 81
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_e
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/database/core/view/Change;

    .line 82
    invoke-virtual {v1}, Lcom/google/firebase/database/core/view/Change;->getEventType()Lcom/google/firebase/database/core/view/Event$EventType;

    move-result-object v2

    sget-object v3, Lcom/google/firebase/database/core/view/Event$EventType;->CHILD_CHANGED:Lcom/google/firebase/database/core/view/Event$EventType;

    invoke-virtual {v2, v3}, Lcom/google/firebase/database/core/view/Event$EventType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/google/firebase/database/core/view/EventGenerator;->index:Lcom/google/firebase/database/snapshot/Index;

    .line 84
    invoke-virtual {v1}, Lcom/google/firebase/database/core/view/Change;->getOldIndexedNode()Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/firebase/database/snapshot/IndexedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/firebase/database/core/view/Change;->getIndexedNode()Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/firebase/database/snapshot/IndexedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v4

    .line 83
    invoke-virtual {v2, v3, v4}, Lcom/google/firebase/database/snapshot/Index;->indexedValueChanged(Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/Node;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 85
    invoke-virtual {v1}, Lcom/google/firebase/database/core/view/Change;->getChildKey()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/firebase/database/core/view/Change;->getIndexedNode()Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/firebase/database/core/view/Change;->childMovedChange(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/IndexedNode;)Lcom/google/firebase/database/core/view/Change;

    move-result-object v1

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 89
    :cond_4e
    sget-object v2, Lcom/google/firebase/database/core/view/Event$EventType;->CHILD_REMOVED:Lcom/google/firebase/database/core/view/Event$EventType;

    move-object v0, p0

    move-object v1, v6

    move-object v3, p1

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/database/core/view/EventGenerator;->generateEventsForType(Ljava/util/List;Lcom/google/firebase/database/core/view/Event$EventType;Ljava/util/List;Ljava/util/List;Lcom/google/firebase/database/snapshot/IndexedNode;)V

    .line 91
    sget-object v2, Lcom/google/firebase/database/core/view/Event$EventType;->CHILD_ADDED:Lcom/google/firebase/database/core/view/Event$EventType;

    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/database/core/view/EventGenerator;->generateEventsForType(Ljava/util/List;Lcom/google/firebase/database/core/view/Event$EventType;Ljava/util/List;Ljava/util/List;Lcom/google/firebase/database/snapshot/IndexedNode;)V

    .line 93
    sget-object v2, Lcom/google/firebase/database/core/view/Event$EventType;->CHILD_MOVED:Lcom/google/firebase/database/core/view/Event$EventType;

    move-object v3, v7

    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/database/core/view/EventGenerator;->generateEventsForType(Ljava/util/List;Lcom/google/firebase/database/core/view/Event$EventType;Ljava/util/List;Ljava/util/List;Lcom/google/firebase/database/snapshot/IndexedNode;)V

    .line 95
    sget-object v2, Lcom/google/firebase/database/core/view/Event$EventType;->CHILD_CHANGED:Lcom/google/firebase/database/core/view/Event$EventType;

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/database/core/view/EventGenerator;->generateEventsForType(Ljava/util/List;Lcom/google/firebase/database/core/view/Event$EventType;Ljava/util/List;Ljava/util/List;Lcom/google/firebase/database/snapshot/IndexedNode;)V

    .line 97
    sget-object v2, Lcom/google/firebase/database/core/view/Event$EventType;->VALUE:Lcom/google/firebase/database/core/view/Event$EventType;

    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/database/core/view/EventGenerator;->generateEventsForType(Ljava/util/List;Lcom/google/firebase/database/core/view/Event$EventType;Ljava/util/List;Ljava/util/List;Lcom/google/firebase/database/snapshot/IndexedNode;)V

    return-object v6
.end method

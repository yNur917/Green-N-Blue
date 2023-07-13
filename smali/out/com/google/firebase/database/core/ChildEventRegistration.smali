.class public Lcom/google/firebase/database/core/ChildEventRegistration;
.super Lcom/google/firebase/database/core/EventRegistration;
.source "ChildEventRegistration.java"


# instance fields
.field private final eventListener:Lcom/google/firebase/database/ChildEventListener;

.field private final repo:Lcom/google/firebase/database/core/Repo;

.field private final spec:Lcom/google/firebase/database/core/view/QuerySpec;


# direct methods
.method public constructor <init>(Lcom/google/firebase/database/core/Repo;Lcom/google/firebase/database/ChildEventListener;Lcom/google/firebase/database/core/view/QuerySpec;)V
    .registers 4

    .line 35
    invoke-direct {p0}, Lcom/google/firebase/database/core/EventRegistration;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/google/firebase/database/core/ChildEventRegistration;->repo:Lcom/google/firebase/database/core/Repo;

    .line 37
    iput-object p2, p0, Lcom/google/firebase/database/core/ChildEventRegistration;->eventListener:Lcom/google/firebase/database/ChildEventListener;

    .line 38
    iput-object p3, p0, Lcom/google/firebase/database/core/ChildEventRegistration;->spec:Lcom/google/firebase/database/core/view/QuerySpec;

    return-void
.end method


# virtual methods
.method public clone(Lcom/google/firebase/database/core/view/QuerySpec;)Lcom/google/firebase/database/core/EventRegistration;
    .registers 5

    .line 102
    new-instance v0, Lcom/google/firebase/database/core/ChildEventRegistration;

    iget-object v1, p0, Lcom/google/firebase/database/core/ChildEventRegistration;->repo:Lcom/google/firebase/database/core/Repo;

    iget-object v2, p0, Lcom/google/firebase/database/core/ChildEventRegistration;->eventListener:Lcom/google/firebase/database/ChildEventListener;

    invoke-direct {v0, v1, v2, p1}, Lcom/google/firebase/database/core/ChildEventRegistration;-><init>(Lcom/google/firebase/database/core/Repo;Lcom/google/firebase/database/ChildEventListener;Lcom/google/firebase/database/core/view/QuerySpec;)V

    return-object v0
.end method

.method public createEvent(Lcom/google/firebase/database/core/view/Change;Lcom/google/firebase/database/core/view/QuerySpec;)Lcom/google/firebase/database/core/view/DataEvent;
    .registers 5

    .line 64
    iget-object v0, p0, Lcom/google/firebase/database/core/ChildEventRegistration;->repo:Lcom/google/firebase/database/core/Repo;

    .line 65
    invoke-virtual {p2}, Lcom/google/firebase/database/core/view/QuerySpec;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object p2

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/Change;->getChildKey()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/google/firebase/database/core/Path;->child(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/core/Path;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/google/firebase/database/InternalHelpers;->createReference(Lcom/google/firebase/database/core/Repo;Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object p2

    .line 67
    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/Change;->getIndexedNode()Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/google/firebase/database/InternalHelpers;->createDataSnapshot(Lcom/google/firebase/database/DatabaseReference;Lcom/google/firebase/database/snapshot/IndexedNode;)Lcom/google/firebase/database/DataSnapshot;

    move-result-object p2

    .line 68
    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/Change;->getPrevName()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v0

    if-eqz v0, :cond_29

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/Change;->getPrevName()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/snapshot/ChildKey;->asString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2a

    :cond_29
    const/4 v0, 0x0

    .line 69
    :goto_2a
    new-instance v1, Lcom/google/firebase/database/core/view/DataEvent;

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/Change;->getEventType()Lcom/google/firebase/database/core/view/Event$EventType;

    move-result-object p1

    invoke-direct {v1, p1, p0, p2, v0}, Lcom/google/firebase/database/core/view/DataEvent;-><init>(Lcom/google/firebase/database/core/view/Event$EventType;Lcom/google/firebase/database/core/EventRegistration;Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    .line 48
    instance-of v0, p1, Lcom/google/firebase/database/core/ChildEventRegistration;

    if-eqz v0, :cond_26

    check-cast p1, Lcom/google/firebase/database/core/ChildEventRegistration;

    iget-object v0, p1, Lcom/google/firebase/database/core/ChildEventRegistration;->eventListener:Lcom/google/firebase/database/ChildEventListener;

    iget-object v1, p0, Lcom/google/firebase/database/core/ChildEventRegistration;->eventListener:Lcom/google/firebase/database/ChildEventListener;

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p1, Lcom/google/firebase/database/core/ChildEventRegistration;->repo:Lcom/google/firebase/database/core/Repo;

    iget-object v1, p0, Lcom/google/firebase/database/core/ChildEventRegistration;->repo:Lcom/google/firebase/database/core/Repo;

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object p1, p1, Lcom/google/firebase/database/core/ChildEventRegistration;->spec:Lcom/google/firebase/database/core/view/QuerySpec;

    iget-object v0, p0, Lcom/google/firebase/database/core/ChildEventRegistration;->spec:Lcom/google/firebase/database/core/view/QuerySpec;

    .line 51
    invoke-virtual {p1, v0}, Lcom/google/firebase/database/core/view/QuerySpec;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_26

    const/4 p1, 0x1

    goto :goto_27

    :cond_26
    const/4 p1, 0x0

    :goto_27
    return p1
.end method

.method public fireCancelEvent(Lcom/google/firebase/database/DatabaseError;)V
    .registers 3

    .line 97
    iget-object v0, p0, Lcom/google/firebase/database/core/ChildEventRegistration;->eventListener:Lcom/google/firebase/database/ChildEventListener;

    invoke-interface {v0, p1}, Lcom/google/firebase/database/ChildEventListener;->onCancelled(Lcom/google/firebase/database/DatabaseError;)V

    return-void
.end method

.method public fireEvent(Lcom/google/firebase/database/core/view/DataEvent;)V
    .registers 4

    .line 74
    invoke-virtual {p0}, Lcom/google/firebase/database/core/ChildEventRegistration;->isZombied()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 77
    :cond_7
    sget-object v0, Lcom/google/firebase/database/core/ChildEventRegistration$1;->$SwitchMap$com$google$firebase$database$core$view$Event$EventType:[I

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/DataEvent;->getEventType()Lcom/google/firebase/database/core/view/Event$EventType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/database/core/view/Event$EventType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_46

    const/4 v1, 0x2

    if-eq v0, v1, :cond_38

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2a

    const/4 v1, 0x4

    if-eq v0, v1, :cond_20

    goto :goto_53

    .line 88
    :cond_20
    iget-object v0, p0, Lcom/google/firebase/database/core/ChildEventRegistration;->eventListener:Lcom/google/firebase/database/ChildEventListener;

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/DataEvent;->getSnapshot()Lcom/google/firebase/database/DataSnapshot;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/firebase/database/ChildEventListener;->onChildRemoved(Lcom/google/firebase/database/DataSnapshot;)V

    goto :goto_53

    .line 85
    :cond_2a
    iget-object v0, p0, Lcom/google/firebase/database/core/ChildEventRegistration;->eventListener:Lcom/google/firebase/database/ChildEventListener;

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/DataEvent;->getSnapshot()Lcom/google/firebase/database/DataSnapshot;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/DataEvent;->getPreviousName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/google/firebase/database/ChildEventListener;->onChildMoved(Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)V

    goto :goto_53

    .line 82
    :cond_38
    iget-object v0, p0, Lcom/google/firebase/database/core/ChildEventRegistration;->eventListener:Lcom/google/firebase/database/ChildEventListener;

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/DataEvent;->getSnapshot()Lcom/google/firebase/database/DataSnapshot;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/DataEvent;->getPreviousName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/google/firebase/database/ChildEventListener;->onChildChanged(Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)V

    goto :goto_53

    .line 79
    :cond_46
    iget-object v0, p0, Lcom/google/firebase/database/core/ChildEventRegistration;->eventListener:Lcom/google/firebase/database/ChildEventListener;

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/DataEvent;->getSnapshot()Lcom/google/firebase/database/DataSnapshot;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/DataEvent;->getPreviousName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/google/firebase/database/ChildEventListener;->onChildAdded(Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)V

    :goto_53
    return-void
.end method

.method public getQuerySpec()Lcom/google/firebase/database/core/view/QuerySpec;
    .registers 2

    .line 114
    iget-object v0, p0, Lcom/google/firebase/database/core/ChildEventRegistration;->spec:Lcom/google/firebase/database/core/view/QuerySpec;

    return-object v0
.end method

.method getRepo()Lcom/google/firebase/database/core/Repo;
    .registers 2

    .line 124
    iget-object v0, p0, Lcom/google/firebase/database/core/ChildEventRegistration;->repo:Lcom/google/firebase/database/core/Repo;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 56
    iget-object v0, p0, Lcom/google/firebase/database/core/ChildEventRegistration;->eventListener:Lcom/google/firebase/database/ChildEventListener;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 57
    iget-object v1, p0, Lcom/google/firebase/database/core/ChildEventRegistration;->repo:Lcom/google/firebase/database/core/Repo;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 58
    iget-object v1, p0, Lcom/google/firebase/database/core/ChildEventRegistration;->spec:Lcom/google/firebase/database/core/view/QuerySpec;

    invoke-virtual {v1}, Lcom/google/firebase/database/core/view/QuerySpec;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isSameListener(Lcom/google/firebase/database/core/EventRegistration;)Z
    .registers 3

    .line 107
    instance-of v0, p1, Lcom/google/firebase/database/core/ChildEventRegistration;

    if-eqz v0, :cond_12

    check-cast p1, Lcom/google/firebase/database/core/ChildEventRegistration;

    iget-object p1, p1, Lcom/google/firebase/database/core/ChildEventRegistration;->eventListener:Lcom/google/firebase/database/ChildEventListener;

    iget-object v0, p0, Lcom/google/firebase/database/core/ChildEventRegistration;->eventListener:Lcom/google/firebase/database/ChildEventListener;

    .line 108
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    return p1
.end method

.method public respondsTo(Lcom/google/firebase/database/core/view/Event$EventType;)Z
    .registers 3

    .line 43
    sget-object v0, Lcom/google/firebase/database/core/view/Event$EventType;->VALUE:Lcom/google/firebase/database/core/view/Event$EventType;

    if-eq p1, v0, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "ChildEventRegistration"

    return-object v0
.end method

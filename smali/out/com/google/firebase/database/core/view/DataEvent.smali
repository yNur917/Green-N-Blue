.class public Lcom/google/firebase/database/core/view/DataEvent;
.super Ljava/lang/Object;
.source "DataEvent.java"

# interfaces
.implements Lcom/google/firebase/database/core/view/Event;


# instance fields
.field private final eventRegistration:Lcom/google/firebase/database/core/EventRegistration;

.field private final eventType:Lcom/google/firebase/database/core/view/Event$EventType;

.field private final prevName:Ljava/lang/String;

.field private final snapshot:Lcom/google/firebase/database/DataSnapshot;


# direct methods
.method public constructor <init>(Lcom/google/firebase/database/core/view/Event$EventType;Lcom/google/firebase/database/core/EventRegistration;Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)V
    .registers 5

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/google/firebase/database/core/view/DataEvent;->eventType:Lcom/google/firebase/database/core/view/Event$EventType;

    .line 34
    iput-object p2, p0, Lcom/google/firebase/database/core/view/DataEvent;->eventRegistration:Lcom/google/firebase/database/core/EventRegistration;

    .line 35
    iput-object p3, p0, Lcom/google/firebase/database/core/view/DataEvent;->snapshot:Lcom/google/firebase/database/DataSnapshot;

    .line 36
    iput-object p4, p0, Lcom/google/firebase/database/core/view/DataEvent;->prevName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public fire()V
    .registers 2

    .line 63
    iget-object v0, p0, Lcom/google/firebase/database/core/view/DataEvent;->eventRegistration:Lcom/google/firebase/database/core/EventRegistration;

    invoke-virtual {v0, p0}, Lcom/google/firebase/database/core/EventRegistration;->fireEvent(Lcom/google/firebase/database/core/view/DataEvent;)V

    return-void
.end method

.method public getEventType()Lcom/google/firebase/database/core/view/Event$EventType;
    .registers 2

    .line 58
    iget-object v0, p0, Lcom/google/firebase/database/core/view/DataEvent;->eventType:Lcom/google/firebase/database/core/view/Event$EventType;

    return-object v0
.end method

.method public getPath()Lcom/google/firebase/database/core/Path;
    .registers 4

    .line 41
    iget-object v0, p0, Lcom/google/firebase/database/core/view/DataEvent;->snapshot:Lcom/google/firebase/database/DataSnapshot;

    invoke-virtual {v0}, Lcom/google/firebase/database/DataSnapshot;->getRef()Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/DatabaseReference;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v0

    .line 42
    iget-object v1, p0, Lcom/google/firebase/database/core/view/DataEvent;->eventType:Lcom/google/firebase/database/core/view/Event$EventType;

    sget-object v2, Lcom/google/firebase/database/core/view/Event$EventType;->VALUE:Lcom/google/firebase/database/core/view/Event$EventType;

    if-ne v1, v2, :cond_11

    return-object v0

    .line 45
    :cond_11
    invoke-virtual {v0}, Lcom/google/firebase/database/core/Path;->getParent()Lcom/google/firebase/database/core/Path;

    move-result-object v0

    return-object v0
.end method

.method public getPreviousName()Ljava/lang/String;
    .registers 2

    .line 54
    iget-object v0, p0, Lcom/google/firebase/database/core/view/DataEvent;->prevName:Ljava/lang/String;

    return-object v0
.end method

.method public getSnapshot()Lcom/google/firebase/database/DataSnapshot;
    .registers 2

    .line 50
    iget-object v0, p0, Lcom/google/firebase/database/core/view/DataEvent;->snapshot:Lcom/google/firebase/database/DataSnapshot;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 68
    iget-object v0, p0, Lcom/google/firebase/database/core/view/DataEvent;->eventType:Lcom/google/firebase/database/core/view/Event$EventType;

    sget-object v1, Lcom/google/firebase/database/core/view/Event$EventType;->VALUE:Lcom/google/firebase/database/core/view/Event$EventType;

    const/4 v2, 0x1

    const-string v3, ": "

    if-ne v0, v1, :cond_2e

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/firebase/database/core/view/DataEvent;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/firebase/database/core/view/DataEvent;->eventType:Lcom/google/firebase/database/core/view/Event$EventType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/firebase/database/core/view/DataEvent;->snapshot:Lcom/google/firebase/database/DataSnapshot;

    invoke-virtual {v1, v2}, Lcom/google/firebase/database/DataSnapshot;->getValue(Z)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 71
    :cond_2e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/firebase/database/core/view/DataEvent;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/firebase/database/core/view/DataEvent;->eventType:Lcom/google/firebase/database/core/view/Event$EventType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": { "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/firebase/database/core/view/DataEvent;->snapshot:Lcom/google/firebase/database/DataSnapshot;

    .line 75
    invoke-virtual {v1}, Lcom/google/firebase/database/DataSnapshot;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/firebase/database/core/view/DataEvent;->snapshot:Lcom/google/firebase/database/DataSnapshot;

    .line 77
    invoke-virtual {v1, v2}, Lcom/google/firebase/database/DataSnapshot;->getValue(Z)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

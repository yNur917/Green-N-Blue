.class public Lcom/google/firebase/database/core/view/EventRaiser;
.super Ljava/lang/Object;
.source "EventRaiser.java"


# instance fields
.field private final eventTarget:Lcom/google/firebase/database/core/EventTarget;

.field private final logger:Lcom/google/firebase/database/logging/LogWrapper;


# direct methods
.method public constructor <init>(Lcom/google/firebase/database/core/Context;)V
    .registers 3

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-virtual {p1}, Lcom/google/firebase/database/core/Context;->getEventTarget()Lcom/google/firebase/database/core/EventTarget;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/database/core/view/EventRaiser;->eventTarget:Lcom/google/firebase/database/core/EventTarget;

    const-string v0, "EventRaiser"

    .line 38
    invoke-virtual {p1, v0}, Lcom/google/firebase/database/core/Context;->getLogger(Ljava/lang/String;)Lcom/google/firebase/database/logging/LogWrapper;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/database/core/view/EventRaiser;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    return-void
.end method

.method static synthetic access$000(Lcom/google/firebase/database/core/view/EventRaiser;)Lcom/google/firebase/database/logging/LogWrapper;
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/google/firebase/database/core/view/EventRaiser;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    return-object p0
.end method


# virtual methods
.method public raiseEvents(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/google/firebase/database/core/view/Event;",
            ">;)V"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/google/firebase/database/core/view/EventRaiser;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v0}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 43
    iget-object v0, p0, Lcom/google/firebase/database/core/view/EventRaiser;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Raising "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " event(s)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    :cond_2a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 47
    iget-object p1, p0, Lcom/google/firebase/database/core/view/EventRaiser;->eventTarget:Lcom/google/firebase/database/core/EventTarget;

    new-instance v1, Lcom/google/firebase/database/core/view/EventRaiser$1;

    invoke-direct {v1, p0, v0}, Lcom/google/firebase/database/core/view/EventRaiser$1;-><init>(Lcom/google/firebase/database/core/view/EventRaiser;Ljava/util/ArrayList;)V

    invoke-interface {p1, v1}, Lcom/google/firebase/database/core/EventTarget;->postEvent(Ljava/lang/Runnable;)V

    return-void
.end method

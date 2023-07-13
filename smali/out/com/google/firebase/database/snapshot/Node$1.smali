.class Lcom/google/firebase/database/snapshot/Node$1;
.super Lcom/google/firebase/database/snapshot/ChildrenNode;
.source "Node.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/database/snapshot/Node;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 64
    invoke-direct {p0}, Lcom/google/firebase/database/snapshot/ChildrenNode;-><init>()V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/google/firebase/database/snapshot/Node;)I
    .registers 2

    if-ne p1, p0, :cond_4

    const/4 p1, 0x0

    goto :goto_5

    :cond_4
    const/4 p1, 0x1

    :goto_5
    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 64
    check-cast p1, Lcom/google/firebase/database/snapshot/Node;

    invoke-virtual {p0, p1}, Lcom/google/firebase/database/snapshot/Node$1;->compareTo(Lcom/google/firebase/database/snapshot/Node;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 2

    if-ne p1, p0, :cond_4

    const/4 p1, 0x1

    goto :goto_5

    :cond_4
    const/4 p1, 0x0

    :goto_5
    return p1
.end method

.method public getImmediateChild(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/snapshot/Node;
    .registers 2

    .line 92
    invoke-virtual {p1}, Lcom/google/firebase/database/snapshot/ChildKey;->isPriorityChildName()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 93
    invoke-virtual {p0}, Lcom/google/firebase/database/snapshot/Node$1;->getPriority()Lcom/google/firebase/database/snapshot/Node;

    move-result-object p1

    return-object p1

    .line 95
    :cond_b
    invoke-static {}, Lcom/google/firebase/database/snapshot/EmptyNode;->Empty()Lcom/google/firebase/database/snapshot/EmptyNode;

    move-result-object p1

    return-object p1
.end method

.method public getPriority()Lcom/google/firebase/database/snapshot/Node;
    .registers 1

    return-object p0
.end method

.method public hasChild(Lcom/google/firebase/database/snapshot/ChildKey;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public isEmpty()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "<Max Node>"

    return-object v0
.end method

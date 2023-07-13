.class public Lcom/google/firebase/database/snapshot/EmptyNode;
.super Lcom/google/firebase/database/snapshot/ChildrenNode;
.source "EmptyNode.java"

# interfaces
.implements Lcom/google/firebase/database/snapshot/Node;


# static fields
.field private static final empty:Lcom/google/firebase/database/snapshot/EmptyNode;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 23
    new-instance v0, Lcom/google/firebase/database/snapshot/EmptyNode;

    invoke-direct {v0}, Lcom/google/firebase/database/snapshot/EmptyNode;-><init>()V

    sput-object v0, Lcom/google/firebase/database/snapshot/EmptyNode;->empty:Lcom/google/firebase/database/snapshot/EmptyNode;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Lcom/google/firebase/database/snapshot/ChildrenNode;-><init>()V

    return-void
.end method

.method public static Empty()Lcom/google/firebase/database/snapshot/EmptyNode;
    .registers 1

    .line 30
    sget-object v0, Lcom/google/firebase/database/snapshot/EmptyNode;->empty:Lcom/google/firebase/database/snapshot/EmptyNode;

    return-object v0
.end method


# virtual methods
.method public compareTo(Lcom/google/firebase/database/snapshot/Node;)I
    .registers 2

    .line 139
    invoke-interface {p1}, Lcom/google/firebase/database/snapshot/Node;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_8

    const/4 p1, 0x0

    goto :goto_9

    :cond_8
    const/4 p1, -0x1

    :goto_9
    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 21
    check-cast p1, Lcom/google/firebase/database/snapshot/Node;

    invoke-virtual {p0, p1}, Lcom/google/firebase/database/snapshot/EmptyNode;->compareTo(Lcom/google/firebase/database/snapshot/Node;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    .line 144
    instance-of v0, p1, Lcom/google/firebase/database/snapshot/EmptyNode;

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    .line 149
    :cond_6
    instance-of v0, p1, Lcom/google/firebase/database/snapshot/Node;

    if-eqz v0, :cond_21

    check-cast p1, Lcom/google/firebase/database/snapshot/Node;

    .line 150
    invoke-interface {p1}, Lcom/google/firebase/database/snapshot/Node;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 151
    invoke-virtual {p0}, Lcom/google/firebase/database/snapshot/EmptyNode;->getPriority()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/firebase/database/snapshot/Node;->getPriority()Lcom/google/firebase/database/snapshot/Node;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_21

    goto :goto_22

    :cond_21
    const/4 v1, 0x0

    :goto_22
    return v1
.end method

.method public getChild(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;
    .registers 2

    return-object p0
.end method

.method public getChildCount()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getHash()Ljava/lang/String;
    .registers 2

    const-string v0, ""

    return-object v0
.end method

.method public getHashRepresentation(Lcom/google/firebase/database/snapshot/Node$HashVersion;)Ljava/lang/String;
    .registers 2

    const-string p1, ""

    return-object p1
.end method

.method public getImmediateChild(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/snapshot/Node;
    .registers 2

    return-object p0
.end method

.method public getPredecessorChildKey(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/snapshot/ChildKey;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public getPriority()Lcom/google/firebase/database/snapshot/Node;
    .registers 1

    return-object p0
.end method

.method public getSuccessorChildKey(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/snapshot/ChildKey;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public getValue()Ljava/lang/Object;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getValue(Z)Ljava/lang/Object;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public hasChild(Lcom/google/firebase/database/snapshot/ChildKey;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isLeafNode()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/firebase/database/snapshot/NamedNode;",
            ">;"
        }
    .end annotation

    .line 129
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public reverseIterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/firebase/database/snapshot/NamedNode;",
            ">;"
        }
    .end annotation

    .line 134
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "<Empty Node>"

    return-object v0
.end method

.method public updateChild(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;
    .registers 5

    .line 67
    invoke-virtual {p1}, Lcom/google/firebase/database/core/Path;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p2

    .line 70
    :cond_7
    invoke-virtual {p1}, Lcom/google/firebase/database/core/Path;->getFront()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v0

    .line 71
    invoke-virtual {p0, v0}, Lcom/google/firebase/database/snapshot/EmptyNode;->getImmediateChild(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/firebase/database/core/Path;->popFront()Lcom/google/firebase/database/core/Path;

    move-result-object p1

    invoke-interface {v1, p1, p2}, Lcom/google/firebase/database/snapshot/Node;->updateChild(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object p1

    .line 72
    invoke-virtual {p0, v0, p1}, Lcom/google/firebase/database/snapshot/EmptyNode;->updateImmediateChild(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object p1

    return-object p1
.end method

.method public updateImmediateChild(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;
    .registers 4

    .line 55
    invoke-interface {p2}, Lcom/google/firebase/database/snapshot/Node;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p0

    .line 57
    :cond_7
    invoke-virtual {p1}, Lcom/google/firebase/database/snapshot/ChildKey;->isPriorityChildName()Z

    move-result v0

    if-eqz v0, :cond_e

    return-object p0

    .line 61
    :cond_e
    new-instance v0, Lcom/google/firebase/database/snapshot/ChildrenNode;

    invoke-direct {v0}, Lcom/google/firebase/database/snapshot/ChildrenNode;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/database/snapshot/ChildrenNode;->updateImmediateChild(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object p1

    return-object p1
.end method

.method public updatePriority(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/EmptyNode;
    .registers 2

    return-object p0
.end method

.method public bridge synthetic updatePriority(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;
    .registers 2

    .line 21
    invoke-virtual {p0, p1}, Lcom/google/firebase/database/snapshot/EmptyNode;->updatePriority(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/EmptyNode;

    move-result-object p1

    return-object p1
.end method

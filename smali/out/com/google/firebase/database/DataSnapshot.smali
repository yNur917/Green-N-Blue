.class public Lcom/google/firebase/database/DataSnapshot;
.super Ljava/lang/Object;
.source "DataSnapshot.java"


# instance fields
.field private final node:Lcom/google/firebase/database/snapshot/IndexedNode;

.field private final query:Lcom/google/firebase/database/DatabaseReference;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/DatabaseReference;Lcom/google/firebase/database/snapshot/IndexedNode;)V
    .registers 3

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p2, p0, Lcom/google/firebase/database/DataSnapshot;->node:Lcom/google/firebase/database/snapshot/IndexedNode;

    .line 52
    iput-object p1, p0, Lcom/google/firebase/database/DataSnapshot;->query:Lcom/google/firebase/database/DatabaseReference;

    return-void
.end method

.method static synthetic access$000(Lcom/google/firebase/database/DataSnapshot;)Lcom/google/firebase/database/DatabaseReference;
    .registers 1

    .line 41
    iget-object p0, p0, Lcom/google/firebase/database/DataSnapshot;->query:Lcom/google/firebase/database/DatabaseReference;

    return-object p0
.end method


# virtual methods
.method public child(Ljava/lang/String;)Lcom/google/firebase/database/DataSnapshot;
    .registers 5

    .line 65
    iget-object v0, p0, Lcom/google/firebase/database/DataSnapshot;->query:Lcom/google/firebase/database/DatabaseReference;

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    .line 66
    iget-object v1, p0, Lcom/google/firebase/database/DataSnapshot;->node:Lcom/google/firebase/database/snapshot/IndexedNode;

    invoke-virtual {v1}, Lcom/google/firebase/database/snapshot/IndexedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v1

    new-instance v2, Lcom/google/firebase/database/core/Path;

    invoke-direct {v2, p1}, Lcom/google/firebase/database/core/Path;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/google/firebase/database/snapshot/Node;->getChild(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object p1

    .line 67
    new-instance v1, Lcom/google/firebase/database/DataSnapshot;

    invoke-static {p1}, Lcom/google/firebase/database/snapshot/IndexedNode;->from(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Lcom/google/firebase/database/DataSnapshot;-><init>(Lcom/google/firebase/database/DatabaseReference;Lcom/google/firebase/database/snapshot/IndexedNode;)V

    return-object v1
.end method

.method public exists()Z
    .registers 2

    .line 100
    iget-object v0, p0, Lcom/google/firebase/database/DataSnapshot;->node:Lcom/google/firebase/database/snapshot/IndexedNode;

    invoke-virtual {v0}, Lcom/google/firebase/database/snapshot/IndexedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/firebase/database/snapshot/Node;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getChildren()Ljava/lang/Iterable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/google/firebase/database/DataSnapshot;",
            ">;"
        }
    .end annotation

    .line 268
    iget-object v0, p0, Lcom/google/firebase/database/DataSnapshot;->node:Lcom/google/firebase/database/snapshot/IndexedNode;

    invoke-virtual {v0}, Lcom/google/firebase/database/snapshot/IndexedNode;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 269
    new-instance v1, Lcom/google/firebase/database/DataSnapshot$1;

    invoke-direct {v1, p0, v0}, Lcom/google/firebase/database/DataSnapshot$1;-><init>(Lcom/google/firebase/database/DataSnapshot;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public getChildrenCount()J
    .registers 3

    .line 234
    iget-object v0, p0, Lcom/google/firebase/database/DataSnapshot;->node:Lcom/google/firebase/database/snapshot/IndexedNode;

    invoke-virtual {v0}, Lcom/google/firebase/database/snapshot/IndexedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/firebase/database/snapshot/Node;->getChildCount()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getKey()Ljava/lang/String;
    .registers 2

    .line 253
    iget-object v0, p0, Lcom/google/firebase/database/DataSnapshot;->query:Lcom/google/firebase/database/DatabaseReference;

    invoke-virtual {v0}, Lcom/google/firebase/database/DatabaseReference;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()Ljava/lang/Object;
    .registers 3

    .line 311
    iget-object v0, p0, Lcom/google/firebase/database/DataSnapshot;->node:Lcom/google/firebase/database/snapshot/IndexedNode;

    invoke-virtual {v0}, Lcom/google/firebase/database/snapshot/IndexedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/firebase/database/snapshot/Node;->getPriority()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/firebase/database/snapshot/Node;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 312
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_1d

    .line 313
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    :cond_1d
    return-object v0
.end method

.method public getRef()Lcom/google/firebase/database/DatabaseReference;
    .registers 2

    .line 244
    iget-object v0, p0, Lcom/google/firebase/database/DataSnapshot;->query:Lcom/google/firebase/database/DatabaseReference;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 2

    .line 124
    iget-object v0, p0, Lcom/google/firebase/database/DataSnapshot;->node:Lcom/google/firebase/database/snapshot/IndexedNode;

    invoke-virtual {v0}, Lcom/google/firebase/database/snapshot/IndexedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/firebase/database/snapshot/Node;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValue(Lcom/google/firebase/database/GenericTypeIndicator;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/firebase/database/GenericTypeIndicator<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 228
    iget-object v0, p0, Lcom/google/firebase/database/DataSnapshot;->node:Lcom/google/firebase/database/snapshot/IndexedNode;

    invoke-virtual {v0}, Lcom/google/firebase/database/snapshot/IndexedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/firebase/database/snapshot/Node;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 229
    invoke-static {v0, p1}, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper;->convertToCustomClass(Ljava/lang/Object;Lcom/google/firebase/database/GenericTypeIndicator;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getValue(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 202
    iget-object v0, p0, Lcom/google/firebase/database/DataSnapshot;->node:Lcom/google/firebase/database/snapshot/IndexedNode;

    invoke-virtual {v0}, Lcom/google/firebase/database/snapshot/IndexedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/firebase/database/snapshot/Node;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 203
    invoke-static {v0, p1}, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper;->convertToCustomClass(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getValue(Z)Ljava/lang/Object;
    .registers 3

    .line 153
    iget-object v0, p0, Lcom/google/firebase/database/DataSnapshot;->node:Lcom/google/firebase/database/snapshot/IndexedNode;

    invoke-virtual {v0}, Lcom/google/firebase/database/snapshot/IndexedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/firebase/database/snapshot/Node;->getValue(Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public hasChild(Ljava/lang/String;)Z
    .registers 4

    .line 77
    iget-object v0, p0, Lcom/google/firebase/database/DataSnapshot;->query:Lcom/google/firebase/database/DatabaseReference;

    invoke-virtual {v0}, Lcom/google/firebase/database/DatabaseReference;->getParent()Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    if-nez v0, :cond_c

    .line 78
    invoke-static {p1}, Lcom/google/firebase/database/core/utilities/Validation;->validateRootPathString(Ljava/lang/String;)V

    goto :goto_f

    .line 80
    :cond_c
    invoke-static {p1}, Lcom/google/firebase/database/core/utilities/Validation;->validatePathString(Ljava/lang/String;)V

    .line 82
    :goto_f
    iget-object v0, p0, Lcom/google/firebase/database/DataSnapshot;->node:Lcom/google/firebase/database/snapshot/IndexedNode;

    invoke-virtual {v0}, Lcom/google/firebase/database/snapshot/IndexedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/database/core/Path;

    invoke-direct {v1, p1}, Lcom/google/firebase/database/core/Path;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/google/firebase/database/snapshot/Node;->getChild(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/firebase/database/snapshot/Node;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public hasChildren()Z
    .registers 2

    .line 91
    iget-object v0, p0, Lcom/google/firebase/database/DataSnapshot;->node:Lcom/google/firebase/database/snapshot/IndexedNode;

    invoke-virtual {v0}, Lcom/google/firebase/database/snapshot/IndexedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/firebase/database/snapshot/Node;->getChildCount()I

    move-result v0

    if-lez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DataSnapshot { key = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/firebase/database/DataSnapshot;->query:Lcom/google/firebase/database/DatabaseReference;

    .line 322
    invoke-virtual {v1}, Lcom/google/firebase/database/DatabaseReference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", value = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/firebase/database/DataSnapshot;->node:Lcom/google/firebase/database/snapshot/IndexedNode;

    .line 324
    invoke-virtual {v1}, Lcom/google/firebase/database/snapshot/IndexedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/google/firebase/database/snapshot/Node;->getValue(Z)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

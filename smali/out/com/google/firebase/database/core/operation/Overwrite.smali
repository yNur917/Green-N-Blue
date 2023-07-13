.class public Lcom/google/firebase/database/core/operation/Overwrite;
.super Lcom/google/firebase/database/core/operation/Operation;
.source "Overwrite.java"


# instance fields
.field private final snapshot:Lcom/google/firebase/database/snapshot/Node;


# direct methods
.method public constructor <init>(Lcom/google/firebase/database/core/operation/OperationSource;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)V
    .registers 5

    .line 26
    sget-object v0, Lcom/google/firebase/database/core/operation/Operation$OperationType;->Overwrite:Lcom/google/firebase/database/core/operation/Operation$OperationType;

    invoke-direct {p0, v0, p1, p2}, Lcom/google/firebase/database/core/operation/Operation;-><init>(Lcom/google/firebase/database/core/operation/Operation$OperationType;Lcom/google/firebase/database/core/operation/OperationSource;Lcom/google/firebase/database/core/Path;)V

    .line 27
    iput-object p3, p0, Lcom/google/firebase/database/core/operation/Overwrite;->snapshot:Lcom/google/firebase/database/snapshot/Node;

    return-void
.end method


# virtual methods
.method public getSnapshot()Lcom/google/firebase/database/snapshot/Node;
    .registers 2

    .line 31
    iget-object v0, p0, Lcom/google/firebase/database/core/operation/Overwrite;->snapshot:Lcom/google/firebase/database/snapshot/Node;

    return-object v0
.end method

.method public operationForChild(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/core/operation/Operation;
    .registers 6

    .line 36
    iget-object v0, p0, Lcom/google/firebase/database/core/operation/Overwrite;->path:Lcom/google/firebase/database/core/Path;

    invoke-virtual {v0}, Lcom/google/firebase/database/core/Path;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 37
    new-instance v0, Lcom/google/firebase/database/core/operation/Overwrite;

    iget-object v1, p0, Lcom/google/firebase/database/core/operation/Overwrite;->source:Lcom/google/firebase/database/core/operation/OperationSource;

    .line 38
    invoke-static {}, Lcom/google/firebase/database/core/Path;->getEmptyPath()Lcom/google/firebase/database/core/Path;

    move-result-object v2

    iget-object v3, p0, Lcom/google/firebase/database/core/operation/Overwrite;->snapshot:Lcom/google/firebase/database/snapshot/Node;

    invoke-interface {v3, p1}, Lcom/google/firebase/database/snapshot/Node;->getImmediateChild(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/google/firebase/database/core/operation/Overwrite;-><init>(Lcom/google/firebase/database/core/operation/OperationSource;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)V

    return-object v0

    .line 40
    :cond_1a
    new-instance p1, Lcom/google/firebase/database/core/operation/Overwrite;

    iget-object v0, p0, Lcom/google/firebase/database/core/operation/Overwrite;->source:Lcom/google/firebase/database/core/operation/OperationSource;

    iget-object v1, p0, Lcom/google/firebase/database/core/operation/Overwrite;->path:Lcom/google/firebase/database/core/Path;

    invoke-virtual {v1}, Lcom/google/firebase/database/core/Path;->popFront()Lcom/google/firebase/database/core/Path;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/database/core/operation/Overwrite;->snapshot:Lcom/google/firebase/database/snapshot/Node;

    invoke-direct {p1, v0, v1, v2}, Lcom/google/firebase/database/core/operation/Overwrite;-><init>(Lcom/google/firebase/database/core/operation/OperationSource;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)V

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 47
    invoke-virtual {p0}, Lcom/google/firebase/database/core/operation/Overwrite;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/google/firebase/database/core/operation/Overwrite;->getSource()Lcom/google/firebase/database/core/operation/OperationSource;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/firebase/database/core/operation/Overwrite;->snapshot:Lcom/google/firebase/database/snapshot/Node;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "Overwrite { path=%s, source=%s, snapshot=%s }"

    .line 46
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

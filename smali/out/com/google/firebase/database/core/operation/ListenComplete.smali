.class public Lcom/google/firebase/database/core/operation/ListenComplete;
.super Lcom/google/firebase/database/core/operation/Operation;
.source "ListenComplete.java"


# direct methods
.method public constructor <init>(Lcom/google/firebase/database/core/operation/OperationSource;Lcom/google/firebase/database/core/Path;)V
    .registers 4

    .line 25
    sget-object v0, Lcom/google/firebase/database/core/operation/Operation$OperationType;->ListenComplete:Lcom/google/firebase/database/core/operation/Operation$OperationType;

    invoke-direct {p0, v0, p1, p2}, Lcom/google/firebase/database/core/operation/Operation;-><init>(Lcom/google/firebase/database/core/operation/Operation$OperationType;Lcom/google/firebase/database/core/operation/OperationSource;Lcom/google/firebase/database/core/Path;)V

    .line 26
    invoke-virtual {p1}, Lcom/google/firebase/database/core/operation/OperationSource;->isFromUser()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    const-string p2, "Can\'t have a listen complete from a user source"

    invoke-static {p1, p2}, Lcom/google/firebase/database/core/utilities/Utilities;->hardAssert(ZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public operationForChild(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/core/operation/Operation;
    .registers 4

    .line 31
    iget-object p1, p0, Lcom/google/firebase/database/core/operation/ListenComplete;->path:Lcom/google/firebase/database/core/Path;

    invoke-virtual {p1}, Lcom/google/firebase/database/core/Path;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_14

    .line 32
    new-instance p1, Lcom/google/firebase/database/core/operation/ListenComplete;

    iget-object v0, p0, Lcom/google/firebase/database/core/operation/ListenComplete;->source:Lcom/google/firebase/database/core/operation/OperationSource;

    invoke-static {}, Lcom/google/firebase/database/core/Path;->getEmptyPath()Lcom/google/firebase/database/core/Path;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/google/firebase/database/core/operation/ListenComplete;-><init>(Lcom/google/firebase/database/core/operation/OperationSource;Lcom/google/firebase/database/core/Path;)V

    return-object p1

    .line 34
    :cond_14
    new-instance p1, Lcom/google/firebase/database/core/operation/ListenComplete;

    iget-object v0, p0, Lcom/google/firebase/database/core/operation/ListenComplete;->source:Lcom/google/firebase/database/core/operation/OperationSource;

    iget-object v1, p0, Lcom/google/firebase/database/core/operation/ListenComplete;->path:Lcom/google/firebase/database/core/Path;

    invoke-virtual {v1}, Lcom/google/firebase/database/core/Path;->popFront()Lcom/google/firebase/database/core/Path;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/google/firebase/database/core/operation/ListenComplete;-><init>(Lcom/google/firebase/database/core/operation/OperationSource;Lcom/google/firebase/database/core/Path;)V

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 40
    invoke-virtual {p0}, Lcom/google/firebase/database/core/operation/ListenComplete;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/google/firebase/database/core/operation/ListenComplete;->getSource()Lcom/google/firebase/database/core/operation/OperationSource;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "ListenComplete { path=%s, source=%s }"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

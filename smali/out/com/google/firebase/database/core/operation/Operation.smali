.class public abstract Lcom/google/firebase/database/core/operation/Operation;
.super Ljava/lang/Object;
.source "Operation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/database/core/operation/Operation$OperationType;
    }
.end annotation


# instance fields
.field protected final path:Lcom/google/firebase/database/core/Path;

.field protected final source:Lcom/google/firebase/database/core/operation/OperationSource;

.field protected final type:Lcom/google/firebase/database/core/operation/Operation$OperationType;


# direct methods
.method protected constructor <init>(Lcom/google/firebase/database/core/operation/Operation$OperationType;Lcom/google/firebase/database/core/operation/OperationSource;Lcom/google/firebase/database/core/Path;)V
    .registers 4

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/google/firebase/database/core/operation/Operation;->type:Lcom/google/firebase/database/core/operation/Operation$OperationType;

    .line 35
    iput-object p2, p0, Lcom/google/firebase/database/core/operation/Operation;->source:Lcom/google/firebase/database/core/operation/OperationSource;

    .line 36
    iput-object p3, p0, Lcom/google/firebase/database/core/operation/Operation;->path:Lcom/google/firebase/database/core/Path;

    return-void
.end method


# virtual methods
.method public getPath()Lcom/google/firebase/database/core/Path;
    .registers 2

    .line 40
    iget-object v0, p0, Lcom/google/firebase/database/core/operation/Operation;->path:Lcom/google/firebase/database/core/Path;

    return-object v0
.end method

.method public getSource()Lcom/google/firebase/database/core/operation/OperationSource;
    .registers 2

    .line 44
    iget-object v0, p0, Lcom/google/firebase/database/core/operation/Operation;->source:Lcom/google/firebase/database/core/operation/OperationSource;

    return-object v0
.end method

.method public getType()Lcom/google/firebase/database/core/operation/Operation$OperationType;
    .registers 2

    .line 48
    iget-object v0, p0, Lcom/google/firebase/database/core/operation/Operation;->type:Lcom/google/firebase/database/core/operation/Operation$OperationType;

    return-object v0
.end method

.method public abstract operationForChild(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/core/operation/Operation;
.end method

.class public Lcom/google/firebase/database/core/utilities/tuple/NodeAndPath;
.super Ljava/lang/Object;
.source "NodeAndPath.java"


# instance fields
.field private node:Lcom/google/firebase/database/snapshot/Node;

.field private path:Lcom/google/firebase/database/core/Path;


# direct methods
.method public constructor <init>(Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/Path;)V
    .registers 3

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/google/firebase/database/core/utilities/tuple/NodeAndPath;->node:Lcom/google/firebase/database/snapshot/Node;

    .line 27
    iput-object p2, p0, Lcom/google/firebase/database/core/utilities/tuple/NodeAndPath;->path:Lcom/google/firebase/database/core/Path;

    return-void
.end method


# virtual methods
.method public getNode()Lcom/google/firebase/database/snapshot/Node;
    .registers 2

    .line 31
    iget-object v0, p0, Lcom/google/firebase/database/core/utilities/tuple/NodeAndPath;->node:Lcom/google/firebase/database/snapshot/Node;

    return-object v0
.end method

.method public getPath()Lcom/google/firebase/database/core/Path;
    .registers 2

    .line 39
    iget-object v0, p0, Lcom/google/firebase/database/core/utilities/tuple/NodeAndPath;->path:Lcom/google/firebase/database/core/Path;

    return-object v0
.end method

.method public setNode(Lcom/google/firebase/database/snapshot/Node;)V
    .registers 2

    .line 35
    iput-object p1, p0, Lcom/google/firebase/database/core/utilities/tuple/NodeAndPath;->node:Lcom/google/firebase/database/snapshot/Node;

    return-void
.end method

.method public setPath(Lcom/google/firebase/database/core/Path;)V
    .registers 2

    .line 43
    iput-object p1, p0, Lcom/google/firebase/database/core/utilities/tuple/NodeAndPath;->path:Lcom/google/firebase/database/core/Path;

    return-void
.end method

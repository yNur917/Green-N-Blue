.class public final synthetic Lcom/google/firebase/database/core/SyncTree$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/database/core/SyncTree;

.field public final synthetic f$1:Lcom/google/firebase/database/core/view/QuerySpec;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/database/core/SyncTree;Lcom/google/firebase/database/core/view/QuerySpec;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/database/core/SyncTree$$ExternalSyntheticLambda0;->f$0:Lcom/google/firebase/database/core/SyncTree;

    iput-object p2, p0, Lcom/google/firebase/database/core/SyncTree$$ExternalSyntheticLambda0;->f$1:Lcom/google/firebase/database/core/view/QuerySpec;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/google/firebase/database/core/SyncTree$$ExternalSyntheticLambda0;->f$0:Lcom/google/firebase/database/core/SyncTree;

    iget-object v1, p0, Lcom/google/firebase/database/core/SyncTree$$ExternalSyntheticLambda0;->f$1:Lcom/google/firebase/database/core/view/QuerySpec;

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/core/SyncTree;->lambda$getServerValue$0$com-google-firebase-database-core-SyncTree(Lcom/google/firebase/database/core/view/QuerySpec;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    return-object v0
.end method

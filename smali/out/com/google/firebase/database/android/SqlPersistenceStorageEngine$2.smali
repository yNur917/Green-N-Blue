.class Lcom/google/firebase/database/android/SqlPersistenceStorageEngine$2;
.super Ljava/lang/Object;
.source "SqlPersistenceStorageEngine.java"

# interfaces
.implements Lcom/google/firebase/database/core/utilities/ImmutableTree$TreeVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->pruneTreeRecursive(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/utilities/ImmutableTree;Lcom/google/firebase/database/core/utilities/ImmutableTree;Lcom/google/firebase/database/core/persistence/PruneForest;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/firebase/database/core/utilities/ImmutableTree$TreeVisitor<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;

.field final synthetic val$currentNode:Lcom/google/firebase/database/snapshot/Node;

.field final synthetic val$relativePath:Lcom/google/firebase/database/core/Path;

.field final synthetic val$rowIdsToKeep:Lcom/google/firebase/database/core/utilities/ImmutableTree;

.field final synthetic val$rowsToResaveAccumulator:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;Lcom/google/firebase/database/core/utilities/ImmutableTree;Ljava/util/List;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)V
    .registers 6

    .line 747
    iput-object p1, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine$2;->this$0:Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;

    iput-object p2, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine$2;->val$rowIdsToKeep:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    iput-object p3, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine$2;->val$rowsToResaveAccumulator:Ljava/util/List;

    iput-object p4, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine$2;->val$relativePath:Lcom/google/firebase/database/core/Path;

    iput-object p5, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine$2;->val$currentNode:Lcom/google/firebase/database/snapshot/Node;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onNodeValue(Lcom/google/firebase/database/core/Path;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 747
    check-cast p2, Ljava/lang/Void;

    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine$2;->onNodeValue(Lcom/google/firebase/database/core/Path;Ljava/lang/Void;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public onNodeValue(Lcom/google/firebase/database/core/Path;Ljava/lang/Void;Ljava/lang/Void;)Ljava/lang/Void;
    .registers 6

    .line 751
    iget-object p2, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine$2;->val$rowIdsToKeep:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    invoke-virtual {p2, p1}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->get(Lcom/google/firebase/database/core/Path;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_1e

    .line 752
    iget-object p2, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine$2;->val$rowsToResaveAccumulator:Ljava/util/List;

    new-instance p3, Lcom/google/firebase/database/core/utilities/Pair;

    iget-object v0, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine$2;->val$relativePath:Lcom/google/firebase/database/core/Path;

    .line 754
    invoke-virtual {v0, p1}, Lcom/google/firebase/database/core/Path;->child(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/Path;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine$2;->val$currentNode:Lcom/google/firebase/database/snapshot/Node;

    invoke-interface {v1, p1}, Lcom/google/firebase/database/snapshot/Node;->getChild(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object p1

    invoke-direct {p3, v0, p1}, Lcom/google/firebase/database/core/utilities/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 752
    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1e
    const/4 p1, 0x0

    return-object p1
.end method

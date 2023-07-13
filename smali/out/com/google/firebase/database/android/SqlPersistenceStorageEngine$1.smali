.class Lcom/google/firebase/database/android/SqlPersistenceStorageEngine$1;
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
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;

.field final synthetic val$rowIdsToKeep:Lcom/google/firebase/database/core/utilities/ImmutableTree;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;Lcom/google/firebase/database/core/utilities/ImmutableTree;)V
    .registers 3

    .line 727
    iput-object p1, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine$1;->this$0:Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;

    iput-object p2, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine$1;->val$rowIdsToKeep:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNodeValue(Lcom/google/firebase/database/core/Path;Ljava/lang/Void;Ljava/lang/Integer;)Ljava/lang/Integer;
    .registers 4

    .line 731
    iget-object p2, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine$1;->val$rowIdsToKeep:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    invoke-virtual {p2, p1}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->get(Lcom/google/firebase/database/core/Path;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_f

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_13

    :cond_f
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_13
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onNodeValue(Lcom/google/firebase/database/core/Path;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 727
    check-cast p2, Ljava/lang/Void;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine$1;->onNodeValue(Lcom/google/firebase/database/core/Path;Ljava/lang/Void;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

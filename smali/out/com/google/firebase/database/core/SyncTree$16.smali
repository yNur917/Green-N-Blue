.class Lcom/google/firebase/database/core/SyncTree$16;
.super Lcom/google/firebase/database/collection/LLRBNode$NodeVisitor;
.source "SyncTree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/core/SyncTree;->applyOperationDescendantsHelper(Lcom/google/firebase/database/core/operation/Operation;Lcom/google/firebase/database/core/utilities/ImmutableTree;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/WriteTreeRef;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/firebase/database/collection/LLRBNode$NodeVisitor<",
        "Lcom/google/firebase/database/snapshot/ChildKey;",
        "Lcom/google/firebase/database/core/utilities/ImmutableTree<",
        "Lcom/google/firebase/database/core/SyncPoint;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/firebase/database/core/SyncTree;

.field final synthetic val$events:Ljava/util/List;

.field final synthetic val$operation:Lcom/google/firebase/database/core/operation/Operation;

.field final synthetic val$resolvedServerCache:Lcom/google/firebase/database/snapshot/Node;

.field final synthetic val$writesCache:Lcom/google/firebase/database/core/WriteTreeRef;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/core/SyncTree;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/core/operation/Operation;Ljava/util/List;)V
    .registers 6

    .line 1088
    iput-object p1, p0, Lcom/google/firebase/database/core/SyncTree$16;->this$0:Lcom/google/firebase/database/core/SyncTree;

    iput-object p2, p0, Lcom/google/firebase/database/core/SyncTree$16;->val$resolvedServerCache:Lcom/google/firebase/database/snapshot/Node;

    iput-object p3, p0, Lcom/google/firebase/database/core/SyncTree$16;->val$writesCache:Lcom/google/firebase/database/core/WriteTreeRef;

    iput-object p4, p0, Lcom/google/firebase/database/core/SyncTree$16;->val$operation:Lcom/google/firebase/database/core/operation/Operation;

    iput-object p5, p0, Lcom/google/firebase/database/core/SyncTree$16;->val$events:Ljava/util/List;

    invoke-direct {p0}, Lcom/google/firebase/database/collection/LLRBNode$NodeVisitor;-><init>()V

    return-void
.end method


# virtual methods
.method public visitEntry(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/core/utilities/ImmutableTree;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/snapshot/ChildKey;",
            "Lcom/google/firebase/database/core/utilities/ImmutableTree<",
            "Lcom/google/firebase/database/core/SyncPoint;",
            ">;)V"
        }
    .end annotation

    .line 1092
    iget-object v0, p0, Lcom/google/firebase/database/core/SyncTree$16;->val$resolvedServerCache:Lcom/google/firebase/database/snapshot/Node;

    if-eqz v0, :cond_9

    .line 1093
    invoke-interface {v0, p1}, Lcom/google/firebase/database/snapshot/Node;->getImmediateChild(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    .line 1095
    :goto_a
    iget-object v1, p0, Lcom/google/firebase/database/core/SyncTree$16;->val$writesCache:Lcom/google/firebase/database/core/WriteTreeRef;

    invoke-virtual {v1, p1}, Lcom/google/firebase/database/core/WriteTreeRef;->child(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/core/WriteTreeRef;

    move-result-object v1

    .line 1096
    iget-object v2, p0, Lcom/google/firebase/database/core/SyncTree$16;->val$operation:Lcom/google/firebase/database/core/operation/Operation;

    invoke-virtual {v2, p1}, Lcom/google/firebase/database/core/operation/Operation;->operationForChild(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/core/operation/Operation;

    move-result-object p1

    if-eqz p1, :cond_23

    .line 1098
    iget-object v2, p0, Lcom/google/firebase/database/core/SyncTree$16;->val$events:Ljava/util/List;

    iget-object v3, p0, Lcom/google/firebase/database/core/SyncTree$16;->this$0:Lcom/google/firebase/database/core/SyncTree;

    .line 1099
    invoke-static {v3, p1, p2, v0, v1}, Lcom/google/firebase/database/core/SyncTree;->access$1600(Lcom/google/firebase/database/core/SyncTree;Lcom/google/firebase/database/core/operation/Operation;Lcom/google/firebase/database/core/utilities/ImmutableTree;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/WriteTreeRef;)Ljava/util/List;

    move-result-object p1

    .line 1098
    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_23
    return-void
.end method

.method public bridge synthetic visitEntry(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 1088
    check-cast p1, Lcom/google/firebase/database/snapshot/ChildKey;

    check-cast p2, Lcom/google/firebase/database/core/utilities/ImmutableTree;

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/database/core/SyncTree$16;->visitEntry(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/core/utilities/ImmutableTree;)V

    return-void
.end method

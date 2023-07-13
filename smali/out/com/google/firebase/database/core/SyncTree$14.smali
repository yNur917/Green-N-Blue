.class Lcom/google/firebase/database/core/SyncTree$14;
.super Ljava/lang/Object;
.source "SyncTree.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/core/SyncTree;->removeEventRegistration(Lcom/google/firebase/database/core/view/QuerySpec;Lcom/google/firebase/database/core/EventRegistration;Lcom/google/firebase/database/DatabaseError;Z)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/util/List<",
        "Lcom/google/firebase/database/core/view/Event;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/firebase/database/core/SyncTree;

.field final synthetic val$cancelError:Lcom/google/firebase/database/DatabaseError;

.field final synthetic val$eventRegistration:Lcom/google/firebase/database/core/EventRegistration;

.field final synthetic val$query:Lcom/google/firebase/database/core/view/QuerySpec;

.field final synthetic val$skipDedup:Z


# direct methods
.method constructor <init>(Lcom/google/firebase/database/core/SyncTree;Lcom/google/firebase/database/core/view/QuerySpec;Lcom/google/firebase/database/core/EventRegistration;Lcom/google/firebase/database/DatabaseError;Z)V
    .registers 6

    .line 684
    iput-object p1, p0, Lcom/google/firebase/database/core/SyncTree$14;->this$0:Lcom/google/firebase/database/core/SyncTree;

    iput-object p2, p0, Lcom/google/firebase/database/core/SyncTree$14;->val$query:Lcom/google/firebase/database/core/view/QuerySpec;

    iput-object p3, p0, Lcom/google/firebase/database/core/SyncTree$14;->val$eventRegistration:Lcom/google/firebase/database/core/EventRegistration;

    iput-object p4, p0, Lcom/google/firebase/database/core/SyncTree$14;->val$cancelError:Lcom/google/firebase/database/DatabaseError;

    iput-boolean p5, p0, Lcom/google/firebase/database/core/SyncTree$14;->val$skipDedup:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 684
    invoke-virtual {p0}, Lcom/google/firebase/database/core/SyncTree$14;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/database/core/view/Event;",
            ">;"
        }
    .end annotation

    .line 688
    iget-object v0, p0, Lcom/google/firebase/database/core/SyncTree$14;->val$query:Lcom/google/firebase/database/core/view/QuerySpec;

    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/QuerySpec;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v0

    .line 689
    iget-object v1, p0, Lcom/google/firebase/database/core/SyncTree$14;->this$0:Lcom/google/firebase/database/core/SyncTree;

    invoke-static {v1}, Lcom/google/firebase/database/core/SyncTree;->access$600(Lcom/google/firebase/database/core/SyncTree;)Lcom/google/firebase/database/core/utilities/ImmutableTree;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->get(Lcom/google/firebase/database/core/Path;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/database/core/SyncPoint;

    .line 690
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_16b

    .line 695
    iget-object v3, p0, Lcom/google/firebase/database/core/SyncTree$14;->val$query:Lcom/google/firebase/database/core/view/QuerySpec;

    .line 696
    invoke-virtual {v3}, Lcom/google/firebase/database/core/view/QuerySpec;->isDefault()Z

    move-result v3

    if-nez v3, :cond_29

    iget-object v3, p0, Lcom/google/firebase/database/core/SyncTree$14;->val$query:Lcom/google/firebase/database/core/view/QuerySpec;

    invoke-virtual {v1, v3}, Lcom/google/firebase/database/core/SyncPoint;->viewExistsForQuery(Lcom/google/firebase/database/core/view/QuerySpec;)Z

    move-result v3

    if-eqz v3, :cond_16b

    .line 699
    :cond_29
    iget-object v2, p0, Lcom/google/firebase/database/core/SyncTree$14;->val$query:Lcom/google/firebase/database/core/view/QuerySpec;

    iget-object v3, p0, Lcom/google/firebase/database/core/SyncTree$14;->val$eventRegistration:Lcom/google/firebase/database/core/EventRegistration;

    iget-object v4, p0, Lcom/google/firebase/database/core/SyncTree$14;->val$cancelError:Lcom/google/firebase/database/DatabaseError;

    .line 700
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/firebase/database/core/SyncPoint;->removeEventRegistration(Lcom/google/firebase/database/core/view/QuerySpec;Lcom/google/firebase/database/core/EventRegistration;Lcom/google/firebase/database/DatabaseError;)Lcom/google/firebase/database/core/utilities/Pair;

    move-result-object v2

    .line 701
    invoke-virtual {v1}, Lcom/google/firebase/database/core/SyncPoint;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_46

    .line 702
    iget-object v1, p0, Lcom/google/firebase/database/core/SyncTree$14;->this$0:Lcom/google/firebase/database/core/SyncTree;

    invoke-static {v1}, Lcom/google/firebase/database/core/SyncTree;->access$600(Lcom/google/firebase/database/core/SyncTree;)Lcom/google/firebase/database/core/utilities/ImmutableTree;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->remove(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/utilities/ImmutableTree;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/firebase/database/core/SyncTree;->access$602(Lcom/google/firebase/database/core/SyncTree;Lcom/google/firebase/database/core/utilities/ImmutableTree;)Lcom/google/firebase/database/core/utilities/ImmutableTree;

    .line 705
    :cond_46
    invoke-virtual {v2}, Lcom/google/firebase/database/core/utilities/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 706
    invoke-virtual {v2}, Lcom/google/firebase/database/core/utilities/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 714
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :cond_57
    const/4 v5, 0x0

    :goto_58
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_7a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/firebase/database/core/view/QuerySpec;

    .line 715
    iget-object v8, p0, Lcom/google/firebase/database/core/SyncTree$14;->this$0:Lcom/google/firebase/database/core/SyncTree;

    invoke-static {v8}, Lcom/google/firebase/database/core/SyncTree;->access$100(Lcom/google/firebase/database/core/SyncTree;)Lcom/google/firebase/database/core/persistence/PersistenceManager;

    move-result-object v8

    iget-object v9, p0, Lcom/google/firebase/database/core/SyncTree$14;->val$query:Lcom/google/firebase/database/core/view/QuerySpec;

    invoke-interface {v8, v9}, Lcom/google/firebase/database/core/persistence/PersistenceManager;->setQueryInactive(Lcom/google/firebase/database/core/view/QuerySpec;)V

    if-nez v5, :cond_78

    .line 716
    invoke-virtual {v6}, Lcom/google/firebase/database/core/view/QuerySpec;->loadsAllData()Z

    move-result v5

    if-eqz v5, :cond_57

    :cond_78
    const/4 v5, 0x1

    goto :goto_58

    .line 734
    :cond_7a
    iget-boolean v3, p0, Lcom/google/firebase/database/core/SyncTree$14;->val$skipDedup:Z

    const/4 v6, 0x0

    if-eqz v3, :cond_80

    return-object v6

    .line 737
    :cond_80
    iget-object v3, p0, Lcom/google/firebase/database/core/SyncTree$14;->this$0:Lcom/google/firebase/database/core/SyncTree;

    invoke-static {v3}, Lcom/google/firebase/database/core/SyncTree;->access$600(Lcom/google/firebase/database/core/SyncTree;)Lcom/google/firebase/database/core/utilities/ImmutableTree;

    move-result-object v3

    .line 739
    invoke-virtual {v3}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->getValue()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_9a

    invoke-virtual {v3}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/firebase/database/core/SyncPoint;

    invoke-virtual {v8}, Lcom/google/firebase/database/core/SyncPoint;->hasCompleteView()Z

    move-result v8

    if-eqz v8, :cond_9a

    const/4 v8, 0x1

    goto :goto_9b

    :cond_9a
    const/4 v8, 0x0

    .line 740
    :goto_9b
    invoke-virtual {v0}, Lcom/google/firebase/database/core/Path;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_9f
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_cf

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/firebase/database/snapshot/ChildKey;

    .line 741
    invoke-virtual {v3, v10}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->getChild(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/core/utilities/ImmutableTree;

    move-result-object v3

    if-nez v8, :cond_c6

    .line 744
    invoke-virtual {v3}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->getValue()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_c4

    .line 745
    invoke-virtual {v3}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/firebase/database/core/SyncPoint;

    invoke-virtual {v8}, Lcom/google/firebase/database/core/SyncPoint;->hasCompleteView()Z

    move-result v8

    if-eqz v8, :cond_c4

    goto :goto_c6

    :cond_c4
    const/4 v8, 0x0

    goto :goto_c7

    :cond_c6
    :goto_c6
    const/4 v8, 0x1

    :goto_c7
    if-nez v8, :cond_cf

    .line 746
    invoke-virtual {v3}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_9f

    :cond_cf
    if-eqz v5, :cond_118

    if-nez v8, :cond_118

    .line 752
    iget-object v3, p0, Lcom/google/firebase/database/core/SyncTree$14;->this$0:Lcom/google/firebase/database/core/SyncTree;

    invoke-static {v3}, Lcom/google/firebase/database/core/SyncTree;->access$600(Lcom/google/firebase/database/core/SyncTree;)Lcom/google/firebase/database/core/utilities/ImmutableTree;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->subtree(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/utilities/ImmutableTree;

    move-result-object v0

    .line 755
    invoke-virtual {v0}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_118

    .line 757
    iget-object v3, p0, Lcom/google/firebase/database/core/SyncTree$14;->this$0:Lcom/google/firebase/database/core/SyncTree;

    invoke-static {v3, v0}, Lcom/google/firebase/database/core/SyncTree;->access$1100(Lcom/google/firebase/database/core/SyncTree;Lcom/google/firebase/database/core/utilities/ImmutableTree;)Ljava/util/List;

    move-result-object v0

    .line 760
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_ed
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_118

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/database/core/view/View;

    .line 761
    new-instance v9, Lcom/google/firebase/database/core/SyncTree$ListenContainer;

    iget-object v10, p0, Lcom/google/firebase/database/core/SyncTree$14;->this$0:Lcom/google/firebase/database/core/SyncTree;

    invoke-direct {v9, v10, v3}, Lcom/google/firebase/database/core/SyncTree$ListenContainer;-><init>(Lcom/google/firebase/database/core/SyncTree;Lcom/google/firebase/database/core/view/View;)V

    .line 762
    invoke-virtual {v3}, Lcom/google/firebase/database/core/view/View;->getQuery()Lcom/google/firebase/database/core/view/QuerySpec;

    move-result-object v3

    .line 763
    iget-object v10, p0, Lcom/google/firebase/database/core/SyncTree$14;->this$0:Lcom/google/firebase/database/core/SyncTree;

    invoke-static {v10}, Lcom/google/firebase/database/core/SyncTree;->access$1400(Lcom/google/firebase/database/core/SyncTree;)Lcom/google/firebase/database/core/SyncTree$ListenProvider;

    move-result-object v10

    iget-object v11, p0, Lcom/google/firebase/database/core/SyncTree$14;->this$0:Lcom/google/firebase/database/core/SyncTree;

    .line 764
    invoke-static {v11, v3}, Lcom/google/firebase/database/core/SyncTree;->access$1200(Lcom/google/firebase/database/core/SyncTree;Lcom/google/firebase/database/core/view/QuerySpec;)Lcom/google/firebase/database/core/view/QuerySpec;

    move-result-object v3

    invoke-static {v9}, Lcom/google/firebase/database/core/SyncTree$ListenContainer;->access$1300(Lcom/google/firebase/database/core/SyncTree$ListenContainer;)Lcom/google/firebase/database/core/Tag;

    move-result-object v11

    .line 763
    invoke-interface {v10, v3, v11, v9, v9}, Lcom/google/firebase/database/core/SyncTree$ListenProvider;->startListening(Lcom/google/firebase/database/core/view/QuerySpec;Lcom/google/firebase/database/core/Tag;Lcom/google/firebase/database/connection/ListenHashProvider;Lcom/google/firebase/database/core/SyncTree$CompletionListener;)V

    goto :goto_ed

    :cond_118
    if-nez v8, :cond_166

    .line 775
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_166

    iget-object v0, p0, Lcom/google/firebase/database/core/SyncTree$14;->val$cancelError:Lcom/google/firebase/database/DatabaseError;

    if-nez v0, :cond_166

    if-eqz v5, :cond_138

    .line 780
    iget-object v0, p0, Lcom/google/firebase/database/core/SyncTree$14;->this$0:Lcom/google/firebase/database/core/SyncTree;

    invoke-static {v0}, Lcom/google/firebase/database/core/SyncTree;->access$1400(Lcom/google/firebase/database/core/SyncTree;)Lcom/google/firebase/database/core/SyncTree$ListenProvider;

    move-result-object v0

    iget-object v3, p0, Lcom/google/firebase/database/core/SyncTree$14;->this$0:Lcom/google/firebase/database/core/SyncTree;

    iget-object v4, p0, Lcom/google/firebase/database/core/SyncTree$14;->val$query:Lcom/google/firebase/database/core/view/QuerySpec;

    invoke-static {v3, v4}, Lcom/google/firebase/database/core/SyncTree;->access$1200(Lcom/google/firebase/database/core/SyncTree;Lcom/google/firebase/database/core/view/QuerySpec;)Lcom/google/firebase/database/core/view/QuerySpec;

    move-result-object v3

    invoke-interface {v0, v3, v6}, Lcom/google/firebase/database/core/SyncTree$ListenProvider;->stopListening(Lcom/google/firebase/database/core/view/QuerySpec;Lcom/google/firebase/database/core/Tag;)V

    goto :goto_166

    .line 782
    :cond_138
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_166

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/database/core/view/QuerySpec;

    .line 783
    iget-object v5, p0, Lcom/google/firebase/database/core/SyncTree$14;->this$0:Lcom/google/firebase/database/core/SyncTree;

    invoke-virtual {v5, v3}, Lcom/google/firebase/database/core/SyncTree;->tagForQuery(Lcom/google/firebase/database/core/view/QuerySpec;)Lcom/google/firebase/database/core/Tag;

    move-result-object v5

    if-eqz v5, :cond_152

    const/4 v6, 0x1

    goto :goto_153

    :cond_152
    const/4 v6, 0x0

    .line 784
    :goto_153
    invoke-static {v6}, Lcom/google/firebase/database/core/utilities/Utilities;->hardAssert(Z)V

    .line 785
    iget-object v6, p0, Lcom/google/firebase/database/core/SyncTree$14;->this$0:Lcom/google/firebase/database/core/SyncTree;

    invoke-static {v6}, Lcom/google/firebase/database/core/SyncTree;->access$1400(Lcom/google/firebase/database/core/SyncTree;)Lcom/google/firebase/database/core/SyncTree$ListenProvider;

    move-result-object v6

    iget-object v8, p0, Lcom/google/firebase/database/core/SyncTree$14;->this$0:Lcom/google/firebase/database/core/SyncTree;

    invoke-static {v8, v3}, Lcom/google/firebase/database/core/SyncTree;->access$1200(Lcom/google/firebase/database/core/SyncTree;Lcom/google/firebase/database/core/view/QuerySpec;)Lcom/google/firebase/database/core/view/QuerySpec;

    move-result-object v3

    invoke-interface {v6, v3, v5}, Lcom/google/firebase/database/core/SyncTree$ListenProvider;->stopListening(Lcom/google/firebase/database/core/view/QuerySpec;Lcom/google/firebase/database/core/Tag;)V

    goto :goto_13c

    .line 790
    :cond_166
    :goto_166
    iget-object v0, p0, Lcom/google/firebase/database/core/SyncTree$14;->this$0:Lcom/google/firebase/database/core/SyncTree;

    invoke-static {v0, v1}, Lcom/google/firebase/database/core/SyncTree;->access$1500(Lcom/google/firebase/database/core/SyncTree;Ljava/util/List;)V

    :cond_16b
    return-object v2
.end method

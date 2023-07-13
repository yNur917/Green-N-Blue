.class Lcom/google/firebase/database/core/SyncTree$15;
.super Ljava/lang/Object;
.source "SyncTree.java"

# interfaces
.implements Lcom/google/firebase/database/core/utilities/ImmutableTree$TreeVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/core/SyncTree;->setupListener(Lcom/google/firebase/database/core/view/QuerySpec;Lcom/google/firebase/database/core/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/firebase/database/core/utilities/ImmutableTree$TreeVisitor<",
        "Lcom/google/firebase/database/core/SyncPoint;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/firebase/database/core/SyncTree;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/core/SyncTree;)V
    .registers 2

    .line 930
    iput-object p1, p0, Lcom/google/firebase/database/core/SyncTree$15;->this$0:Lcom/google/firebase/database/core/SyncTree;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onNodeValue(Lcom/google/firebase/database/core/Path;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 930
    check-cast p2, Lcom/google/firebase/database/core/SyncPoint;

    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/firebase/database/core/SyncTree$15;->onNodeValue(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/SyncPoint;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public onNodeValue(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/SyncPoint;Ljava/lang/Void;)Ljava/lang/Void;
    .registers 6

    .line 933
    invoke-virtual {p1}, Lcom/google/firebase/database/core/Path;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2a

    invoke-virtual {p2}, Lcom/google/firebase/database/core/SyncPoint;->hasCompleteView()Z

    move-result p1

    if-eqz p1, :cond_2a

    .line 934
    invoke-virtual {p2}, Lcom/google/firebase/database/core/SyncPoint;->getCompleteView()Lcom/google/firebase/database/core/view/View;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/View;->getQuery()Lcom/google/firebase/database/core/view/QuerySpec;

    move-result-object p1

    .line 935
    iget-object p2, p0, Lcom/google/firebase/database/core/SyncTree$15;->this$0:Lcom/google/firebase/database/core/SyncTree;

    invoke-static {p2}, Lcom/google/firebase/database/core/SyncTree;->access$1400(Lcom/google/firebase/database/core/SyncTree;)Lcom/google/firebase/database/core/SyncTree$ListenProvider;

    move-result-object p2

    iget-object p3, p0, Lcom/google/firebase/database/core/SyncTree$15;->this$0:Lcom/google/firebase/database/core/SyncTree;

    invoke-static {p3, p1}, Lcom/google/firebase/database/core/SyncTree;->access$1200(Lcom/google/firebase/database/core/SyncTree;Lcom/google/firebase/database/core/view/QuerySpec;)Lcom/google/firebase/database/core/view/QuerySpec;

    move-result-object p3

    iget-object v0, p0, Lcom/google/firebase/database/core/SyncTree$15;->this$0:Lcom/google/firebase/database/core/SyncTree;

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/core/SyncTree;->tagForQuery(Lcom/google/firebase/database/core/view/QuerySpec;)Lcom/google/firebase/database/core/Tag;

    move-result-object p1

    invoke-interface {p2, p3, p1}, Lcom/google/firebase/database/core/SyncTree$ListenProvider;->stopListening(Lcom/google/firebase/database/core/view/QuerySpec;Lcom/google/firebase/database/core/Tag;)V

    goto :goto_58

    .line 938
    :cond_2a
    invoke-virtual {p2}, Lcom/google/firebase/database/core/SyncPoint;->getQueryViews()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_32
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_58

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/firebase/database/core/view/View;

    .line 939
    invoke-virtual {p2}, Lcom/google/firebase/database/core/view/View;->getQuery()Lcom/google/firebase/database/core/view/QuerySpec;

    move-result-object p2

    .line 940
    iget-object p3, p0, Lcom/google/firebase/database/core/SyncTree$15;->this$0:Lcom/google/firebase/database/core/SyncTree;

    invoke-static {p3}, Lcom/google/firebase/database/core/SyncTree;->access$1400(Lcom/google/firebase/database/core/SyncTree;)Lcom/google/firebase/database/core/SyncTree$ListenProvider;

    move-result-object p3

    iget-object v0, p0, Lcom/google/firebase/database/core/SyncTree$15;->this$0:Lcom/google/firebase/database/core/SyncTree;

    .line 941
    invoke-static {v0, p2}, Lcom/google/firebase/database/core/SyncTree;->access$1200(Lcom/google/firebase/database/core/SyncTree;Lcom/google/firebase/database/core/view/QuerySpec;)Lcom/google/firebase/database/core/view/QuerySpec;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/database/core/SyncTree$15;->this$0:Lcom/google/firebase/database/core/SyncTree;

    invoke-virtual {v1, p2}, Lcom/google/firebase/database/core/SyncTree;->tagForQuery(Lcom/google/firebase/database/core/view/QuerySpec;)Lcom/google/firebase/database/core/Tag;

    move-result-object p2

    .line 940
    invoke-interface {p3, v0, p2}, Lcom/google/firebase/database/core/SyncTree$ListenProvider;->stopListening(Lcom/google/firebase/database/core/view/QuerySpec;Lcom/google/firebase/database/core/Tag;)V

    goto :goto_32

    :cond_58
    :goto_58
    const/4 p1, 0x0

    return-object p1
.end method

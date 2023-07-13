.class Lcom/google/firebase/database/core/persistence/TrackedQueryManager$5;
.super Ljava/lang/Object;
.source "TrackedQueryManager.java"

# interfaces
.implements Lcom/google/firebase/database/core/utilities/ImmutableTree$TreeVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->setQueriesComplete(Lcom/google/firebase/database/core/Path;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/firebase/database/core/utilities/ImmutableTree$TreeVisitor<",
        "Ljava/util/Map<",
        "Lcom/google/firebase/database/core/view/QueryParams;",
        "Lcom/google/firebase/database/core/persistence/TrackedQuery;",
        ">;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/firebase/database/core/persistence/TrackedQueryManager;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/core/persistence/TrackedQueryManager;)V
    .registers 2

    .line 183
    iput-object p1, p0, Lcom/google/firebase/database/core/persistence/TrackedQueryManager$5;->this$0:Lcom/google/firebase/database/core/persistence/TrackedQueryManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onNodeValue(Lcom/google/firebase/database/core/Path;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 183
    check-cast p2, Ljava/util/Map;

    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/firebase/database/core/persistence/TrackedQueryManager$5;->onNodeValue(Lcom/google/firebase/database/core/Path;Ljava/util/Map;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public onNodeValue(Lcom/google/firebase/database/core/Path;Ljava/util/Map;Ljava/lang/Void;)Ljava/lang/Void;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/Path;",
            "Ljava/util/Map<",
            "Lcom/google/firebase/database/core/view/QueryParams;",
            "Lcom/google/firebase/database/core/persistence/TrackedQuery;",
            ">;",
            "Ljava/lang/Void;",
            ")",
            "Ljava/lang/Void;"
        }
    .end annotation

    .line 187
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_28

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 188
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/firebase/database/core/persistence/TrackedQuery;

    .line 189
    iget-boolean p3, p2, Lcom/google/firebase/database/core/persistence/TrackedQuery;->complete:Z

    if-nez p3, :cond_8

    .line 190
    iget-object p3, p0, Lcom/google/firebase/database/core/persistence/TrackedQueryManager$5;->this$0:Lcom/google/firebase/database/core/persistence/TrackedQueryManager;

    invoke-virtual {p2}, Lcom/google/firebase/database/core/persistence/TrackedQuery;->setComplete()Lcom/google/firebase/database/core/persistence/TrackedQuery;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->access$100(Lcom/google/firebase/database/core/persistence/TrackedQueryManager;Lcom/google/firebase/database/core/persistence/TrackedQuery;)V

    goto :goto_8

    :cond_28
    const/4 p1, 0x0

    return-object p1
.end method

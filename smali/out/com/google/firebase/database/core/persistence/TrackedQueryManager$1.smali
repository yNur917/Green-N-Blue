.class Lcom/google/firebase/database/core/persistence/TrackedQueryManager$1;
.super Ljava/lang/Object;
.source "TrackedQueryManager.java"

# interfaces
.implements Lcom/google/firebase/database/core/utilities/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/database/core/persistence/TrackedQueryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/firebase/database/core/utilities/Predicate<",
        "Ljava/util/Map<",
        "Lcom/google/firebase/database/core/view/QueryParams;",
        "Lcom/google/firebase/database/core/persistence/TrackedQuery;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic evaluate(Ljava/lang/Object;)Z
    .registers 2

    .line 40
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/google/firebase/database/core/persistence/TrackedQueryManager$1;->evaluate(Ljava/util/Map;)Z

    move-result p1

    return p1
.end method

.method public evaluate(Ljava/util/Map;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/google/firebase/database/core/view/QueryParams;",
            "Lcom/google/firebase/database/core/persistence/TrackedQuery;",
            ">;)Z"
        }
    .end annotation

    .line 43
    sget-object v0, Lcom/google/firebase/database/core/view/QueryParams;->DEFAULT_PARAMS:Lcom/google/firebase/database/core/view/QueryParams;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/database/core/persistence/TrackedQuery;

    if-eqz p1, :cond_10

    .line 44
    iget-boolean p1, p1, Lcom/google/firebase/database/core/persistence/TrackedQuery;->complete:Z

    if-eqz p1, :cond_10

    const/4 p1, 0x1

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    return p1
.end method

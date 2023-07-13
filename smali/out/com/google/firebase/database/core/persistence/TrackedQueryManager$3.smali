.class Lcom/google/firebase/database/core/persistence/TrackedQueryManager$3;
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
        "Lcom/google/firebase/database/core/persistence/TrackedQuery;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(Lcom/google/firebase/database/core/persistence/TrackedQuery;)Z
    .registers 2

    .line 61
    iget-boolean p1, p1, Lcom/google/firebase/database/core/persistence/TrackedQuery;->active:Z

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public bridge synthetic evaluate(Ljava/lang/Object;)Z
    .registers 2

    .line 58
    check-cast p1, Lcom/google/firebase/database/core/persistence/TrackedQuery;

    invoke-virtual {p0, p1}, Lcom/google/firebase/database/core/persistence/TrackedQueryManager$3;->evaluate(Lcom/google/firebase/database/core/persistence/TrackedQuery;)Z

    move-result p1

    return p1
.end method

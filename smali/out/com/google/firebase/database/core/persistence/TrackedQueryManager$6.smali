.class Lcom/google/firebase/database/core/persistence/TrackedQueryManager$6;
.super Ljava/lang/Object;
.source "TrackedQueryManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->pruneOldQueries(Lcom/google/firebase/database/core/persistence/CachePolicy;)Lcom/google/firebase/database/core/persistence/PruneForest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/google/firebase/database/core/persistence/TrackedQuery;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/firebase/database/core/persistence/TrackedQueryManager;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/core/persistence/TrackedQueryManager;)V
    .registers 2

    .line 227
    iput-object p1, p0, Lcom/google/firebase/database/core/persistence/TrackedQueryManager$6;->this$0:Lcom/google/firebase/database/core/persistence/TrackedQueryManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/google/firebase/database/core/persistence/TrackedQuery;Lcom/google/firebase/database/core/persistence/TrackedQuery;)I
    .registers 5

    .line 230
    iget-wide v0, p1, Lcom/google/firebase/database/core/persistence/TrackedQuery;->lastUse:J

    iget-wide p1, p2, Lcom/google/firebase/database/core/persistence/TrackedQuery;->lastUse:J

    invoke-static {v0, v1, p1, p2}, Lcom/google/firebase/database/core/utilities/Utilities;->compareLongs(JJ)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 227
    check-cast p1, Lcom/google/firebase/database/core/persistence/TrackedQuery;

    check-cast p2, Lcom/google/firebase/database/core/persistence/TrackedQuery;

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/database/core/persistence/TrackedQueryManager$6;->compare(Lcom/google/firebase/database/core/persistence/TrackedQuery;Lcom/google/firebase/database/core/persistence/TrackedQuery;)I

    move-result p1

    return p1
.end method

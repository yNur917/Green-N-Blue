.class Lcom/google/firebase/database/core/WriteTree$1;
.super Ljava/lang/Object;
.source "WriteTree.java"

# interfaces
.implements Lcom/google/firebase/database/core/utilities/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/core/WriteTree;->calcCompleteEventCache(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;Ljava/util/List;Z)Lcom/google/firebase/database/snapshot/Node;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/firebase/database/core/utilities/Predicate<",
        "Lcom/google/firebase/database/core/UserWriteRecord;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/firebase/database/core/WriteTree;

.field final synthetic val$includeHiddenWrites:Z

.field final synthetic val$treePath:Lcom/google/firebase/database/core/Path;

.field final synthetic val$writeIdsToExclude:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/core/WriteTree;ZLjava/util/List;Lcom/google/firebase/database/core/Path;)V
    .registers 5

    .line 234
    iput-object p1, p0, Lcom/google/firebase/database/core/WriteTree$1;->this$0:Lcom/google/firebase/database/core/WriteTree;

    iput-boolean p2, p0, Lcom/google/firebase/database/core/WriteTree$1;->val$includeHiddenWrites:Z

    iput-object p3, p0, Lcom/google/firebase/database/core/WriteTree$1;->val$writeIdsToExclude:Ljava/util/List;

    iput-object p4, p0, Lcom/google/firebase/database/core/WriteTree$1;->val$treePath:Lcom/google/firebase/database/core/Path;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(Lcom/google/firebase/database/core/UserWriteRecord;)Z
    .registers 5

    .line 237
    invoke-virtual {p1}, Lcom/google/firebase/database/core/UserWriteRecord;->isVisible()Z

    move-result v0

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/google/firebase/database/core/WriteTree$1;->val$includeHiddenWrites:Z

    if-eqz v0, :cond_34

    :cond_a
    iget-object v0, p0, Lcom/google/firebase/database/core/WriteTree$1;->val$writeIdsToExclude:Ljava/util/List;

    .line 238
    invoke-virtual {p1}, Lcom/google/firebase/database/core/UserWriteRecord;->getWriteId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    .line 239
    invoke-virtual {p1}, Lcom/google/firebase/database/core/UserWriteRecord;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/database/core/WriteTree$1;->val$treePath:Lcom/google/firebase/database/core/Path;

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/core/Path;->contains(Lcom/google/firebase/database/core/Path;)Z

    move-result v0

    if-nez v0, :cond_32

    iget-object v0, p0, Lcom/google/firebase/database/core/WriteTree$1;->val$treePath:Lcom/google/firebase/database/core/Path;

    invoke-virtual {p1}, Lcom/google/firebase/database/core/UserWriteRecord;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/core/Path;->contains(Lcom/google/firebase/database/core/Path;)Z

    move-result p1

    if-eqz p1, :cond_34

    :cond_32
    const/4 p1, 0x1

    goto :goto_35

    :cond_34
    const/4 p1, 0x0

    :goto_35
    return p1
.end method

.method public bridge synthetic evaluate(Ljava/lang/Object;)Z
    .registers 2

    .line 234
    check-cast p1, Lcom/google/firebase/database/core/UserWriteRecord;

    invoke-virtual {p0, p1}, Lcom/google/firebase/database/core/WriteTree$1;->evaluate(Lcom/google/firebase/database/core/UserWriteRecord;)Z

    move-result p1

    return p1
.end method

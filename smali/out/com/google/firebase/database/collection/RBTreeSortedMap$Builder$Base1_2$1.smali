.class Lcom/google/firebase/database/collection/RBTreeSortedMap$Builder$Base1_2$1;
.super Ljava/lang/Object;
.source "RBTreeSortedMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/collection/RBTreeSortedMap$Builder$Base1_2;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/google/firebase/database/collection/RBTreeSortedMap$Builder$BooleanChunk;",
        ">;"
    }
.end annotation


# instance fields
.field private current:I

.field final synthetic this$0:Lcom/google/firebase/database/collection/RBTreeSortedMap$Builder$Base1_2;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/collection/RBTreeSortedMap$Builder$Base1_2;)V
    .registers 2

    .line 257
    iput-object p1, p0, Lcom/google/firebase/database/collection/RBTreeSortedMap$Builder$Base1_2$1;->this$0:Lcom/google/firebase/database/collection/RBTreeSortedMap$Builder$Base1_2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 259
    invoke-static {p1}, Lcom/google/firebase/database/collection/RBTreeSortedMap$Builder$Base1_2;->access$000(Lcom/google/firebase/database/collection/RBTreeSortedMap$Builder$Base1_2;)I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/firebase/database/collection/RBTreeSortedMap$Builder$Base1_2$1;->current:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    .line 263
    iget v0, p0, Lcom/google/firebase/database/collection/RBTreeSortedMap$Builder$Base1_2$1;->current:I

    if-ltz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public next()Lcom/google/firebase/database/collection/RBTreeSortedMap$Builder$BooleanChunk;
    .registers 8

    .line 268
    iget-object v0, p0, Lcom/google/firebase/database/collection/RBTreeSortedMap$Builder$Base1_2$1;->this$0:Lcom/google/firebase/database/collection/RBTreeSortedMap$Builder$Base1_2;

    invoke-static {v0}, Lcom/google/firebase/database/collection/RBTreeSortedMap$Builder$Base1_2;->access$100(Lcom/google/firebase/database/collection/RBTreeSortedMap$Builder$Base1_2;)J

    move-result-wide v0

    iget v2, p0, Lcom/google/firebase/database/collection/RBTreeSortedMap$Builder$Base1_2$1;->current:I

    const/4 v3, 0x1

    shl-int v2, v3, v2

    int-to-long v4, v2

    and-long/2addr v0, v4

    .line 269
    new-instance v2, Lcom/google/firebase/database/collection/RBTreeSortedMap$Builder$BooleanChunk;

    invoke-direct {v2}, Lcom/google/firebase/database/collection/RBTreeSortedMap$Builder$BooleanChunk;-><init>()V

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-nez v6, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    .line 270
    :goto_1b
    iput-boolean v0, v2, Lcom/google/firebase/database/collection/RBTreeSortedMap$Builder$BooleanChunk;->isOne:Z

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 271
    iget v4, p0, Lcom/google/firebase/database/collection/RBTreeSortedMap$Builder$Base1_2$1;->current:I

    int-to-double v4, v4

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, v2, Lcom/google/firebase/database/collection/RBTreeSortedMap$Builder$BooleanChunk;->chunkSize:I

    .line 272
    iget v0, p0, Lcom/google/firebase/database/collection/RBTreeSortedMap$Builder$Base1_2$1;->current:I

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/google/firebase/database/collection/RBTreeSortedMap$Builder$Base1_2$1;->current:I

    return-object v2
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .line 257
    invoke-virtual {p0}, Lcom/google/firebase/database/collection/RBTreeSortedMap$Builder$Base1_2$1;->next()Lcom/google/firebase/database/collection/RBTreeSortedMap$Builder$BooleanChunk;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 1

    return-void
.end method

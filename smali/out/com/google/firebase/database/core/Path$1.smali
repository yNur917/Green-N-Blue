.class Lcom/google/firebase/database/core/Path$1;
.super Ljava/lang/Object;
.source "Path.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/core/Path;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/google/firebase/database/snapshot/ChildKey;",
        ">;"
    }
.end annotation


# instance fields
.field offset:I

.field final synthetic this$0:Lcom/google/firebase/database/core/Path;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/core/Path;)V
    .registers 2

    .line 192
    iput-object p1, p0, Lcom/google/firebase/database/core/Path$1;->this$0:Lcom/google/firebase/database/core/Path;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    invoke-static {p1}, Lcom/google/firebase/database/core/Path;->access$000(Lcom/google/firebase/database/core/Path;)I

    move-result p1

    iput p1, p0, Lcom/google/firebase/database/core/Path$1;->offset:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 3

    .line 197
    iget v0, p0, Lcom/google/firebase/database/core/Path$1;->offset:I

    iget-object v1, p0, Lcom/google/firebase/database/core/Path$1;->this$0:Lcom/google/firebase/database/core/Path;

    invoke-static {v1}, Lcom/google/firebase/database/core/Path;->access$100(Lcom/google/firebase/database/core/Path;)I

    move-result v1

    if-ge v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public next()Lcom/google/firebase/database/snapshot/ChildKey;
    .registers 3

    .line 202
    invoke-virtual {p0}, Lcom/google/firebase/database/core/Path$1;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 205
    iget-object v0, p0, Lcom/google/firebase/database/core/Path$1;->this$0:Lcom/google/firebase/database/core/Path;

    invoke-static {v0}, Lcom/google/firebase/database/core/Path;->access$200(Lcom/google/firebase/database/core/Path;)[Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v0

    iget v1, p0, Lcom/google/firebase/database/core/Path$1;->offset:I

    aget-object v0, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 206
    iput v1, p0, Lcom/google/firebase/database/core/Path$1;->offset:I

    return-object v0

    .line 203
    :cond_15
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "No more elements."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .line 192
    invoke-virtual {p0}, Lcom/google/firebase/database/core/Path$1;->next()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 3

    .line 212
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Can\'t remove component from immutable Path!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

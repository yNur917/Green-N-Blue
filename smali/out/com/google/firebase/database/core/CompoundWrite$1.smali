.class Lcom/google/firebase/database/core/CompoundWrite$1;
.super Ljava/lang/Object;
.source "CompoundWrite.java"

# interfaces
.implements Lcom/google/firebase/database/core/utilities/ImmutableTree$TreeVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/core/CompoundWrite;->addWrites(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/CompoundWrite;)Lcom/google/firebase/database/core/CompoundWrite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/firebase/database/core/utilities/ImmutableTree$TreeVisitor<",
        "Lcom/google/firebase/database/snapshot/Node;",
        "Lcom/google/firebase/database/core/CompoundWrite;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/firebase/database/core/CompoundWrite;

.field final synthetic val$path:Lcom/google/firebase/database/core/Path;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/core/CompoundWrite;Lcom/google/firebase/database/core/Path;)V
    .registers 3

    .line 110
    iput-object p1, p0, Lcom/google/firebase/database/core/CompoundWrite$1;->this$0:Lcom/google/firebase/database/core/CompoundWrite;

    iput-object p2, p0, Lcom/google/firebase/database/core/CompoundWrite$1;->val$path:Lcom/google/firebase/database/core/Path;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNodeValue(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/CompoundWrite;)Lcom/google/firebase/database/core/CompoundWrite;
    .registers 5

    .line 113
    iget-object v0, p0, Lcom/google/firebase/database/core/CompoundWrite$1;->val$path:Lcom/google/firebase/database/core/Path;

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/core/Path;->child(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/Path;

    move-result-object p1

    invoke-virtual {p3, p1, p2}, Lcom/google/firebase/database/core/CompoundWrite;->addWrite(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onNodeValue(Lcom/google/firebase/database/core/Path;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 110
    check-cast p2, Lcom/google/firebase/database/snapshot/Node;

    check-cast p3, Lcom/google/firebase/database/core/CompoundWrite;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/firebase/database/core/CompoundWrite$1;->onNodeValue(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/CompoundWrite;)Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object p1

    return-object p1
.end method

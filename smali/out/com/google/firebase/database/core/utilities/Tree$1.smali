.class Lcom/google/firebase/database/core/utilities/Tree$1;
.super Ljava/lang/Object;
.source "Tree.java"

# interfaces
.implements Lcom/google/firebase/database/core/utilities/Tree$TreeVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/core/utilities/Tree;->forEachDescendant(Lcom/google/firebase/database/core/utilities/Tree$TreeVisitor;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/firebase/database/core/utilities/Tree$TreeVisitor<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/firebase/database/core/utilities/Tree;

.field final synthetic val$childrenFirst:Z

.field final synthetic val$visitor:Lcom/google/firebase/database/core/utilities/Tree$TreeVisitor;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/core/utilities/Tree;Lcom/google/firebase/database/core/utilities/Tree$TreeVisitor;Z)V
    .registers 4

    .line 126
    iput-object p1, p0, Lcom/google/firebase/database/core/utilities/Tree$1;->this$0:Lcom/google/firebase/database/core/utilities/Tree;

    iput-object p2, p0, Lcom/google/firebase/database/core/utilities/Tree$1;->val$visitor:Lcom/google/firebase/database/core/utilities/Tree$TreeVisitor;

    iput-boolean p3, p0, Lcom/google/firebase/database/core/utilities/Tree$1;->val$childrenFirst:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visitTree(Lcom/google/firebase/database/core/utilities/Tree;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/utilities/Tree<",
            "TT;>;)V"
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lcom/google/firebase/database/core/utilities/Tree$1;->val$visitor:Lcom/google/firebase/database/core/utilities/Tree$TreeVisitor;

    iget-boolean v1, p0, Lcom/google/firebase/database/core/utilities/Tree$1;->val$childrenFirst:Z

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2, v1}, Lcom/google/firebase/database/core/utilities/Tree;->forEachDescendant(Lcom/google/firebase/database/core/utilities/Tree$TreeVisitor;ZZ)V

    return-void
.end method

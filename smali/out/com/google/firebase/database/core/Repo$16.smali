.class Lcom/google/firebase/database/core/Repo$16;
.super Ljava/lang/Object;
.source "Repo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/core/Repo;->startTransaction(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/Transaction$Handler;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/firebase/database/core/Repo;

.field final synthetic val$handler:Lcom/google/firebase/database/Transaction$Handler;

.field final synthetic val$innerClassError:Lcom/google/firebase/database/DatabaseError;

.field final synthetic val$snap:Lcom/google/firebase/database/DataSnapshot;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/core/Repo;Lcom/google/firebase/database/Transaction$Handler;Lcom/google/firebase/database/DatabaseError;Lcom/google/firebase/database/DataSnapshot;)V
    .registers 5

    .line 980
    iput-object p1, p0, Lcom/google/firebase/database/core/Repo$16;->this$0:Lcom/google/firebase/database/core/Repo;

    iput-object p2, p0, Lcom/google/firebase/database/core/Repo$16;->val$handler:Lcom/google/firebase/database/Transaction$Handler;

    iput-object p3, p0, Lcom/google/firebase/database/core/Repo$16;->val$innerClassError:Lcom/google/firebase/database/DatabaseError;

    iput-object p4, p0, Lcom/google/firebase/database/core/Repo$16;->val$snap:Lcom/google/firebase/database/DataSnapshot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 983
    iget-object v0, p0, Lcom/google/firebase/database/core/Repo$16;->val$handler:Lcom/google/firebase/database/Transaction$Handler;

    iget-object v1, p0, Lcom/google/firebase/database/core/Repo$16;->val$innerClassError:Lcom/google/firebase/database/DatabaseError;

    iget-object v2, p0, Lcom/google/firebase/database/core/Repo$16;->val$snap:Lcom/google/firebase/database/DataSnapshot;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2}, Lcom/google/firebase/database/Transaction$Handler;->onComplete(Lcom/google/firebase/database/DatabaseError;ZLcom/google/firebase/database/DataSnapshot;)V

    return-void
.end method

.class Lcom/google/firebase/database/core/RepoManager$4;
.super Ljava/lang/Object;
.source "RepoManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/core/RepoManager;->resumeInternal(Lcom/google/firebase/database/core/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/firebase/database/core/RepoManager;

.field final synthetic val$ctx:Lcom/google/firebase/database/core/Context;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/core/RepoManager;Lcom/google/firebase/database/core/Context;)V
    .registers 3

    .line 151
    iput-object p1, p0, Lcom/google/firebase/database/core/RepoManager$4;->this$0:Lcom/google/firebase/database/core/RepoManager;

    iput-object p2, p0, Lcom/google/firebase/database/core/RepoManager$4;->val$ctx:Lcom/google/firebase/database/core/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 154
    iget-object v0, p0, Lcom/google/firebase/database/core/RepoManager$4;->this$0:Lcom/google/firebase/database/core/RepoManager;

    invoke-static {v0}, Lcom/google/firebase/database/core/RepoManager;->access$000(Lcom/google/firebase/database/core/RepoManager;)Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    .line 155
    :try_start_7
    iget-object v1, p0, Lcom/google/firebase/database/core/RepoManager$4;->this$0:Lcom/google/firebase/database/core/RepoManager;

    invoke-static {v1}, Lcom/google/firebase/database/core/RepoManager;->access$000(Lcom/google/firebase/database/core/RepoManager;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/database/core/RepoManager$4;->val$ctx:Lcom/google/firebase/database/core/Context;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 156
    iget-object v1, p0, Lcom/google/firebase/database/core/RepoManager$4;->this$0:Lcom/google/firebase/database/core/RepoManager;

    invoke-static {v1}, Lcom/google/firebase/database/core/RepoManager;->access$000(Lcom/google/firebase/database/core/RepoManager;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/database/core/RepoManager$4;->val$ctx:Lcom/google/firebase/database/core/Context;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/database/core/Repo;

    .line 157
    invoke-virtual {v2}, Lcom/google/firebase/database/core/Repo;->resume()V

    goto :goto_2b

    .line 160
    :cond_3b
    monitor-exit v0

    return-void

    :catchall_3d
    move-exception v1

    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_7 .. :try_end_3f} :catchall_3d

    throw v1
.end method

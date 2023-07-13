.class Lcom/google/firebase/database/core/RepoManager$3;
.super Ljava/lang/Object;
.source "RepoManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/core/RepoManager;->interruptInternal(Lcom/google/firebase/database/core/Context;)V
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

    .line 127
    iput-object p1, p0, Lcom/google/firebase/database/core/RepoManager$3;->this$0:Lcom/google/firebase/database/core/RepoManager;

    iput-object p2, p0, Lcom/google/firebase/database/core/RepoManager$3;->val$ctx:Lcom/google/firebase/database/core/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 130
    iget-object v0, p0, Lcom/google/firebase/database/core/RepoManager$3;->this$0:Lcom/google/firebase/database/core/RepoManager;

    invoke-static {v0}, Lcom/google/firebase/database/core/RepoManager;->access$000(Lcom/google/firebase/database/core/RepoManager;)Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    .line 132
    :try_start_7
    iget-object v1, p0, Lcom/google/firebase/database/core/RepoManager$3;->this$0:Lcom/google/firebase/database/core/RepoManager;

    invoke-static {v1}, Lcom/google/firebase/database/core/RepoManager;->access$000(Lcom/google/firebase/database/core/RepoManager;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/database/core/RepoManager$3;->val$ctx:Lcom/google/firebase/database/core/Context;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 133
    iget-object v1, p0, Lcom/google/firebase/database/core/RepoManager$3;->this$0:Lcom/google/firebase/database/core/RepoManager;

    invoke-static {v1}, Lcom/google/firebase/database/core/RepoManager;->access$000(Lcom/google/firebase/database/core/RepoManager;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/database/core/RepoManager$3;->val$ctx:Lcom/google/firebase/database/core/Context;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    :goto_2c
    const/4 v3, 0x1

    :goto_2d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_47

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/firebase/database/core/Repo;

    .line 134
    invoke-virtual {v4}, Lcom/google/firebase/database/core/Repo;->interrupt()V

    if-eqz v3, :cond_45

    .line 135
    invoke-virtual {v4}, Lcom/google/firebase/database/core/Repo;->hasListeners()Z

    move-result v3

    if-nez v3, :cond_45

    goto :goto_2c

    :cond_45
    const/4 v3, 0x0

    goto :goto_2d

    :cond_47
    if-eqz v3, :cond_4e

    .line 138
    iget-object v1, p0, Lcom/google/firebase/database/core/RepoManager$3;->val$ctx:Lcom/google/firebase/database/core/Context;

    invoke-virtual {v1}, Lcom/google/firebase/database/core/Context;->stop()V

    .line 141
    :cond_4e
    monitor-exit v0

    return-void

    :catchall_50
    move-exception v1

    monitor-exit v0
    :try_end_52
    .catchall {:try_start_7 .. :try_end_52} :catchall_50

    throw v1
.end method

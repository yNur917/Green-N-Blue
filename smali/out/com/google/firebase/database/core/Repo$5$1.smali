.class Lcom/google/firebase/database/core/Repo$5$1;
.super Ljava/lang/Object;
.source "Repo.java"

# interfaces
.implements Lcom/google/firebase/database/connection/RequestResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/core/Repo$5;->startListening(Lcom/google/firebase/database/core/view/QuerySpec;Lcom/google/firebase/database/core/Tag;Lcom/google/firebase/database/connection/ListenHashProvider;Lcom/google/firebase/database/core/SyncTree$CompletionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/firebase/database/core/Repo$5;

.field final synthetic val$onListenComplete:Lcom/google/firebase/database/core/SyncTree$CompletionListener;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/core/Repo$5;Lcom/google/firebase/database/core/SyncTree$CompletionListener;)V
    .registers 3

    .line 211
    iput-object p1, p0, Lcom/google/firebase/database/core/Repo$5$1;->this$1:Lcom/google/firebase/database/core/Repo$5;

    iput-object p2, p0, Lcom/google/firebase/database/core/Repo$5$1;->val$onListenComplete:Lcom/google/firebase/database/core/SyncTree$CompletionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestResult(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 214
    invoke-static {p1, p2}, Lcom/google/firebase/database/core/Repo;->access$600(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/DatabaseError;

    move-result-object p1

    .line 215
    iget-object p2, p0, Lcom/google/firebase/database/core/Repo$5$1;->val$onListenComplete:Lcom/google/firebase/database/core/SyncTree$CompletionListener;

    invoke-interface {p2, p1}, Lcom/google/firebase/database/core/SyncTree$CompletionListener;->onListenComplete(Lcom/google/firebase/database/DatabaseError;)Ljava/util/List;

    move-result-object p1

    .line 216
    iget-object p2, p0, Lcom/google/firebase/database/core/Repo$5$1;->this$1:Lcom/google/firebase/database/core/Repo$5;

    iget-object p2, p2, Lcom/google/firebase/database/core/Repo$5;->this$0:Lcom/google/firebase/database/core/Repo;

    invoke-static {p2, p1}, Lcom/google/firebase/database/core/Repo;->access$500(Lcom/google/firebase/database/core/Repo;Ljava/util/List;)V

    return-void
.end method

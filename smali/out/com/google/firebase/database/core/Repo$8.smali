.class Lcom/google/firebase/database/core/Repo$8;
.super Ljava/lang/Object;
.source "Repo.java"

# interfaces
.implements Lcom/google/firebase/database/connection/RequestResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/core/Repo;->setValue(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/firebase/database/core/Repo;

.field final synthetic val$onComplete:Lcom/google/firebase/database/DatabaseReference$CompletionListener;

.field final synthetic val$path:Lcom/google/firebase/database/core/Path;

.field final synthetic val$writeId:J


# direct methods
.method constructor <init>(Lcom/google/firebase/database/core/Repo;Lcom/google/firebase/database/core/Path;JLcom/google/firebase/database/DatabaseReference$CompletionListener;)V
    .registers 6

    .line 480
    iput-object p1, p0, Lcom/google/firebase/database/core/Repo$8;->this$0:Lcom/google/firebase/database/core/Repo;

    iput-object p2, p0, Lcom/google/firebase/database/core/Repo$8;->val$path:Lcom/google/firebase/database/core/Path;

    iput-wide p3, p0, Lcom/google/firebase/database/core/Repo$8;->val$writeId:J

    iput-object p5, p0, Lcom/google/firebase/database/core/Repo$8;->val$onComplete:Lcom/google/firebase/database/DatabaseReference$CompletionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestResult(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 483
    invoke-static {p1, p2}, Lcom/google/firebase/database/core/Repo;->access$600(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/DatabaseError;

    move-result-object p1

    .line 484
    iget-object p2, p0, Lcom/google/firebase/database/core/Repo$8;->this$0:Lcom/google/firebase/database/core/Repo;

    iget-object v0, p0, Lcom/google/firebase/database/core/Repo$8;->val$path:Lcom/google/firebase/database/core/Path;

    const-string v1, "setValue"

    invoke-static {p2, v1, v0, p1}, Lcom/google/firebase/database/core/Repo;->access$700(Lcom/google/firebase/database/core/Repo;Ljava/lang/String;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/DatabaseError;)V

    .line 485
    iget-object p2, p0, Lcom/google/firebase/database/core/Repo$8;->this$0:Lcom/google/firebase/database/core/Repo;

    iget-wide v0, p0, Lcom/google/firebase/database/core/Repo$8;->val$writeId:J

    iget-object v2, p0, Lcom/google/firebase/database/core/Repo$8;->val$path:Lcom/google/firebase/database/core/Path;

    invoke-static {p2, v0, v1, v2, p1}, Lcom/google/firebase/database/core/Repo;->access$800(Lcom/google/firebase/database/core/Repo;JLcom/google/firebase/database/core/Path;Lcom/google/firebase/database/DatabaseError;)V

    .line 486
    iget-object p2, p0, Lcom/google/firebase/database/core/Repo$8;->this$0:Lcom/google/firebase/database/core/Repo;

    iget-object v0, p0, Lcom/google/firebase/database/core/Repo$8;->val$onComplete:Lcom/google/firebase/database/DatabaseReference$CompletionListener;

    iget-object v1, p0, Lcom/google/firebase/database/core/Repo$8;->val$path:Lcom/google/firebase/database/core/Path;

    invoke-virtual {p2, v0, p1, v1}, Lcom/google/firebase/database/core/Repo;->callOnComplete(Lcom/google/firebase/database/DatabaseReference$CompletionListener;Lcom/google/firebase/database/DatabaseError;Lcom/google/firebase/database/core/Path;)V

    return-void
.end method

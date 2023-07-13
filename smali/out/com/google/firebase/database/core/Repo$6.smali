.class Lcom/google/firebase/database/core/Repo$6;
.super Ljava/lang/Object;
.source "Repo.java"

# interfaces
.implements Lcom/google/firebase/database/connection/RequestResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/core/Repo;->restoreWrites(Lcom/google/firebase/database/core/persistence/PersistenceManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/firebase/database/core/Repo;

.field final synthetic val$write:Lcom/google/firebase/database/core/UserWriteRecord;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/core/Repo;Lcom/google/firebase/database/core/UserWriteRecord;)V
    .registers 3

    .line 241
    iput-object p1, p0, Lcom/google/firebase/database/core/Repo$6;->this$0:Lcom/google/firebase/database/core/Repo;

    iput-object p2, p0, Lcom/google/firebase/database/core/Repo$6;->val$write:Lcom/google/firebase/database/core/UserWriteRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestResult(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 244
    invoke-static {p1, p2}, Lcom/google/firebase/database/core/Repo;->access$600(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/DatabaseError;

    move-result-object p1

    .line 245
    iget-object p2, p0, Lcom/google/firebase/database/core/Repo$6;->this$0:Lcom/google/firebase/database/core/Repo;

    iget-object v0, p0, Lcom/google/firebase/database/core/Repo$6;->val$write:Lcom/google/firebase/database/core/UserWriteRecord;

    invoke-virtual {v0}, Lcom/google/firebase/database/core/UserWriteRecord;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v0

    const-string v1, "Persisted write"

    invoke-static {p2, v1, v0, p1}, Lcom/google/firebase/database/core/Repo;->access$700(Lcom/google/firebase/database/core/Repo;Ljava/lang/String;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/DatabaseError;)V

    .line 246
    iget-object p2, p0, Lcom/google/firebase/database/core/Repo$6;->this$0:Lcom/google/firebase/database/core/Repo;

    iget-object v0, p0, Lcom/google/firebase/database/core/Repo$6;->val$write:Lcom/google/firebase/database/core/UserWriteRecord;

    invoke-virtual {v0}, Lcom/google/firebase/database/core/UserWriteRecord;->getWriteId()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/firebase/database/core/Repo$6;->val$write:Lcom/google/firebase/database/core/UserWriteRecord;

    invoke-virtual {v2}, Lcom/google/firebase/database/core/UserWriteRecord;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v2

    invoke-static {p2, v0, v1, v2, p1}, Lcom/google/firebase/database/core/Repo;->access$800(Lcom/google/firebase/database/core/Repo;JLcom/google/firebase/database/core/Path;Lcom/google/firebase/database/DatabaseError;)V

    return-void
.end method

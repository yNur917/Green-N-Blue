.class Lcom/google/firebase/database/connection/PersistentConnectionImpl$6;
.super Ljava/lang/Object;
.source "PersistentConnectionImpl.java"

# interfaces
.implements Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionRequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/connection/PersistentConnectionImpl;->sendGet(Ljava/lang/Long;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

.field final synthetic val$get:Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingGet;

.field final synthetic val$readId:Ljava/lang/Long;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/connection/PersistentConnectionImpl;Ljava/lang/Long;Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingGet;)V
    .registers 4

    .line 1285
    iput-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$6;->this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    iput-object p2, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$6;->val$readId:Ljava/lang/Long;

    iput-object p3, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$6;->val$get:Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingGet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1288
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$6;->this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    invoke-static {v0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->access$2300(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$6;->val$readId:Ljava/lang/Long;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingGet;

    .line 1289
    iget-object v1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$6;->val$get:Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingGet;

    if-ne v0, v1, :cond_27

    .line 1290
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$6;->this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    invoke-static {v0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->access$2300(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$6;->val$readId:Ljava/lang/Long;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1291
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$6;->val$get:Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingGet;

    invoke-static {v0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingGet;->access$2400(Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingGet;)Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionRequestCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionRequestCallback;->onResponse(Ljava/util/Map;)V

    goto :goto_57

    .line 1292
    :cond_27
    iget-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$6;->this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    invoke-static {p1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->access$1500(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)Lcom/google/firebase/database/logging/LogWrapper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result p1

    if-eqz p1, :cond_57

    .line 1293
    iget-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$6;->this$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    invoke-static {p1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->access$1500(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)Lcom/google/firebase/database/logging/LogWrapper;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring on complete for get "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$6;->val$readId:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " because it was removed already."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_57
    :goto_57
    return-void
.end method

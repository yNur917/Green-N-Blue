.class Lcom/google/firebase/database/OnDisconnect$2;
.super Ljava/lang/Object;
.source "OnDisconnect.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/OnDisconnect;->updateChildrenInternal(Ljava/util/Map;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)Lcom/google/android/gms/tasks/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/firebase/database/OnDisconnect;

.field final synthetic val$parsedUpdate:Ljava/util/Map;

.field final synthetic val$update:Ljava/util/Map;

.field final synthetic val$wrapped:Lcom/google/firebase/database/core/utilities/Pair;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/OnDisconnect;Ljava/util/Map;Lcom/google/firebase/database/core/utilities/Pair;Ljava/util/Map;)V
    .registers 5

    .line 210
    iput-object p1, p0, Lcom/google/firebase/database/OnDisconnect$2;->this$0:Lcom/google/firebase/database/OnDisconnect;

    iput-object p2, p0, Lcom/google/firebase/database/OnDisconnect$2;->val$parsedUpdate:Ljava/util/Map;

    iput-object p3, p0, Lcom/google/firebase/database/OnDisconnect$2;->val$wrapped:Lcom/google/firebase/database/core/utilities/Pair;

    iput-object p4, p0, Lcom/google/firebase/database/OnDisconnect$2;->val$update:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 213
    iget-object v0, p0, Lcom/google/firebase/database/OnDisconnect$2;->this$0:Lcom/google/firebase/database/OnDisconnect;

    invoke-static {v0}, Lcom/google/firebase/database/OnDisconnect;->access$100(Lcom/google/firebase/database/OnDisconnect;)Lcom/google/firebase/database/core/Repo;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/database/OnDisconnect$2;->this$0:Lcom/google/firebase/database/OnDisconnect;

    invoke-static {v1}, Lcom/google/firebase/database/OnDisconnect;->access$000(Lcom/google/firebase/database/OnDisconnect;)Lcom/google/firebase/database/core/Path;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/database/OnDisconnect$2;->val$parsedUpdate:Ljava/util/Map;

    iget-object v3, p0, Lcom/google/firebase/database/OnDisconnect$2;->val$wrapped:Lcom/google/firebase/database/core/utilities/Pair;

    invoke-virtual {v3}, Lcom/google/firebase/database/core/utilities/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/database/DatabaseReference$CompletionListener;

    iget-object v4, p0, Lcom/google/firebase/database/OnDisconnect$2;->val$update:Ljava/util/Map;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/firebase/database/core/Repo;->onDisconnectUpdate(Lcom/google/firebase/database/core/Path;Ljava/util/Map;Lcom/google/firebase/database/DatabaseReference$CompletionListener;Ljava/util/Map;)V

    return-void
.end method

.class Lcom/google/firebase/database/core/Repo$1;
.super Ljava/lang/Object;
.source "Repo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/core/Repo;-><init>(Lcom/google/firebase/database/core/RepoInfo;Lcom/google/firebase/database/core/Context;Lcom/google/firebase/database/FirebaseDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/firebase/database/core/Repo;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/core/Repo;)V
    .registers 2

    .line 98
    iput-object p1, p0, Lcom/google/firebase/database/core/Repo$1;->this$0:Lcom/google/firebase/database/core/Repo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 101
    iget-object v0, p0, Lcom/google/firebase/database/core/Repo$1;->this$0:Lcom/google/firebase/database/core/Repo;

    invoke-static {v0}, Lcom/google/firebase/database/core/Repo;->access$000(Lcom/google/firebase/database/core/Repo;)V

    return-void
.end method

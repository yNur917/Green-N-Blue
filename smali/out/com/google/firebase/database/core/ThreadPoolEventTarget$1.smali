.class Lcom/google/firebase/database/core/ThreadPoolEventTarget$1;
.super Ljava/lang/Object;
.source "ThreadPoolEventTarget.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/core/ThreadPoolEventTarget;-><init>(Ljava/util/concurrent/ThreadFactory;Lcom/google/firebase/database/core/ThreadInitializer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/firebase/database/core/ThreadPoolEventTarget;

.field final synthetic val$threadInitializer:Lcom/google/firebase/database/core/ThreadInitializer;

.field final synthetic val$wrappedFactory:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/core/ThreadPoolEventTarget;Ljava/util/concurrent/ThreadFactory;Lcom/google/firebase/database/core/ThreadInitializer;)V
    .registers 4

    .line 40
    iput-object p1, p0, Lcom/google/firebase/database/core/ThreadPoolEventTarget$1;->this$0:Lcom/google/firebase/database/core/ThreadPoolEventTarget;

    iput-object p2, p0, Lcom/google/firebase/database/core/ThreadPoolEventTarget$1;->val$wrappedFactory:Ljava/util/concurrent/ThreadFactory;

    iput-object p3, p0, Lcom/google/firebase/database/core/ThreadPoolEventTarget$1;->val$threadInitializer:Lcom/google/firebase/database/core/ThreadInitializer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 4

    .line 44
    iget-object v0, p0, Lcom/google/firebase/database/core/ThreadPoolEventTarget$1;->val$wrappedFactory:Ljava/util/concurrent/ThreadFactory;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p1

    .line 45
    iget-object v0, p0, Lcom/google/firebase/database/core/ThreadPoolEventTarget$1;->val$threadInitializer:Lcom/google/firebase/database/core/ThreadInitializer;

    const-string v1, "FirebaseDatabaseEventTarget"

    invoke-interface {v0, p1, v1}, Lcom/google/firebase/database/core/ThreadInitializer;->setName(Ljava/lang/Thread;Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/google/firebase/database/core/ThreadPoolEventTarget$1;->val$threadInitializer:Lcom/google/firebase/database/core/ThreadInitializer;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/google/firebase/database/core/ThreadInitializer;->setDaemon(Ljava/lang/Thread;Z)V

    return-object p1
.end method

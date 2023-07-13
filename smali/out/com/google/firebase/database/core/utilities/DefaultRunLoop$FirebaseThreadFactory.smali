.class Lcom/google/firebase/database/core/utilities/DefaultRunLoop$FirebaseThreadFactory;
.super Ljava/lang/Object;
.source "DefaultRunLoop.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/database/core/utilities/DefaultRunLoop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FirebaseThreadFactory"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/firebase/database/core/utilities/DefaultRunLoop;


# direct methods
.method private constructor <init>(Lcom/google/firebase/database/core/utilities/DefaultRunLoop;)V
    .registers 2

    .line 33
    iput-object p1, p0, Lcom/google/firebase/database/core/utilities/DefaultRunLoop$FirebaseThreadFactory;->this$0:Lcom/google/firebase/database/core/utilities/DefaultRunLoop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/database/core/utilities/DefaultRunLoop;Lcom/google/firebase/database/core/utilities/DefaultRunLoop$1;)V
    .registers 3

    .line 33
    invoke-direct {p0, p1}, Lcom/google/firebase/database/core/utilities/DefaultRunLoop$FirebaseThreadFactory;-><init>(Lcom/google/firebase/database/core/utilities/DefaultRunLoop;)V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 4

    .line 37
    iget-object v0, p0, Lcom/google/firebase/database/core/utilities/DefaultRunLoop$FirebaseThreadFactory;->this$0:Lcom/google/firebase/database/core/utilities/DefaultRunLoop;

    invoke-virtual {v0}, Lcom/google/firebase/database/core/utilities/DefaultRunLoop;->getThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p1

    .line 38
    iget-object v0, p0, Lcom/google/firebase/database/core/utilities/DefaultRunLoop$FirebaseThreadFactory;->this$0:Lcom/google/firebase/database/core/utilities/DefaultRunLoop;

    invoke-virtual {v0}, Lcom/google/firebase/database/core/utilities/DefaultRunLoop;->getThreadInitializer()Lcom/google/firebase/database/core/ThreadInitializer;

    move-result-object v0

    const-string v1, "FirebaseDatabaseWorker"

    .line 39
    invoke-interface {v0, p1, v1}, Lcom/google/firebase/database/core/ThreadInitializer;->setName(Ljava/lang/Thread;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 40
    invoke-interface {v0, p1, v1}, Lcom/google/firebase/database/core/ThreadInitializer;->setDaemon(Ljava/lang/Thread;Z)V

    .line 41
    new-instance v1, Lcom/google/firebase/database/core/utilities/DefaultRunLoop$FirebaseThreadFactory$1;

    invoke-direct {v1, p0}, Lcom/google/firebase/database/core/utilities/DefaultRunLoop$FirebaseThreadFactory$1;-><init>(Lcom/google/firebase/database/core/utilities/DefaultRunLoop$FirebaseThreadFactory;)V

    invoke-interface {v0, p1, v1}, Lcom/google/firebase/database/core/ThreadInitializer;->setUncaughtExceptionHandler(Ljava/lang/Thread;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-object p1
.end method

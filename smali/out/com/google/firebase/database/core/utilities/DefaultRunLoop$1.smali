.class Lcom/google/firebase/database/core/utilities/DefaultRunLoop$1;
.super Ljava/util/concurrent/ScheduledThreadPoolExecutor;
.source "DefaultRunLoop.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/core/utilities/DefaultRunLoop;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/firebase/database/core/utilities/DefaultRunLoop;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/core/utilities/DefaultRunLoop;ILjava/util/concurrent/ThreadFactory;)V
    .registers 4

    .line 69
    iput-object p1, p0, Lcom/google/firebase/database/core/utilities/DefaultRunLoop$1;->this$0:Lcom/google/firebase/database/core/utilities/DefaultRunLoop;

    invoke-direct {p0, p2, p3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    return-void
.end method


# virtual methods
.method protected afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .registers 4

    .line 72
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    if-nez p2, :cond_24

    .line 73
    instance-of v0, p1, Ljava/util/concurrent/Future;

    if-eqz v0, :cond_24

    .line 74
    check-cast p1, Ljava/util/concurrent/Future;

    .line 77
    :try_start_b
    invoke-interface {p1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 78
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_14
    .catch Ljava/util/concurrent/CancellationException; {:try_start_b .. :try_end_14} :catch_23
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_b .. :try_end_14} :catch_1d
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_14} :catch_15

    goto :goto_24

    .line 85
    :catch_15
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_24

    :catch_1d
    move-exception p1

    .line 83
    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    goto :goto_24

    :catch_23
    nop

    :cond_24
    :goto_24
    if-eqz p2, :cond_2b

    .line 89
    iget-object p1, p0, Lcom/google/firebase/database/core/utilities/DefaultRunLoop$1;->this$0:Lcom/google/firebase/database/core/utilities/DefaultRunLoop;

    invoke-virtual {p1, p2}, Lcom/google/firebase/database/core/utilities/DefaultRunLoop;->handleException(Ljava/lang/Throwable;)V

    :cond_2b
    return-void
.end method

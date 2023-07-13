.class Lcom/google/firebase/database/core/utilities/DefaultRunLoop$FirebaseThreadFactory$1;
.super Ljava/lang/Object;
.source "DefaultRunLoop.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/core/utilities/DefaultRunLoop$FirebaseThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/firebase/database/core/utilities/DefaultRunLoop$FirebaseThreadFactory;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/core/utilities/DefaultRunLoop$FirebaseThreadFactory;)V
    .registers 2

    .line 43
    iput-object p1, p0, Lcom/google/firebase/database/core/utilities/DefaultRunLoop$FirebaseThreadFactory$1;->this$1:Lcom/google/firebase/database/core/utilities/DefaultRunLoop$FirebaseThreadFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 3

    .line 46
    iget-object p1, p0, Lcom/google/firebase/database/core/utilities/DefaultRunLoop$FirebaseThreadFactory$1;->this$1:Lcom/google/firebase/database/core/utilities/DefaultRunLoop$FirebaseThreadFactory;

    iget-object p1, p1, Lcom/google/firebase/database/core/utilities/DefaultRunLoop$FirebaseThreadFactory;->this$0:Lcom/google/firebase/database/core/utilities/DefaultRunLoop;

    invoke-virtual {p1, p2}, Lcom/google/firebase/database/core/utilities/DefaultRunLoop;->handleException(Ljava/lang/Throwable;)V

    return-void
.end method

.class public Lcom/google/firebase/database/android/AndroidEventTarget;
.super Ljava/lang/Object;
.source "AndroidEventTarget.java"

# interfaces
.implements Lcom/google/firebase/database/core/EventTarget;


# instance fields
.field private final handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/firebase/database/android/AndroidEventTarget;->handler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public postEvent(Ljava/lang/Runnable;)V
    .registers 3

    .line 30
    iget-object v0, p0, Lcom/google/firebase/database/android/AndroidEventTarget;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public restart()V
    .registers 1

    return-void
.end method

.method public shutdown()V
    .registers 1

    return-void
.end method

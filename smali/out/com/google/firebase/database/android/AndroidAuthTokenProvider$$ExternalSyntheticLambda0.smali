.class public final synthetic Lcom/google/firebase/database/android/AndroidAuthTokenProvider$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/firebase/auth/internal/IdTokenListener;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/ExecutorService;

.field public final synthetic f$1:Lcom/google/firebase/database/core/TokenProvider$TokenChangeListener;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/ExecutorService;Lcom/google/firebase/database/core/TokenProvider$TokenChangeListener;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/database/android/AndroidAuthTokenProvider$$ExternalSyntheticLambda0;->f$0:Ljava/util/concurrent/ExecutorService;

    iput-object p2, p0, Lcom/google/firebase/database/android/AndroidAuthTokenProvider$$ExternalSyntheticLambda0;->f$1:Lcom/google/firebase/database/core/TokenProvider$TokenChangeListener;

    return-void
.end method


# virtual methods
.method public final onIdTokenChanged(Lcom/google/firebase/internal/InternalTokenResult;)V
    .registers 4

    iget-object v0, p0, Lcom/google/firebase/database/android/AndroidAuthTokenProvider$$ExternalSyntheticLambda0;->f$0:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/google/firebase/database/android/AndroidAuthTokenProvider$$ExternalSyntheticLambda0;->f$1:Lcom/google/firebase/database/core/TokenProvider$TokenChangeListener;

    invoke-static {v0, v1, p1}, Lcom/google/firebase/database/android/AndroidAuthTokenProvider;->lambda$addTokenChangeListener$4(Ljava/util/concurrent/ExecutorService;Lcom/google/firebase/database/core/TokenProvider$TokenChangeListener;Lcom/google/firebase/internal/InternalTokenResult;)V

    return-void
.end method

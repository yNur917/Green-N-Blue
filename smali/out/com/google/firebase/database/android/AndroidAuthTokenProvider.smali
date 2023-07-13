.class public Lcom/google/firebase/database/android/AndroidAuthTokenProvider;
.super Ljava/lang/Object;
.source "AndroidAuthTokenProvider.java"

# interfaces
.implements Lcom/google/firebase/database/core/TokenProvider;


# instance fields
.field private final deferredAuthProvider:Lcom/google/firebase/inject/Deferred;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/inject/Deferred<",
            "Lcom/google/firebase/auth/internal/InternalAuthProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final internalAuth:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/firebase/auth/internal/InternalAuthProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/firebase/inject/Deferred;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/inject/Deferred<",
            "Lcom/google/firebase/auth/internal/InternalAuthProvider;",
            ">;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/google/firebase/database/android/AndroidAuthTokenProvider;->deferredAuthProvider:Lcom/google/firebase/inject/Deferred;

    .line 34
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/database/android/AndroidAuthTokenProvider;->internalAuth:Ljava/util/concurrent/atomic/AtomicReference;

    .line 36
    new-instance v0, Lcom/google/firebase/database/android/AndroidAuthTokenProvider$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/google/firebase/database/android/AndroidAuthTokenProvider$$ExternalSyntheticLambda3;-><init>(Lcom/google/firebase/database/android/AndroidAuthTokenProvider;)V

    invoke-interface {p1, v0}, Lcom/google/firebase/inject/Deferred;->whenAvailable(Lcom/google/firebase/inject/Deferred$DeferredHandler;)V

    return-void
.end method

.method private static isUnauthenticatedUsage(Ljava/lang/Exception;)Z
    .registers 2

    .line 81
    instance-of v0, p0, Lcom/google/firebase/FirebaseApiNotAvailableException;

    if-nez v0, :cond_b

    instance-of p0, p0, Lcom/google/firebase/internal/api/FirebaseNoSignedInUserException;

    if-eqz p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p0, 0x1

    :goto_c
    return p0
.end method

.method static synthetic lambda$addTokenChangeListener$3(Lcom/google/firebase/database/core/TokenProvider$TokenChangeListener;Lcom/google/firebase/internal/InternalTokenResult;)V
    .registers 2

    .line 72
    invoke-virtual {p1}, Lcom/google/firebase/internal/InternalTokenResult;->getToken()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/firebase/database/core/TokenProvider$TokenChangeListener;->onTokenChange(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$addTokenChangeListener$4(Ljava/util/concurrent/ExecutorService;Lcom/google/firebase/database/core/TokenProvider$TokenChangeListener;Lcom/google/firebase/internal/InternalTokenResult;)V
    .registers 4

    .line 71
    new-instance v0, Lcom/google/firebase/database/android/AndroidAuthTokenProvider$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p2}, Lcom/google/firebase/database/android/AndroidAuthTokenProvider$$ExternalSyntheticLambda1;-><init>(Lcom/google/firebase/database/core/TokenProvider$TokenChangeListener;Lcom/google/firebase/internal/InternalTokenResult;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic lambda$addTokenChangeListener$5(Ljava/util/concurrent/ExecutorService;Lcom/google/firebase/database/core/TokenProvider$TokenChangeListener;Lcom/google/firebase/inject/Provider;)V
    .registers 4

    .line 68
    invoke-interface {p2}, Lcom/google/firebase/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/firebase/auth/internal/InternalAuthProvider;

    new-instance v0, Lcom/google/firebase/database/android/AndroidAuthTokenProvider$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/database/android/AndroidAuthTokenProvider$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/ExecutorService;Lcom/google/firebase/database/core/TokenProvider$TokenChangeListener;)V

    .line 69
    invoke-interface {p2, v0}, Lcom/google/firebase/auth/internal/InternalAuthProvider;->addIdTokenListener(Lcom/google/firebase/auth/internal/IdTokenListener;)V

    return-void
.end method

.method static synthetic lambda$getToken$1(Lcom/google/firebase/database/core/TokenProvider$GetTokenCompletionListener;Lcom/google/firebase/auth/GetTokenResult;)V
    .registers 2

    .line 47
    invoke-virtual {p1}, Lcom/google/firebase/auth/GetTokenResult;->getToken()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/firebase/database/core/TokenProvider$GetTokenCompletionListener;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$getToken$2(Lcom/google/firebase/database/core/TokenProvider$GetTokenCompletionListener;Ljava/lang/Exception;)V
    .registers 3

    .line 50
    invoke-static {p1}, Lcom/google/firebase/database/android/AndroidAuthTokenProvider;->isUnauthenticatedUsage(Ljava/lang/Exception;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 p1, 0x0

    .line 51
    invoke-interface {p0, p1}, Lcom/google/firebase/database/core/TokenProvider$GetTokenCompletionListener;->onSuccess(Ljava/lang/String;)V

    goto :goto_12

    .line 54
    :cond_b
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/firebase/database/core/TokenProvider$GetTokenCompletionListener;->onError(Ljava/lang/String;)V

    :goto_12
    return-void
.end method


# virtual methods
.method public addTokenChangeListener(Ljava/util/concurrent/ExecutorService;Lcom/google/firebase/database/core/TokenProvider$TokenChangeListener;)V
    .registers 5

    .line 65
    iget-object v0, p0, Lcom/google/firebase/database/android/AndroidAuthTokenProvider;->deferredAuthProvider:Lcom/google/firebase/inject/Deferred;

    new-instance v1, Lcom/google/firebase/database/android/AndroidAuthTokenProvider$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1, p2}, Lcom/google/firebase/database/android/AndroidAuthTokenProvider$$ExternalSyntheticLambda2;-><init>(Ljava/util/concurrent/ExecutorService;Lcom/google/firebase/database/core/TokenProvider$TokenChangeListener;)V

    invoke-interface {v0, v1}, Lcom/google/firebase/inject/Deferred;->whenAvailable(Lcom/google/firebase/inject/Deferred$DeferredHandler;)V

    return-void
.end method

.method public getToken(ZLcom/google/firebase/database/core/TokenProvider$GetTokenCompletionListener;)V
    .registers 4

    .line 41
    iget-object v0, p0, Lcom/google/firebase/database/android/AndroidAuthTokenProvider;->internalAuth:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/auth/internal/InternalAuthProvider;

    if-eqz v0, :cond_20

    .line 44
    invoke-interface {v0, p1}, Lcom/google/firebase/auth/internal/InternalAuthProvider;->getAccessToken(Z)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    .line 46
    new-instance v0, Lcom/google/firebase/database/android/AndroidAuthTokenProvider$$ExternalSyntheticLambda4;

    invoke-direct {v0, p2}, Lcom/google/firebase/database/android/AndroidAuthTokenProvider$$ExternalSyntheticLambda4;-><init>(Lcom/google/firebase/database/core/TokenProvider$GetTokenCompletionListener;)V

    .line 47
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/google/firebase/database/android/AndroidAuthTokenProvider$$ExternalSyntheticLambda5;

    invoke-direct {v0, p2}, Lcom/google/firebase/database/android/AndroidAuthTokenProvider$$ExternalSyntheticLambda5;-><init>(Lcom/google/firebase/database/core/TokenProvider$GetTokenCompletionListener;)V

    .line 48
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    goto :goto_24

    :cond_20
    const/4 p1, 0x0

    .line 58
    invoke-interface {p2, p1}, Lcom/google/firebase/database/core/TokenProvider$GetTokenCompletionListener;->onSuccess(Ljava/lang/String;)V

    :goto_24
    return-void
.end method

.method synthetic lambda$new$0$com-google-firebase-database-android-AndroidAuthTokenProvider(Lcom/google/firebase/inject/Provider;)V
    .registers 3

    .line 36
    iget-object v0, p0, Lcom/google/firebase/database/android/AndroidAuthTokenProvider;->internalAuth:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-interface {p1}, Lcom/google/firebase/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/auth/internal/InternalAuthProvider;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public removeTokenChangeListener(Lcom/google/firebase/database/core/TokenProvider$TokenChangeListener;)V
    .registers 2

    return-void
.end method

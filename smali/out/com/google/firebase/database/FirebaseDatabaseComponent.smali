.class Lcom/google/firebase/database/FirebaseDatabaseComponent;
.super Ljava/lang/Object;
.source "FirebaseDatabaseComponent.java"


# instance fields
.field private final app:Lcom/google/firebase/FirebaseApp;

.field private final appCheckProvider:Lcom/google/firebase/database/core/TokenProvider;

.field private final authProvider:Lcom/google/firebase/database/core/TokenProvider;

.field private final instances:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/firebase/database/core/RepoInfo;",
            "Lcom/google/firebase/database/FirebaseDatabase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/inject/Deferred;Lcom/google/firebase/inject/Deferred;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/inject/Deferred<",
            "Lcom/google/firebase/auth/internal/InternalAuthProvider;",
            ">;",
            "Lcom/google/firebase/inject/Deferred<",
            "Lcom/google/firebase/appcheck/interop/InternalAppCheckTokenProvider;",
            ">;)V"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/database/FirebaseDatabaseComponent;->instances:Ljava/util/Map;

    .line 48
    iput-object p1, p0, Lcom/google/firebase/database/FirebaseDatabaseComponent;->app:Lcom/google/firebase/FirebaseApp;

    .line 49
    new-instance p1, Lcom/google/firebase/database/android/AndroidAuthTokenProvider;

    invoke-direct {p1, p2}, Lcom/google/firebase/database/android/AndroidAuthTokenProvider;-><init>(Lcom/google/firebase/inject/Deferred;)V

    iput-object p1, p0, Lcom/google/firebase/database/FirebaseDatabaseComponent;->authProvider:Lcom/google/firebase/database/core/TokenProvider;

    .line 50
    new-instance p1, Lcom/google/firebase/database/android/AndroidAppCheckTokenProvider;

    invoke-direct {p1, p3}, Lcom/google/firebase/database/android/AndroidAppCheckTokenProvider;-><init>(Lcom/google/firebase/inject/Deferred;)V

    iput-object p1, p0, Lcom/google/firebase/database/FirebaseDatabaseComponent;->appCheckProvider:Lcom/google/firebase/database/core/TokenProvider;

    return-void
.end method


# virtual methods
.method declared-synchronized get(Lcom/google/firebase/database/core/RepoInfo;)Lcom/google/firebase/database/FirebaseDatabase;
    .registers 5

    monitor-enter p0

    .line 56
    :try_start_1
    iget-object v0, p0, Lcom/google/firebase/database/FirebaseDatabaseComponent;->instances:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/FirebaseDatabase;

    if-nez v0, :cond_3d

    .line 58
    new-instance v0, Lcom/google/firebase/database/core/DatabaseConfig;

    invoke-direct {v0}, Lcom/google/firebase/database/core/DatabaseConfig;-><init>()V

    .line 62
    iget-object v1, p0, Lcom/google/firebase/database/FirebaseDatabaseComponent;->app:Lcom/google/firebase/FirebaseApp;

    invoke-virtual {v1}, Lcom/google/firebase/FirebaseApp;->isDefaultApp()Z

    move-result v1

    if-nez v1, :cond_21

    .line 63
    iget-object v1, p0, Lcom/google/firebase/database/FirebaseDatabaseComponent;->app:Lcom/google/firebase/FirebaseApp;

    invoke-virtual {v1}, Lcom/google/firebase/FirebaseApp;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/core/DatabaseConfig;->setSessionPersistenceKey(Ljava/lang/String;)V

    .line 65
    :cond_21
    iget-object v1, p0, Lcom/google/firebase/database/FirebaseDatabaseComponent;->app:Lcom/google/firebase/FirebaseApp;

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/core/DatabaseConfig;->setFirebaseApp(Lcom/google/firebase/FirebaseApp;)V

    .line 66
    iget-object v1, p0, Lcom/google/firebase/database/FirebaseDatabaseComponent;->authProvider:Lcom/google/firebase/database/core/TokenProvider;

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/core/DatabaseConfig;->setAuthTokenProvider(Lcom/google/firebase/database/core/TokenProvider;)V

    .line 67
    iget-object v1, p0, Lcom/google/firebase/database/FirebaseDatabaseComponent;->appCheckProvider:Lcom/google/firebase/database/core/TokenProvider;

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/core/DatabaseConfig;->setAppCheckTokenProvider(Lcom/google/firebase/database/core/TokenProvider;)V

    .line 69
    new-instance v1, Lcom/google/firebase/database/FirebaseDatabase;

    iget-object v2, p0, Lcom/google/firebase/database/FirebaseDatabaseComponent;->app:Lcom/google/firebase/FirebaseApp;

    invoke-direct {v1, v2, p1, v0}, Lcom/google/firebase/database/FirebaseDatabase;-><init>(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/database/core/RepoInfo;Lcom/google/firebase/database/core/DatabaseConfig;)V

    .line 70
    iget-object v0, p0, Lcom/google/firebase/database/FirebaseDatabaseComponent;->instances:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3c
    .catchall {:try_start_1 .. :try_end_3c} :catchall_3f

    move-object v0, v1

    .line 72
    :cond_3d
    monitor-exit p0

    return-object v0

    :catchall_3f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

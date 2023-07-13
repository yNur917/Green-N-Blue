.class public Lcom/google/firebase/database/core/Context;
.super Ljava/lang/Object;
.source "Context.java"


# static fields
.field private static final DEFAULT_CACHE_SIZE:J = 0xa00000L


# instance fields
.field protected appCheckTokenProvider:Lcom/google/firebase/database/core/TokenProvider;

.field protected authTokenProvider:Lcom/google/firebase/database/core/TokenProvider;

.field protected cacheSize:J

.field protected eventTarget:Lcom/google/firebase/database/core/EventTarget;

.field protected firebaseApp:Lcom/google/firebase/FirebaseApp;

.field private forcedPersistenceManager:Lcom/google/firebase/database/core/persistence/PersistenceManager;

.field private frozen:Z

.field protected logLevel:Lcom/google/firebase/database/logging/Logger$Level;

.field protected loggedComponents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected logger:Lcom/google/firebase/database/logging/Logger;

.field protected persistenceEnabled:Z

.field protected persistenceKey:Ljava/lang/String;

.field private platform:Lcom/google/firebase/database/core/Platform;

.field protected runLoop:Lcom/google/firebase/database/core/RunLoop;

.field private stopped:Z

.field protected userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    sget-object v0, Lcom/google/firebase/database/logging/Logger$Level;->INFO:Lcom/google/firebase/database/logging/Logger$Level;

    iput-object v0, p0, Lcom/google/firebase/database/core/Context;->logLevel:Lcom/google/firebase/database/logging/Logger$Level;

    const-wide/32 v0, 0xa00000

    .line 49
    iput-wide v0, p0, Lcom/google/firebase/database/core/Context;->cacheSize:J

    const/4 v0, 0x0

    .line 52
    iput-boolean v0, p0, Lcom/google/firebase/database/core/Context;->frozen:Z

    .line 53
    iput-boolean v0, p0, Lcom/google/firebase/database/core/Context;->stopped:Z

    return-void
.end method

.method private buildUserAgent(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Firebase/"

    .line 273
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "5"

    .line 274
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    .line 275
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    invoke-static {}, Lcom/google/firebase/database/FirebaseDatabase;->getSdkVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private ensureAppTokenProvider()V
    .registers 3

    .line 259
    iget-object v0, p0, Lcom/google/firebase/database/core/Context;->appCheckTokenProvider:Lcom/google/firebase/database/core/TokenProvider;

    const-string v1, "You must register an appCheckTokenProvider before initializing Context."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private ensureAuthTokenProvider()V
    .registers 3

    .line 254
    iget-object v0, p0, Lcom/google/firebase/database/core/Context;->authTokenProvider:Lcom/google/firebase/database/core/TokenProvider;

    const-string v1, "You must register an authTokenProvider before initializing Context."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private ensureEventTarget()V
    .registers 2

    .line 242
    iget-object v0, p0, Lcom/google/firebase/database/core/Context;->eventTarget:Lcom/google/firebase/database/core/EventTarget;

    if-nez v0, :cond_e

    .line 243
    invoke-direct {p0}, Lcom/google/firebase/database/core/Context;->getPlatform()Lcom/google/firebase/database/core/Platform;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/firebase/database/core/Platform;->newEventTarget(Lcom/google/firebase/database/core/Context;)Lcom/google/firebase/database/core/EventTarget;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/database/core/Context;->eventTarget:Lcom/google/firebase/database/core/EventTarget;

    :cond_e
    return-void
.end method

.method private ensureLogger()V
    .registers 4

    .line 230
    iget-object v0, p0, Lcom/google/firebase/database/core/Context;->logger:Lcom/google/firebase/database/logging/Logger;

    if-nez v0, :cond_12

    .line 231
    invoke-direct {p0}, Lcom/google/firebase/database/core/Context;->getPlatform()Lcom/google/firebase/database/core/Platform;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/database/core/Context;->logLevel:Lcom/google/firebase/database/logging/Logger$Level;

    iget-object v2, p0, Lcom/google/firebase/database/core/Context;->loggedComponents:Ljava/util/List;

    invoke-interface {v0, p0, v1, v2}, Lcom/google/firebase/database/core/Platform;->newLogger(Lcom/google/firebase/database/core/Context;Lcom/google/firebase/database/logging/Logger$Level;Ljava/util/List;)Lcom/google/firebase/database/logging/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/database/core/Context;->logger:Lcom/google/firebase/database/logging/Logger;

    :cond_12
    return-void
.end method

.method private ensureRunLoop()V
    .registers 2

    .line 236
    iget-object v0, p0, Lcom/google/firebase/database/core/Context;->runLoop:Lcom/google/firebase/database/core/RunLoop;

    if-nez v0, :cond_c

    .line 237
    iget-object v0, p0, Lcom/google/firebase/database/core/Context;->platform:Lcom/google/firebase/database/core/Platform;

    invoke-interface {v0, p0}, Lcom/google/firebase/database/core/Platform;->newRunLoop(Lcom/google/firebase/database/core/Context;)Lcom/google/firebase/database/core/RunLoop;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/database/core/Context;->runLoop:Lcom/google/firebase/database/core/RunLoop;

    :cond_c
    return-void
.end method

.method private ensureSessionIdentifier()V
    .registers 2

    .line 265
    iget-object v0, p0, Lcom/google/firebase/database/core/Context;->persistenceKey:Ljava/lang/String;

    if-nez v0, :cond_8

    const-string v0, "default"

    .line 266
    iput-object v0, p0, Lcom/google/firebase/database/core/Context;->persistenceKey:Ljava/lang/String;

    :cond_8
    return-void
.end method

.method private ensureUserAgent()V
    .registers 2

    .line 248
    iget-object v0, p0, Lcom/google/firebase/database/core/Context;->userAgent:Ljava/lang/String;

    if-nez v0, :cond_12

    .line 249
    invoke-direct {p0}, Lcom/google/firebase/database/core/Context;->getPlatform()Lcom/google/firebase/database/core/Platform;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/firebase/database/core/Platform;->getUserAgent(Lcom/google/firebase/database/core/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/database/core/Context;->buildUserAgent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/database/core/Context;->userAgent:Ljava/lang/String;

    :cond_12
    return-void
.end method

.method private getExecutorService()Ljava/util/concurrent/ScheduledExecutorService;
    .registers 3

    .line 220
    invoke-virtual {p0}, Lcom/google/firebase/database/core/Context;->getRunLoop()Lcom/google/firebase/database/core/RunLoop;

    move-result-object v0

    .line 221
    instance-of v1, v0, Lcom/google/firebase/database/core/utilities/DefaultRunLoop;

    if-eqz v1, :cond_f

    .line 226
    check-cast v0, Lcom/google/firebase/database/core/utilities/DefaultRunLoop;

    invoke-virtual {v0}, Lcom/google/firebase/database/core/utilities/DefaultRunLoop;->getExecutorService()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0

    .line 224
    :cond_f
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Custom run loops are not supported!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getPlatform()Lcom/google/firebase/database/core/Platform;
    .registers 2

    .line 58
    iget-object v0, p0, Lcom/google/firebase/database/core/Context;->platform:Lcom/google/firebase/database/core/Platform;

    if-nez v0, :cond_7

    .line 59
    invoke-direct {p0}, Lcom/google/firebase/database/core/Context;->initializeAndroidPlatform()V

    .line 61
    :cond_7
    iget-object v0, p0, Lcom/google/firebase/database/core/Context;->platform:Lcom/google/firebase/database/core/Platform;

    return-object v0
.end method

.method private initServices()V
    .registers 1

    .line 92
    invoke-direct {p0}, Lcom/google/firebase/database/core/Context;->ensureLogger()V

    .line 94
    invoke-direct {p0}, Lcom/google/firebase/database/core/Context;->getPlatform()Lcom/google/firebase/database/core/Platform;

    .line 95
    invoke-direct {p0}, Lcom/google/firebase/database/core/Context;->ensureUserAgent()V

    .line 97
    invoke-direct {p0}, Lcom/google/firebase/database/core/Context;->ensureEventTarget()V

    .line 98
    invoke-direct {p0}, Lcom/google/firebase/database/core/Context;->ensureRunLoop()V

    .line 99
    invoke-direct {p0}, Lcom/google/firebase/database/core/Context;->ensureSessionIdentifier()V

    .line 100
    invoke-direct {p0}, Lcom/google/firebase/database/core/Context;->ensureAuthTokenProvider()V

    .line 101
    invoke-direct {p0}, Lcom/google/firebase/database/core/Context;->ensureAppTokenProvider()V

    return-void
.end method

.method private declared-synchronized initializeAndroidPlatform()V
    .registers 3

    monitor-enter p0

    .line 65
    :try_start_1
    new-instance v0, Lcom/google/firebase/database/android/AndroidPlatform;

    iget-object v1, p0, Lcom/google/firebase/database/core/Context;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    invoke-direct {v0, v1}, Lcom/google/firebase/database/android/AndroidPlatform;-><init>(Lcom/google/firebase/FirebaseApp;)V

    iput-object v0, p0, Lcom/google/firebase/database/core/Context;->platform:Lcom/google/firebase/database/core/Platform;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 66
    monitor-exit p0

    return-void

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic lambda$wrapTokenProvider$0(Lcom/google/firebase/database/core/TokenProvider;Ljava/util/concurrent/ScheduledExecutorService;ZLcom/google/firebase/database/connection/ConnectionTokenProvider$GetTokenCallback;)V
    .registers 5

    .line 285
    new-instance v0, Lcom/google/firebase/database/core/Context$1;

    invoke-direct {v0, p1, p3}, Lcom/google/firebase/database/core/Context$1;-><init>(Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/firebase/database/connection/ConnectionTokenProvider$GetTokenCallback;)V

    invoke-interface {p0, p2, v0}, Lcom/google/firebase/database/core/TokenProvider;->getToken(ZLcom/google/firebase/database/core/TokenProvider$GetTokenCompletionListener;)V

    return-void
.end method

.method private restartServices()V
    .registers 2

    .line 105
    iget-object v0, p0, Lcom/google/firebase/database/core/Context;->eventTarget:Lcom/google/firebase/database/core/EventTarget;

    invoke-interface {v0}, Lcom/google/firebase/database/core/EventTarget;->restart()V

    .line 106
    iget-object v0, p0, Lcom/google/firebase/database/core/Context;->runLoop:Lcom/google/firebase/database/core/RunLoop;

    invoke-interface {v0}, Lcom/google/firebase/database/core/RunLoop;->restart()V

    return-void
.end method

.method private static wrapTokenProvider(Lcom/google/firebase/database/core/TokenProvider;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/firebase/database/connection/ConnectionTokenProvider;
    .registers 3

    .line 284
    new-instance v0, Lcom/google/firebase/database/core/Context$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/database/core/Context$$ExternalSyntheticLambda0;-><init>(Lcom/google/firebase/database/core/TokenProvider;Ljava/util/concurrent/ScheduledExecutorService;)V

    return-object v0
.end method


# virtual methods
.method protected assertUnfrozen()V
    .registers 3

    .line 116
    invoke-virtual {p0}, Lcom/google/firebase/database/core/Context;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 117
    :cond_7
    new-instance v0, Lcom/google/firebase/database/DatabaseException;

    const-string v1, "Modifications to DatabaseConfig objects must occur before they are in use"

    invoke-direct {v0, v1}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method forcePersistenceManager(Lcom/google/firebase/database/core/persistence/PersistenceManager;)V
    .registers 2

    .line 183
    iput-object p1, p0, Lcom/google/firebase/database/core/Context;->forcedPersistenceManager:Lcom/google/firebase/database/core/persistence/PersistenceManager;

    return-void
.end method

.method declared-synchronized freeze()V
    .registers 2

    monitor-enter p0

    .line 77
    :try_start_1
    iget-boolean v0, p0, Lcom/google/firebase/database/core/Context;->frozen:Z

    if-nez v0, :cond_b

    const/4 v0, 0x1

    .line 78
    iput-boolean v0, p0, Lcom/google/firebase/database/core/Context;->frozen:Z

    .line 79
    invoke-direct {p0}, Lcom/google/firebase/database/core/Context;->initServices()V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 81
    :cond_b
    monitor-exit p0

    return-void

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getAppCheckTokenProvider()Lcom/google/firebase/database/core/TokenProvider;
    .registers 2

    .line 211
    iget-object v0, p0, Lcom/google/firebase/database/core/Context;->appCheckTokenProvider:Lcom/google/firebase/database/core/TokenProvider;

    return-object v0
.end method

.method public getAuthTokenProvider()Lcom/google/firebase/database/core/TokenProvider;
    .registers 2

    .line 207
    iget-object v0, p0, Lcom/google/firebase/database/core/Context;->authTokenProvider:Lcom/google/firebase/database/core/TokenProvider;

    return-object v0
.end method

.method public getConnectionContext()Lcom/google/firebase/database/connection/ConnectionContext;
    .registers 12

    .line 143
    new-instance v10, Lcom/google/firebase/database/connection/ConnectionContext;

    .line 144
    invoke-virtual {p0}, Lcom/google/firebase/database/core/Context;->getLogger()Lcom/google/firebase/database/logging/Logger;

    move-result-object v1

    .line 145
    invoke-virtual {p0}, Lcom/google/firebase/database/core/Context;->getAuthTokenProvider()Lcom/google/firebase/database/core/TokenProvider;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/firebase/database/core/Context;->getExecutorService()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/firebase/database/core/Context;->wrapTokenProvider(Lcom/google/firebase/database/core/TokenProvider;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/firebase/database/connection/ConnectionTokenProvider;

    move-result-object v2

    .line 146
    invoke-virtual {p0}, Lcom/google/firebase/database/core/Context;->getAppCheckTokenProvider()Lcom/google/firebase/database/core/TokenProvider;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/firebase/database/core/Context;->getExecutorService()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/firebase/database/core/Context;->wrapTokenProvider(Lcom/google/firebase/database/core/TokenProvider;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/firebase/database/connection/ConnectionTokenProvider;

    move-result-object v3

    .line 147
    invoke-direct {p0}, Lcom/google/firebase/database/core/Context;->getExecutorService()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v4

    .line 148
    invoke-virtual {p0}, Lcom/google/firebase/database/core/Context;->isPersistenceEnabled()Z

    move-result v5

    .line 149
    invoke-static {}, Lcom/google/firebase/database/FirebaseDatabase;->getSdkVersion()Ljava/lang/String;

    move-result-object v6

    .line 150
    invoke-virtual {p0}, Lcom/google/firebase/database/core/Context;->getUserAgent()Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/google/firebase/database/core/Context;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    .line 151
    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->getOptions()Lcom/google/firebase/FirebaseOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseOptions;->getApplicationId()Ljava/lang/String;

    move-result-object v8

    .line 152
    invoke-virtual {p0}, Lcom/google/firebase/database/core/Context;->getSSLCacheDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/google/firebase/database/connection/ConnectionContext;-><init>(Lcom/google/firebase/database/logging/Logger;Lcom/google/firebase/database/connection/ConnectionTokenProvider;Lcom/google/firebase/database/connection/ConnectionTokenProvider;Ljava/util/concurrent/ScheduledExecutorService;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v10
.end method

.method public getEventTarget()Lcom/google/firebase/database/core/EventTarget;
    .registers 2

    .line 187
    iget-object v0, p0, Lcom/google/firebase/database/core/Context;->eventTarget:Lcom/google/firebase/database/core/EventTarget;

    return-object v0
.end method

.method public getLogLevel()Lcom/google/firebase/database/logging/Logger$Level;
    .registers 2

    .line 127
    iget-object v0, p0, Lcom/google/firebase/database/core/Context;->logLevel:Lcom/google/firebase/database/logging/Logger$Level;

    return-object v0
.end method

.method public getLogger(Ljava/lang/String;)Lcom/google/firebase/database/logging/LogWrapper;
    .registers 4

    .line 135
    new-instance v0, Lcom/google/firebase/database/logging/LogWrapper;

    iget-object v1, p0, Lcom/google/firebase/database/core/Context;->logger:Lcom/google/firebase/database/logging/Logger;

    invoke-direct {v0, v1, p1}, Lcom/google/firebase/database/logging/LogWrapper;-><init>(Lcom/google/firebase/database/logging/Logger;Ljava/lang/String;)V

    return-object v0
.end method

.method public getLogger(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/logging/LogWrapper;
    .registers 5

    .line 139
    new-instance v0, Lcom/google/firebase/database/logging/LogWrapper;

    iget-object v1, p0, Lcom/google/firebase/database/core/Context;->logger:Lcom/google/firebase/database/logging/Logger;

    invoke-direct {v0, v1, p1, p2}, Lcom/google/firebase/database/logging/LogWrapper;-><init>(Lcom/google/firebase/database/logging/Logger;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getLogger()Lcom/google/firebase/database/logging/Logger;
    .registers 2

    .line 131
    iget-object v0, p0, Lcom/google/firebase/database/core/Context;->logger:Lcom/google/firebase/database/logging/Logger;

    return-object v0
.end method

.method public getOptDebugLogComponents()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/google/firebase/database/core/Context;->loggedComponents:Ljava/util/List;

    return-object v0
.end method

.method public getPersistenceCacheSizeBytes()J
    .registers 3

    .line 178
    iget-wide v0, p0, Lcom/google/firebase/database/core/Context;->cacheSize:J

    return-wide v0
.end method

.method getPersistenceManager(Ljava/lang/String;)Lcom/google/firebase/database/core/persistence/PersistenceManager;
    .registers 3

    .line 157
    iget-object v0, p0, Lcom/google/firebase/database/core/Context;->forcedPersistenceManager:Lcom/google/firebase/database/core/persistence/PersistenceManager;

    if-eqz v0, :cond_5

    return-object v0

    .line 160
    :cond_5
    iget-boolean v0, p0, Lcom/google/firebase/database/core/Context;->persistenceEnabled:Z

    if-eqz v0, :cond_1a

    .line 161
    iget-object v0, p0, Lcom/google/firebase/database/core/Context;->platform:Lcom/google/firebase/database/core/Platform;

    invoke-interface {v0, p0, p1}, Lcom/google/firebase/database/core/Platform;->createPersistenceManager(Lcom/google/firebase/database/core/Context;Ljava/lang/String;)Lcom/google/firebase/database/core/persistence/PersistenceManager;

    move-result-object p1

    if-eqz p1, :cond_12

    return-object p1

    .line 163
    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "You have enabled persistence, but persistence is not supported on this platform."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 169
    :cond_1a
    new-instance p1, Lcom/google/firebase/database/core/persistence/NoopPersistenceManager;

    invoke-direct {p1}, Lcom/google/firebase/database/core/persistence/NoopPersistenceManager;-><init>()V

    return-object p1
.end method

.method public getPlatformVersion()Ljava/lang/String;
    .registers 2

    .line 199
    invoke-direct {p0}, Lcom/google/firebase/database/core/Context;->getPlatform()Lcom/google/firebase/database/core/Platform;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/firebase/database/core/Platform;->getPlatformVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRunLoop()Lcom/google/firebase/database/core/RunLoop;
    .registers 2

    .line 191
    iget-object v0, p0, Lcom/google/firebase/database/core/Context;->runLoop:Lcom/google/firebase/database/core/RunLoop;

    return-object v0
.end method

.method public getSSLCacheDirectory()Ljava/io/File;
    .registers 2

    .line 301
    invoke-direct {p0}, Lcom/google/firebase/database/core/Context;->getPlatform()Lcom/google/firebase/database/core/Platform;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/firebase/database/core/Platform;->getSSLCacheDirectory()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getSessionPersistenceKey()Ljava/lang/String;
    .registers 2

    .line 203
    iget-object v0, p0, Lcom/google/firebase/database/core/Context;->persistenceKey:Ljava/lang/String;

    return-object v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .registers 2

    .line 195
    iget-object v0, p0, Lcom/google/firebase/database/core/Context;->userAgent:Ljava/lang/String;

    return-object v0
.end method

.method public isFrozen()Z
    .registers 2

    .line 69
    iget-boolean v0, p0, Lcom/google/firebase/database/core/Context;->frozen:Z

    return v0
.end method

.method public isPersistenceEnabled()Z
    .registers 2

    .line 174
    iget-boolean v0, p0, Lcom/google/firebase/database/core/Context;->persistenceEnabled:Z

    return v0
.end method

.method public isStopped()Z
    .registers 2

    .line 73
    iget-boolean v0, p0, Lcom/google/firebase/database/core/Context;->stopped:Z

    return v0
.end method

.method public newPersistentConnection(Lcom/google/firebase/database/connection/HostInfo;Lcom/google/firebase/database/connection/PersistentConnection$Delegate;)Lcom/google/firebase/database/connection/PersistentConnection;
    .registers 5

    .line 216
    invoke-direct {p0}, Lcom/google/firebase/database/core/Context;->getPlatform()Lcom/google/firebase/database/core/Platform;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/firebase/database/core/Context;->getConnectionContext()Lcom/google/firebase/database/connection/ConnectionContext;

    move-result-object v1

    invoke-interface {v0, p0, v1, p1, p2}, Lcom/google/firebase/database/core/Platform;->newPersistentConnection(Lcom/google/firebase/database/core/Context;Lcom/google/firebase/database/connection/ConnectionContext;Lcom/google/firebase/database/connection/HostInfo;Lcom/google/firebase/database/connection/PersistentConnection$Delegate;)Lcom/google/firebase/database/connection/PersistentConnection;

    move-result-object p1

    return-object p1
.end method

.method public requireStarted()V
    .registers 2

    .line 84
    iget-boolean v0, p0, Lcom/google/firebase/database/core/Context;->stopped:Z

    if-eqz v0, :cond_a

    .line 85
    invoke-direct {p0}, Lcom/google/firebase/database/core/Context;->restartServices()V

    const/4 v0, 0x0

    .line 86
    iput-boolean v0, p0, Lcom/google/firebase/database/core/Context;->stopped:Z

    :cond_a
    return-void
.end method

.method stop()V
    .registers 2

    const/4 v0, 0x1

    .line 110
    iput-boolean v0, p0, Lcom/google/firebase/database/core/Context;->stopped:Z

    .line 111
    iget-object v0, p0, Lcom/google/firebase/database/core/Context;->eventTarget:Lcom/google/firebase/database/core/EventTarget;

    invoke-interface {v0}, Lcom/google/firebase/database/core/EventTarget;->shutdown()V

    .line 112
    iget-object v0, p0, Lcom/google/firebase/database/core/Context;->runLoop:Lcom/google/firebase/database/core/RunLoop;

    invoke-interface {v0}, Lcom/google/firebase/database/core/RunLoop;->shutdown()V

    return-void
.end method

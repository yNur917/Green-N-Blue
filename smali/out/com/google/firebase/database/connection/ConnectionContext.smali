.class public Lcom/google/firebase/database/connection/ConnectionContext;
.super Ljava/lang/Object;
.source "ConnectionContext.java"


# instance fields
.field private final appCheckTokenProvider:Lcom/google/firebase/database/connection/ConnectionTokenProvider;

.field private final applicationId:Ljava/lang/String;

.field private final authTokenProvider:Lcom/google/firebase/database/connection/ConnectionTokenProvider;

.field private final clientSdkVersion:Ljava/lang/String;

.field private final executorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private final logger:Lcom/google/firebase/database/logging/Logger;

.field private final persistenceEnabled:Z

.field private final sslCacheDirectory:Ljava/lang/String;

.field private final userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/firebase/database/logging/Logger;Lcom/google/firebase/database/connection/ConnectionTokenProvider;Lcom/google/firebase/database/connection/ConnectionTokenProvider;Ljava/util/concurrent/ScheduledExecutorService;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/google/firebase/database/connection/ConnectionContext;->logger:Lcom/google/firebase/database/logging/Logger;

    .line 42
    iput-object p2, p0, Lcom/google/firebase/database/connection/ConnectionContext;->authTokenProvider:Lcom/google/firebase/database/connection/ConnectionTokenProvider;

    .line 43
    iput-object p3, p0, Lcom/google/firebase/database/connection/ConnectionContext;->appCheckTokenProvider:Lcom/google/firebase/database/connection/ConnectionTokenProvider;

    .line 44
    iput-object p4, p0, Lcom/google/firebase/database/connection/ConnectionContext;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 45
    iput-boolean p5, p0, Lcom/google/firebase/database/connection/ConnectionContext;->persistenceEnabled:Z

    .line 46
    iput-object p6, p0, Lcom/google/firebase/database/connection/ConnectionContext;->clientSdkVersion:Ljava/lang/String;

    .line 47
    iput-object p7, p0, Lcom/google/firebase/database/connection/ConnectionContext;->userAgent:Ljava/lang/String;

    .line 48
    iput-object p8, p0, Lcom/google/firebase/database/connection/ConnectionContext;->applicationId:Ljava/lang/String;

    .line 49
    iput-object p9, p0, Lcom/google/firebase/database/connection/ConnectionContext;->sslCacheDirectory:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAppCheckTokenProvider()Lcom/google/firebase/database/connection/ConnectionTokenProvider;
    .registers 2

    .line 61
    iget-object v0, p0, Lcom/google/firebase/database/connection/ConnectionContext;->appCheckTokenProvider:Lcom/google/firebase/database/connection/ConnectionTokenProvider;

    return-object v0
.end method

.method public getApplicationId()Ljava/lang/String;
    .registers 2

    .line 85
    iget-object v0, p0, Lcom/google/firebase/database/connection/ConnectionContext;->applicationId:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthTokenProvider()Lcom/google/firebase/database/connection/ConnectionTokenProvider;
    .registers 2

    .line 57
    iget-object v0, p0, Lcom/google/firebase/database/connection/ConnectionContext;->authTokenProvider:Lcom/google/firebase/database/connection/ConnectionTokenProvider;

    return-object v0
.end method

.method public getClientSdkVersion()Ljava/lang/String;
    .registers 2

    .line 73
    iget-object v0, p0, Lcom/google/firebase/database/connection/ConnectionContext;->clientSdkVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getExecutorService()Ljava/util/concurrent/ScheduledExecutorService;
    .registers 2

    .line 65
    iget-object v0, p0, Lcom/google/firebase/database/connection/ConnectionContext;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method public getLogger()Lcom/google/firebase/database/logging/Logger;
    .registers 2

    .line 53
    iget-object v0, p0, Lcom/google/firebase/database/connection/ConnectionContext;->logger:Lcom/google/firebase/database/logging/Logger;

    return-object v0
.end method

.method public getSslCacheDirectory()Ljava/lang/String;
    .registers 2

    .line 81
    iget-object v0, p0, Lcom/google/firebase/database/connection/ConnectionContext;->sslCacheDirectory:Ljava/lang/String;

    return-object v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .registers 2

    .line 77
    iget-object v0, p0, Lcom/google/firebase/database/connection/ConnectionContext;->userAgent:Ljava/lang/String;

    return-object v0
.end method

.method public isPersistenceEnabled()Z
    .registers 2

    .line 69
    iget-boolean v0, p0, Lcom/google/firebase/database/connection/ConnectionContext;->persistenceEnabled:Z

    return v0
.end method

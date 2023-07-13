.class public Lcom/google/firebase/database/util/GAuthToken;
.super Ljava/lang/Object;
.source "GAuthToken.java"


# static fields
.field private static final AUTH_KEY:Ljava/lang/String; = "auth"

.field private static final TOKEN_KEY:Ljava/lang/String; = "token"

.field private static final TOKEN_PREFIX:Ljava/lang/String; = "gauth|"


# instance fields
.field private final auth:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final token:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/google/firebase/database/util/GAuthToken;->token:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lcom/google/firebase/database/util/GAuthToken;->auth:Ljava/util/Map;

    return-void
.end method

.method public static tryParseFromString(Ljava/lang/String;)Lcom/google/firebase/database/util/GAuthToken;
    .registers 3

    const-string v0, "gauth|"

    .line 46
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return-object p0

    :cond_a
    const/4 v0, 0x6

    .line 50
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 52
    :try_start_f
    invoke-static {p0}, Lcom/google/firebase/database/util/JsonMapper;->parseJson(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    const-string v0, "token"

    .line 53
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "auth"

    .line 55
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    .line 56
    new-instance v1, Lcom/google/firebase/database/util/GAuthToken;

    invoke-direct {v1, v0, p0}, Lcom/google/firebase/database/util/GAuthToken;-><init>(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_28} :catch_29

    return-object v1

    :catch_29
    move-exception p0

    .line 58
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to parse gauth token"

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public getAuth()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/google/firebase/database/util/GAuthToken;->auth:Ljava/util/Map;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .registers 2

    .line 75
    iget-object v0, p0, Lcom/google/firebase/database/util/GAuthToken;->token:Ljava/lang/String;

    return-object v0
.end method

.method public serializeToString()Ljava/lang/String;
    .registers 4

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 64
    iget-object v1, p0, Lcom/google/firebase/database/util/GAuthToken;->token:Ljava/lang/String;

    const-string v2, "token"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v1, p0, Lcom/google/firebase/database/util/GAuthToken;->auth:Ljava/util/Map;

    const-string v2, "auth"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    :try_start_13
    invoke-static {v0}, Lcom/google/firebase/database/util/JsonMapper;->serializeJson(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gauth|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_28} :catch_29

    return-object v0

    :catch_29
    move-exception v0

    .line 70
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to serialize gauth token"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.class Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingDisconnect;
.super Ljava/lang/Object;
.source "PersistentConnectionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/database/connection/PersistentConnectionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OutstandingDisconnect"
.end annotation


# instance fields
.field private final action:Ljava/lang/String;

.field private final data:Ljava/lang/Object;

.field private final onComplete:Lcom/google/firebase/database/connection/RequestResultCallback;

.field private final path:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Lcom/google/firebase/database/connection/RequestResultCallback;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/google/firebase/database/connection/RequestResultCallback;",
            ")V"
        }
    .end annotation

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    iput-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingDisconnect;->action:Ljava/lang/String;

    .line 193
    iput-object p2, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingDisconnect;->path:Ljava/util/List;

    .line 194
    iput-object p3, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingDisconnect;->data:Ljava/lang/Object;

    .line 195
    iput-object p4, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingDisconnect;->onComplete:Lcom/google/firebase/database/connection/RequestResultCallback;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Lcom/google/firebase/database/connection/RequestResultCallback;Lcom/google/firebase/database/connection/PersistentConnectionImpl$1;)V
    .registers 6

    .line 184
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingDisconnect;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Lcom/google/firebase/database/connection/RequestResultCallback;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingDisconnect;)Lcom/google/firebase/database/connection/RequestResultCallback;
    .registers 1

    .line 184
    iget-object p0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingDisconnect;->onComplete:Lcom/google/firebase/database/connection/RequestResultCallback;

    return-object p0
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .registers 2

    .line 199
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingDisconnect;->action:Ljava/lang/String;

    return-object v0
.end method

.method public getData()Ljava/lang/Object;
    .registers 2

    .line 207
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingDisconnect;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public getOnComplete()Lcom/google/firebase/database/connection/RequestResultCallback;
    .registers 2

    .line 211
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingDisconnect;->onComplete:Lcom/google/firebase/database/connection/RequestResultCallback;

    return-object v0
.end method

.method public getPath()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 203
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingDisconnect;->path:Ljava/util/List;

    return-object v0
.end method

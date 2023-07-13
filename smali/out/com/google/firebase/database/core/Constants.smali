.class public Lcom/google/firebase/database/core/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final DOT_INFO:Lcom/google/firebase/database/snapshot/ChildKey;

.field public static final DOT_INFO_AUTHENTICATED:Lcom/google/firebase/database/snapshot/ChildKey;

.field public static final DOT_INFO_CONNECTED:Lcom/google/firebase/database/snapshot/ChildKey;

.field public static final DOT_INFO_SERVERTIME_OFFSET:Lcom/google/firebase/database/snapshot/ChildKey;

.field public static final WIRE_PROTOCOL_VERSION:Ljava/lang/String; = "5"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, ".info"

    .line 21
    invoke-static {v0}, Lcom/google/firebase/database/snapshot/ChildKey;->fromString(Ljava/lang/String;)Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/database/core/Constants;->DOT_INFO:Lcom/google/firebase/database/snapshot/ChildKey;

    const-string v0, "serverTimeOffset"

    .line 22
    invoke-static {v0}, Lcom/google/firebase/database/snapshot/ChildKey;->fromString(Ljava/lang/String;)Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/database/core/Constants;->DOT_INFO_SERVERTIME_OFFSET:Lcom/google/firebase/database/snapshot/ChildKey;

    const-string v0, "authenticated"

    .line 23
    invoke-static {v0}, Lcom/google/firebase/database/snapshot/ChildKey;->fromString(Ljava/lang/String;)Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/database/core/Constants;->DOT_INFO_AUTHENTICATED:Lcom/google/firebase/database/snapshot/ChildKey;

    const-string v0, "connected"

    .line 24
    invoke-static {v0}, Lcom/google/firebase/database/snapshot/ChildKey;->fromString(Ljava/lang/String;)Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/database/core/Constants;->DOT_INFO_CONNECTED:Lcom/google/firebase/database/snapshot/ChildKey;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

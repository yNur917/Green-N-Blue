.class public final enum Lcom/google/firebase/database/snapshot/Node$HashVersion;
.super Ljava/lang/Enum;
.source "Node.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/database/snapshot/Node;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HashVersion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/firebase/database/snapshot/Node$HashVersion;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/firebase/database/snapshot/Node$HashVersion;

.field public static final enum V1:Lcom/google/firebase/database/snapshot/Node$HashVersion;

.field public static final enum V2:Lcom/google/firebase/database/snapshot/Node$HashVersion;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 24
    new-instance v0, Lcom/google/firebase/database/snapshot/Node$HashVersion;

    const-string v1, "V1"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/database/snapshot/Node$HashVersion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/database/snapshot/Node$HashVersion;->V1:Lcom/google/firebase/database/snapshot/Node$HashVersion;

    .line 26
    new-instance v1, Lcom/google/firebase/database/snapshot/Node$HashVersion;

    const-string v3, "V2"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/google/firebase/database/snapshot/Node$HashVersion;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/firebase/database/snapshot/Node$HashVersion;->V2:Lcom/google/firebase/database/snapshot/Node$HashVersion;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/google/firebase/database/snapshot/Node$HashVersion;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 22
    sput-object v3, Lcom/google/firebase/database/snapshot/Node$HashVersion;->$VALUES:[Lcom/google/firebase/database/snapshot/Node$HashVersion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firebase/database/snapshot/Node$HashVersion;
    .registers 2

    .line 22
    const-class v0, Lcom/google/firebase/database/snapshot/Node$HashVersion;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/database/snapshot/Node$HashVersion;

    return-object p0
.end method

.method public static values()[Lcom/google/firebase/database/snapshot/Node$HashVersion;
    .registers 1

    .line 22
    sget-object v0, Lcom/google/firebase/database/snapshot/Node$HashVersion;->$VALUES:[Lcom/google/firebase/database/snapshot/Node$HashVersion;

    invoke-virtual {v0}, [Lcom/google/firebase/database/snapshot/Node$HashVersion;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firebase/database/snapshot/Node$HashVersion;

    return-object v0
.end method

.class synthetic Lcom/google/firebase/database/snapshot/StringNode$1;
.super Ljava/lang/Object;
.source "StringNode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/database/snapshot/StringNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$google$firebase$database$snapshot$Node$HashVersion:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 35
    invoke-static {}, Lcom/google/firebase/database/snapshot/Node$HashVersion;->values()[Lcom/google/firebase/database/snapshot/Node$HashVersion;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/firebase/database/snapshot/StringNode$1;->$SwitchMap$com$google$firebase$database$snapshot$Node$HashVersion:[I

    :try_start_9
    sget-object v1, Lcom/google/firebase/database/snapshot/Node$HashVersion;->V1:Lcom/google/firebase/database/snapshot/Node$HashVersion;

    invoke-virtual {v1}, Lcom/google/firebase/database/snapshot/Node$HashVersion;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/google/firebase/database/snapshot/StringNode$1;->$SwitchMap$com$google$firebase$database$snapshot$Node$HashVersion:[I

    sget-object v1, Lcom/google/firebase/database/snapshot/Node$HashVersion;->V2:Lcom/google/firebase/database/snapshot/Node$HashVersion;

    invoke-virtual {v1}, Lcom/google/firebase/database/snapshot/Node$HashVersion;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    return-void
.end method

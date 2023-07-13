.class synthetic Lcom/google/firebase/database/tubesock/WebSocket$3;
.super Ljava/lang/Object;
.source "WebSocket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/database/tubesock/WebSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$google$firebase$database$tubesock$WebSocket$State:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 231
    invoke-static {}, Lcom/google/firebase/database/tubesock/WebSocket$State;->values()[Lcom/google/firebase/database/tubesock/WebSocket$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/firebase/database/tubesock/WebSocket$3;->$SwitchMap$com$google$firebase$database$tubesock$WebSocket$State:[I

    :try_start_9
    sget-object v1, Lcom/google/firebase/database/tubesock/WebSocket$State;->NONE:Lcom/google/firebase/database/tubesock/WebSocket$State;

    invoke-virtual {v1}, Lcom/google/firebase/database/tubesock/WebSocket$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/google/firebase/database/tubesock/WebSocket$3;->$SwitchMap$com$google$firebase$database$tubesock$WebSocket$State:[I

    sget-object v1, Lcom/google/firebase/database/tubesock/WebSocket$State;->CONNECTING:Lcom/google/firebase/database/tubesock/WebSocket$State;

    invoke-virtual {v1}, Lcom/google/firebase/database/tubesock/WebSocket$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lcom/google/firebase/database/tubesock/WebSocket$3;->$SwitchMap$com$google$firebase$database$tubesock$WebSocket$State:[I

    sget-object v1, Lcom/google/firebase/database/tubesock/WebSocket$State;->CONNECTED:Lcom/google/firebase/database/tubesock/WebSocket$State;

    invoke-virtual {v1}, Lcom/google/firebase/database/tubesock/WebSocket$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Lcom/google/firebase/database/tubesock/WebSocket$3;->$SwitchMap$com$google$firebase$database$tubesock$WebSocket$State:[I

    sget-object v1, Lcom/google/firebase/database/tubesock/WebSocket$State;->DISCONNECTING:Lcom/google/firebase/database/tubesock/WebSocket$State;

    invoke-virtual {v1}, Lcom/google/firebase/database/tubesock/WebSocket$State;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    :try_start_33
    sget-object v0, Lcom/google/firebase/database/tubesock/WebSocket$3;->$SwitchMap$com$google$firebase$database$tubesock$WebSocket$State:[I

    sget-object v1, Lcom/google/firebase/database/tubesock/WebSocket$State;->DISCONNECTED:Lcom/google/firebase/database/tubesock/WebSocket$State;

    invoke-virtual {v1}, Lcom/google/firebase/database/tubesock/WebSocket$State;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_3e

    :catch_3e
    return-void
.end method

.class Lcom/google/firebase/database/connection/Connection;
.super Ljava/lang/Object;
.source "Connection.java"

# interfaces
.implements Lcom/google/firebase/database/connection/WebsocketConnection$Delegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/database/connection/Connection$State;,
        Lcom/google/firebase/database/connection/Connection$Delegate;,
        Lcom/google/firebase/database/connection/Connection$DisconnectReason;
    }
.end annotation


# static fields
.field private static final REQUEST_PAYLOAD:Ljava/lang/String; = "d"

.field private static final REQUEST_TYPE:Ljava/lang/String; = "t"

.field private static final REQUEST_TYPE_DATA:Ljava/lang/String; = "d"

.field private static final SERVER_CONTROL_MESSAGE:Ljava/lang/String; = "c"

.field private static final SERVER_CONTROL_MESSAGE_DATA:Ljava/lang/String; = "d"

.field private static final SERVER_CONTROL_MESSAGE_HELLO:Ljava/lang/String; = "h"

.field private static final SERVER_CONTROL_MESSAGE_RESET:Ljava/lang/String; = "r"

.field private static final SERVER_CONTROL_MESSAGE_SHUTDOWN:Ljava/lang/String; = "s"

.field private static final SERVER_CONTROL_MESSAGE_TYPE:Ljava/lang/String; = "t"

.field private static final SERVER_DATA_MESSAGE:Ljava/lang/String; = "d"

.field private static final SERVER_ENVELOPE_DATA:Ljava/lang/String; = "d"

.field private static final SERVER_ENVELOPE_TYPE:Ljava/lang/String; = "t"

.field private static final SERVER_HELLO_HOST:Ljava/lang/String; = "h"

.field private static final SERVER_HELLO_SESSION_ID:Ljava/lang/String; = "s"

.field private static final SERVER_HELLO_TIMESTAMP:Ljava/lang/String; = "ts"

.field private static connectionIds:J


# instance fields
.field private conn:Lcom/google/firebase/database/connection/WebsocketConnection;

.field private delegate:Lcom/google/firebase/database/connection/Connection$Delegate;

.field private hostInfo:Lcom/google/firebase/database/connection/HostInfo;

.field private final logger:Lcom/google/firebase/database/logging/LogWrapper;

.field private state:Lcom/google/firebase/database/connection/Connection$State;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/database/connection/ConnectionContext;Lcom/google/firebase/database/connection/HostInfo;Ljava/lang/String;Lcom/google/firebase/database/connection/Connection$Delegate;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    sget-wide v0, Lcom/google/firebase/database/connection/Connection;->connectionIds:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    sput-wide v2, Lcom/google/firebase/database/connection/Connection;->connectionIds:J

    .line 81
    iput-object p2, p0, Lcom/google/firebase/database/connection/Connection;->hostInfo:Lcom/google/firebase/database/connection/HostInfo;

    .line 82
    iput-object p4, p0, Lcom/google/firebase/database/connection/Connection;->delegate:Lcom/google/firebase/database/connection/Connection$Delegate;

    .line 83
    new-instance p4, Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {p1}, Lcom/google/firebase/database/connection/ConnectionContext;->getLogger()Lcom/google/firebase/database/logging/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "conn_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Connection"

    invoke-direct {p4, v2, v1, v0}, Lcom/google/firebase/database/logging/LogWrapper;-><init>(Lcom/google/firebase/database/logging/Logger;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p4, p0, Lcom/google/firebase/database/connection/Connection;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    .line 84
    sget-object p4, Lcom/google/firebase/database/connection/Connection$State;->REALTIME_CONNECTING:Lcom/google/firebase/database/connection/Connection$State;

    iput-object p4, p0, Lcom/google/firebase/database/connection/Connection;->state:Lcom/google/firebase/database/connection/Connection$State;

    .line 85
    new-instance p4, Lcom/google/firebase/database/connection/WebsocketConnection;

    move-object v0, p4

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p6

    move-object v5, p0

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/firebase/database/connection/WebsocketConnection;-><init>(Lcom/google/firebase/database/connection/ConnectionContext;Lcom/google/firebase/database/connection/HostInfo;Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/database/connection/WebsocketConnection$Delegate;Ljava/lang/String;)V

    iput-object p4, p0, Lcom/google/firebase/database/connection/Connection;->conn:Lcom/google/firebase/database/connection/WebsocketConnection;

    return-void
.end method

.method private onConnectionReady(JLjava/lang/String;)V
    .registers 7

    .line 218
    iget-object v0, p0, Lcom/google/firebase/database/connection/Connection;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v0}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/firebase/database/connection/Connection;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "realtime connection established"

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 219
    :cond_12
    sget-object v0, Lcom/google/firebase/database/connection/Connection$State;->REALTIME_CONNECTED:Lcom/google/firebase/database/connection/Connection$State;

    iput-object v0, p0, Lcom/google/firebase/database/connection/Connection;->state:Lcom/google/firebase/database/connection/Connection$State;

    .line 220
    iget-object v0, p0, Lcom/google/firebase/database/connection/Connection;->delegate:Lcom/google/firebase/database/connection/Connection$Delegate;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/firebase/database/connection/Connection$Delegate;->onReady(JLjava/lang/String;)V

    return-void
.end method

.method private onConnectionShutdown(Ljava/lang/String;)V
    .registers 5

    .line 200
    iget-object v0, p0, Lcom/google/firebase/database/connection/Connection;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v0}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/firebase/database/connection/Connection;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Connection shutdown command received. Shutting down..."

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 201
    :cond_12
    iget-object v0, p0, Lcom/google/firebase/database/connection/Connection;->delegate:Lcom/google/firebase/database/connection/Connection$Delegate;

    invoke-interface {v0, p1}, Lcom/google/firebase/database/connection/Connection$Delegate;->onKill(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p0}, Lcom/google/firebase/database/connection/Connection;->close()V

    return-void
.end method

.method private onControlMessage(Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 171
    iget-object v0, p0, Lcom/google/firebase/database/connection/Connection;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v0}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/google/firebase/database/connection/Connection;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got control message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_25
    :try_start_25
    const-string v0, "t"

    .line 173
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_8a

    const-string v2, "s"

    .line 175
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_35
    .catch Ljava/lang/ClassCastException; {:try_start_25 .. :try_end_35} :catch_b2

    const-string v3, "d"

    if-eqz v2, :cond_44

    .line 176
    :try_start_39
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 177
    invoke-direct {p0, p1}, Lcom/google/firebase/database/connection/Connection;->onConnectionShutdown(Ljava/lang/String;)V

    goto/16 :goto_da

    :cond_44
    const-string v2, "r"

    .line 178
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_57

    .line 179
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 180
    invoke-direct {p0, p1}, Lcom/google/firebase/database/connection/Connection;->onReset(Ljava/lang/String;)V

    goto/16 :goto_da

    :cond_57
    const-string v2, "h"

    .line 181
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_69

    .line 184
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 185
    invoke-direct {p0, p1}, Lcom/google/firebase/database/connection/Connection;->onHandshake(Ljava/util/Map;)V

    goto :goto_da

    .line 187
    :cond_69
    iget-object p1, p0, Lcom/google/firebase/database/connection/Connection;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {p1}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result p1

    if-eqz p1, :cond_da

    iget-object p1, p0, Lcom/google/firebase/database/connection/Connection;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring unknown control message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v2}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_da

    .line 190
    :cond_8a
    iget-object v0, p0, Lcom/google/firebase/database/connection/Connection;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v0}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_ae

    iget-object v0, p0, Lcom/google/firebase/database/connection/Connection;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got invalid control message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v2}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 191
    :cond_ae
    invoke-virtual {p0}, Lcom/google/firebase/database/connection/Connection;->close()V
    :try_end_b1
    .catch Ljava/lang/ClassCastException; {:try_start_39 .. :try_end_b1} :catch_b2

    goto :goto_da

    :catch_b2
    move-exception p1

    .line 194
    iget-object v0, p0, Lcom/google/firebase/database/connection/Connection;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v0}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_d7

    iget-object v0, p0, Lcom/google/firebase/database/connection/Connection;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to parse control message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/ClassCastException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 195
    :cond_d7
    invoke-virtual {p0}, Lcom/google/firebase/database/connection/Connection;->close()V

    :cond_da
    :goto_da
    return-void
.end method

.method private onDataMessage(Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 165
    iget-object v0, p0, Lcom/google/firebase/database/connection/Connection;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v0}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/google/firebase/database/connection/Connection;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "received data message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 167
    :cond_25
    iget-object v0, p0, Lcom/google/firebase/database/connection/Connection;->delegate:Lcom/google/firebase/database/connection/Connection$Delegate;

    invoke-interface {v0, p1}, Lcom/google/firebase/database/connection/Connection$Delegate;->onDataMessage(Ljava/util/Map;)V

    return-void
.end method

.method private onHandshake(Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "ts"

    .line 206
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-string v2, "h"

    .line 207
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 208
    iget-object v3, p0, Lcom/google/firebase/database/connection/Connection;->delegate:Lcom/google/firebase/database/connection/Connection$Delegate;

    invoke-interface {v3, v2}, Lcom/google/firebase/database/connection/Connection$Delegate;->onCacheHost(Ljava/lang/String;)V

    const-string v2, "s"

    .line 209
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 211
    iget-object v2, p0, Lcom/google/firebase/database/connection/Connection;->state:Lcom/google/firebase/database/connection/Connection$State;

    sget-object v3, Lcom/google/firebase/database/connection/Connection$State;->REALTIME_CONNECTING:Lcom/google/firebase/database/connection/Connection$State;

    if-ne v2, v3, :cond_2f

    .line 212
    iget-object v2, p0, Lcom/google/firebase/database/connection/Connection;->conn:Lcom/google/firebase/database/connection/WebsocketConnection;

    invoke-virtual {v2}, Lcom/google/firebase/database/connection/WebsocketConnection;->start()V

    .line 213
    invoke-direct {p0, v0, v1, p1}, Lcom/google/firebase/database/connection/Connection;->onConnectionReady(JLjava/lang/String;)V

    :cond_2f
    return-void
.end method

.method private onReset(Ljava/lang/String;)V
    .registers 5

    .line 224
    iget-object v0, p0, Lcom/google/firebase/database/connection/Connection;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v0}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 225
    iget-object v0, p0, Lcom/google/firebase/database/connection/Connection;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got a reset; killing connection to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/firebase/database/connection/Connection;->hostInfo:Lcom/google/firebase/database/connection/HostInfo;

    .line 227
    invoke-virtual {v2}, Lcom/google/firebase/database/connection/HostInfo;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; Updating internalHost to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 225
    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 230
    :cond_2f
    iget-object v0, p0, Lcom/google/firebase/database/connection/Connection;->delegate:Lcom/google/firebase/database/connection/Connection$Delegate;

    invoke-interface {v0, p1}, Lcom/google/firebase/database/connection/Connection$Delegate;->onCacheHost(Ljava/lang/String;)V

    .line 234
    sget-object p1, Lcom/google/firebase/database/connection/Connection$DisconnectReason;->SERVER_RESET:Lcom/google/firebase/database/connection/Connection$DisconnectReason;

    invoke-virtual {p0, p1}, Lcom/google/firebase/database/connection/Connection;->close(Lcom/google/firebase/database/connection/Connection$DisconnectReason;)V

    return-void
.end method

.method private sendData(Ljava/util/Map;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .line 238
    iget-object v0, p0, Lcom/google/firebase/database/connection/Connection;->state:Lcom/google/firebase/database/connection/Connection$State;

    sget-object v1, Lcom/google/firebase/database/connection/Connection$State;->REALTIME_CONNECTED:Lcom/google/firebase/database/connection/Connection$State;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_11

    .line 239
    iget-object p1, p0, Lcom/google/firebase/database/connection/Connection;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    new-array p2, v2, [Ljava/lang/Object;

    const-string v0, "Tried to send on an unconnected connection"

    invoke-virtual {p1, v0, p2}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2e

    :cond_11
    if-eqz p2, :cond_1d

    .line 242
    iget-object p2, p0, Lcom/google/firebase/database/connection/Connection;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "Sending data (contents hidden)"

    invoke-virtual {p2, v1, v0}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_29

    .line 244
    :cond_1d
    iget-object p2, p0, Lcom/google/firebase/database/connection/Connection;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    const-string v1, "Sending data: %s"

    invoke-virtual {p2, v1, v0}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 246
    :goto_29
    iget-object p2, p0, Lcom/google/firebase/database/connection/Connection;->conn:Lcom/google/firebase/database/connection/WebsocketConnection;

    invoke-virtual {p2, p1}, Lcom/google/firebase/database/connection/WebsocketConnection;->send(Ljava/util/Map;)V

    :goto_2e
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    .line 110
    sget-object v0, Lcom/google/firebase/database/connection/Connection$DisconnectReason;->OTHER:Lcom/google/firebase/database/connection/Connection$DisconnectReason;

    invoke-virtual {p0, v0}, Lcom/google/firebase/database/connection/Connection;->close(Lcom/google/firebase/database/connection/Connection$DisconnectReason;)V

    return-void
.end method

.method public close(Lcom/google/firebase/database/connection/Connection$DisconnectReason;)V
    .registers 5

    .line 96
    iget-object v0, p0, Lcom/google/firebase/database/connection/Connection;->state:Lcom/google/firebase/database/connection/Connection$State;

    sget-object v1, Lcom/google/firebase/database/connection/Connection$State;->REALTIME_DISCONNECTED:Lcom/google/firebase/database/connection/Connection$State;

    if-eq v0, v1, :cond_2b

    .line 97
    iget-object v0, p0, Lcom/google/firebase/database/connection/Connection;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v0}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/google/firebase/database/connection/Connection;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "closing realtime connection"

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    :cond_18
    sget-object v0, Lcom/google/firebase/database/connection/Connection$State;->REALTIME_DISCONNECTED:Lcom/google/firebase/database/connection/Connection$State;

    iput-object v0, p0, Lcom/google/firebase/database/connection/Connection;->state:Lcom/google/firebase/database/connection/Connection$State;

    .line 100
    iget-object v0, p0, Lcom/google/firebase/database/connection/Connection;->conn:Lcom/google/firebase/database/connection/WebsocketConnection;

    if-eqz v0, :cond_26

    .line 101
    invoke-virtual {v0}, Lcom/google/firebase/database/connection/WebsocketConnection;->close()V

    const/4 v0, 0x0

    .line 102
    iput-object v0, p0, Lcom/google/firebase/database/connection/Connection;->conn:Lcom/google/firebase/database/connection/WebsocketConnection;

    .line 105
    :cond_26
    iget-object v0, p0, Lcom/google/firebase/database/connection/Connection;->delegate:Lcom/google/firebase/database/connection/Connection$Delegate;

    invoke-interface {v0, p1}, Lcom/google/firebase/database/connection/Connection$Delegate;->onDisconnect(Lcom/google/firebase/database/connection/Connection$DisconnectReason;)V

    :cond_2b
    return-void
.end method

.method public injectConnectionFailure()V
    .registers 1

    .line 252
    invoke-virtual {p0}, Lcom/google/firebase/database/connection/Connection;->close()V

    return-void
.end method

.method public onDisconnect(Z)V
    .registers 4

    const/4 v0, 0x0

    .line 154
    iput-object v0, p0, Lcom/google/firebase/database/connection/Connection;->conn:Lcom/google/firebase/database/connection/WebsocketConnection;

    const/4 v0, 0x0

    if-nez p1, :cond_1e

    .line 155
    iget-object p1, p0, Lcom/google/firebase/database/connection/Connection;->state:Lcom/google/firebase/database/connection/Connection$State;

    sget-object v1, Lcom/google/firebase/database/connection/Connection$State;->REALTIME_CONNECTING:Lcom/google/firebase/database/connection/Connection$State;

    if-ne p1, v1, :cond_1e

    .line 156
    iget-object p1, p0, Lcom/google/firebase/database/connection/Connection;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {p1}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result p1

    if-eqz p1, :cond_2f

    iget-object p1, p0, Lcom/google/firebase/database/connection/Connection;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Realtime connection failed"

    invoke-virtual {p1, v1, v0}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2f

    .line 158
    :cond_1e
    iget-object p1, p0, Lcom/google/firebase/database/connection/Connection;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {p1}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result p1

    if-eqz p1, :cond_2f

    iget-object p1, p0, Lcom/google/firebase/database/connection/Connection;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Realtime connection lost"

    invoke-virtual {p1, v1, v0}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 161
    :cond_2f
    :goto_2f
    invoke-virtual {p0}, Lcom/google/firebase/database/connection/Connection;->close()V

    return-void
.end method

.method public onMessage(Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "d"

    const/4 v1, 0x0

    :try_start_3
    const-string v2, "t"

    .line 126
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_51

    .line 128
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 130
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 131
    invoke-direct {p0, p1}, Lcom/google/firebase/database/connection/Connection;->onDataMessage(Ljava/util/Map;)V

    goto/16 :goto_a1

    :cond_1e
    const-string v3, "c"

    .line 132
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 134
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 135
    invoke-direct {p0, p1}, Lcom/google/firebase/database/connection/Connection;->onControlMessage(Ljava/util/Map;)V

    goto :goto_a1

    .line 137
    :cond_30
    iget-object p1, p0, Lcom/google/firebase/database/connection/Connection;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {p1}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result p1

    if-eqz p1, :cond_a1

    .line 138
    iget-object p1, p0, Lcom/google/firebase/database/connection/Connection;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring unknown server message type: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v2}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_a1

    .line 141
    :cond_51
    iget-object v0, p0, Lcom/google/firebase/database/connection/Connection;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v0}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_75

    .line 142
    iget-object v0, p0, Lcom/google/firebase/database/connection/Connection;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to parse server message: missing message type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v2, v1, [Ljava/lang/Object;

    .line 142
    invoke-virtual {v0, p1, v2}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 144
    :cond_75
    invoke-virtual {p0}, Lcom/google/firebase/database/connection/Connection;->close()V
    :try_end_78
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_78} :catch_79

    goto :goto_a1

    :catch_79
    move-exception p1

    .line 147
    iget-object v0, p0, Lcom/google/firebase/database/connection/Connection;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v0}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_9e

    iget-object v0, p0, Lcom/google/firebase/database/connection/Connection;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to parse server message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/ClassCastException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 148
    :cond_9e
    invoke-virtual {p0}, Lcom/google/firebase/database/connection/Connection;->close()V

    :cond_a1
    :goto_a1
    return-void
.end method

.method public open()V
    .registers 4

    .line 91
    iget-object v0, p0, Lcom/google/firebase/database/connection/Connection;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v0}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/firebase/database/connection/Connection;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Opening a connection"

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    :cond_12
    iget-object v0, p0, Lcom/google/firebase/database/connection/Connection;->conn:Lcom/google/firebase/database/connection/WebsocketConnection;

    invoke-virtual {v0}, Lcom/google/firebase/database/connection/WebsocketConnection;->open()V

    return-void
.end method

.method public sendRequest(Ljava/util/Map;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .line 116
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "t"

    const-string v2, "d"

    .line 117
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    invoke-direct {p0, v0, p2}, Lcom/google/firebase/database/connection/Connection;->sendData(Ljava/util/Map;Z)V

    return-void
.end method

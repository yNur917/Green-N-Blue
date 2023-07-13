.class Lcom/google/firebase/database/connection/WebsocketConnection$WSClientTubesock;
.super Ljava/lang/Object;
.source "WebsocketConnection.java"

# interfaces
.implements Lcom/google/firebase/database/connection/WebsocketConnection$WSClient;
.implements Lcom/google/firebase/database/tubesock/WebSocketEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/database/connection/WebsocketConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WSClientTubesock"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/firebase/database/connection/WebsocketConnection;

.field private ws:Lcom/google/firebase/database/tubesock/WebSocket;


# direct methods
.method private constructor <init>(Lcom/google/firebase/database/connection/WebsocketConnection;Lcom/google/firebase/database/tubesock/WebSocket;)V
    .registers 3

    .line 59
    iput-object p1, p0, Lcom/google/firebase/database/connection/WebsocketConnection$WSClientTubesock;->this$0:Lcom/google/firebase/database/connection/WebsocketConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p2, p0, Lcom/google/firebase/database/connection/WebsocketConnection$WSClientTubesock;->ws:Lcom/google/firebase/database/tubesock/WebSocket;

    .line 61
    invoke-virtual {p2, p0}, Lcom/google/firebase/database/tubesock/WebSocket;->setEventHandler(Lcom/google/firebase/database/tubesock/WebSocketEventHandler;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/database/connection/WebsocketConnection;Lcom/google/firebase/database/tubesock/WebSocket;Lcom/google/firebase/database/connection/WebsocketConnection$1;)V
    .registers 4

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/database/connection/WebsocketConnection$WSClientTubesock;-><init>(Lcom/google/firebase/database/connection/WebsocketConnection;Lcom/google/firebase/database/tubesock/WebSocket;)V

    return-void
.end method

.method private shutdown()V
    .registers 4

    .line 136
    iget-object v0, p0, Lcom/google/firebase/database/connection/WebsocketConnection$WSClientTubesock;->ws:Lcom/google/firebase/database/tubesock/WebSocket;

    invoke-virtual {v0}, Lcom/google/firebase/database/tubesock/WebSocket;->close()V

    .line 138
    :try_start_5
    iget-object v0, p0, Lcom/google/firebase/database/connection/WebsocketConnection$WSClientTubesock;->ws:Lcom/google/firebase/database/tubesock/WebSocket;

    invoke-virtual {v0}, Lcom/google/firebase/database/tubesock/WebSocket;->blockClose()V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_a} :catch_b

    goto :goto_17

    :catch_b
    move-exception v0

    .line 140
    iget-object v1, p0, Lcom/google/firebase/database/connection/WebsocketConnection$WSClientTubesock;->this$0:Lcom/google/firebase/database/connection/WebsocketConnection;

    invoke-static {v1}, Lcom/google/firebase/database/connection/WebsocketConnection;->access$200(Lcom/google/firebase/database/connection/WebsocketConnection;)Lcom/google/firebase/database/logging/LogWrapper;

    move-result-object v1

    const-string v2, "Interrupted while shutting down websocket threads"

    invoke-virtual {v1, v2, v0}, Lcom/google/firebase/database/logging/LogWrapper;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_17
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    .line 132
    iget-object v0, p0, Lcom/google/firebase/database/connection/WebsocketConnection$WSClientTubesock;->ws:Lcom/google/firebase/database/tubesock/WebSocket;

    invoke-virtual {v0}, Lcom/google/firebase/database/tubesock/WebSocket;->close()V

    return-void
.end method

.method public connect()V
    .registers 5

    .line 147
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/database/connection/WebsocketConnection$WSClientTubesock;->ws:Lcom/google/firebase/database/tubesock/WebSocket;

    invoke-virtual {v0}, Lcom/google/firebase/database/tubesock/WebSocket;->connect()V
    :try_end_5
    .catch Lcom/google/firebase/database/tubesock/WebSocketException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_24

    :catch_6
    move-exception v0

    .line 149
    iget-object v1, p0, Lcom/google/firebase/database/connection/WebsocketConnection$WSClientTubesock;->this$0:Lcom/google/firebase/database/connection/WebsocketConnection;

    invoke-static {v1}, Lcom/google/firebase/database/connection/WebsocketConnection;->access$200(Lcom/google/firebase/database/connection/WebsocketConnection;)Lcom/google/firebase/database/logging/LogWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v1

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/google/firebase/database/connection/WebsocketConnection$WSClientTubesock;->this$0:Lcom/google/firebase/database/connection/WebsocketConnection;

    invoke-static {v1}, Lcom/google/firebase/database/connection/WebsocketConnection;->access$200(Lcom/google/firebase/database/connection/WebsocketConnection;)Lcom/google/firebase/database/logging/LogWrapper;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Error connecting"

    invoke-virtual {v1, v3, v0, v2}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 150
    :cond_21
    invoke-direct {p0}, Lcom/google/firebase/database/connection/WebsocketConnection$WSClientTubesock;->shutdown()V

    :goto_24
    return-void
.end method

.method public onClose()V
    .registers 3

    .line 94
    iget-object v0, p0, Lcom/google/firebase/database/connection/WebsocketConnection$WSClientTubesock;->this$0:Lcom/google/firebase/database/connection/WebsocketConnection;

    invoke-static {v0}, Lcom/google/firebase/database/connection/WebsocketConnection;->access$400(Lcom/google/firebase/database/connection/WebsocketConnection;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/database/connection/WebsocketConnection$WSClientTubesock$3;

    invoke-direct {v1, p0}, Lcom/google/firebase/database/connection/WebsocketConnection$WSClientTubesock$3;-><init>(Lcom/google/firebase/database/connection/WebsocketConnection$WSClientTubesock;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onError(Lcom/google/firebase/database/tubesock/WebSocketException;)V
    .registers 4

    .line 106
    iget-object v0, p0, Lcom/google/firebase/database/connection/WebsocketConnection$WSClientTubesock;->this$0:Lcom/google/firebase/database/connection/WebsocketConnection;

    invoke-static {v0}, Lcom/google/firebase/database/connection/WebsocketConnection;->access$400(Lcom/google/firebase/database/connection/WebsocketConnection;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/database/connection/WebsocketConnection$WSClientTubesock$4;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/database/connection/WebsocketConnection$WSClientTubesock$4;-><init>(Lcom/google/firebase/database/connection/WebsocketConnection$WSClientTubesock;Lcom/google/firebase/database/tubesock/WebSocketException;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onLogMessage(Ljava/lang/String;)V
    .registers 5

    .line 122
    iget-object v0, p0, Lcom/google/firebase/database/connection/WebsocketConnection$WSClientTubesock;->this$0:Lcom/google/firebase/database/connection/WebsocketConnection;

    invoke-static {v0}, Lcom/google/firebase/database/connection/WebsocketConnection;->access$200(Lcom/google/firebase/database/connection/WebsocketConnection;)Lcom/google/firebase/database/logging/LogWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/google/firebase/database/connection/WebsocketConnection$WSClientTubesock;->this$0:Lcom/google/firebase/database/connection/WebsocketConnection;

    invoke-static {v0}, Lcom/google/firebase/database/connection/WebsocketConnection;->access$200(Lcom/google/firebase/database/connection/WebsocketConnection;)Lcom/google/firebase/database/logging/LogWrapper;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tubesock: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_29
    return-void
.end method

.method public onMessage(Lcom/google/firebase/database/tubesock/WebSocketMessage;)V
    .registers 5

    .line 80
    invoke-virtual {p1}, Lcom/google/firebase/database/tubesock/WebSocketMessage;->getText()Ljava/lang/String;

    move-result-object p1

    .line 81
    iget-object v0, p0, Lcom/google/firebase/database/connection/WebsocketConnection$WSClientTubesock;->this$0:Lcom/google/firebase/database/connection/WebsocketConnection;

    invoke-static {v0}, Lcom/google/firebase/database/connection/WebsocketConnection;->access$200(Lcom/google/firebase/database/connection/WebsocketConnection;)Lcom/google/firebase/database/logging/LogWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/google/firebase/database/connection/WebsocketConnection$WSClientTubesock;->this$0:Lcom/google/firebase/database/connection/WebsocketConnection;

    invoke-static {v0}, Lcom/google/firebase/database/connection/WebsocketConnection;->access$200(Lcom/google/firebase/database/connection/WebsocketConnection;)Lcom/google/firebase/database/logging/LogWrapper;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ws message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    :cond_2d
    iget-object v0, p0, Lcom/google/firebase/database/connection/WebsocketConnection$WSClientTubesock;->this$0:Lcom/google/firebase/database/connection/WebsocketConnection;

    invoke-static {v0}, Lcom/google/firebase/database/connection/WebsocketConnection;->access$400(Lcom/google/firebase/database/connection/WebsocketConnection;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/database/connection/WebsocketConnection$WSClientTubesock$2;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/database/connection/WebsocketConnection$WSClientTubesock$2;-><init>(Lcom/google/firebase/database/connection/WebsocketConnection$WSClientTubesock;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onOpen()V
    .registers 3

    .line 66
    iget-object v0, p0, Lcom/google/firebase/database/connection/WebsocketConnection$WSClientTubesock;->this$0:Lcom/google/firebase/database/connection/WebsocketConnection;

    invoke-static {v0}, Lcom/google/firebase/database/connection/WebsocketConnection;->access$400(Lcom/google/firebase/database/connection/WebsocketConnection;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/database/connection/WebsocketConnection$WSClientTubesock$1;

    invoke-direct {v1, p0}, Lcom/google/firebase/database/connection/WebsocketConnection$WSClientTubesock$1;-><init>(Lcom/google/firebase/database/connection/WebsocketConnection$WSClientTubesock;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public send(Ljava/lang/String;)V
    .registers 3

    .line 127
    iget-object v0, p0, Lcom/google/firebase/database/connection/WebsocketConnection$WSClientTubesock;->ws:Lcom/google/firebase/database/tubesock/WebSocket;

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/tubesock/WebSocket;->send(Ljava/lang/String;)V

    return-void
.end method

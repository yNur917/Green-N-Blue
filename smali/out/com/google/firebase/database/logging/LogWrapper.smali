.class public Lcom/google/firebase/database/logging/LogWrapper;
.super Ljava/lang/Object;
.source "LogWrapper.java"


# instance fields
.field private final component:Ljava/lang/String;

.field private final logger:Lcom/google/firebase/database/logging/Logger;

.field private final prefix:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/firebase/database/logging/Logger;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, p2, v0}, Lcom/google/firebase/database/logging/LogWrapper;-><init>(Lcom/google/firebase/database/logging/Logger;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/database/logging/Logger;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/google/firebase/database/logging/LogWrapper;->logger:Lcom/google/firebase/database/logging/Logger;

    .line 39
    iput-object p2, p0, Lcom/google/firebase/database/logging/LogWrapper;->component:Ljava/lang/String;

    .line 40
    iput-object p3, p0, Lcom/google/firebase/database/logging/LogWrapper;->prefix:Ljava/lang/String;

    return-void
.end method

.method private static exceptionStacktrace(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 3

    .line 23
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 24
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 25
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 26
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private now()J
    .registers 3

    .line 84
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private varargs toLog(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 4

    .line 88
    array-length v0, p2

    if-lez v0, :cond_7

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 89
    :cond_7
    iget-object p2, p0, Lcom/google/firebase/database/logging/LogWrapper;->prefix:Ljava/lang/String;

    if-nez p2, :cond_c

    goto :goto_22

    :cond_c
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/google/firebase/database/logging/LogWrapper;->prefix:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " - "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_22
    return-object p1
.end method


# virtual methods
.method public varargs debug(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .registers 10

    .line 74
    invoke-virtual {p0}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 75
    invoke-direct {p0, p1, p3}, Lcom/google/firebase/database/logging/LogWrapper;->toLog(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_24

    .line 77
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/google/firebase/database/logging/LogWrapper;->exceptionStacktrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_24
    move-object v3, p1

    .line 79
    iget-object v0, p0, Lcom/google/firebase/database/logging/LogWrapper;->logger:Lcom/google/firebase/database/logging/Logger;

    sget-object v1, Lcom/google/firebase/database/logging/Logger$Level;->DEBUG:Lcom/google/firebase/database/logging/Logger$Level;

    iget-object v2, p0, Lcom/google/firebase/database/logging/LogWrapper;->component:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/firebase/database/logging/LogWrapper;->now()J

    move-result-wide v4

    invoke-interface/range {v0 .. v5}, Lcom/google/firebase/database/logging/Logger;->onLogMessage(Lcom/google/firebase/database/logging/Logger$Level;Ljava/lang/String;Ljava/lang/String;J)V

    :cond_32
    return-void
.end method

.method public varargs debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    const/4 v0, 0x0

    .line 65
    invoke-virtual {p0, p1, v0, p2}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 10

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, p1, v1}, Lcom/google/firebase/database/logging/LogWrapper;->toLog(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/google/firebase/database/logging/LogWrapper;->exceptionStacktrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 45
    iget-object v1, p0, Lcom/google/firebase/database/logging/LogWrapper;->logger:Lcom/google/firebase/database/logging/Logger;

    sget-object v2, Lcom/google/firebase/database/logging/Logger$Level;->ERROR:Lcom/google/firebase/database/logging/Logger$Level;

    iget-object v3, p0, Lcom/google/firebase/database/logging/LogWrapper;->component:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/firebase/database/logging/LogWrapper;->now()J

    move-result-wide v5

    invoke-interface/range {v1 .. v6}, Lcom/google/firebase/database/logging/Logger;->onLogMessage(Lcom/google/firebase/database/logging/Logger$Level;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public info(Ljava/lang/String;)V
    .registers 8

    .line 61
    iget-object v0, p0, Lcom/google/firebase/database/logging/LogWrapper;->logger:Lcom/google/firebase/database/logging/Logger;

    sget-object v1, Lcom/google/firebase/database/logging/Logger$Level;->INFO:Lcom/google/firebase/database/logging/Logger$Level;

    iget-object v2, p0, Lcom/google/firebase/database/logging/LogWrapper;->component:Ljava/lang/String;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {p0, p1, v3}, Lcom/google/firebase/database/logging/LogWrapper;->toLog(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lcom/google/firebase/database/logging/LogWrapper;->now()J

    move-result-wide v4

    invoke-interface/range {v0 .. v5}, Lcom/google/firebase/database/logging/Logger;->onLogMessage(Lcom/google/firebase/database/logging/Logger$Level;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public logsDebug()Z
    .registers 3

    .line 69
    iget-object v0, p0, Lcom/google/firebase/database/logging/LogWrapper;->logger:Lcom/google/firebase/database/logging/Logger;

    invoke-interface {v0}, Lcom/google/firebase/database/logging/Logger;->getLogLevel()Lcom/google/firebase/database/logging/Logger$Level;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/logging/Logger$Level;->ordinal()I

    move-result v0

    sget-object v1, Lcom/google/firebase/database/logging/Logger$Level;->DEBUG:Lcom/google/firebase/database/logging/Logger$Level;

    invoke-virtual {v1}, Lcom/google/firebase/database/logging/Logger$Level;->ordinal()I

    move-result v1

    if-gt v0, v1, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method public warn(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 49
    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/database/logging/LogWrapper;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 9

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 53
    invoke-direct {p0, p1, v0}, Lcom/google/firebase/database/logging/LogWrapper;->toLog(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_21

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/google/firebase/database/logging/LogWrapper;->exceptionStacktrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_21
    move-object v3, p1

    .line 57
    iget-object v0, p0, Lcom/google/firebase/database/logging/LogWrapper;->logger:Lcom/google/firebase/database/logging/Logger;

    sget-object v1, Lcom/google/firebase/database/logging/Logger$Level;->WARN:Lcom/google/firebase/database/logging/Logger$Level;

    iget-object v2, p0, Lcom/google/firebase/database/logging/LogWrapper;->component:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/firebase/database/logging/LogWrapper;->now()J

    move-result-wide v4

    invoke-interface/range {v0 .. v5}, Lcom/google/firebase/database/logging/Logger;->onLogMessage(Lcom/google/firebase/database/logging/Logger$Level;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

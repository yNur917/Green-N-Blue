.class public Lcom/google/firebase/database/connection/util/RetryHelper$Builder;
.super Ljava/lang/Object;
.source "RetryHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/database/connection/util/RetryHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private jitterFactor:D

.field private final logger:Lcom/google/firebase/database/logging/LogWrapper;

.field private minRetryDelayAfterFailure:J

.field private retryExponent:D

.field private retryMaxDelay:J

.field private final service:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/firebase/database/logging/Logger;Ljava/lang/String;)V
    .registers 6

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x3e8

    .line 117
    iput-wide v0, p0, Lcom/google/firebase/database/connection/util/RetryHelper$Builder;->minRetryDelayAfterFailure:J

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    .line 118
    iput-wide v0, p0, Lcom/google/firebase/database/connection/util/RetryHelper$Builder;->jitterFactor:D

    const-wide/16 v0, 0x7530

    .line 119
    iput-wide v0, p0, Lcom/google/firebase/database/connection/util/RetryHelper$Builder;->retryMaxDelay:J

    const-wide v0, 0x3ff4cccccccccccdL    # 1.3

    .line 120
    iput-wide v0, p0, Lcom/google/firebase/database/connection/util/RetryHelper$Builder;->retryExponent:D

    .line 124
    iput-object p1, p0, Lcom/google/firebase/database/connection/util/RetryHelper$Builder;->service:Ljava/util/concurrent/ScheduledExecutorService;

    .line 125
    new-instance p1, Lcom/google/firebase/database/logging/LogWrapper;

    invoke-direct {p1, p2, p3}, Lcom/google/firebase/database/logging/LogWrapper;-><init>(Lcom/google/firebase/database/logging/Logger;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/firebase/database/connection/util/RetryHelper$Builder;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    return-void
.end method


# virtual methods
.method public build()Lcom/google/firebase/database/connection/util/RetryHelper;
    .registers 14

    .line 152
    new-instance v12, Lcom/google/firebase/database/connection/util/RetryHelper;

    iget-object v1, p0, Lcom/google/firebase/database/connection/util/RetryHelper$Builder;->service:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v2, p0, Lcom/google/firebase/database/connection/util/RetryHelper$Builder;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    iget-wide v3, p0, Lcom/google/firebase/database/connection/util/RetryHelper$Builder;->minRetryDelayAfterFailure:J

    iget-wide v5, p0, Lcom/google/firebase/database/connection/util/RetryHelper$Builder;->retryMaxDelay:J

    iget-wide v7, p0, Lcom/google/firebase/database/connection/util/RetryHelper$Builder;->retryExponent:D

    iget-wide v9, p0, Lcom/google/firebase/database/connection/util/RetryHelper$Builder;->jitterFactor:D

    const/4 v11, 0x0

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lcom/google/firebase/database/connection/util/RetryHelper;-><init>(Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/firebase/database/logging/LogWrapper;JJDDLcom/google/firebase/database/connection/util/RetryHelper$1;)V

    return-object v12
.end method

.method public withJitterFactor(D)Lcom/google/firebase/database/connection/util/RetryHelper$Builder;
    .registers 6

    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    if-ltz v2, :cond_f

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, p1, v0

    if-gtz v2, :cond_f

    .line 147
    iput-wide p1, p0, Lcom/google/firebase/database/connection/util/RetryHelper$Builder;->jitterFactor:D

    return-object p0

    .line 145
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Argument out of range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public withMaxDelay(J)Lcom/google/firebase/database/connection/util/RetryHelper$Builder;
    .registers 3

    .line 134
    iput-wide p1, p0, Lcom/google/firebase/database/connection/util/RetryHelper$Builder;->retryMaxDelay:J

    return-object p0
.end method

.method public withMinDelayAfterFailure(J)Lcom/google/firebase/database/connection/util/RetryHelper$Builder;
    .registers 3

    .line 129
    iput-wide p1, p0, Lcom/google/firebase/database/connection/util/RetryHelper$Builder;->minRetryDelayAfterFailure:J

    return-object p0
.end method

.method public withRetryExponent(D)Lcom/google/firebase/database/connection/util/RetryHelper$Builder;
    .registers 3

    .line 139
    iput-wide p1, p0, Lcom/google/firebase/database/connection/util/RetryHelper$Builder;->retryExponent:D

    return-object p0
.end method

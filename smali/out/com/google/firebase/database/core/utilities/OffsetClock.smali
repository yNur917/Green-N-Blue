.class public Lcom/google/firebase/database/core/utilities/OffsetClock;
.super Ljava/lang/Object;
.source "OffsetClock.java"

# interfaces
.implements Lcom/google/firebase/database/core/utilities/Clock;


# instance fields
.field private final baseClock:Lcom/google/firebase/database/core/utilities/Clock;

.field private offset:J


# direct methods
.method public constructor <init>(Lcom/google/firebase/database/core/utilities/Clock;J)V
    .registers 4

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/google/firebase/database/core/utilities/OffsetClock;->baseClock:Lcom/google/firebase/database/core/utilities/Clock;

    .line 23
    iput-wide p2, p0, Lcom/google/firebase/database/core/utilities/OffsetClock;->offset:J

    return-void
.end method


# virtual methods
.method public millis()J
    .registers 5

    .line 32
    iget-object v0, p0, Lcom/google/firebase/database/core/utilities/OffsetClock;->baseClock:Lcom/google/firebase/database/core/utilities/Clock;

    invoke-interface {v0}, Lcom/google/firebase/database/core/utilities/Clock;->millis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/firebase/database/core/utilities/OffsetClock;->offset:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public setOffset(J)V
    .registers 3

    .line 27
    iput-wide p1, p0, Lcom/google/firebase/database/core/utilities/OffsetClock;->offset:J

    return-void
.end method

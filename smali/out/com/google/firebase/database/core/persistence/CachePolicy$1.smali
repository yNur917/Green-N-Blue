.class Lcom/google/firebase/database/core/persistence/CachePolicy$1;
.super Ljava/lang/Object;
.source "CachePolicy.java"

# interfaces
.implements Lcom/google/firebase/database/core/persistence/CachePolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/database/core/persistence/CachePolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMaxNumberOfQueriesToKeep()J
    .registers 3

    const-wide v0, 0x7fffffffffffffffL

    return-wide v0
.end method

.method public getPercentOfQueriesToPruneAtOnce()F
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public shouldCheckCacheSize(J)Z
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public shouldPrune(JJ)Z
    .registers 5

    const/4 p1, 0x0

    return p1
.end method

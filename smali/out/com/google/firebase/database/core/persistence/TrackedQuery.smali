.class public final Lcom/google/firebase/database/core/persistence/TrackedQuery;
.super Ljava/lang/Object;
.source "TrackedQuery.java"


# instance fields
.field public final active:Z

.field public final complete:Z

.field public final id:J

.field public final lastUse:J

.field public final querySpec:Lcom/google/firebase/database/core/view/QuerySpec;


# direct methods
.method public constructor <init>(JLcom/google/firebase/database/core/view/QuerySpec;JZZ)V
    .registers 8

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-wide p1, p0, Lcom/google/firebase/database/core/persistence/TrackedQuery;->id:J

    .line 29
    invoke-virtual {p3}, Lcom/google/firebase/database/core/view/QuerySpec;->loadsAllData()Z

    move-result p1

    if-eqz p1, :cond_1a

    invoke-virtual {p3}, Lcom/google/firebase/database/core/view/QuerySpec;->isDefault()Z

    move-result p1

    if-eqz p1, :cond_12

    goto :goto_1a

    .line 30
    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Can\'t create TrackedQuery for a non-default query that loads all data"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 33
    :cond_1a
    :goto_1a
    iput-object p3, p0, Lcom/google/firebase/database/core/persistence/TrackedQuery;->querySpec:Lcom/google/firebase/database/core/view/QuerySpec;

    .line 34
    iput-wide p4, p0, Lcom/google/firebase/database/core/persistence/TrackedQuery;->lastUse:J

    .line 35
    iput-boolean p6, p0, Lcom/google/firebase/database/core/persistence/TrackedQuery;->complete:Z

    .line 36
    iput-boolean p7, p0, Lcom/google/firebase/database/core/persistence/TrackedQuery;->active:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_3d

    .line 56
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_3d

    .line 60
    :cond_12
    check-cast p1, Lcom/google/firebase/database/core/persistence/TrackedQuery;

    .line 61
    iget-wide v2, p0, Lcom/google/firebase/database/core/persistence/TrackedQuery;->id:J

    iget-wide v4, p1, Lcom/google/firebase/database/core/persistence/TrackedQuery;->id:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_3b

    iget-object v2, p0, Lcom/google/firebase/database/core/persistence/TrackedQuery;->querySpec:Lcom/google/firebase/database/core/view/QuerySpec;

    iget-object v3, p1, Lcom/google/firebase/database/core/persistence/TrackedQuery;->querySpec:Lcom/google/firebase/database/core/view/QuerySpec;

    .line 62
    invoke-virtual {v2, v3}, Lcom/google/firebase/database/core/view/QuerySpec;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    iget-wide v2, p0, Lcom/google/firebase/database/core/persistence/TrackedQuery;->lastUse:J

    iget-wide v4, p1, Lcom/google/firebase/database/core/persistence/TrackedQuery;->lastUse:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_3b

    iget-boolean v2, p0, Lcom/google/firebase/database/core/persistence/TrackedQuery;->complete:Z

    iget-boolean v3, p1, Lcom/google/firebase/database/core/persistence/TrackedQuery;->complete:Z

    if-ne v2, v3, :cond_3b

    iget-boolean v2, p0, Lcom/google/firebase/database/core/persistence/TrackedQuery;->active:Z

    iget-boolean p1, p1, Lcom/google/firebase/database/core/persistence/TrackedQuery;->active:Z

    if-ne v2, p1, :cond_3b

    goto :goto_3c

    :cond_3b
    const/4 v0, 0x0

    :goto_3c
    return v0

    :cond_3d
    :goto_3d
    return v1
.end method

.method public hashCode()I
    .registers 4

    .line 70
    iget-wide v0, p0, Lcom/google/firebase/database/core/persistence/TrackedQuery;->id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 71
    iget-object v1, p0, Lcom/google/firebase/database/core/persistence/TrackedQuery;->querySpec:Lcom/google/firebase/database/core/view/QuerySpec;

    invoke-virtual {v1}, Lcom/google/firebase/database/core/view/QuerySpec;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 72
    iget-wide v1, p0, Lcom/google/firebase/database/core/persistence/TrackedQuery;->lastUse:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 73
    iget-boolean v1, p0, Lcom/google/firebase/database/core/persistence/TrackedQuery;->complete:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 74
    iget-boolean v1, p0, Lcom/google/firebase/database/core/persistence/TrackedQuery;->active:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public setActiveState(Z)Lcom/google/firebase/database/core/persistence/TrackedQuery;
    .registers 11

    .line 48
    new-instance v8, Lcom/google/firebase/database/core/persistence/TrackedQuery;

    iget-wide v1, p0, Lcom/google/firebase/database/core/persistence/TrackedQuery;->id:J

    iget-object v3, p0, Lcom/google/firebase/database/core/persistence/TrackedQuery;->querySpec:Lcom/google/firebase/database/core/view/QuerySpec;

    iget-wide v4, p0, Lcom/google/firebase/database/core/persistence/TrackedQuery;->lastUse:J

    iget-boolean v6, p0, Lcom/google/firebase/database/core/persistence/TrackedQuery;->complete:Z

    move-object v0, v8

    move v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/firebase/database/core/persistence/TrackedQuery;-><init>(JLcom/google/firebase/database/core/view/QuerySpec;JZZ)V

    return-object v8
.end method

.method public setComplete()Lcom/google/firebase/database/core/persistence/TrackedQuery;
    .registers 10

    .line 44
    new-instance v8, Lcom/google/firebase/database/core/persistence/TrackedQuery;

    iget-wide v1, p0, Lcom/google/firebase/database/core/persistence/TrackedQuery;->id:J

    iget-object v3, p0, Lcom/google/firebase/database/core/persistence/TrackedQuery;->querySpec:Lcom/google/firebase/database/core/view/QuerySpec;

    iget-wide v4, p0, Lcom/google/firebase/database/core/persistence/TrackedQuery;->lastUse:J

    iget-boolean v7, p0, Lcom/google/firebase/database/core/persistence/TrackedQuery;->active:Z

    const/4 v6, 0x1

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/google/firebase/database/core/persistence/TrackedQuery;-><init>(JLcom/google/firebase/database/core/view/QuerySpec;JZZ)V

    return-object v8
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TrackedQuery{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/google/firebase/database/core/persistence/TrackedQuery;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", querySpec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/firebase/database/core/persistence/TrackedQuery;->querySpec:Lcom/google/firebase/database/core/view/QuerySpec;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", lastUse="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/google/firebase/database/core/persistence/TrackedQuery;->lastUse:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", complete="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/google/firebase/database/core/persistence/TrackedQuery;->complete:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", active="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/google/firebase/database/core/persistence/TrackedQuery;->active:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateLastUse(J)Lcom/google/firebase/database/core/persistence/TrackedQuery;
    .registers 12

    .line 40
    new-instance v8, Lcom/google/firebase/database/core/persistence/TrackedQuery;

    iget-wide v1, p0, Lcom/google/firebase/database/core/persistence/TrackedQuery;->id:J

    iget-object v3, p0, Lcom/google/firebase/database/core/persistence/TrackedQuery;->querySpec:Lcom/google/firebase/database/core/view/QuerySpec;

    iget-boolean v6, p0, Lcom/google/firebase/database/core/persistence/TrackedQuery;->complete:Z

    iget-boolean v7, p0, Lcom/google/firebase/database/core/persistence/TrackedQuery;->active:Z

    move-object v0, v8

    move-wide v4, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/firebase/database/core/persistence/TrackedQuery;-><init>(JLcom/google/firebase/database/core/view/QuerySpec;JZZ)V

    return-object v8
.end method

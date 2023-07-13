.class public final Lcom/google/firebase/database/core/UserWriteRecord;
.super Ljava/lang/Object;
.source "UserWriteRecord.java"


# instance fields
.field private final merge:Lcom/google/firebase/database/core/CompoundWrite;

.field private final overwrite:Lcom/google/firebase/database/snapshot/Node;

.field private final path:Lcom/google/firebase/database/core/Path;

.field private final visible:Z

.field private final writeId:J


# direct methods
.method public constructor <init>(JLcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/CompoundWrite;)V
    .registers 5

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-wide p1, p0, Lcom/google/firebase/database/core/UserWriteRecord;->writeId:J

    .line 37
    iput-object p3, p0, Lcom/google/firebase/database/core/UserWriteRecord;->path:Lcom/google/firebase/database/core/Path;

    const/4 p1, 0x0

    .line 38
    iput-object p1, p0, Lcom/google/firebase/database/core/UserWriteRecord;->overwrite:Lcom/google/firebase/database/snapshot/Node;

    .line 39
    iput-object p4, p0, Lcom/google/firebase/database/core/UserWriteRecord;->merge:Lcom/google/firebase/database/core/CompoundWrite;

    const/4 p1, 0x1

    .line 40
    iput-boolean p1, p0, Lcom/google/firebase/database/core/UserWriteRecord;->visible:Z

    return-void
.end method

.method public constructor <init>(JLcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;Z)V
    .registers 6

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-wide p1, p0, Lcom/google/firebase/database/core/UserWriteRecord;->writeId:J

    .line 29
    iput-object p3, p0, Lcom/google/firebase/database/core/UserWriteRecord;->path:Lcom/google/firebase/database/core/Path;

    .line 30
    iput-object p4, p0, Lcom/google/firebase/database/core/UserWriteRecord;->overwrite:Lcom/google/firebase/database/snapshot/Node;

    const/4 p1, 0x0

    .line 31
    iput-object p1, p0, Lcom/google/firebase/database/core/UserWriteRecord;->merge:Lcom/google/firebase/database/core/CompoundWrite;

    .line 32
    iput-boolean p5, p0, Lcom/google/firebase/database/core/UserWriteRecord;->visible:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_52

    .line 82
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_52

    .line 86
    :cond_12
    check-cast p1, Lcom/google/firebase/database/core/UserWriteRecord;

    .line 88
    iget-wide v2, p0, Lcom/google/firebase/database/core/UserWriteRecord;->writeId:J

    iget-wide v4, p1, Lcom/google/firebase/database/core/UserWriteRecord;->writeId:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_1d

    return v1

    .line 91
    :cond_1d
    iget-object v2, p0, Lcom/google/firebase/database/core/UserWriteRecord;->path:Lcom/google/firebase/database/core/Path;

    iget-object v3, p1, Lcom/google/firebase/database/core/UserWriteRecord;->path:Lcom/google/firebase/database/core/Path;

    invoke-virtual {v2, v3}, Lcom/google/firebase/database/core/Path;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_28

    return v1

    .line 94
    :cond_28
    iget-boolean v2, p0, Lcom/google/firebase/database/core/UserWriteRecord;->visible:Z

    iget-boolean v3, p1, Lcom/google/firebase/database/core/UserWriteRecord;->visible:Z

    if-eq v2, v3, :cond_2f

    return v1

    .line 97
    :cond_2f
    iget-object v2, p0, Lcom/google/firebase/database/core/UserWriteRecord;->overwrite:Lcom/google/firebase/database/snapshot/Node;

    if-eqz v2, :cond_3c

    iget-object v3, p1, Lcom/google/firebase/database/core/UserWriteRecord;->overwrite:Lcom/google/firebase/database/snapshot/Node;

    .line 98
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_40

    goto :goto_41

    :cond_3c
    iget-object v2, p1, Lcom/google/firebase/database/core/UserWriteRecord;->overwrite:Lcom/google/firebase/database/snapshot/Node;

    if-eqz v2, :cond_41

    :cond_40
    return v1

    .line 102
    :cond_41
    :goto_41
    iget-object v2, p0, Lcom/google/firebase/database/core/UserWriteRecord;->merge:Lcom/google/firebase/database/core/CompoundWrite;

    iget-object p1, p1, Lcom/google/firebase/database/core/UserWriteRecord;->merge:Lcom/google/firebase/database/core/CompoundWrite;

    if-eqz v2, :cond_4e

    invoke-virtual {v2, p1}, Lcom/google/firebase/database/core/CompoundWrite;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_50

    goto :goto_51

    :cond_4e
    if-eqz p1, :cond_51

    :cond_50
    return v1

    :cond_51
    :goto_51
    return v0

    :cond_52
    :goto_52
    return v1
.end method

.method public getMerge()Lcom/google/firebase/database/core/CompoundWrite;
    .registers 3

    .line 59
    iget-object v0, p0, Lcom/google/firebase/database/core/UserWriteRecord;->merge:Lcom/google/firebase/database/core/CompoundWrite;

    if-eqz v0, :cond_5

    return-object v0

    .line 60
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t access merge when write is an overwrite!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getOverwrite()Lcom/google/firebase/database/snapshot/Node;
    .registers 3

    .line 52
    iget-object v0, p0, Lcom/google/firebase/database/core/UserWriteRecord;->overwrite:Lcom/google/firebase/database/snapshot/Node;

    if-eqz v0, :cond_5

    return-object v0

    .line 53
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t access overwrite when write is a merge!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPath()Lcom/google/firebase/database/core/Path;
    .registers 2

    .line 48
    iget-object v0, p0, Lcom/google/firebase/database/core/UserWriteRecord;->path:Lcom/google/firebase/database/core/Path;

    return-object v0
.end method

.method public getWriteId()J
    .registers 3

    .line 44
    iget-wide v0, p0, Lcom/google/firebase/database/core/UserWriteRecord;->writeId:J

    return-wide v0
.end method

.method public hashCode()I
    .registers 4

    .line 111
    iget-wide v0, p0, Lcom/google/firebase/database/core/UserWriteRecord;->writeId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 112
    iget-boolean v1, p0, Lcom/google/firebase/database/core/UserWriteRecord;->visible:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 113
    iget-object v1, p0, Lcom/google/firebase/database/core/UserWriteRecord;->path:Lcom/google/firebase/database/core/Path;

    invoke-virtual {v1}, Lcom/google/firebase/database/core/Path;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 114
    iget-object v1, p0, Lcom/google/firebase/database/core/UserWriteRecord;->overwrite:Lcom/google/firebase/database/snapshot/Node;

    const/4 v2, 0x0

    if-eqz v1, :cond_2c

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_2d

    :cond_2c
    const/4 v1, 0x0

    :goto_2d
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 115
    iget-object v1, p0, Lcom/google/firebase/database/core/UserWriteRecord;->merge:Lcom/google/firebase/database/core/CompoundWrite;

    if-eqz v1, :cond_38

    invoke-virtual {v1}, Lcom/google/firebase/database/core/CompoundWrite;->hashCode()I

    move-result v2

    :cond_38
    add-int/2addr v0, v2

    return v0
.end method

.method public isMerge()Z
    .registers 2

    .line 66
    iget-object v0, p0, Lcom/google/firebase/database/core/UserWriteRecord;->merge:Lcom/google/firebase/database/core/CompoundWrite;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isOverwrite()Z
    .registers 2

    .line 70
    iget-object v0, p0, Lcom/google/firebase/database/core/UserWriteRecord;->overwrite:Lcom/google/firebase/database/snapshot/Node;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isVisible()Z
    .registers 2

    .line 74
    iget-boolean v0, p0, Lcom/google/firebase/database/core/UserWriteRecord;->visible:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserWriteRecord{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/google/firebase/database/core/UserWriteRecord;->writeId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/firebase/database/core/UserWriteRecord;->path:Lcom/google/firebase/database/core/Path;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " visible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/google/firebase/database/core/UserWriteRecord;->visible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " overwrite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/firebase/database/core/UserWriteRecord;->overwrite:Lcom/google/firebase/database/snapshot/Node;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " merge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/firebase/database/core/UserWriteRecord;->merge:Lcom/google/firebase/database/core/CompoundWrite;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

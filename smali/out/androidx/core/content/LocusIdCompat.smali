.class public final Landroidx/core/content/LocusIdCompat;
.super Ljava/lang/Object;
.source "LocusIdCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/content/LocusIdCompat$Api29Impl;
    }
.end annotation


# instance fields
.field private final mId:Ljava/lang/String;

.field private final mWrapped:Landroid/content/LocusId;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "id cannot be empty"

    .line 81
    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroidx/core/content/LocusIdCompat;->mId:Ljava/lang/String;

    .line 82
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1a

    .line 83
    invoke-static {p1}, Landroidx/core/content/LocusIdCompat$Api29Impl;->create(Ljava/lang/String;)Landroid/content/LocusId;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/content/LocusIdCompat;->mWrapped:Landroid/content/LocusId;

    goto :goto_1d

    :cond_1a
    const/4 p1, 0x0

    .line 85
    iput-object p1, p0, Landroidx/core/content/LocusIdCompat;->mWrapped:Landroid/content/LocusId;

    :goto_1d
    return-void
.end method

.method private getSanitizedId()Ljava/lang/String;
    .registers 3

    .line 146
    iget-object v0, p0, Landroidx/core/content/LocusIdCompat;->mId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "_chars"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toLocusIdCompat(Landroid/content/LocusId;)Landroidx/core/content/LocusIdCompat;
    .registers 3

    const-string v0, "locusId cannot be null"

    .line 139
    invoke-static {p0, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    new-instance v0, Landroidx/core/content/LocusIdCompat;

    invoke-static {p0}, Landroidx/core/content/LocusIdCompat$Api29Impl;->getId(Landroid/content/LocusId;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "id cannot be empty"

    invoke-static {p0, v1}, Landroidx/core/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-direct {v0, p0}, Landroidx/core/content/LocusIdCompat;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    .line 109
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    return v1

    .line 110
    :cond_13
    check-cast p1, Landroidx/core/content/LocusIdCompat;

    .line 111
    iget-object v2, p0, Landroidx/core/content/LocusIdCompat;->mId:Ljava/lang/String;

    if-nez v2, :cond_20

    .line 112
    iget-object p1, p1, Landroidx/core/content/LocusIdCompat;->mId:Ljava/lang/String;

    if-nez p1, :cond_1e

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    return v0

    .line 114
    :cond_20
    iget-object p1, p1, Landroidx/core/content/LocusIdCompat;->mId:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 94
    iget-object v0, p0, Landroidx/core/content/LocusIdCompat;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 101
    iget-object v0, p0, Landroidx/core/content/LocusIdCompat;->mId:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_a
    const/16 v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public toLocusId()Landroid/content/LocusId;
    .registers 2

    .line 130
    iget-object v0, p0, Landroidx/core/content/LocusIdCompat;->mWrapped:Landroid/content/LocusId;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LocusIdCompat["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Landroidx/core/content/LocusIdCompat;->getSanitizedId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

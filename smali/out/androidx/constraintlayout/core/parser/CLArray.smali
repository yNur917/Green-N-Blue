.class public Landroidx/constraintlayout/core/parser/CLArray;
.super Landroidx/constraintlayout/core/parser/CLContainer;
.source "CLArray.java"


# direct methods
.method public constructor <init>([C)V
    .registers 2

    .line 20
    invoke-direct {p0, p1}, Landroidx/constraintlayout/core/parser/CLContainer;-><init>([C)V

    return-void
.end method

.method public static allocate([C)Landroidx/constraintlayout/core/parser/CLElement;
    .registers 2

    .line 24
    new-instance v0, Landroidx/constraintlayout/core/parser/CLArray;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/core/parser/CLArray;-><init>([C)V

    return-object v0
.end method


# virtual methods
.method protected toFormattedJSON(II)Ljava/lang/String;
    .registers 10

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    invoke-virtual {p0}, Landroidx/constraintlayout/core/parser/CLArray;->toJSON()Ljava/lang/String;

    move-result-object v1

    if-gtz p2, :cond_18

    .line 44
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, p1

    sget v3, Landroidx/constraintlayout/core/parser/CLArray;->MAX_LINE:I

    if-ge v2, v3, :cond_18

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5a

    :cond_18
    const-string v1, "[\n"

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    iget-object v1, p0, Landroidx/constraintlayout/core/parser/CLArray;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x1

    :goto_25
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/core/parser/CLElement;

    if-nez v3, :cond_39

    const-string v5, ",\n"

    .line 51
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3a

    :cond_39
    const/4 v3, 0x0

    .line 55
    :goto_3a
    sget v5, Landroidx/constraintlayout/core/parser/CLArray;->BASE_INDENT:I

    add-int/2addr v5, p1

    invoke-virtual {p0, v0, v5}, Landroidx/constraintlayout/core/parser/CLArray;->addIndent(Ljava/lang/StringBuilder;I)V

    .line 56
    sget v5, Landroidx/constraintlayout/core/parser/CLArray;->BASE_INDENT:I

    add-int/2addr v5, p1

    add-int/lit8 v6, p2, -0x1

    invoke-virtual {v4, v5, v6}, Landroidx/constraintlayout/core/parser/CLElement;->toFormattedJSON(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_25

    :cond_4d
    const-string p2, "\n"

    .line 58
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {p0, v0, p1}, Landroidx/constraintlayout/core/parser/CLArray;->addIndent(Ljava/lang/StringBuilder;I)V

    const-string p1, "]"

    .line 60
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    :goto_5a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected toJSON()Ljava/lang/String;
    .registers 6

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/constraintlayout/core/parser/CLArray;->getDebugName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 30
    :goto_1d
    iget-object v4, p0, Landroidx/constraintlayout/core/parser/CLArray;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_40

    if-nez v2, :cond_2d

    const-string v4, ", "

    .line 32
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2e

    :cond_2d
    const/4 v2, 0x0

    .line 36
    :goto_2e
    iget-object v4, p0, Landroidx/constraintlayout/core/parser/CLArray;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/core/parser/CLElement;

    invoke-virtual {v4}, Landroidx/constraintlayout/core/parser/CLElement;->toJSON()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    .line 38
    :cond_40
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

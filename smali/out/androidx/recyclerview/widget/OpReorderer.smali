.class Landroidx/recyclerview/widget/OpReorderer;
.super Ljava/lang/Object;
.source "OpReorderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/OpReorderer$Callback;
    }
.end annotation


# instance fields
.field final mCallback:Landroidx/recyclerview/widget/OpReorderer$Callback;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/OpReorderer$Callback;)V
    .registers 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Landroidx/recyclerview/widget/OpReorderer;->mCallback:Landroidx/recyclerview/widget/OpReorderer$Callback;

    return-void
.end method

.method private getLastMoveOutOfOrder(Ljava/util/List;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;",
            ">;)I"
        }
    .end annotation

    .line 214
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    :goto_7
    if-ltz v0, :cond_1c

    .line 215
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    .line 216
    iget v3, v3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_18

    if-eqz v2, :cond_19

    return v0

    :cond_18
    const/4 v2, 0x1

    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_7

    :cond_1c
    const/4 p1, -0x1

    return p1
.end method

.method private swapMoveAdd(Ljava/util/List;ILandroidx/recyclerview/widget/AdapterHelper$UpdateOp;ILandroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;",
            ">;I",
            "Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;",
            "I",
            "Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;",
            ")V"
        }
    .end annotation

    .line 157
    iget v0, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v1, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ge v0, v1, :cond_8

    const/4 v0, -0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 160
    :goto_9
    iget v1, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v2, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ge v1, v2, :cond_11

    add-int/lit8 v0, v0, 0x1

    .line 163
    :cond_11
    iget v1, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v2, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-gt v1, v2, :cond_1e

    .line 164
    iget v1, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v2, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v1, v2

    iput v1, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 166
    :cond_1e
    iget v1, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v2, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-gt v1, v2, :cond_2b

    .line 167
    iget v1, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v2, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v1, v2

    iput v1, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 169
    :cond_2b
    iget v1, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    add-int/2addr v1, v0

    iput v1, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 170
    invoke-interface {p1, p2, p5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 171
    invoke-interface {p1, p4, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private swapMoveOp(Ljava/util/List;II)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;",
            ">;II)V"
        }
    .end annotation

    .line 39
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    .line 40
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    .line 41
    iget v0, v6, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2a

    const/4 v1, 0x2

    if-eq v0, v1, :cond_22

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1a

    goto :goto_31

    :cond_1a
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v5, p3

    .line 49
    invoke-virtual/range {v1 .. v6}, Landroidx/recyclerview/widget/OpReorderer;->swapMoveUpdate(Ljava/util/List;ILandroidx/recyclerview/widget/AdapterHelper$UpdateOp;ILandroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    goto :goto_31

    :cond_22
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v5, p3

    .line 43
    invoke-virtual/range {v1 .. v6}, Landroidx/recyclerview/widget/OpReorderer;->swapMoveRemove(Ljava/util/List;ILandroidx/recyclerview/widget/AdapterHelper$UpdateOp;ILandroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    goto :goto_31

    :cond_2a
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v5, p3

    .line 46
    invoke-direct/range {v1 .. v6}, Landroidx/recyclerview/widget/OpReorderer;->swapMoveAdd(Ljava/util/List;ILandroidx/recyclerview/widget/AdapterHelper$UpdateOp;ILandroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    :goto_31
    return-void
.end method


# virtual methods
.method reorderOps(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;",
            ">;)V"
        }
    .end annotation

    .line 33
    :goto_0
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/OpReorderer;->getLastMoveOutOfOrder(Ljava/util/List;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_d

    add-int/lit8 v1, v0, 0x1

    .line 34
    invoke-direct {p0, p1, v0, v1}, Landroidx/recyclerview/widget/OpReorderer;->swapMoveOp(Ljava/util/List;II)V

    goto :goto_0

    :cond_d
    return-void
.end method

.method swapMoveRemove(Ljava/util/List;ILandroidx/recyclerview/widget/AdapterHelper$UpdateOp;ILandroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;",
            ">;I",
            "Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;",
            "I",
            "Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;",
            ")V"
        }
    .end annotation

    .line 61
    iget v0, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v1, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v0, v1, :cond_1b

    .line 63
    iget v0, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v1, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ne v0, v1, :cond_19

    iget v0, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v1, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v4, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    sub-int/2addr v1, v4

    if-ne v0, v1, :cond_19

    const/4 v0, 0x0

    goto :goto_2c

    :cond_19
    const/4 v0, 0x0

    goto :goto_2f

    .line 69
    :cond_1b
    iget v0, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v1, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v1, v3

    if-ne v0, v1, :cond_2e

    iget v0, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v1, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v4, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v1, v4

    if-ne v0, v1, :cond_2e

    const/4 v0, 0x1

    :goto_2c
    const/4 v2, 0x1

    goto :goto_2f

    :cond_2e
    const/4 v0, 0x1

    .line 76
    :goto_2f
    iget v1, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v4, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    const/4 v5, 0x2

    if-ge v1, v4, :cond_3c

    .line 77
    iget v1, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    sub-int/2addr v1, v3

    iput v1, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    goto :goto_5b

    .line 78
    :cond_3c
    iget v1, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v4, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v6, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v4, v6

    if-ge v1, v4, :cond_5b

    .line 80
    iget p2, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr p2, v3

    iput p2, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 81
    iput v5, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    .line 82
    iput v3, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 83
    iget p2, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-nez p2, :cond_5a

    .line 84
    invoke-interface {p1, p4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 85
    iget-object p1, p0, Landroidx/recyclerview/widget/OpReorderer;->mCallback:Landroidx/recyclerview/widget/OpReorderer$Callback;

    invoke-interface {p1, p5}, Landroidx/recyclerview/widget/OpReorderer$Callback;->recycleUpdateOp(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    :cond_5a
    return-void

    .line 92
    :cond_5b
    :goto_5b
    iget v1, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v4, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    const/4 v6, 0x0

    if-gt v1, v4, :cond_68

    .line 93
    iget v1, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    add-int/2addr v1, v3

    iput v1, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    goto :goto_89

    .line 94
    :cond_68
    iget v1, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v4, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v7, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v4, v7

    if-ge v1, v4, :cond_89

    .line 95
    iget v1, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v4, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v1, v4

    iget v4, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    sub-int/2addr v1, v4

    .line 97
    iget-object v4, p0, Landroidx/recyclerview/widget/OpReorderer;->mCallback:Landroidx/recyclerview/widget/OpReorderer$Callback;

    iget v7, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    add-int/2addr v7, v3

    invoke-interface {v4, v5, v7, v1, v6}, Landroidx/recyclerview/widget/OpReorderer$Callback;->obtainUpdateOp(IIILjava/lang/Object;)Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    move-result-object v6

    .line 98
    iget v1, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v3, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    sub-int/2addr v1, v3

    iput v1, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    :cond_89
    :goto_89
    if-eqz v2, :cond_97

    .line 103
    invoke-interface {p1, p2, p5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 104
    invoke-interface {p1, p4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 105
    iget-object p1, p0, Landroidx/recyclerview/widget/OpReorderer;->mCallback:Landroidx/recyclerview/widget/OpReorderer$Callback;

    invoke-interface {p1, p3}, Landroidx/recyclerview/widget/OpReorderer$Callback;->recycleUpdateOp(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    return-void

    :cond_97
    if-eqz v0, :cond_d0

    if-eqz v6, :cond_b5

    .line 112
    iget v0, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v1, v6, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-le v0, v1, :cond_a8

    .line 113
    iget v0, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v1, v6, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v0, v1

    iput v0, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 115
    :cond_a8
    iget v0, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v1, v6, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-le v0, v1, :cond_b5

    .line 116
    iget v0, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v1, v6, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v0, v1

    iput v0, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 119
    :cond_b5
    iget v0, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v1, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-le v0, v1, :cond_c2

    .line 120
    iget v0, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v1, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v0, v1

    iput v0, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 122
    :cond_c2
    iget v0, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v1, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-le v0, v1, :cond_106

    .line 123
    iget v0, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v1, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v0, v1

    iput v0, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    goto :goto_106

    :cond_d0
    if-eqz v6, :cond_ec

    .line 127
    iget v0, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v1, v6, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-lt v0, v1, :cond_df

    .line 128
    iget v0, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v1, v6, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v0, v1

    iput v0, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 130
    :cond_df
    iget v0, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v1, v6, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-lt v0, v1, :cond_ec

    .line 131
    iget v0, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v1, v6, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v0, v1

    iput v0, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 134
    :cond_ec
    iget v0, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v1, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-lt v0, v1, :cond_f9

    .line 135
    iget v0, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v1, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v0, v1

    iput v0, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 137
    :cond_f9
    iget v0, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v1, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-lt v0, v1, :cond_106

    .line 138
    iget v0, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v1, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v0, v1

    iput v0, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 142
    :cond_106
    :goto_106
    invoke-interface {p1, p2, p5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 143
    iget p5, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v0, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-eq p5, v0, :cond_113

    .line 144
    invoke-interface {p1, p4, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_116

    .line 146
    :cond_113
    invoke-interface {p1, p4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :goto_116
    if-eqz v6, :cond_11b

    .line 149
    invoke-interface {p1, p2, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_11b
    return-void
.end method

.method swapMoveUpdate(Ljava/util/List;ILandroidx/recyclerview/widget/AdapterHelper$UpdateOp;ILandroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;",
            ">;I",
            "Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;",
            "I",
            "Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;",
            ")V"
        }
    .end annotation

    .line 179
    iget v0, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v1, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ge v0, v1, :cond_f

    .line 180
    iget v0, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    sub-int/2addr v0, v4

    iput v0, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    goto :goto_28

    .line 181
    :cond_f
    iget v0, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v1, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v1, v5

    if-ge v0, v1, :cond_28

    .line 183
    iget v0, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v0, v4

    iput v0, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 184
    iget-object v0, p0, Landroidx/recyclerview/widget/OpReorderer;->mCallback:Landroidx/recyclerview/widget/OpReorderer$Callback;

    iget v1, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget-object v5, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-interface {v0, v2, v1, v4, v5}, Landroidx/recyclerview/widget/OpReorderer$Callback;->obtainUpdateOp(IIILjava/lang/Object;)Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    move-result-object v0

    goto :goto_29

    :cond_28
    :goto_28
    move-object v0, v3

    .line 187
    :goto_29
    iget v1, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-gt v1, v5, :cond_35

    .line 188
    iget v1, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    add-int/2addr v1, v4

    iput v1, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    goto :goto_56

    .line 189
    :cond_35
    iget v1, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v6, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v5, v6

    if-ge v1, v5, :cond_56

    .line 190
    iget v1, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v3, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v1, v3

    iget v3, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    sub-int/2addr v1, v3

    .line 192
    iget-object v3, p0, Landroidx/recyclerview/widget/OpReorderer;->mCallback:Landroidx/recyclerview/widget/OpReorderer$Callback;

    iget v5, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    add-int/2addr v5, v4

    iget-object v4, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-interface {v3, v2, v5, v1, v4}, Landroidx/recyclerview/widget/OpReorderer$Callback;->obtainUpdateOp(IIILjava/lang/Object;)Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    move-result-object v3

    .line 195
    iget v2, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v2, v1

    iput v2, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 197
    :cond_56
    :goto_56
    invoke-interface {p1, p4, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 198
    iget p3, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-lez p3, :cond_61

    .line 199
    invoke-interface {p1, p2, p5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_69

    .line 201
    :cond_61
    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 202
    iget-object p3, p0, Landroidx/recyclerview/widget/OpReorderer;->mCallback:Landroidx/recyclerview/widget/OpReorderer$Callback;

    invoke-interface {p3, p5}, Landroidx/recyclerview/widget/OpReorderer$Callback;->recycleUpdateOp(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    :goto_69
    if-eqz v0, :cond_6e

    .line 205
    invoke-interface {p1, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_6e
    if-eqz v3, :cond_73

    .line 208
    invoke-interface {p1, p2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_73
    return-void
.end method

.class public Landroidx/recyclerview/widget/DiffUtil;
.super Ljava/lang/Object;
.source "DiffUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;,
        Landroidx/recyclerview/widget/DiffUtil$DiffResult;,
        Landroidx/recyclerview/widget/DiffUtil$Range;,
        Landroidx/recyclerview/widget/DiffUtil$Snake;,
        Landroidx/recyclerview/widget/DiffUtil$ItemCallback;,
        Landroidx/recyclerview/widget/DiffUtil$Callback;
    }
.end annotation


# static fields
.field private static final SNAKE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroidx/recyclerview/widget/DiffUtil$Snake;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 84
    new-instance v0, Landroidx/recyclerview/widget/DiffUtil$1;

    invoke-direct {v0}, Landroidx/recyclerview/widget/DiffUtil$1;-><init>()V

    sput-object v0, Landroidx/recyclerview/widget/DiffUtil;->SNAKE_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateDiff(Landroidx/recyclerview/widget/DiffUtil$Callback;)Landroidx/recyclerview/widget/DiffUtil$DiffResult;
    .registers 2

    const/4 v0, 0x1

    .line 105
    invoke-static {p0, v0}, Landroidx/recyclerview/widget/DiffUtil;->calculateDiff(Landroidx/recyclerview/widget/DiffUtil$Callback;Z)Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    move-result-object p0

    return-object p0
.end method

.method public static calculateDiff(Landroidx/recyclerview/widget/DiffUtil$Callback;Z)Landroidx/recyclerview/widget/DiffUtil$DiffResult;
    .registers 17

    .line 123
    invoke-virtual {p0}, Landroidx/recyclerview/widget/DiffUtil$Callback;->getOldListSize()I

    move-result v0

    .line 124
    invoke-virtual {p0}, Landroidx/recyclerview/widget/DiffUtil$Callback;->getNewListSize()I

    move-result v1

    .line 126
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 130
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 132
    new-instance v3, Landroidx/recyclerview/widget/DiffUtil$Range;

    const/4 v5, 0x0

    invoke-direct {v3, v5, v0, v5, v1}, Landroidx/recyclerview/widget/DiffUtil$Range;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int v3, v0, v1

    sub-int/2addr v0, v1

    .line 134
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    add-int/2addr v3, v0

    mul-int/lit8 v0, v3, 0x2

    .line 138
    new-array v1, v0, [I

    .line 139
    new-array v0, v0, [I

    .line 142
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 143
    :goto_2e
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_f3

    .line 144
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v2, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v5

    move-object v14, v5

    check-cast v14, Landroidx/recyclerview/widget/DiffUtil$Range;

    .line 145
    iget v6, v14, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    iget v7, v14, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    iget v8, v14, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    iget v9, v14, Landroidx/recyclerview/widget/DiffUtil$Range;->newListEnd:I

    move-object v5, p0

    move-object v10, v1

    move-object v11, v0

    move v12, v3

    invoke-static/range {v5 .. v12}, Landroidx/recyclerview/widget/DiffUtil;->diffPartial(Landroidx/recyclerview/widget/DiffUtil$Callback;IIII[I[II)Landroidx/recyclerview/widget/DiffUtil$Snake;

    move-result-object v5

    if-eqz v5, :cond_ee

    .line 148
    iget v6, v5, Landroidx/recyclerview/widget/DiffUtil$Snake;->size:I

    if-lez v6, :cond_5a

    .line 149
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    :cond_5a
    iget v6, v5, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    iget v7, v14, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    add-int/2addr v6, v7

    iput v6, v5, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    .line 153
    iget v6, v5, Landroidx/recyclerview/widget/DiffUtil$Snake;->y:I

    iget v7, v14, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    add-int/2addr v6, v7

    iput v6, v5, Landroidx/recyclerview/widget/DiffUtil$Snake;->y:I

    .line 156
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_74

    new-instance v6, Landroidx/recyclerview/widget/DiffUtil$Range;

    invoke-direct {v6}, Landroidx/recyclerview/widget/DiffUtil$Range;-><init>()V

    goto :goto_80

    .line 157
    :cond_74
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    .line 156
    invoke-interface {v13, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/recyclerview/widget/DiffUtil$Range;

    .line 158
    :goto_80
    iget v7, v14, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    iput v7, v6, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    .line 159
    iget v7, v14, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    iput v7, v6, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    .line 160
    iget-boolean v7, v5, Landroidx/recyclerview/widget/DiffUtil$Snake;->reverse:Z

    if-eqz v7, :cond_95

    .line 161
    iget v7, v5, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    iput v7, v6, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    .line 162
    iget v7, v5, Landroidx/recyclerview/widget/DiffUtil$Snake;->y:I

    iput v7, v6, Landroidx/recyclerview/widget/DiffUtil$Range;->newListEnd:I

    goto :goto_ae

    .line 164
    :cond_95
    iget-boolean v7, v5, Landroidx/recyclerview/widget/DiffUtil$Snake;->removal:Z

    if-eqz v7, :cond_a4

    .line 165
    iget v7, v5, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    add-int/lit8 v7, v7, -0x1

    iput v7, v6, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    .line 166
    iget v7, v5, Landroidx/recyclerview/widget/DiffUtil$Snake;->y:I

    iput v7, v6, Landroidx/recyclerview/widget/DiffUtil$Range;->newListEnd:I

    goto :goto_ae

    .line 168
    :cond_a4
    iget v7, v5, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    iput v7, v6, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    .line 169
    iget v7, v5, Landroidx/recyclerview/widget/DiffUtil$Snake;->y:I

    add-int/lit8 v7, v7, -0x1

    iput v7, v6, Landroidx/recyclerview/widget/DiffUtil$Range;->newListEnd:I

    .line 172
    :goto_ae
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    iget-boolean v6, v5, Landroidx/recyclerview/widget/DiffUtil$Snake;->reverse:Z

    if-eqz v6, :cond_db

    .line 178
    iget-boolean v6, v5, Landroidx/recyclerview/widget/DiffUtil$Snake;->removal:Z

    if-eqz v6, :cond_ca

    .line 179
    iget v6, v5, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    iget v7, v5, Landroidx/recyclerview/widget/DiffUtil$Snake;->size:I

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x1

    iput v6, v14, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    .line 180
    iget v6, v5, Landroidx/recyclerview/widget/DiffUtil$Snake;->y:I

    iget v5, v5, Landroidx/recyclerview/widget/DiffUtil$Snake;->size:I

    add-int/2addr v6, v5

    iput v6, v14, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    goto :goto_e9

    .line 182
    :cond_ca
    iget v6, v5, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    iget v7, v5, Landroidx/recyclerview/widget/DiffUtil$Snake;->size:I

    add-int/2addr v6, v7

    iput v6, v14, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    .line 183
    iget v6, v5, Landroidx/recyclerview/widget/DiffUtil$Snake;->y:I

    iget v5, v5, Landroidx/recyclerview/widget/DiffUtil$Snake;->size:I

    add-int/2addr v6, v5

    add-int/lit8 v6, v6, 0x1

    iput v6, v14, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    goto :goto_e9

    .line 186
    :cond_db
    iget v6, v5, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    iget v7, v5, Landroidx/recyclerview/widget/DiffUtil$Snake;->size:I

    add-int/2addr v6, v7

    iput v6, v14, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    .line 187
    iget v6, v5, Landroidx/recyclerview/widget/DiffUtil$Snake;->y:I

    iget v5, v5, Landroidx/recyclerview/widget/DiffUtil$Snake;->size:I

    add-int/2addr v6, v5

    iput v6, v14, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    .line 189
    :goto_e9
    invoke-interface {v2, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2e

    .line 191
    :cond_ee
    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2e

    .line 196
    :cond_f3
    sget-object v2, Landroidx/recyclerview/widget/DiffUtil;->SNAKE_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v4, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 198
    new-instance v8, Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    move-object v2, v8

    move-object v3, p0

    move-object v5, v1

    move-object v6, v0

    move/from16 v7, p1

    invoke-direct/range {v2 .. v7}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;-><init>(Landroidx/recyclerview/widget/DiffUtil$Callback;Ljava/util/List;[I[IZ)V

    return-object v8
.end method

.method private static diffPartial(Landroidx/recyclerview/widget/DiffUtil$Callback;IIII[I[II)Landroidx/recyclerview/widget/DiffUtil$Snake;
    .registers 27

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    sub-int v3, p2, p1

    sub-int v4, p4, p3

    const/4 v5, 0x1

    if-lt v3, v5, :cond_12f

    if-ge v4, v5, :cond_11

    goto/16 :goto_12f

    :cond_11
    sub-int v6, v3, v4

    add-int v7, v3, v4

    add-int/2addr v7, v5

    .line 212
    div-int/lit8 v7, v7, 0x2

    sub-int v8, p7, v7

    sub-int/2addr v8, v5

    add-int v9, p7, v7

    add-int/2addr v9, v5

    const/4 v10, 0x0

    .line 213
    invoke-static {v1, v8, v9, v10}, Ljava/util/Arrays;->fill([IIII)V

    add-int/2addr v8, v6

    add-int/2addr v9, v6

    .line 214
    invoke-static {v2, v8, v9, v3}, Ljava/util/Arrays;->fill([IIII)V

    .line 215
    rem-int/lit8 v8, v6, 0x2

    if-eqz v8, :cond_2d

    const/4 v8, 0x1

    goto :goto_2e

    :cond_2d
    const/4 v8, 0x0

    :goto_2e
    const/4 v9, 0x0

    :goto_2f
    if-gt v9, v7, :cond_127

    neg-int v11, v9

    move v12, v11

    :goto_33
    if-gt v12, v9, :cond_a0

    if-eq v12, v11, :cond_4d

    if-eq v12, v9, :cond_45

    add-int v13, p7, v12

    add-int/lit8 v14, v13, -0x1

    .line 222
    aget v14, v1, v14

    add-int/2addr v13, v5

    aget v13, v1, v13

    if-ge v14, v13, :cond_45

    goto :goto_4d

    :cond_45
    add-int v13, p7, v12

    sub-int/2addr v13, v5

    .line 226
    aget v13, v1, v13

    add-int/2addr v13, v5

    const/4 v14, 0x1

    goto :goto_53

    :cond_4d
    :goto_4d
    add-int v13, p7, v12

    add-int/2addr v13, v5

    .line 223
    aget v13, v1, v13

    const/4 v14, 0x0

    :goto_53
    sub-int v15, v13, v12

    :goto_55
    if-ge v13, v3, :cond_6a

    if-ge v15, v4, :cond_6a

    add-int v10, p1, v13

    add-int v5, p3, v15

    .line 233
    invoke-virtual {v0, v10, v5}, Landroidx/recyclerview/widget/DiffUtil$Callback;->areItemsTheSame(II)Z

    move-result v5

    if-eqz v5, :cond_6a

    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v15, v15, 0x1

    const/4 v5, 0x1

    const/4 v10, 0x0

    goto :goto_55

    :cond_6a
    add-int v5, p7, v12

    .line 237
    aput v13, v1, v5

    if-eqz v8, :cond_9a

    sub-int v10, v6, v9

    const/4 v15, 0x1

    add-int/2addr v10, v15

    if-lt v12, v10, :cond_9a

    add-int v10, v6, v9

    sub-int/2addr v10, v15

    if-gt v12, v10, :cond_9a

    .line 239
    aget v10, v2, v5

    if-lt v13, v10, :cond_9a

    .line 240
    new-instance v0, Landroidx/recyclerview/widget/DiffUtil$Snake;

    invoke-direct {v0}, Landroidx/recyclerview/widget/DiffUtil$Snake;-><init>()V

    .line 241
    aget v3, v2, v5

    iput v3, v0, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    .line 242
    iget v3, v0, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    sub-int/2addr v3, v12

    iput v3, v0, Landroidx/recyclerview/widget/DiffUtil$Snake;->y:I

    .line 243
    aget v1, v1, v5

    aget v2, v2, v5

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/recyclerview/widget/DiffUtil$Snake;->size:I

    .line 244
    iput-boolean v14, v0, Landroidx/recyclerview/widget/DiffUtil$Snake;->removal:Z

    const/4 v15, 0x0

    .line 245
    iput-boolean v15, v0, Landroidx/recyclerview/widget/DiffUtil$Snake;->reverse:Z

    return-object v0

    :cond_9a
    const/4 v15, 0x0

    add-int/lit8 v12, v12, 0x2

    const/4 v5, 0x1

    const/4 v10, 0x0

    goto :goto_33

    :cond_a0
    const/4 v15, 0x0

    move v5, v11

    :goto_a2
    if-gt v5, v9, :cond_11c

    add-int v10, v5, v6

    add-int v12, v9, v6

    if-eq v10, v12, :cond_c4

    add-int v12, v11, v6

    if-eq v10, v12, :cond_bb

    add-int v12, p7, v10

    add-int/lit8 v13, v12, -0x1

    .line 255
    aget v13, v2, v13

    const/4 v14, 0x1

    add-int/2addr v12, v14

    aget v12, v2, v12

    if-ge v13, v12, :cond_bc

    goto :goto_c5

    :cond_bb
    const/4 v14, 0x1

    :cond_bc
    add-int v12, p7, v10

    add-int/2addr v12, v14

    .line 260
    aget v12, v2, v12

    sub-int/2addr v12, v14

    const/4 v13, 0x1

    goto :goto_cb

    :cond_c4
    const/4 v14, 0x1

    :goto_c5
    add-int v12, p7, v10

    sub-int/2addr v12, v14

    .line 257
    aget v12, v2, v12

    const/4 v13, 0x0

    :goto_cb
    sub-int v16, v12, v10

    :goto_cd
    if-lez v12, :cond_ea

    if-lez v16, :cond_ea

    add-int v17, p1, v12

    add-int/lit8 v15, v17, -0x1

    add-int v17, p3, v16

    move/from16 v18, v3

    add-int/lit8 v3, v17, -0x1

    .line 268
    invoke-virtual {v0, v15, v3}, Landroidx/recyclerview/widget/DiffUtil$Callback;->areItemsTheSame(II)Z

    move-result v3

    if-eqz v3, :cond_ec

    add-int/lit8 v12, v12, -0x1

    add-int/lit8 v16, v16, -0x1

    move/from16 v3, v18

    const/4 v14, 0x1

    const/4 v15, 0x0

    goto :goto_cd

    :cond_ea
    move/from16 v18, v3

    :cond_ec
    add-int v3, p7, v10

    .line 272
    aput v12, v2, v3

    if-nez v8, :cond_115

    if-lt v10, v11, :cond_115

    if-gt v10, v9, :cond_115

    .line 274
    aget v14, v1, v3

    if-lt v14, v12, :cond_115

    .line 275
    new-instance v0, Landroidx/recyclerview/widget/DiffUtil$Snake;

    invoke-direct {v0}, Landroidx/recyclerview/widget/DiffUtil$Snake;-><init>()V

    .line 276
    aget v4, v2, v3

    iput v4, v0, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    .line 277
    iget v4, v0, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    sub-int/2addr v4, v10

    iput v4, v0, Landroidx/recyclerview/widget/DiffUtil$Snake;->y:I

    .line 278
    aget v1, v1, v3

    aget v2, v2, v3

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/recyclerview/widget/DiffUtil$Snake;->size:I

    .line 280
    iput-boolean v13, v0, Landroidx/recyclerview/widget/DiffUtil$Snake;->removal:Z

    const/4 v3, 0x1

    .line 281
    iput-boolean v3, v0, Landroidx/recyclerview/widget/DiffUtil$Snake;->reverse:Z

    return-object v0

    :cond_115
    const/4 v3, 0x1

    add-int/lit8 v5, v5, 0x2

    move/from16 v3, v18

    const/4 v15, 0x0

    goto :goto_a2

    :cond_11c
    move/from16 v18, v3

    const/4 v3, 0x1

    add-int/lit8 v9, v9, 0x1

    move/from16 v3, v18

    const/4 v5, 0x1

    const/4 v10, 0x0

    goto/16 :goto_2f

    .line 287
    :cond_127
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "DiffUtil hit an unexpected case while trying to calculate the optimal path. Please make sure your data is not changing during the diff calculation."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12f
    :goto_12f
    const/4 v0, 0x0

    return-object v0
.end method

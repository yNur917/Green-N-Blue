.class public Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;
.super Landroidx/constraintlayout/core/motion/utils/CurveFit;
.source "LinearCurveFit.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LinearCurveFit"


# instance fields
.field private mExtrapolate:Z

.field mSlopeTemp:[D

.field private mT:[D

.field private mTotalLength:D

.field private mY:[[D


# direct methods
.method public constructor <init>([D[[D)V
    .registers 14

    .line 32
    invoke-direct {p0}, Landroidx/constraintlayout/core/motion/utils/CurveFit;-><init>()V

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 28
    iput-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mTotalLength:D

    const/4 v0, 0x1

    .line 29
    iput-boolean v0, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mExtrapolate:Z

    .line 33
    array-length v0, p1

    const/4 v0, 0x0

    .line 34
    aget-object v1, p2, v0

    array-length v1, v1

    .line 35
    new-array v2, v1, [D

    iput-object v2, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mSlopeTemp:[D

    .line 36
    iput-object p1, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mT:[D

    .line 37
    iput-object p2, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    const/4 v2, 0x2

    if-le v1, v2, :cond_36

    const-wide/16 v1, 0x0

    move-wide v4, v1

    move-wide v6, v4

    const/4 v3, 0x0

    .line 41
    :goto_1f
    array-length v8, p1

    if-ge v3, v8, :cond_34

    .line 42
    aget-object v8, p2, v3

    aget-wide v9, v8, v0

    if-lez v3, :cond_2f

    sub-double v4, v9, v4

    sub-double v6, v9, v6

    .line 45
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    :cond_2f
    add-int/lit8 v3, v3, 0x1

    move-wide v4, v9

    move-wide v6, v4

    goto :goto_1f

    .line 50
    :cond_34
    iput-wide v1, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mTotalLength:D

    :cond_36
    return-void
.end method

.method private getLength2D(D)D
    .registers 25

    move-object/from16 v0, p0

    .line 62
    iget-wide v1, v0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mTotalLength:D

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_d

    return-wide v2

    .line 65
    :cond_d
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mT:[D

    array-length v4, v1

    const/4 v5, 0x0

    .line 66
    aget-wide v6, v1, v5

    cmpg-double v8, p1, v6

    if-gtz v8, :cond_18

    return-wide v2

    :cond_18
    const/4 v6, 0x1

    sub-int/2addr v4, v6

    .line 69
    aget-wide v7, v1, v4

    cmpl-double v1, p1, v7

    if-ltz v1, :cond_23

    .line 70
    iget-wide v1, v0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mTotalLength:D

    return-wide v1

    :cond_23
    move-wide v7, v2

    move-wide v9, v7

    move-wide v11, v9

    const/4 v1, 0x0

    :goto_27
    if-ge v1, v4, :cond_7e

    .line 76
    iget-object v13, v0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    aget-object v13, v13, v1

    aget-wide v14, v13, v5

    .line 77
    aget-wide v16, v13, v6

    if-lez v1, :cond_3c

    sub-double v9, v14, v9

    sub-double v11, v16, v11

    .line 79
    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v9

    add-double/2addr v7, v9

    .line 83
    :cond_3c
    iget-object v9, v0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mT:[D

    aget-wide v10, v9, v1

    cmpl-double v12, p1, v10

    if-nez v12, :cond_45

    return-wide v7

    :cond_45
    add-int/lit8 v12, v1, 0x1

    .line 86
    aget-wide v18, v9, v12

    cmpg-double v9, p1, v18

    if-gez v9, :cond_79

    sub-double v18, v18, v10

    sub-double v2, p1, v10

    div-double v2, v2, v18

    .line 89
    iget-object v4, v0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    aget-object v1, v4, v1

    aget-wide v9, v1, v5

    .line 90
    aget-object v4, v4, v12

    aget-wide v11, v4, v5

    .line 91
    aget-wide v18, v1, v6

    .line 92
    aget-wide v5, v4, v6

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    sub-double v20, v20, v2

    mul-double v18, v18, v20

    mul-double v5, v5, v2

    add-double v18, v18, v5

    sub-double v4, v16, v18

    mul-double v9, v9, v20

    mul-double v11, v11, v2

    add-double/2addr v9, v11

    sub-double/2addr v14, v9

    .line 96
    invoke-static {v4, v5, v14, v15}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v1

    add-double/2addr v7, v1

    return-wide v7

    :cond_79
    move v1, v12

    move-wide v9, v14

    move-wide/from16 v11, v16

    goto :goto_27

    :cond_7e
    return-wide v2
.end method


# virtual methods
.method public getPos(DI)D
    .registers 12

    .line 211
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mT:[D

    array-length v1, v0

    .line 212
    iget-boolean v2, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mExtrapolate:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_31

    .line 213
    aget-wide v4, v0, v3

    cmpg-double v2, p1, v4

    if-gtz v2, :cond_1d

    .line 214
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    aget-object v0, v0, v3

    aget-wide v1, v0, p3

    sub-double/2addr p1, v4

    invoke-virtual {p0, v4, v5, p3}, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->getSlope(DI)D

    move-result-wide v3

    :goto_19
    mul-double p1, p1, v3

    add-double/2addr v1, p1

    return-wide v1

    :cond_1d
    add-int/lit8 v2, v1, -0x1

    .line 216
    aget-wide v4, v0, v2

    cmpl-double v0, p1, v4

    if-ltz v0, :cond_4d

    .line 217
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    aget-object v0, v0, v2

    aget-wide v1, v0, p3

    sub-double/2addr p1, v4

    invoke-virtual {p0, v4, v5, p3}, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->getSlope(DI)D

    move-result-wide v3

    goto :goto_19

    .line 220
    :cond_31
    aget-wide v4, v0, v3

    cmpg-double v2, p1, v4

    if-gtz v2, :cond_3e

    .line 221
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    aget-object p1, p1, v3

    aget-wide p2, p1, p3

    return-wide p2

    :cond_3e
    add-int/lit8 v2, v1, -0x1

    .line 223
    aget-wide v4, v0, v2

    cmpl-double v0, p1, v4

    if-ltz v0, :cond_4d

    .line 224
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    aget-object p1, p1, v2

    aget-wide p2, p1, p3

    return-wide p2

    :cond_4d
    :goto_4d
    add-int/lit8 v0, v1, -0x1

    if-ge v3, v0, :cond_80

    .line 229
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mT:[D

    aget-wide v4, v0, v3

    cmpl-double v2, p1, v4

    if-nez v2, :cond_60

    .line 230
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    aget-object p1, p1, v3

    aget-wide p2, p1, p3

    return-wide p2

    :cond_60
    add-int/lit8 v2, v3, 0x1

    .line 232
    aget-wide v6, v0, v2

    cmpg-double v0, p1, v6

    if-gez v0, :cond_7e

    sub-double/2addr v6, v4

    sub-double/2addr p1, v4

    div-double/2addr p1, v6

    .line 235
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    aget-object v1, v0, v3

    aget-wide v3, v1, p3

    .line 236
    aget-object v0, v0, v2

    aget-wide v1, v0, p3

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v5, p1

    mul-double v3, v3, v5

    mul-double v1, v1, p1

    add-double/2addr v3, v1

    return-wide v3

    :cond_7e
    move v3, v2

    goto :goto_4d

    :cond_80
    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public getPos(D[D)V
    .registers 16

    .line 105
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mT:[D

    array-length v1, v0

    .line 106
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    const/4 v3, 0x0

    aget-object v2, v2, v3

    array-length v2, v2

    .line 107
    iget-boolean v4, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mExtrapolate:Z

    if-eqz v4, :cond_5c

    .line 108
    aget-wide v4, v0, v3

    cmpg-double v6, p1, v4

    if-gtz v6, :cond_34

    .line 109
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mSlopeTemp:[D

    invoke-virtual {p0, v4, v5, v0}, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->getSlope(D[D)V

    const/4 v0, 0x0

    :goto_19
    if-ge v0, v2, :cond_33

    .line 111
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    aget-object v1, v1, v3

    aget-wide v4, v1, v0

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mT:[D

    aget-wide v6, v1, v3

    sub-double v6, p1, v6

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mSlopeTemp:[D

    aget-wide v8, v1, v0

    mul-double v6, v6, v8

    add-double/2addr v4, v6

    aput-wide v4, p3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :cond_33
    return-void

    :cond_34
    add-int/lit8 v4, v1, -0x1

    .line 115
    aget-wide v5, v0, v4

    cmpl-double v0, p1, v5

    if-ltz v0, :cond_87

    .line 116
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mSlopeTemp:[D

    invoke-virtual {p0, v5, v6, v0}, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->getSlope(D[D)V

    :goto_41
    if-ge v3, v2, :cond_5b

    .line 118
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    aget-object v0, v0, v4

    aget-wide v5, v0, v3

    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mT:[D

    aget-wide v7, v0, v4

    sub-double v0, p1, v7

    iget-object v7, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mSlopeTemp:[D

    aget-wide v8, v7, v3

    mul-double v0, v0, v8

    add-double/2addr v5, v0

    aput-wide v5, p3, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_41

    :cond_5b
    return-void

    .line 123
    :cond_5c
    aget-wide v4, v0, v3

    cmpg-double v6, p1, v4

    if-gtz v6, :cond_71

    const/4 p1, 0x0

    :goto_63
    if-ge p1, v2, :cond_70

    .line 125
    iget-object p2, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    aget-object p2, p2, v3

    aget-wide v0, p2, p1

    aput-wide v0, p3, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_63

    :cond_70
    return-void

    :cond_71
    add-int/lit8 v4, v1, -0x1

    .line 129
    aget-wide v5, v0, v4

    cmpl-double v0, p1, v5

    if-ltz v0, :cond_87

    :goto_79
    if-ge v3, v2, :cond_86

    .line 131
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    aget-object p1, p1, v4

    aget-wide v0, p1, v3

    aput-wide v0, p3, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_79

    :cond_86
    return-void

    :cond_87
    const/4 v0, 0x0

    :goto_88
    add-int/lit8 v4, v1, -0x1

    if-ge v0, v4, :cond_cd

    .line 138
    iget-object v4, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mT:[D

    aget-wide v5, v4, v0

    cmpl-double v4, p1, v5

    if-nez v4, :cond_a2

    const/4 v4, 0x0

    :goto_95
    if-ge v4, v2, :cond_a2

    .line 140
    iget-object v5, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    aget-object v5, v5, v0

    aget-wide v6, v5, v4

    aput-wide v6, p3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_95

    .line 143
    :cond_a2
    iget-object v4, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mT:[D

    add-int/lit8 v5, v0, 0x1

    aget-wide v6, v4, v5

    cmpg-double v8, p1, v6

    if-gez v8, :cond_cb

    .line 144
    aget-wide v8, v4, v0

    sub-double/2addr v6, v8

    sub-double/2addr p1, v8

    div-double/2addr p1, v6

    :goto_b1
    if-ge v3, v2, :cond_ca

    .line 147
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    aget-object v4, v1, v0

    aget-wide v6, v4, v3

    .line 148
    aget-object v1, v1, v5

    aget-wide v8, v1, v3

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v10, p1

    mul-double v6, v6, v10

    mul-double v8, v8, p1

    add-double/2addr v6, v8

    .line 150
    aput-wide v6, p3, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_b1

    :cond_ca
    return-void

    :cond_cb
    move v0, v5

    goto :goto_88

    :cond_cd
    return-void
.end method

.method public getPos(D[F)V
    .registers 16

    .line 158
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mT:[D

    array-length v1, v0

    .line 159
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    const/4 v3, 0x0

    aget-object v2, v2, v3

    array-length v2, v2

    .line 160
    iget-boolean v4, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mExtrapolate:Z

    if-eqz v4, :cond_5e

    .line 161
    aget-wide v4, v0, v3

    cmpg-double v6, p1, v4

    if-gtz v6, :cond_35

    .line 162
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mSlopeTemp:[D

    invoke-virtual {p0, v4, v5, v0}, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->getSlope(D[D)V

    const/4 v0, 0x0

    :goto_19
    if-ge v0, v2, :cond_34

    .line 164
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    aget-object v1, v1, v3

    aget-wide v4, v1, v0

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mT:[D

    aget-wide v6, v1, v3

    sub-double v6, p1, v6

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mSlopeTemp:[D

    aget-wide v8, v1, v0

    mul-double v6, v6, v8

    add-double/2addr v4, v6

    double-to-float v1, v4

    aput v1, p3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :cond_34
    return-void

    :cond_35
    add-int/lit8 v4, v1, -0x1

    .line 168
    aget-wide v5, v0, v4

    cmpl-double v0, p1, v5

    if-ltz v0, :cond_8b

    .line 169
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mSlopeTemp:[D

    invoke-virtual {p0, v5, v6, v0}, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->getSlope(D[D)V

    :goto_42
    if-ge v3, v2, :cond_5d

    .line 171
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    aget-object v0, v0, v4

    aget-wide v5, v0, v3

    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mT:[D

    aget-wide v7, v0, v4

    sub-double v0, p1, v7

    iget-object v7, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mSlopeTemp:[D

    aget-wide v8, v7, v3

    mul-double v0, v0, v8

    add-double/2addr v5, v0

    double-to-float v0, v5

    aput v0, p3, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_42

    :cond_5d
    return-void

    .line 176
    :cond_5e
    aget-wide v4, v0, v3

    cmpg-double v6, p1, v4

    if-gtz v6, :cond_74

    const/4 p1, 0x0

    :goto_65
    if-ge p1, v2, :cond_73

    .line 178
    iget-object p2, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    aget-object p2, p2, v3

    aget-wide v0, p2, p1

    double-to-float p2, v0

    aput p2, p3, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_65

    :cond_73
    return-void

    :cond_74
    add-int/lit8 v4, v1, -0x1

    .line 182
    aget-wide v5, v0, v4

    cmpl-double v0, p1, v5

    if-ltz v0, :cond_8b

    :goto_7c
    if-ge v3, v2, :cond_8a

    .line 184
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    aget-object p1, p1, v4

    aget-wide v0, p1, v3

    double-to-float p1, v0

    aput p1, p3, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_7c

    :cond_8a
    return-void

    :cond_8b
    const/4 v0, 0x0

    :goto_8c
    add-int/lit8 v4, v1, -0x1

    if-ge v0, v4, :cond_d3

    .line 191
    iget-object v4, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mT:[D

    aget-wide v5, v4, v0

    cmpl-double v4, p1, v5

    if-nez v4, :cond_a7

    const/4 v4, 0x0

    :goto_99
    if-ge v4, v2, :cond_a7

    .line 193
    iget-object v5, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    aget-object v5, v5, v0

    aget-wide v6, v5, v4

    double-to-float v5, v6

    aput v5, p3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_99

    .line 196
    :cond_a7
    iget-object v4, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mT:[D

    add-int/lit8 v5, v0, 0x1

    aget-wide v6, v4, v5

    cmpg-double v8, p1, v6

    if-gez v8, :cond_d1

    .line 197
    aget-wide v8, v4, v0

    sub-double/2addr v6, v8

    sub-double/2addr p1, v8

    div-double/2addr p1, v6

    :goto_b6
    if-ge v3, v2, :cond_d0

    .line 200
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    aget-object v4, v1, v0

    aget-wide v6, v4, v3

    .line 201
    aget-object v1, v1, v5

    aget-wide v8, v1, v3

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v10, p1

    mul-double v6, v6, v10

    mul-double v8, v8, p1

    add-double/2addr v6, v8

    double-to-float v1, v6

    .line 203
    aput v1, p3, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_b6

    :cond_d0
    return-void

    :cond_d1
    move v0, v5

    goto :goto_8c

    :cond_d3
    return-void
.end method

.method public getSlope(DI)D
    .registers 11

    .line 270
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mT:[D

    array-length v1, v0

    const/4 v2, 0x0

    .line 272
    aget-wide v3, v0, v2

    cmpg-double v5, p1, v3

    if-gez v5, :cond_c

    :goto_a
    move-wide p1, v3

    goto :goto_15

    :cond_c
    add-int/lit8 v3, v1, -0x1

    .line 274
    aget-wide v3, v0, v3

    cmpl-double v0, p1, v3

    if-ltz v0, :cond_15

    goto :goto_a

    :cond_15
    :goto_15
    add-int/lit8 v0, v1, -0x1

    if-ge v2, v0, :cond_35

    .line 278
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mT:[D

    add-int/lit8 v3, v2, 0x1

    aget-wide v4, v0, v3

    cmpg-double v6, p1, v4

    if-gtz v6, :cond_33

    .line 279
    aget-wide p1, v0, v2

    sub-double/2addr v4, p1

    .line 281
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    aget-object p2, p1, v2

    aget-wide v0, p2, p3

    .line 282
    aget-object p1, p1, v3

    aget-wide p2, p1, p3

    sub-double/2addr p2, v0

    div-double/2addr p2, v4

    return-wide p2

    :cond_33
    move v2, v3

    goto :goto_15

    :cond_35
    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public getSlope(D[D)V
    .registers 16

    .line 245
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mT:[D

    array-length v1, v0

    .line 246
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    const/4 v3, 0x0

    aget-object v2, v2, v3

    array-length v2, v2

    .line 247
    aget-wide v4, v0, v3

    cmpg-double v6, p1, v4

    if-gtz v6, :cond_11

    :goto_f
    move-wide p1, v4

    goto :goto_1a

    :cond_11
    add-int/lit8 v4, v1, -0x1

    .line 249
    aget-wide v4, v0, v4

    cmpl-double v0, p1, v4

    if-ltz v0, :cond_1a

    goto :goto_f

    :cond_1a
    :goto_1a
    const/4 v0, 0x0

    :goto_1b
    add-int/lit8 v4, v1, -0x1

    if-ge v0, v4, :cond_41

    .line 254
    iget-object v4, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mT:[D

    add-int/lit8 v5, v0, 0x1

    aget-wide v6, v4, v5

    cmpg-double v8, p1, v6

    if-gtz v8, :cond_3f

    .line 255
    aget-wide p1, v4, v0

    sub-double/2addr v6, p1

    :goto_2c
    if-ge v3, v2, :cond_41

    .line 258
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mY:[[D

    aget-object p2, p1, v0

    aget-wide v8, p2, v3

    .line 259
    aget-object p1, p1, v5

    aget-wide v10, p1, v3

    sub-double/2addr v10, v8

    div-double/2addr v10, v6

    .line 261
    aput-wide v10, p3, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2c

    :cond_3f
    move v0, v5

    goto :goto_1b

    :cond_41
    return-void
.end method

.method public getTimePoints()[D
    .registers 2

    .line 291
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/LinearCurveFit;->mT:[D

    return-object v0
.end method

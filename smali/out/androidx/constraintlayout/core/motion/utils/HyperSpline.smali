.class public Landroidx/constraintlayout/core/motion/utils/HyperSpline;
.super Ljava/lang/Object;
.source "HyperSpline.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;
    }
.end annotation


# instance fields
.field mCtl:[[D

.field mCurve:[[Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;

.field mCurveLength:[D

.field mDimensionality:I

.field mPoints:I

.field mTotalLength:D


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([[D)V
    .registers 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->setup([[D)V

    return-void
.end method

.method static calcNaturalCubic(I[D)[Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;
    .registers 26

    move/from16 v0, p0

    .line 149
    new-array v1, v0, [D

    .line 150
    new-array v2, v0, [D

    .line 151
    new-array v3, v0, [D

    add-int/lit8 v0, v0, -0x1

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    const/4 v6, 0x0

    .line 154
    aput-wide v4, v1, v6

    const/4 v4, 0x1

    const/4 v5, 0x1

    :goto_11
    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    if-ge v5, v0, :cond_22

    const-wide/high16 v9, 0x4010000000000000L    # 4.0

    add-int/lit8 v11, v5, -0x1

    .line 156
    aget-wide v11, v1, v11

    sub-double/2addr v9, v11

    div-double/2addr v7, v9

    aput-wide v7, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    :cond_22
    add-int/lit8 v5, v0, -0x1

    .line 158
    aget-wide v9, v1, v5

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    sub-double v9, v11, v9

    div-double/2addr v7, v9

    aput-wide v7, v1, v0

    .line 160
    aget-wide v7, p1, v4

    aget-wide v9, p1, v6

    sub-double/2addr v7, v9

    const-wide/high16 v9, 0x4008000000000000L    # 3.0

    mul-double v7, v7, v9

    aget-wide v13, v1, v6

    mul-double v7, v7, v13

    aput-wide v7, v2, v6

    :goto_3c
    if-ge v4, v0, :cond_54

    add-int/lit8 v7, v4, 0x1

    .line 162
    aget-wide v13, p1, v7

    add-int/lit8 v8, v4, -0x1

    aget-wide v15, p1, v8

    sub-double/2addr v13, v15

    mul-double v13, v13, v9

    aget-wide v15, v2, v8

    sub-double/2addr v13, v15

    aget-wide v15, v1, v4

    mul-double v13, v13, v15

    aput-wide v13, v2, v4

    move v4, v7

    goto :goto_3c

    .line 164
    :cond_54
    aget-wide v7, p1, v0

    aget-wide v13, p1, v5

    sub-double/2addr v7, v13

    mul-double v7, v7, v9

    aget-wide v13, v2, v5

    sub-double/2addr v7, v13

    aget-wide v13, v1, v0

    mul-double v7, v7, v13

    aput-wide v7, v2, v0

    .line 166
    aput-wide v7, v3, v0

    :goto_66
    if-ltz v5, :cond_78

    .line 168
    aget-wide v7, v2, v5

    aget-wide v13, v1, v5

    add-int/lit8 v4, v5, 0x1

    aget-wide v15, v3, v4

    mul-double v13, v13, v15

    sub-double/2addr v7, v13

    aput-wide v7, v3, v5

    add-int/lit8 v5, v5, -0x1

    goto :goto_66

    .line 171
    :cond_78
    new-array v1, v0, [Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;

    :goto_7a
    if-ge v6, v0, :cond_a8

    .line 173
    new-instance v2, Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;

    aget-wide v4, p1, v6

    double-to-float v7, v4

    float-to-double v14, v7

    aget-wide v16, v3, v6

    add-int/lit8 v7, v6, 0x1

    aget-wide v18, p1, v7

    sub-double v20, v18, v4

    mul-double v20, v20, v9

    mul-double v22, v16, v11

    sub-double v20, v20, v22

    aget-wide v22, v3, v7

    sub-double v20, v20, v22

    sub-double v4, v4, v18

    mul-double v4, v4, v11

    add-double v4, v4, v16

    add-double v4, v4, v22

    move-object v13, v2

    move-wide/from16 v18, v20

    move-wide/from16 v20, v4

    invoke-direct/range {v13 .. v21}, Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;-><init>(DDDD)V

    aput-object v2, v1, v6

    move v6, v7

    goto :goto_7a

    :cond_a8
    return-object v1
.end method


# virtual methods
.method public approxLength([Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;)D
    .registers 16

    .line 124
    array-length v0, p1

    .line 125
    array-length v0, p1

    new-array v0, v0, [D

    const-wide/16 v1, 0x0

    move-wide v3, v1

    move-wide v5, v3

    :goto_8
    const/4 v7, 0x0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    cmpg-double v10, v3, v8

    if-gez v10, :cond_34

    move-wide v8, v1

    .line 128
    :goto_10
    array-length v10, p1

    if-ge v7, v10, :cond_24

    .line 129
    aget-wide v10, v0, v7

    .line 130
    aget-object v12, p1, v7

    invoke-virtual {v12, v3, v4}, Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;->eval(D)D

    move-result-wide v12

    aput-wide v12, v0, v7

    sub-double/2addr v10, v12

    mul-double v10, v10, v10

    add-double/2addr v8, v10

    add-int/lit8 v7, v7, 0x1

    goto :goto_10

    :cond_24
    cmpl-double v7, v3, v1

    if-lez v7, :cond_2d

    .line 134
    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    add-double/2addr v5, v7

    :cond_2d
    const-wide v7, 0x3fb999999999999aL    # 0.1

    add-double/2addr v3, v7

    goto :goto_8

    .line 139
    :cond_34
    :goto_34
    array-length v3, p1

    if-ge v7, v3, :cond_48

    .line 140
    aget-wide v3, v0, v7

    .line 141
    aget-object v10, p1, v7

    invoke-virtual {v10, v8, v9}, Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;->eval(D)D

    move-result-wide v10

    aput-wide v10, v0, v7

    sub-double/2addr v3, v10

    mul-double v3, v3, v3

    add-double/2addr v1, v3

    add-int/lit8 v7, v7, 0x1

    goto :goto_34

    .line 144
    :cond_48
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    add-double/2addr v5, v0

    return-wide v5
.end method

.method public getPos(DI)D
    .registers 9

    .line 112
    iget-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mTotalLength:D

    mul-double p1, p1, v0

    const/4 v0, 0x0

    .line 115
    :goto_5
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mCurveLength:[D

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_16

    aget-wide v2, v1, v0

    cmpg-double v4, v2, p1

    if-gez v4, :cond_16

    sub-double/2addr p1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 118
    :cond_16
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mCurve:[[Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;

    aget-object p3, v2, p3

    aget-object p3, p3, v0

    aget-wide v0, v1, v0

    div-double/2addr p1, v0

    invoke-virtual {p3, p1, p2}, Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;->eval(D)D

    move-result-wide p1

    return-wide p1
.end method

.method public getPos(D[D)V
    .registers 10

    .line 88
    iget-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mTotalLength:D

    mul-double p1, p1, v0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 91
    :goto_6
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mCurveLength:[D

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_17

    aget-wide v3, v2, v1

    cmpg-double v2, v3, p1

    if-gez v2, :cond_17

    sub-double/2addr p1, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 94
    :cond_17
    :goto_17
    array-length v2, p3

    if-ge v0, v2, :cond_2f

    .line 95
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mCurve:[[Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;

    aget-object v2, v2, v0

    aget-object v2, v2, v1

    iget-object v3, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mCurveLength:[D

    aget-wide v4, v3, v1

    div-double v3, p1, v4

    invoke-virtual {v2, v3, v4}, Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;->eval(D)D

    move-result-wide v2

    aput-wide v2, p3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_2f
    return-void
.end method

.method public getPos(D[F)V
    .registers 10

    .line 100
    iget-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mTotalLength:D

    mul-double p1, p1, v0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 103
    :goto_6
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mCurveLength:[D

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_17

    aget-wide v3, v2, v1

    cmpg-double v2, v3, p1

    if-gez v2, :cond_17

    sub-double/2addr p1, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 106
    :cond_17
    :goto_17
    array-length v2, p3

    if-ge v0, v2, :cond_30

    .line 107
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mCurve:[[Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;

    aget-object v2, v2, v0

    aget-object v2, v2, v1

    iget-object v3, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mCurveLength:[D

    aget-wide v4, v3, v1

    div-double v3, p1, v4

    invoke-virtual {v2, v3, v4}, Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;->eval(D)D

    move-result-wide v2

    double-to-float v2, v2

    aput v2, p3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_30
    return-void
.end method

.method public getVelocity(D[D)V
    .registers 10

    .line 76
    iget-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mTotalLength:D

    mul-double p1, p1, v0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 79
    :goto_6
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mCurveLength:[D

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_17

    aget-wide v3, v2, v1

    cmpg-double v2, v3, p1

    if-gez v2, :cond_17

    sub-double/2addr p1, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 82
    :cond_17
    :goto_17
    array-length v2, p3

    if-ge v0, v2, :cond_2f

    .line 83
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mCurve:[[Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;

    aget-object v2, v2, v0

    aget-object v2, v2, v1

    iget-object v3, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mCurveLength:[D

    aget-wide v4, v3, v1

    div-double v3, p1, v4

    invoke-virtual {v2, v3, v4}, Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;->vel(D)D

    move-result-wide v2

    aput-wide v2, p3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_2f
    return-void
.end method

.method public setup([[D)V
    .registers 10

    const/4 v0, 0x0

    .line 48
    aget-object v1, p1, v0

    array-length v1, v1

    iput v1, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mDimensionality:I

    .line 49
    array-length v2, p1

    iput v2, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mPoints:I

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x1

    aput v2, v3, v4

    aput v1, v3, v0

    .line 50
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    iput-object v1, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mCtl:[[D

    .line 51
    iget v1, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mDimensionality:I

    new-array v1, v1, [[Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;

    iput-object v1, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mCurve:[[Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;

    const/4 v1, 0x0

    .line 52
    :goto_22
    iget v2, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mDimensionality:I

    if-ge v1, v2, :cond_3b

    const/4 v2, 0x0

    .line 53
    :goto_27
    iget v3, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mPoints:I

    if-ge v2, v3, :cond_38

    .line 54
    iget-object v3, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mCtl:[[D

    aget-object v3, v3, v1

    aget-object v5, p1, v2

    aget-wide v6, v5, v1

    aput-wide v6, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    :cond_38
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    :cond_3b
    const/4 p1, 0x0

    .line 58
    :goto_3c
    iget v1, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mDimensionality:I

    if-ge p1, v1, :cond_50

    .line 59
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mCurve:[[Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;

    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mCtl:[[D

    aget-object v2, v2, p1

    array-length v3, v2

    invoke-static {v3, v2}, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->calcNaturalCubic(I[D)[Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;

    move-result-object v2

    aput-object v2, v1, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_3c

    .line 62
    :cond_50
    iget p1, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mPoints:I

    sub-int/2addr p1, v4

    new-array p1, p1, [D

    iput-object p1, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mCurveLength:[D

    const-wide/16 v2, 0x0

    .line 63
    iput-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mTotalLength:D

    .line 64
    new-array p1, v1, [Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;

    const/4 v1, 0x0

    .line 65
    :goto_5e
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mCurveLength:[D

    array-length v2, v2

    if-ge v1, v2, :cond_83

    const/4 v2, 0x0

    .line 66
    :goto_64
    iget v3, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mDimensionality:I

    if-ge v2, v3, :cond_73

    .line 68
    iget-object v3, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mCurve:[[Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;

    aget-object v3, v3, v2

    aget-object v3, v3, v1

    aput-object v3, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_64

    .line 71
    :cond_73
    iget-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mTotalLength:D

    iget-object v4, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mCurveLength:[D

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->approxLength([Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;)D

    move-result-wide v5

    aput-wide v5, v4, v1

    add-double/2addr v2, v5

    iput-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mTotalLength:D

    add-int/lit8 v1, v1, 0x1

    goto :goto_5e

    :cond_83
    return-void
.end method

.class public abstract Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;
.super Ljava/lang/Object;
.source "TimeCycleSplineSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomVarSet;,
        Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$Sort;,
        Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomSet;
    }
.end annotation


# static fields
.field protected static final CURVE_OFFSET:I = 0x2

.field protected static final CURVE_PERIOD:I = 0x1

.field protected static final CURVE_VALUE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SplineSet"

.field protected static VAL_2PI:F = 6.2831855f


# instance fields
.field protected count:I

.field protected last_cycle:F

.field protected last_time:J

.field protected mCache:[F

.field protected mContinue:Z

.field protected mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

.field protected mTimePoints:[I

.field protected mType:Ljava/lang/String;

.field protected mValues:[[F

.field protected mWaveShape:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mWaveShape:I

    const/16 v1, 0xa

    new-array v1, v1, [I

    .line 33
    iput-object v1, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mTimePoints:[I

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 34
    fill-array-data v1, :array_28

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[F

    iput-object v1, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mValues:[[F

    const/4 v1, 0x3

    new-array v1, v1, [F

    .line 37
    iput-object v1, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mCache:[F

    .line 42
    iput-boolean v0, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mContinue:Z

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 44
    iput v0, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->last_cycle:F

    return-void

    :array_28
    .array-data 4
        0xa
        0x3
    .end array-data
.end method


# virtual methods
.method protected calcWave(F)F
    .registers 5

    .line 66
    iget v0, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mWaveShape:I

    const/high16 v1, 0x40000000    # 2.0f

    const/high16 v2, 0x3f800000    # 1.0f

    packed-switch v0, :pswitch_data_48

    .line 69
    sget v0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->VAL_2PI:F

    mul-float p1, p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1

    :pswitch_14
    const/high16 v0, 0x40800000    # 4.0f

    mul-float p1, p1, v0

    rem-float/2addr p1, v0

    sub-float/2addr p1, v1

    .line 81
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    sub-float p1, v2, p1

    mul-float p1, p1, p1

    :goto_22
    sub-float/2addr v2, p1

    return v2

    .line 79
    :pswitch_24
    sget v0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->VAL_2PI:F

    mul-float p1, p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1

    :pswitch_2f
    mul-float p1, p1, v1

    add-float/2addr p1, v2

    rem-float/2addr p1, v1

    goto :goto_22

    :pswitch_34
    mul-float p1, p1, v1

    add-float/2addr p1, v2

    rem-float/2addr p1, v1

    sub-float/2addr p1, v2

    return p1

    .line 73
    :pswitch_3a
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    goto :goto_22

    .line 71
    :pswitch_3f
    sget v0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->VAL_2PI:F

    mul-float p1, p1, v0

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result p1

    return p1

    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_3f
        :pswitch_3a
        :pswitch_34
        :pswitch_2f
        :pswitch_24
        :pswitch_14
    .end packed-switch
.end method

.method public getCurveFit()Landroidx/constraintlayout/core/motion/utils/CurveFit;
    .registers 2

    .line 87
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    return-object v0
.end method

.method public setPoint(IFFIF)V
    .registers 8

    .line 95
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mTimePoints:[I

    iget v1, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->count:I

    aput p1, v0, v1

    .line 96
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mValues:[[F

    aget-object p1, p1, v1

    const/4 v0, 0x0

    aput p2, p1, v0

    const/4 p2, 0x1

    .line 97
    aput p3, p1, p2

    const/4 p3, 0x2

    .line 98
    aput p5, p1, p3

    .line 99
    iget p1, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mWaveShape:I

    invoke-static {p1, p4}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mWaveShape:I

    .line 100
    iget p1, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->count:I

    add-int/2addr p1, p2

    iput p1, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->count:I

    return-void
.end method

.method protected setStartTime(J)V
    .registers 3

    .line 91
    iput-wide p1, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->last_time:J

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .registers 2

    .line 57
    iput-object p1, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mType:Ljava/lang/String;

    return-void
.end method

.method public setup(I)V
    .registers 13

    .line 178
    iget v0, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->count:I

    if-nez v0, :cond_1d

    .line 179
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error no points added to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    .line 182
    :cond_1d
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mTimePoints:[I

    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mValues:[[F

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    const/4 v4, 0x0

    invoke-static {v1, v2, v4, v0}, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$Sort;->doubleQuickSort([I[[FII)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 184
    :goto_29
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mTimePoints:[I

    array-length v5, v2

    if-ge v0, v5, :cond_3b

    .line 185
    aget v5, v2, v0

    add-int/lit8 v6, v0, -0x1

    aget v2, v2, v6

    if-eq v5, v2, :cond_38

    add-int/lit8 v1, v1, 0x1

    :cond_38
    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    :cond_3b
    if-nez v1, :cond_3e

    const/4 v1, 0x1

    .line 192
    :cond_3e
    new-array v0, v1, [D

    const/4 v2, 0x3

    const/4 v5, 0x2

    new-array v6, v5, [I

    aput v2, v6, v3

    aput v1, v6, v4

    .line 193
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 196
    :goto_52
    iget v7, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->count:I

    if-ge v2, v7, :cond_8b

    if-lez v2, :cond_63

    .line 197
    iget-object v7, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mTimePoints:[I

    aget v8, v7, v2

    add-int/lit8 v9, v2, -0x1

    aget v7, v7, v9

    if-ne v8, v7, :cond_63

    goto :goto_88

    .line 200
    :cond_63
    iget-object v7, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mTimePoints:[I

    aget v7, v7, v2

    int-to-double v7, v7

    const-wide v9, 0x3f847ae147ae147bL    # 0.01

    mul-double v7, v7, v9

    aput-wide v7, v0, v6

    .line 201
    aget-object v7, v1, v6

    iget-object v8, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mValues:[[F

    aget-object v8, v8, v2

    aget v9, v8, v4

    float-to-double v9, v9

    aput-wide v9, v7, v4

    .line 202
    aget v9, v8, v3

    float-to-double v9, v9

    aput-wide v9, v7, v3

    .line 203
    aget v8, v8, v5

    float-to-double v8, v8

    aput-wide v8, v7, v5

    add-int/lit8 v6, v6, 0x1

    :goto_88
    add-int/lit8 v2, v2, 0x1

    goto :goto_52

    .line 206
    :cond_8b
    invoke-static {p1, v0, v1}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->get(I[D[[D)Landroidx/constraintlayout/core/motion/utils/CurveFit;

    move-result-object p1

    iput-object p1, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 48
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mType:Ljava/lang/String;

    .line 49
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "##.##"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 50
    :goto_a
    iget v3, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->count:I

    if-ge v2, v3, :cond_3e

    .line 51
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mTimePoints:[I

    aget v0, v0, v2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " , "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mValues:[[F

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_3e
    return-object v0
.end method

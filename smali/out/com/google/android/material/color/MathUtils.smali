.class final Lcom/google/android/material/color/MathUtils;
.super Ljava/lang/Object;
.source "MathUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static clamp(FFF)F
    .registers 3

    .line 27
    invoke-static {p2, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method public static differenceDegrees(FF)F
    .registers 2

    sub-float/2addr p0, p1

    .line 37
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const/high16 p1, 0x43340000    # 180.0f

    sub-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    sub-float/2addr p1, p0

    return p1
.end method

.method public static lerp(FFF)F
    .registers 4

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    mul-float v0, v0, p0

    mul-float p2, p2, p1

    add-float/2addr v0, p2

    return v0
.end method

.method public static sanitizeDegrees(F)F
    .registers 3

    const/high16 v0, 0x43b40000    # 360.0f

    const/4 v1, 0x0

    cmpg-float v1, p0, v1

    if-gez v1, :cond_a

    rem-float/2addr p0, v0

    add-float/2addr p0, v0

    return p0

    :cond_a
    cmpl-float v1, p0, v0

    if-ltz v1, :cond_f

    rem-float/2addr p0, v0

    :cond_f
    return p0
.end method

.method public static sanitizeDegrees(I)I
    .registers 2

    const/16 v0, 0x168

    if-gez p0, :cond_7

    .line 54
    rem-int/2addr p0, v0

    add-int/2addr p0, v0

    return p0

    :cond_7
    if-lt p0, v0, :cond_a

    .line 56
    rem-int/2addr p0, v0

    :cond_a
    return p0
.end method

.method static toDegrees(F)F
    .registers 2

    const/high16 v0, 0x43340000    # 180.0f

    mul-float p0, p0, v0

    const v0, 0x40490fdb    # (float)Math.PI

    div-float/2addr p0, v0

    return p0
.end method

.method static toRadians(F)F
    .registers 2

    const/high16 v0, 0x43340000    # 180.0f

    div-float/2addr p0, v0

    const v0, 0x40490fdb    # (float)Math.PI

    mul-float p0, p0, v0

    return p0
.end method

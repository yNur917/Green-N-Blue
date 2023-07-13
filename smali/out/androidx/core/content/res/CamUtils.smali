.class final Landroidx/core/content/res/CamUtils;
.super Ljava/lang/Object;
.source "CamUtils.java"


# static fields
.field static final CAM16RGB_TO_XYZ:[[F

.field static final SRGB_TO_XYZ:[[F

.field static final WHITE_POINT_D65:[F

.field static final XYZ_TO_CAM16RGB:[[F


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v0, 0x3

    new-array v1, v0, [[F

    new-array v2, v0, [F

    .line 52
    fill-array-data v2, :array_58

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-array v2, v0, [F

    fill-array-data v2, :array_62

    const/4 v4, 0x1

    aput-object v2, v1, v4

    new-array v2, v0, [F

    fill-array-data v2, :array_6c

    const/4 v5, 0x2

    aput-object v2, v1, v5

    sput-object v1, Landroidx/core/content/res/CamUtils;->XYZ_TO_CAM16RGB:[[F

    new-array v1, v0, [[F

    new-array v2, v0, [F

    .line 59
    fill-array-data v2, :array_76

    aput-object v2, v1, v3

    new-array v2, v0, [F

    fill-array-data v2, :array_80

    aput-object v2, v1, v4

    new-array v2, v0, [F

    fill-array-data v2, :array_8a

    aput-object v2, v1, v5

    sput-object v1, Landroidx/core/content/res/CamUtils;->CAM16RGB_TO_XYZ:[[F

    new-array v1, v0, [F

    .line 67
    fill-array-data v1, :array_94

    sput-object v1, Landroidx/core/content/res/CamUtils;->WHITE_POINT_D65:[F

    new-array v1, v0, [[F

    new-array v2, v0, [F

    .line 73
    fill-array-data v2, :array_9e

    aput-object v2, v1, v3

    new-array v2, v0, [F

    fill-array-data v2, :array_a8

    aput-object v2, v1, v4

    new-array v0, v0, [F

    fill-array-data v0, :array_b2

    aput-object v0, v1, v5

    sput-object v1, Landroidx/core/content/res/CamUtils;->SRGB_TO_XYZ:[[F

    return-void

    nop

    :array_58
    .array-data 4
        0x3ecd759f
        0x3f2671bd
        -0x42ad373b    # -0.051461f
    .end array-data

    :array_62
    .array-data 4
        -0x417fdcdf
        0x3f9a2a3d
        0x3d3bd167
    .end array-data

    :array_6c
    .array-data 4
        -0x44f7c02b    # -0.002079f
        0x3d4881e4
        0x3f740022
    .end array-data

    :array_76
    .array-data 4
        0x3fee583d
        -0x407e8f35
        0x3e18c46b
    .end array-data

    :array_80
    .array-data 4
        0x3ec669e1
        0x3f1f172e
        -0x43ecf866
    .end array-data

    :array_8a
    .array-data 4
        -0x437e39f7
        -0x42f43b81
        0x3f86653c
    .end array-data

    :array_94
    .array-data 4
        0x42be1810
        0x42c80000    # 100.0f
        0x42d9c419
    .end array-data

    :array_9e
    .array-data 4
        0x3ed31e17
        0x3eb71a0d
        0x3e38d7b9
    .end array-data

    :array_a8
    .array-data 4
        0x3e59b3d0    # 0.2126f
        0x3f371759    # 0.7152f
        0x3d93dd98    # 0.0722f
    .end array-data

    :array_b2
    .array-data 4
        0x3c9e47ef
        0x3df40c29
        0x3f7349cc
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static intFromLStar(F)I
    .registers 16

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p0, v0

    if-gez v0, :cond_9

    const/high16 p0, -0x1000000

    return p0

    :cond_9
    const/high16 v0, 0x42c60000    # 99.0f

    cmpl-float v0, p0, v0

    if-lez v0, :cond_11

    const/4 p0, -0x1

    return p0

    :cond_11
    const/high16 v0, 0x41800000    # 16.0f

    add-float v1, p0, v0

    const/high16 v2, 0x42e80000    # 116.0f

    div-float/2addr v1, v2

    const v3, 0x4461d2f7

    const v4, 0x3c111aa7

    const/high16 v5, 0x41000000    # 8.0f

    const/4 v6, 0x1

    const/4 v7, 0x0

    cmpl-float v5, p0, v5

    if-lez v5, :cond_28

    const/4 v5, 0x1

    goto :goto_29

    :cond_28
    const/4 v5, 0x0

    :goto_29
    if-eqz v5, :cond_30

    mul-float p0, v1, v1

    mul-float p0, p0, v1

    goto :goto_31

    :cond_30
    div-float/2addr p0, v3

    :goto_31
    mul-float v5, v1, v1

    mul-float v5, v5, v1

    cmpl-float v4, v5, v4

    if-lez v4, :cond_3b

    const/4 v4, 0x1

    goto :goto_3c

    :cond_3b
    const/4 v4, 0x0

    :goto_3c
    if-eqz v4, :cond_40

    move v8, v5

    goto :goto_44

    :cond_40
    mul-float v8, v1, v2

    sub-float/2addr v8, v0

    div-float/2addr v8, v3

    :goto_44
    if-eqz v4, :cond_47

    goto :goto_4c

    :cond_47
    mul-float v1, v1, v2

    sub-float/2addr v1, v0

    div-float v5, v1, v3

    .line 101
    :goto_4c
    sget-object v0, Landroidx/core/content/res/CamUtils;->WHITE_POINT_D65:[F

    aget v1, v0, v7

    mul-float v8, v8, v1

    float-to-double v9, v8

    aget v1, v0, v6

    mul-float p0, p0, v1

    float-to-double v11, p0

    const/4 p0, 0x2

    aget p0, v0, p0

    mul-float v5, v5, p0

    float-to-double v13, v5

    invoke-static/range {v9 .. v14}, Landroidx/core/graphics/ColorUtils;->XYZToColor(DDD)I

    move-result p0

    return p0
.end method

.method static lStarFromInt(I)F
    .registers 1

    .line 111
    invoke-static {p0}, Landroidx/core/content/res/CamUtils;->yFromInt(I)F

    move-result p0

    invoke-static {p0}, Landroidx/core/content/res/CamUtils;->lStarFromY(F)F

    move-result p0

    return p0
.end method

.method static lStarFromY(F)F
    .registers 3

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p0, v0

    const v0, 0x3c111aa7

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_10

    const v0, 0x4461d2f7

    mul-float p0, p0, v0

    return p0

    :cond_10
    float-to-double v0, p0

    .line 121
    invoke-static {v0, v1}, Ljava/lang/Math;->cbrt(D)D

    move-result-wide v0

    double-to-float p0, v0

    const/high16 v0, 0x42e80000    # 116.0f

    mul-float p0, p0, v0

    const/high16 v0, 0x41800000    # 16.0f

    sub-float/2addr p0, v0

    return p0
.end method

.method static lerp(FFF)F
    .registers 3

    sub-float/2addr p1, p0

    mul-float p1, p1, p2

    add-float/2addr p0, p1

    return p0
.end method

.method static linearized(I)F
    .registers 6

    int-to-float p0, p0

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p0, v0

    const/high16 v0, 0x42c80000    # 100.0f

    const v1, 0x3d25aee6    # 0.04045f

    cmpg-float v1, p0, v1

    if-gtz v1, :cond_14

    const v1, 0x414eb852    # 12.92f

    div-float/2addr p0, v1

    :goto_11
    mul-float p0, p0, v0

    return p0

    :cond_14
    const v1, 0x3d6147ae    # 0.055f

    add-float/2addr p0, v1

    const v1, 0x3f870a3d    # 1.055f

    div-float/2addr p0, v1

    float-to-double v1, p0

    const-wide v3, 0x4003333340000000L    # 2.4000000953674316

    .line 163
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float p0, v1

    goto :goto_11
.end method

.method static xyzFromInt(I)[F
    .registers 11

    .line 137
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {v0}, Landroidx/core/content/res/CamUtils;->linearized(I)F

    move-result v0

    .line 138
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {v1}, Landroidx/core/content/res/CamUtils;->linearized(I)F

    move-result v1

    .line 139
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    invoke-static {p0}, Landroidx/core/content/res/CamUtils;->linearized(I)F

    move-result p0

    .line 141
    sget-object v2, Landroidx/core/content/res/CamUtils;->SRGB_TO_XYZ:[[F

    const/4 v3, 0x0

    .line 142
    aget-object v4, v2, v3

    aget v5, v4, v3

    mul-float v5, v5, v0

    const/4 v6, 0x1

    aget v7, v4, v6

    mul-float v7, v7, v1

    add-float/2addr v5, v7

    const/4 v7, 0x2

    aget v4, v4, v7

    mul-float v4, v4, p0

    add-float/2addr v5, v4

    .line 143
    aget-object v4, v2, v6

    aget v8, v4, v3

    mul-float v8, v8, v0

    aget v9, v4, v6

    mul-float v9, v9, v1

    add-float/2addr v8, v9

    aget v4, v4, v7

    mul-float v4, v4, p0

    add-float/2addr v8, v4

    .line 144
    aget-object v2, v2, v7

    aget v4, v2, v3

    mul-float v0, v0, v4

    aget v4, v2, v6

    mul-float v1, v1, v4

    add-float/2addr v0, v1

    aget v1, v2, v7

    mul-float p0, p0, v1

    add-float/2addr v0, p0

    const/4 p0, 0x3

    new-array p0, p0, [F

    aput v5, p0, v3

    aput v8, p0, v6

    aput v0, p0, v7

    return-object p0
.end method

.method static yFromInt(I)F
    .registers 6

    .line 127
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {v0}, Landroidx/core/content/res/CamUtils;->linearized(I)F

    move-result v0

    .line 128
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {v1}, Landroidx/core/content/res/CamUtils;->linearized(I)F

    move-result v1

    .line 129
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    invoke-static {p0}, Landroidx/core/content/res/CamUtils;->linearized(I)F

    move-result p0

    .line 130
    sget-object v2, Landroidx/core/content/res/CamUtils;->SRGB_TO_XYZ:[[F

    const/4 v3, 0x1

    .line 131
    aget-object v2, v2, v3

    const/4 v4, 0x0

    aget v4, v2, v4

    mul-float v0, v0, v4

    aget v3, v2, v3

    mul-float v1, v1, v3

    add-float/2addr v0, v1

    const/4 v1, 0x2

    aget v1, v2, v1

    mul-float p0, p0, v1

    add-float/2addr v0, p0

    return v0
.end method

.method static yFromLStar(F)F
    .registers 6

    const/high16 v0, 0x42c80000    # 100.0f

    const/high16 v1, 0x41000000    # 8.0f

    cmpl-float v1, p0, v1

    if-lez v1, :cond_19

    float-to-double v1, p0

    const-wide/high16 v3, 0x4030000000000000L    # 16.0

    add-double/2addr v1, v3

    const-wide/high16 v3, 0x405d000000000000L    # 116.0

    div-double/2addr v1, v3

    const-wide/high16 v3, 0x4008000000000000L    # 3.0

    .line 151
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float p0, v1

    :goto_16
    mul-float p0, p0, v0

    return p0

    :cond_19
    const v1, 0x4461d2f7

    div-float/2addr p0, v1

    goto :goto_16
.end method

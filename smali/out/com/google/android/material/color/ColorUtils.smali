.class final Lcom/google/android/material/color/ColorUtils;
.super Ljava/lang/Object;
.source "ColorUtils.java"


# static fields
.field private static final WHITE_POINT_D65:[F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 27
    fill-array-data v0, :array_a

    sput-object v0, Lcom/google/android/material/color/ColorUtils;->WHITE_POINT_D65:[F

    return-void

    nop

    :array_a
    .array-data 4
        0x42be1810
        0x42c80000    # 100.0f
        0x42d9c419
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blueFromInt(I)I
    .registers 1

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public static delinearized(F)F
    .registers 6

    const v0, 0x3b4d2e1c    # 0.0031308f

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_d

    const v0, 0x414eb852    # 12.92f

    mul-float p0, p0, v0

    return p0

    :cond_d
    const v0, 0x3f870a3d    # 1.055f

    float-to-double v1, p0

    const-wide v3, 0x3fdaaaaaa0000000L    # 0.4166666567325592

    .line 258
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float p0, v1

    mul-float p0, p0, v0

    const v0, 0x3d6147ae    # 0.055f

    sub-float/2addr p0, v0

    return p0
.end method

.method public static greenFromInt(I)I
    .registers 2

    const v0, 0xff00

    and-int/2addr p0, v0

    shr-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static hexFromInt(I)Ljava/lang/String;
    .registers 5

    .line 76
    invoke-static {p0}, Lcom/google/android/material/color/ColorUtils;->redFromInt(I)I

    move-result v0

    .line 77
    invoke-static {p0}, Lcom/google/android/material/color/ColorUtils;->blueFromInt(I)I

    move-result v1

    .line 78
    invoke-static {p0}, Lcom/google/android/material/color/ColorUtils;->greenFromInt(I)I

    move-result p0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    .line 79
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v0, 0x1

    aput-object p0, v2, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v0, 0x2

    aput-object p0, v2, v0

    const-string p0, "#%02x%02x%02x"

    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static intFromLab(DDD)I
    .registers 23

    const-wide/high16 v0, 0x4030000000000000L    # 16.0

    add-double v2, p0, v0

    const-wide/high16 v4, 0x405d000000000000L    # 116.0

    div-double/2addr v2, v4

    const-wide v6, 0x407f400000000000L    # 500.0

    div-double v6, p2, v6

    add-double/2addr v6, v2

    const-wide/high16 v8, 0x4069000000000000L    # 200.0

    div-double v8, p4, v8

    sub-double v8, v2, v8

    mul-double v10, v6, v6

    mul-double v10, v10, v6

    const-wide v12, 0x3f822354d28f7cd6L    # 0.008856451679035631

    const-wide v14, 0x408c3a5ed097b426L    # 903.2962962962963

    cmpl-double v16, v10, v12

    if-lez v16, :cond_28

    goto :goto_2d

    :cond_28
    mul-double v6, v6, v4

    sub-double/2addr v6, v0

    div-double v10, v6, v14

    :goto_2d
    const-wide/high16 v6, 0x4020000000000000L    # 8.0

    cmpl-double v16, p0, v6

    if-lez v16, :cond_38

    mul-double v6, v2, v2

    mul-double v6, v6, v2

    goto :goto_3a

    :cond_38
    div-double v6, p0, v14

    :goto_3a
    mul-double v2, v8, v8

    mul-double v2, v2, v8

    cmpl-double v16, v2, v12

    if-lez v16, :cond_43

    goto :goto_48

    :cond_43
    mul-double v8, v8, v4

    sub-double/2addr v8, v0

    div-double v2, v8, v14

    .line 163
    :goto_48
    sget-object v0, Lcom/google/android/material/color/ColorUtils;->WHITE_POINT_D65:[F

    const/4 v1, 0x0

    aget v1, v0, v1

    float-to-double v4, v1

    mul-double v10, v10, v4

    const/4 v1, 0x1

    .line 164
    aget v1, v0, v1

    float-to-double v4, v1

    mul-double v6, v6, v4

    const/4 v1, 0x2

    .line 165
    aget v0, v0, v1

    float-to-double v0, v0

    mul-double v2, v2, v0

    double-to-float v0, v10

    double-to-float v1, v6

    double-to-float v2, v2

    .line 166
    invoke-static {v0, v1, v2}, Lcom/google/android/material/color/ColorUtils;->intFromXyzComponents(FFF)I

    move-result v0

    return v0
.end method

.method public static intFromLstar(F)I
    .registers 10

    const/high16 v0, 0x41800000    # 16.0f

    add-float v1, p0, v0

    const/high16 v2, 0x42e80000    # 116.0f

    div-float/2addr v1, v2

    mul-float v3, v1, v1

    mul-float v3, v3, v1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const v6, 0x3c111aa7

    cmpl-float v6, v3, v6

    if-lez v6, :cond_16

    const/4 v6, 0x1

    goto :goto_17

    :cond_16
    const/4 v6, 0x0

    :goto_17
    const/high16 v7, 0x41000000    # 8.0f

    cmpl-float v7, p0, v7

    if-lez v7, :cond_1f

    const/4 v7, 0x1

    goto :goto_20

    :cond_1f
    const/4 v7, 0x0

    :goto_20
    const v8, 0x4461d2f7

    if-eqz v7, :cond_27

    move p0, v3

    goto :goto_28

    :cond_27
    div-float/2addr p0, v8

    :goto_28
    if-eqz v6, :cond_2c

    move v7, v3

    goto :goto_30

    :cond_2c
    mul-float v7, v1, v2

    sub-float/2addr v7, v0

    div-float/2addr v7, v8

    :goto_30
    if-eqz v6, :cond_33

    goto :goto_38

    :cond_33
    mul-float v1, v1, v2

    sub-float/2addr v1, v0

    div-float v3, v1, v8

    :goto_38
    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 211
    sget-object v1, Lcom/google/android/material/color/ColorUtils;->WHITE_POINT_D65:[F

    aget v2, v1, v5

    mul-float v7, v7, v2

    aput v7, v0, v5

    aget v2, v1, v4

    mul-float p0, p0, v2

    aput p0, v0, v4

    const/4 p0, 0x2

    aget v1, v1, p0

    mul-float v3, v3, v1

    aput v3, v0, p0

    .line 217
    invoke-static {v0}, Lcom/google/android/material/color/ColorUtils;->intFromXyz([F)I

    move-result p0

    return p0
.end method

.method public static intFromRgb(III)I
    .registers 4

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x10

    const/high16 v0, -0x1000000

    or-int/2addr p0, v0

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p0, p1

    and-int/lit16 p1, p2, 0xff

    or-int/2addr p0, p1

    ushr-int/lit8 p0, p0, 0x0

    return p0
.end method

.method public static intFromXyz([F)I
    .registers 4

    const/4 v0, 0x0

    .line 191
    aget v0, p0, v0

    const/4 v1, 0x1

    aget v1, p0, v1

    const/4 v2, 0x2

    aget p0, p0, v2

    invoke-static {v0, v1, p0}, Lcom/google/android/material/color/ColorUtils;->intFromXyzComponents(FFF)I

    move-result p0

    return p0
.end method

.method public static intFromXyzComponents(FFF)I
    .registers 6

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p0, v0

    div-float/2addr p1, v0

    div-float/2addr p2, v0

    const v0, 0x404f65fe

    mul-float v0, v0, p0

    const v1, -0x403b3d08    # -1.5372f

    mul-float v1, v1, p1

    add-float/2addr v0, v1

    const v1, -0x4100b780    # -0.4986f

    mul-float v1, v1, p2

    add-float/2addr v0, v1

    const v1, -0x4087f62b    # -0.9689f

    mul-float v1, v1, p0

    const v2, 0x3ff01a37    # 1.8758f

    mul-float v2, v2, p1

    add-float/2addr v1, v2

    const v2, 0x3d29fbe7    # 0.0415f

    mul-float v2, v2, p2

    add-float/2addr v1, v2

    const v2, 0x3d6425af    # 0.0557f

    mul-float p0, p0, v2

    const v2, -0x41af1aa0    # -0.204f

    mul-float p1, p1, v2

    add-float/2addr p0, p1

    const p1, 0x3f874bc7    # 1.057f

    mul-float p2, p2, p1

    add-float/2addr p0, p2

    .line 179
    invoke-static {v0}, Lcom/google/android/material/color/ColorUtils;->delinearized(F)F

    move-result p1

    .line 180
    invoke-static {v1}, Lcom/google/android/material/color/ColorUtils;->delinearized(F)F

    move-result p2

    .line 181
    invoke-static {p0}, Lcom/google/android/material/color/ColorUtils;->delinearized(F)F

    move-result p0

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float p1, p1, v0

    .line 183
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    const/16 v1, 0xff

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v2, 0x0

    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    mul-float p2, p2, v0

    .line 184
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {p2, v2}, Ljava/lang/Math;->max(II)I

    move-result p2

    mul-float p0, p0, v0

    .line 185
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {p0, v2}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 186
    invoke-static {p1, p2, p0}, Lcom/google/android/material/color/ColorUtils;->intFromRgb(III)I

    move-result p0

    return p0
.end method

.method public static labFromInt(I)[D
    .registers 18

    .line 118
    invoke-static/range {p0 .. p0}, Lcom/google/android/material/color/ColorUtils;->xyzFromInt(I)[F

    move-result-object v0

    const/4 v1, 0x1

    .line 119
    aget v2, v0, v1

    sget-object v3, Lcom/google/android/material/color/ColorUtils;->WHITE_POINT_D65:[F

    aget v4, v3, v1

    div-float/2addr v2, v4

    float-to-double v4, v2

    const-wide v6, 0x408c3a5ed097b426L    # 903.2962962962963

    const-wide v8, 0x3f822354d28f7cd6L    # 0.008856451679035631

    const-wide/high16 v10, 0x405d000000000000L    # 116.0

    const-wide/high16 v12, 0x4030000000000000L    # 16.0

    cmpl-double v2, v4, v8

    if-lez v2, :cond_24

    .line 122
    invoke-static {v4, v5}, Ljava/lang/Math;->cbrt(D)D

    move-result-wide v4

    goto :goto_28

    :cond_24
    mul-double v4, v4, v6

    add-double/2addr v4, v12

    div-double/2addr v4, v10

    :goto_28
    const/4 v2, 0x0

    .line 127
    aget v14, v0, v2

    aget v15, v3, v2

    div-float/2addr v14, v15

    float-to-double v14, v14

    cmpl-double v16, v14, v8

    if-lez v16, :cond_38

    .line 130
    invoke-static {v14, v15}, Ljava/lang/Math;->cbrt(D)D

    move-result-wide v14

    goto :goto_3c

    :cond_38
    mul-double v14, v14, v6

    add-double/2addr v14, v12

    div-double/2addr v14, v10

    :goto_3c
    const/16 v16, 0x2

    .line 135
    aget v0, v0, v16

    aget v3, v3, v16

    div-float/2addr v0, v3

    float-to-double v1, v0

    cmpl-double v0, v1, v8

    if-lez v0, :cond_4d

    .line 138
    invoke-static {v1, v2}, Ljava/lang/Math;->cbrt(D)D

    move-result-wide v0

    goto :goto_52

    :cond_4d
    mul-double v1, v1, v6

    add-double/2addr v1, v12

    div-double v0, v1, v10

    :goto_52
    mul-double v10, v10, v4

    sub-double/2addr v10, v12

    const-wide v6, 0x407f400000000000L    # 500.0

    sub-double/2addr v14, v4

    mul-double v14, v14, v6

    const-wide/high16 v6, 0x4069000000000000L    # 200.0

    sub-double/2addr v4, v0

    mul-double v4, v4, v6

    const/4 v0, 0x3

    new-array v0, v0, [D

    const/4 v1, 0x0

    aput-wide v10, v0, v1

    const/4 v1, 0x1

    aput-wide v14, v0, v1

    aput-wide v4, v0, v16

    return-object v0
.end method

.method public static linearized(F)F
    .registers 5

    const v0, 0x3d25aee6    # 0.04045f

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_c

    const v0, 0x414eb852    # 12.92f

    div-float/2addr p0, v0

    return p0

    :cond_c
    const v0, 0x3d6147ae    # 0.055f

    add-float/2addr p0, v0

    const v0, 0x3f870a3d    # 1.055f

    div-float/2addr p0, v0

    float-to-double v0, p0

    const-wide v2, 0x4003333340000000L    # 2.4000000953674316

    .line 245
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public static lstarFromInt(I)F
    .registers 3

    .line 67
    invoke-static {p0}, Lcom/google/android/material/color/ColorUtils;->labFromInt(I)[D

    move-result-object p0

    const/4 v0, 0x0

    aget-wide v0, p0, v0

    double-to-float p0, v0

    return p0
.end method

.method public static redFromInt(I)I
    .registers 2

    const/high16 v0, 0xff0000

    and-int/2addr p0, v0

    shr-int/lit8 p0, p0, 0x10

    return p0
.end method

.method public static final whitePointD65()[F
    .registers 2

    .line 31
    sget-object v0, Lcom/google/android/material/color/ColorUtils;->WHITE_POINT_D65:[F

    const/4 v1, 0x3

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    return-object v0
.end method

.method public static xyzFromInt(I)[F
    .registers 6

    .line 92
    invoke-static {p0}, Lcom/google/android/material/color/ColorUtils;->redFromInt(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Lcom/google/android/material/color/ColorUtils;->linearized(F)F

    move-result v0

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float v0, v0, v2

    .line 93
    invoke-static {p0}, Lcom/google/android/material/color/ColorUtils;->greenFromInt(I)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v1

    invoke-static {v3}, Lcom/google/android/material/color/ColorUtils;->linearized(F)F

    move-result v3

    mul-float v3, v3, v2

    .line 94
    invoke-static {p0}, Lcom/google/android/material/color/ColorUtils;->blueFromInt(I)I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, v1

    invoke-static {p0}, Lcom/google/android/material/color/ColorUtils;->linearized(F)F

    move-result p0

    mul-float p0, p0, v2

    const v1, 0x3ed31e17

    mul-float v1, v1, v0

    const v2, 0x3eb71a0d

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    const v2, 0x3e38d7b9

    mul-float v2, v2, p0

    add-float/2addr v1, v2

    const v2, 0x3e59b3d0    # 0.2126f

    mul-float v2, v2, v0

    const v4, 0x3f371759    # 0.7152f

    mul-float v4, v4, v3

    add-float/2addr v2, v4

    const v4, 0x3d93dd98    # 0.0722f

    mul-float v4, v4, p0

    add-float/2addr v2, v4

    const v4, 0x3c9e47ef

    mul-float v0, v0, v4

    const v4, 0x3df40c29

    mul-float v3, v3, v4

    add-float/2addr v0, v3

    const v3, 0x3f7349cc

    mul-float p0, p0, v3

    add-float/2addr v0, p0

    const/4 p0, 0x3

    new-array p0, p0, [F

    const/4 v3, 0x0

    aput v1, p0, v3

    const/4 v1, 0x1

    aput v2, p0, v1

    const/4 v1, 0x2

    aput v0, p0, v1

    return-object p0
.end method

.method public static yFromLstar(F)F
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

    .line 230
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

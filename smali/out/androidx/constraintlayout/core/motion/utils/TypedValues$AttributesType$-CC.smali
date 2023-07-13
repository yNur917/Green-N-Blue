.class public final synthetic Landroidx/constraintlayout/core/motion/utils/TypedValues$AttributesType$-CC;
.super Ljava/lang/Object;
.source "TypedValues.java"


# annotations
.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    kind = 0x7
    versionHash = "5e5398f0546d1d7afd62641edb14d82894f11ddc41bce363a0c8d0dac82c9c5a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$AttributesType;->NAME:Ljava/lang/String;

    return-void
.end method

.method public static getId(Ljava/lang/String;)I
    .registers 3

    .line 147
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_14c

    :goto_b
    const/4 p0, -0x1

    goto/16 :goto_10c

    :sswitch_e
    const-string v0, "visibility"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_17

    goto :goto_b

    :cond_17
    const/16 p0, 0x13

    goto/16 :goto_10c

    :sswitch_1b
    const-string v0, "pivotTarget"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_24

    goto :goto_b

    :cond_24
    const/16 p0, 0x12

    goto/16 :goto_10c

    :sswitch_28
    const-string v0, "pathRotate"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_31

    goto :goto_b

    :cond_31
    const/16 p0, 0x11

    goto/16 :goto_10c

    :sswitch_35
    const-string v0, "curveFit"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3e

    goto :goto_b

    :cond_3e
    const/16 p0, 0x10

    goto/16 :goto_10c

    :sswitch_42
    const-string v0, "frame"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4b

    goto :goto_b

    :cond_4b
    const/16 p0, 0xf

    goto/16 :goto_10c

    :sswitch_4f
    const-string v0, "alpha"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_58

    goto :goto_b

    :cond_58
    const/16 p0, 0xe

    goto/16 :goto_10c

    :sswitch_5c
    const-string v0, "elevation"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_65

    goto :goto_b

    :cond_65
    const/16 p0, 0xd

    goto/16 :goto_10c

    :sswitch_69
    const-string v0, "target"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_72

    goto :goto_b

    :cond_72
    const/16 p0, 0xc

    goto/16 :goto_10c

    :sswitch_76
    const-string v0, "scaleY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7f

    goto :goto_b

    :cond_7f
    const/16 p0, 0xb

    goto/16 :goto_10c

    :sswitch_83
    const-string v0, "scaleX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8d

    goto/16 :goto_b

    :cond_8d
    const/16 p0, 0xa

    goto/16 :goto_10c

    :sswitch_91
    const-string v0, "pivotY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9b

    goto/16 :goto_b

    :cond_9b
    const/16 p0, 0x9

    goto/16 :goto_10c

    :sswitch_9f
    const-string v0, "pivotX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a9

    goto/16 :goto_b

    :cond_a9
    const/16 p0, 0x8

    goto/16 :goto_10c

    :sswitch_ad
    const-string v0, "progress"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b7

    goto/16 :goto_b

    :cond_b7
    const/4 p0, 0x7

    goto :goto_10c

    :sswitch_b9
    const-string v0, "translationZ"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c3

    goto/16 :goto_b

    :cond_c3
    const/4 p0, 0x6

    goto :goto_10c

    :sswitch_c5
    const-string v0, "translationY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_cf

    goto/16 :goto_b

    :cond_cf
    const/4 p0, 0x5

    goto :goto_10c

    :sswitch_d1
    const-string v0, "translationX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_db

    goto/16 :goto_b

    :cond_db
    const/4 p0, 0x4

    goto :goto_10c

    :sswitch_dd
    const-string v0, "rotationZ"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e7

    goto/16 :goto_b

    :cond_e7
    const/4 p0, 0x3

    goto :goto_10c

    :sswitch_e9
    const-string v0, "rotationY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f3

    goto/16 :goto_b

    :cond_f3
    const/4 p0, 0x2

    goto :goto_10c

    :sswitch_f5
    const-string v0, "rotationX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_ff

    goto/16 :goto_b

    :cond_ff
    const/4 p0, 0x1

    goto :goto_10c

    :sswitch_101
    const-string v0, "easing"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_10b

    goto/16 :goto_b

    :cond_10b
    const/4 p0, 0x0

    :goto_10c
    packed-switch p0, :pswitch_data_19e

    return v1

    :pswitch_110
    const/16 p0, 0x12e

    return p0

    :pswitch_113
    const/16 p0, 0x13e

    return p0

    :pswitch_116
    const/16 p0, 0x13c

    return p0

    :pswitch_119
    const/16 p0, 0x12d

    return p0

    :pswitch_11c
    const/16 p0, 0x64

    return p0

    :pswitch_11f
    const/16 p0, 0x12f

    return p0

    :pswitch_122
    const/16 p0, 0x133

    return p0

    :pswitch_125
    const/16 p0, 0x65

    return p0

    :pswitch_128
    const/16 p0, 0x138

    return p0

    :pswitch_12b
    const/16 p0, 0x137

    return p0

    :pswitch_12e
    const/16 p0, 0x13a

    return p0

    :pswitch_131
    const/16 p0, 0x139

    return p0

    :pswitch_134
    const/16 p0, 0x13b

    return p0

    :pswitch_137
    const/16 p0, 0x132

    return p0

    :pswitch_13a
    const/16 p0, 0x131

    return p0

    :pswitch_13d
    const/16 p0, 0x130

    return p0

    :pswitch_140
    const/16 p0, 0x136

    return p0

    :pswitch_143
    const/16 p0, 0x135

    return p0

    :pswitch_146
    const/16 p0, 0x134

    return p0

    :pswitch_149
    const/16 p0, 0x13d

    return p0

    :sswitch_data_14c
    .sparse-switch
        -0x4e19c2d5 -> :sswitch_101
        -0x4a771f66 -> :sswitch_f5
        -0x4a771f65 -> :sswitch_e9
        -0x4a771f64 -> :sswitch_dd
        -0x490b9c39 -> :sswitch_d1
        -0x490b9c38 -> :sswitch_c5
        -0x490b9c37 -> :sswitch_b9
        -0x3bab3dd3 -> :sswitch_ad
        -0x3ae243aa -> :sswitch_9f
        -0x3ae243a9 -> :sswitch_91
        -0x3621dfb2 -> :sswitch_83
        -0x3621dfb1 -> :sswitch_76
        -0x34818e6f -> :sswitch_69
        -0x42d1a3 -> :sswitch_5c
        0x589b15e -> :sswitch_4f
        0x5d2a96d -> :sswitch_42
        0x2283b8a2 -> :sswitch_35
        0x2fdfbde0 -> :sswitch_28
        0x45917073 -> :sswitch_1b
        0x73b66312 -> :sswitch_e
    .end sparse-switch

    :pswitch_data_19e
    .packed-switch 0x0
        :pswitch_149
        :pswitch_146
        :pswitch_143
        :pswitch_140
        :pswitch_13d
        :pswitch_13a
        :pswitch_137
        :pswitch_134
        :pswitch_131
        :pswitch_12e
        :pswitch_12b
        :pswitch_128
        :pswitch_125
        :pswitch_122
        :pswitch_11f
        :pswitch_11c
        :pswitch_119
        :pswitch_116
        :pswitch_113
        :pswitch_110
    .end packed-switch
.end method

.method public static getType(I)I
    .registers 2

    .line 0
    const/16 v0, 0x64

    if-eq p0, v0, :cond_12

    const/16 v0, 0x65

    if-eq p0, v0, :cond_f

    packed-switch p0, :pswitch_data_14

    const/4 p0, -0x1

    return p0

    :pswitch_d
    const/4 p0, 0x4

    return p0

    :cond_f
    :pswitch_f
    const/16 p0, 0x8

    return p0

    :cond_12
    :pswitch_12
    const/4 p0, 0x2

    return p0

    :pswitch_data_14
    .packed-switch 0x12d
        :pswitch_12
        :pswitch_12
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_f
        :pswitch_f
    .end packed-switch
.end method

.class public final synthetic Landroidx/constraintlayout/core/motion/utils/TypedValues$TransitionType$-CC;
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

    sget-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$TransitionType;->NAME:Ljava/lang/String;

    return-void
.end method

.method public static getId(Ljava/lang/String;)I
    .registers 3

    .line 770
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_82

    :goto_b
    const/4 p0, -0x1

    goto/16 :goto_65

    :sswitch_e
    const-string v0, "staggered"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_17

    goto :goto_b

    :cond_17
    const/4 p0, 0x7

    goto :goto_65

    :sswitch_19
    const-string v0, "pathMotionArc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_22

    goto :goto_b

    :cond_22
    const/4 p0, 0x6

    goto :goto_65

    :sswitch_24
    const-string v0, "from"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2d

    goto :goto_b

    :cond_2d
    const/4 p0, 0x5

    goto :goto_65

    :sswitch_2f
    const-string v0, "to"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_38

    goto :goto_b

    :cond_38
    const/4 p0, 0x4

    goto :goto_65

    :sswitch_3a
    const-string v0, "autoTransition"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_43

    goto :goto_b

    :cond_43
    const/4 p0, 0x3

    goto :goto_65

    :sswitch_45
    const-string v0, "motionInterpolator"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4e

    goto :goto_b

    :cond_4e
    const/4 p0, 0x2

    goto :goto_65

    :sswitch_50
    const-string v0, "duration"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_59

    goto :goto_b

    :cond_59
    const/4 p0, 0x1

    goto :goto_65

    :sswitch_5b
    const-string v0, "transitionFlags"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_64

    goto :goto_b

    :cond_64
    const/4 p0, 0x0

    :goto_65
    packed-switch p0, :pswitch_data_a4

    return v1

    :pswitch_69
    const/16 p0, 0x2c2

    return p0

    :pswitch_6c
    const/16 p0, 0x1fd

    return p0

    :pswitch_6f
    const/16 p0, 0x2bd

    return p0

    :pswitch_72
    const/16 p0, 0x2be

    return p0

    :pswitch_75
    const/16 p0, 0x2c0

    return p0

    :pswitch_78
    const/16 p0, 0x2c1

    return p0

    :pswitch_7b
    const/16 p0, 0x2bc

    return p0

    :pswitch_7e
    const/16 p0, 0x2c3

    return p0

    nop

    :sswitch_data_82
    .sparse-switch
        -0x770661ce -> :sswitch_5b
        -0x76bbb26c -> :sswitch_50
        -0x50ef8463 -> :sswitch_45
        -0x4d5ee79c -> :sswitch_3a
        0xe7b -> :sswitch_2f
        0x3017aa -> :sswitch_24
        0x4e203417 -> :sswitch_19
        0x6da0e50c -> :sswitch_e
    .end sparse-switch

    :pswitch_data_a4
    .packed-switch 0x0
        :pswitch_7e
        :pswitch_7b
        :pswitch_78
        :pswitch_75
        :pswitch_72
        :pswitch_6f
        :pswitch_6c
        :pswitch_69
    .end packed-switch
.end method

.method public static getType(I)I
    .registers 2

    .line 0
    const/16 v0, 0x1fd

    if-eq p0, v0, :cond_11

    packed-switch p0, :pswitch_data_14

    packed-switch p0, :pswitch_data_1e

    const/4 p0, -0x1

    return p0

    :pswitch_c
    const/4 p0, 0x4

    return p0

    :pswitch_e
    const/16 p0, 0x8

    return p0

    :cond_11
    :pswitch_11
    const/4 p0, 0x2

    return p0

    nop

    :pswitch_data_14
    .packed-switch 0x2bc
        :pswitch_11
        :pswitch_e
        :pswitch_e
    .end packed-switch

    :pswitch_data_1e
    .packed-switch 0x2c1
        :pswitch_e
        :pswitch_c
        :pswitch_e
    .end packed-switch
.end method

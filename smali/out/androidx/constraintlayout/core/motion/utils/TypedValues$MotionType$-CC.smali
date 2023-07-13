.class public final synthetic Landroidx/constraintlayout/core/motion/utils/TypedValues$MotionType$-CC;
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

    sget-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$MotionType;->NAME:Ljava/lang/String;

    return-void
.end method

.method public static getId(Ljava/lang/String;)I
    .registers 3

    .line 586
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_d4

    :goto_b
    const/4 p0, -0x1

    goto/16 :goto_a9

    :sswitch_e
    const-string v0, "PathMotionArc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_17

    goto :goto_b

    :cond_17
    const/16 p0, 0xc

    goto/16 :goto_a9

    :sswitch_1b
    const-string v0, "AnimateRelativeTo"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_24

    goto :goto_b

    :cond_24
    const/16 p0, 0xb

    goto/16 :goto_a9

    :sswitch_28
    const-string v0, "TransitionEasing"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_31

    goto :goto_b

    :cond_31
    const/16 p0, 0xa

    goto/16 :goto_a9

    :sswitch_35
    const-string v0, "QuantizeInterpolatorID"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3e

    goto :goto_b

    :cond_3e
    const/16 p0, 0x9

    goto/16 :goto_a9

    :sswitch_42
    const-string v0, "QuantizeInterpolatorType"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4b

    goto :goto_b

    :cond_4b
    const/16 p0, 0x8

    goto/16 :goto_a9

    :sswitch_4f
    const-string v0, "PolarRelativeTo"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_58

    goto :goto_b

    :cond_58
    const/4 p0, 0x7

    goto :goto_a9

    :sswitch_5a
    const-string v0, "Stagger"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_63

    goto :goto_b

    :cond_63
    const/4 p0, 0x6

    goto :goto_a9

    :sswitch_65
    const-string v0, "DrawPath"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6e

    goto :goto_b

    :cond_6e
    const/4 p0, 0x5

    goto :goto_a9

    :sswitch_70
    const-string v0, "QuantizeInterpolator"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_79

    goto :goto_b

    :cond_79
    const/4 p0, 0x4

    goto :goto_a9

    :sswitch_7b
    const-string v0, "PathRotate"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_84

    goto :goto_b

    :cond_84
    const/4 p0, 0x3

    goto :goto_a9

    :sswitch_86
    const-string v0, "QuantizeMotionSteps"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_90

    goto/16 :goto_b

    :cond_90
    const/4 p0, 0x2

    goto :goto_a9

    :sswitch_92
    const-string v0, "QuantizeMotionPhase"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9c

    goto/16 :goto_b

    :cond_9c
    const/4 p0, 0x1

    goto :goto_a9

    :sswitch_9e
    const-string v0, "AnimateCircleAngleTo"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a8

    goto/16 :goto_b

    :cond_a8
    const/4 p0, 0x0

    :goto_a9
    packed-switch p0, :pswitch_data_10a

    return v1

    :pswitch_ad
    const/16 p0, 0x25f

    return p0

    :pswitch_b0
    const/16 p0, 0x25d

    return p0

    :pswitch_b3
    const/16 p0, 0x25b

    return p0

    :pswitch_b6
    const/16 p0, 0x264

    return p0

    :pswitch_b9
    const/16 p0, 0x263

    return p0

    :pswitch_bc
    const/16 p0, 0x261

    return p0

    :pswitch_bf
    const/16 p0, 0x258

    return p0

    :pswitch_c2
    const/16 p0, 0x260

    return p0

    :pswitch_c5
    const/16 p0, 0x25c

    return p0

    :pswitch_c8
    const/16 p0, 0x259

    return p0

    :pswitch_cb
    const/16 p0, 0x262

    return p0

    :pswitch_ce
    const/16 p0, 0x25a

    return p0

    :pswitch_d1
    const/16 p0, 0x25e

    return p0

    :sswitch_data_d4
    .sparse-switch
        -0x7933ed83 -> :sswitch_9e
        -0x5b54b2ac -> :sswitch_92
        -0x5b24e900 -> :sswitch_86
        -0x594e6600 -> :sswitch_7b
        -0x3d700b48 -> :sswitch_70
        -0x2d70d857 -> :sswitch_65
        -0xde15873 -> :sswitch_5a
        0x43dc0025 -> :sswitch_4f
        0x5bbedc12 -> :sswitch_42
        0x5e65afd3 -> :sswitch_35
        0x61b6c700 -> :sswitch_28
        0x714d6c08 -> :sswitch_1b
        0x7dbf63f7 -> :sswitch_e
    .end sparse-switch

    :pswitch_data_10a
    .packed-switch 0x0
        :pswitch_d1
        :pswitch_ce
        :pswitch_cb
        :pswitch_c8
        :pswitch_c5
        :pswitch_c2
        :pswitch_bf
        :pswitch_bc
        :pswitch_b9
        :pswitch_b6
        :pswitch_b3
        :pswitch_b0
        :pswitch_ad
    .end packed-switch
.end method

.class Lcom/google/android/material/navigation/NavigationBarItemView$ActiveIndicatorTransform;
.super Ljava/lang/Object;
.source "NavigationBarItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/navigation/NavigationBarItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ActiveIndicatorTransform"
.end annotation


# static fields
.field private static final ALPHA_FRACTION:F = 0.2f

.field private static final SCALE_X_HIDDEN:F = 0.4f

.field private static final SCALE_X_SHOWN:F = 1.0f


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 905
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/material/navigation/NavigationBarItemView$1;)V
    .registers 2

    .line 905
    invoke-direct {p0}, Lcom/google/android/material/navigation/NavigationBarItemView$ActiveIndicatorTransform;-><init>()V

    return-void
.end method


# virtual methods
.method protected calculateAlpha(FF)F
    .registers 6

    const/4 v0, 0x0

    cmpl-float p2, p2, v0

    if-nez p2, :cond_9

    const v1, 0x3f4ccccd    # 0.8f

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    const/high16 v2, 0x3f800000    # 1.0f

    if-nez p2, :cond_11

    const/high16 p2, 0x3f800000    # 1.0f

    goto :goto_14

    :cond_11
    const p2, 0x3e4ccccd    # 0.2f

    .line 924
    :goto_14
    invoke-static {v0, v2, v1, p2, p1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFFFF)F

    move-result p1

    return p1
.end method

.method protected calculateScaleX(FF)F
    .registers 4

    const p2, 0x3ecccccd    # 0.4f

    const/high16 v0, 0x3f800000    # 1.0f

    .line 930
    invoke-static {p2, v0, p1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFF)F

    move-result p1

    return p1
.end method

.method protected calculateScaleY(FF)F
    .registers 3

    const/high16 p1, 0x3f800000    # 1.0f

    return p1
.end method

.method public updateForProgress(FFLandroid/view/View;)V
    .registers 5

    .line 954
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/navigation/NavigationBarItemView$ActiveIndicatorTransform;->calculateScaleX(FF)F

    move-result v0

    invoke-virtual {p3, v0}, Landroid/view/View;->setScaleX(F)V

    .line 955
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/navigation/NavigationBarItemView$ActiveIndicatorTransform;->calculateScaleY(FF)F

    move-result v0

    invoke-virtual {p3, v0}, Landroid/view/View;->setScaleY(F)V

    .line 956
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/navigation/NavigationBarItemView$ActiveIndicatorTransform;->calculateAlpha(FF)F

    move-result p1

    invoke-virtual {p3, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

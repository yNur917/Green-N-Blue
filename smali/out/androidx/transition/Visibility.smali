.class public abstract Landroidx/transition/Visibility;
.super Landroidx/transition/Transition;
.source "Visibility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/transition/Visibility$DisappearListener;,
        Landroidx/transition/Visibility$VisibilityInfo;,
        Landroidx/transition/Visibility$Mode;
    }
.end annotation


# static fields
.field public static final MODE_IN:I = 0x1

.field public static final MODE_OUT:I = 0x2

.field private static final PROPNAME_PARENT:Ljava/lang/String; = "android:visibility:parent"

.field private static final PROPNAME_SCREEN_LOCATION:Ljava/lang/String; = "android:visibility:screenLocation"

.field static final PROPNAME_VISIBILITY:Ljava/lang/String; = "android:visibility:visibility"

.field private static final sTransitionProperties:[Ljava/lang/String;


# instance fields
.field private mMode:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "android:visibility:visibility"

    const-string v1, "android:visibility:parent"

    .line 81
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/transition/Visibility;->sTransitionProperties:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 100
    invoke-direct {p0}, Landroidx/transition/Transition;-><init>()V

    const/4 v0, 0x3

    .line 98
    iput v0, p0, Landroidx/transition/Visibility;->mMode:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .line 106
    invoke-direct {p0, p1, p2}, Landroidx/transition/Transition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x3

    .line 98
    iput v0, p0, Landroidx/transition/Visibility;->mMode:I

    .line 107
    sget-object v0, Landroidx/transition/Styleable;->VISIBILITY_TRANSITION:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 109
    check-cast p2, Landroid/content/res/XmlResourceParser;

    const-string v0, "transitionVisibilityMode"

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, v1}, Landroidx/core/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result p2

    .line 112
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz p2, :cond_1d

    .line 114
    invoke-virtual {p0, p2}, Landroidx/transition/Visibility;->setMode(I)V

    :cond_1d
    return-void
.end method

.method private captureValues(Landroidx/transition/TransitionValues;)V
    .registers 5

    .line 150
    iget-object v0, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    .line 151
    iget-object v1, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "android:visibility:visibility"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    iget-object v0, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    iget-object v1, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    const-string v2, "android:visibility:parent"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 154
    iget-object v1, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 155
    iget-object p1, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "android:visibility:screenLocation"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private getVisibilityChangeInfo(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroidx/transition/Visibility$VisibilityInfo;
    .registers 10

    .line 195
    new-instance v0, Landroidx/transition/Visibility$VisibilityInfo;

    invoke-direct {v0}, Landroidx/transition/Visibility$VisibilityInfo;-><init>()V

    const/4 v1, 0x0

    .line 196
    iput-boolean v1, v0, Landroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    .line 197
    iput-boolean v1, v0, Landroidx/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    const-string v2, "android:visibility:parent"

    const/4 v3, 0x0

    const/4 v4, -0x1

    const-string v5, "android:visibility:visibility"

    if-eqz p1, :cond_33

    .line 198
    iget-object v6, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_33

    .line 199
    iget-object v6, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v0, Landroidx/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    .line 200
    iget-object v6, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    iput-object v6, v0, Landroidx/transition/Visibility$VisibilityInfo;->mStartParent:Landroid/view/ViewGroup;

    goto :goto_37

    .line 202
    :cond_33
    iput v4, v0, Landroidx/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    .line 203
    iput-object v3, v0, Landroidx/transition/Visibility$VisibilityInfo;->mStartParent:Landroid/view/ViewGroup;

    :goto_37
    if-eqz p2, :cond_5a

    .line 205
    iget-object v6, p2, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5a

    .line 206
    iget-object v3, p2, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v0, Landroidx/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    .line 207
    iget-object v3, p2, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, v0, Landroidx/transition/Visibility$VisibilityInfo;->mEndParent:Landroid/view/ViewGroup;

    goto :goto_5e

    .line 209
    :cond_5a
    iput v4, v0, Landroidx/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    .line 210
    iput-object v3, v0, Landroidx/transition/Visibility$VisibilityInfo;->mEndParent:Landroid/view/ViewGroup;

    :goto_5e
    const/4 v2, 0x1

    if-eqz p1, :cond_9a

    if-eqz p2, :cond_9a

    .line 213
    iget p1, v0, Landroidx/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    iget p2, v0, Landroidx/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    if-ne p1, p2, :cond_70

    iget-object p1, v0, Landroidx/transition/Visibility$VisibilityInfo;->mStartParent:Landroid/view/ViewGroup;

    iget-object p2, v0, Landroidx/transition/Visibility$VisibilityInfo;->mEndParent:Landroid/view/ViewGroup;

    if-ne p1, p2, :cond_70

    return-object v0

    .line 217
    :cond_70
    iget p1, v0, Landroidx/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    iget p2, v0, Landroidx/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    if-eq p1, p2, :cond_88

    .line 218
    iget p1, v0, Landroidx/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    if-nez p1, :cond_7f

    .line 219
    iput-boolean v1, v0, Landroidx/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    .line 220
    iput-boolean v2, v0, Landroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    goto :goto_af

    .line 221
    :cond_7f
    iget p1, v0, Landroidx/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    if-nez p1, :cond_af

    .line 222
    iput-boolean v2, v0, Landroidx/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    .line 223
    iput-boolean v2, v0, Landroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    goto :goto_af

    .line 227
    :cond_88
    iget-object p1, v0, Landroidx/transition/Visibility$VisibilityInfo;->mEndParent:Landroid/view/ViewGroup;

    if-nez p1, :cond_91

    .line 228
    iput-boolean v1, v0, Landroidx/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    .line 229
    iput-boolean v2, v0, Landroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    goto :goto_af

    .line 230
    :cond_91
    iget-object p1, v0, Landroidx/transition/Visibility$VisibilityInfo;->mStartParent:Landroid/view/ViewGroup;

    if-nez p1, :cond_af

    .line 231
    iput-boolean v2, v0, Landroidx/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    .line 232
    iput-boolean v2, v0, Landroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    goto :goto_af

    :cond_9a
    if-nez p1, :cond_a5

    .line 236
    iget p1, v0, Landroidx/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    if-nez p1, :cond_a5

    .line 237
    iput-boolean v2, v0, Landroidx/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    .line 238
    iput-boolean v2, v0, Landroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    goto :goto_af

    :cond_a5
    if-nez p2, :cond_af

    .line 239
    iget p1, v0, Landroidx/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    if-nez p1, :cond_af

    .line 240
    iput-boolean v1, v0, Landroidx/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    .line 241
    iput-boolean v2, v0, Landroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    :cond_af
    :goto_af
    return-object v0
.end method


# virtual methods
.method public captureEndValues(Landroidx/transition/TransitionValues;)V
    .registers 2

    .line 165
    invoke-direct {p0, p1}, Landroidx/transition/Visibility;->captureValues(Landroidx/transition/TransitionValues;)V

    return-void
.end method

.method public captureStartValues(Landroidx/transition/TransitionValues;)V
    .registers 2

    .line 160
    invoke-direct {p0, p1}, Landroidx/transition/Visibility;->captureValues(Landroidx/transition/TransitionValues;)V

    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .registers 12

    .line 250
    invoke-direct {p0, p2, p3}, Landroidx/transition/Visibility;->getVisibilityChangeInfo(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroidx/transition/Visibility$VisibilityInfo;

    move-result-object v0

    .line 251
    iget-boolean v1, v0, Landroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    if-eqz v1, :cond_2e

    iget-object v1, v0, Landroidx/transition/Visibility$VisibilityInfo;->mStartParent:Landroid/view/ViewGroup;

    if-nez v1, :cond_10

    iget-object v1, v0, Landroidx/transition/Visibility$VisibilityInfo;->mEndParent:Landroid/view/ViewGroup;

    if-eqz v1, :cond_2e

    .line 253
    :cond_10
    iget-boolean v1, v0, Landroidx/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    if-eqz v1, :cond_21

    .line 254
    iget v5, v0, Landroidx/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    iget v7, v0, Landroidx/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    invoke-virtual/range {v2 .. v7}, Landroidx/transition/Visibility;->onAppear(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;ILandroidx/transition/TransitionValues;I)Landroid/animation/Animator;

    move-result-object p1

    return-object p1

    .line 257
    :cond_21
    iget v3, v0, Landroidx/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    iget v5, v0, Landroidx/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Landroidx/transition/Visibility;->onDisappear(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;ILandroidx/transition/TransitionValues;I)Landroid/animation/Animator;

    move-result-object p1

    return-object p1

    :cond_2e
    const/4 p1, 0x0

    return-object p1
.end method

.method public getMode()I
    .registers 2

    .line 140
    iget v0, p0, Landroidx/transition/Visibility;->mMode:I

    return v0
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .registers 2

    .line 146
    sget-object v0, Landroidx/transition/Visibility;->sTransitionProperties:[Ljava/lang/String;

    return-object v0
.end method

.method public isTransitionRequired(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_6

    if-nez p2, :cond_6

    return v0

    :cond_6
    if-eqz p1, :cond_1b

    if-eqz p2, :cond_1b

    .line 510
    iget-object v1, p2, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:visibility:visibility"

    .line 511
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    iget-object v3, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    .line 512
    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eq v1, v2, :cond_1b

    return v0

    .line 517
    :cond_1b
    invoke-direct {p0, p1, p2}, Landroidx/transition/Visibility;->getVisibilityChangeInfo(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroidx/transition/Visibility$VisibilityInfo;

    move-result-object p1

    .line 518
    iget-boolean p2, p1, Landroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    if-eqz p2, :cond_2c

    iget p2, p1, Landroidx/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    if-eqz p2, :cond_2b

    iget p1, p1, Landroidx/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    if-nez p1, :cond_2c

    :cond_2b
    const/4 v0, 0x1

    :cond_2c
    return v0
.end method

.method public isVisible(Landroidx/transition/TransitionValues;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 187
    :cond_4
    iget-object v1, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:visibility:visibility"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 188
    iget-object p1, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:visibility:parent"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-nez v1, :cond_21

    if-eqz p1, :cond_21

    const/4 v0, 0x1

    :cond_21
    return v0
.end method

.method public onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .registers 5

    const/4 p1, 0x0

    return-object p1
.end method

.method public onAppear(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;ILandroidx/transition/TransitionValues;I)Landroid/animation/Animator;
    .registers 8

    .line 283
    iget p3, p0, Landroidx/transition/Visibility;->mMode:I

    const/4 p5, 0x1

    and-int/2addr p3, p5

    const/4 v0, 0x0

    if-ne p3, p5, :cond_2d

    if-nez p4, :cond_a

    goto :goto_2d

    :cond_a
    if-nez p2, :cond_26

    .line 287
    iget-object p3, p4, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    check-cast p3, Landroid/view/View;

    const/4 p5, 0x0

    .line 288
    invoke-virtual {p0, p3, p5}, Landroidx/transition/Visibility;->getMatchedTransitionValues(Landroid/view/View;Z)Landroidx/transition/TransitionValues;

    move-result-object v1

    .line 290
    invoke-virtual {p0, p3, p5}, Landroidx/transition/Visibility;->getTransitionValues(Landroid/view/View;Z)Landroidx/transition/TransitionValues;

    move-result-object p3

    .line 292
    invoke-direct {p0, v1, p3}, Landroidx/transition/Visibility;->getVisibilityChangeInfo(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroidx/transition/Visibility$VisibilityInfo;

    move-result-object p3

    .line 293
    iget-boolean p3, p3, Landroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    if-eqz p3, :cond_26

    return-object v0

    .line 297
    :cond_26
    iget-object p3, p4, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {p0, p1, p3, p2, p4}, Landroidx/transition/Visibility;->onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object p1

    return-object p1

    :cond_2d
    :goto_2d
    return-object v0
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .registers 5

    const/4 p1, 0x0

    return-object p1
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;ILandroidx/transition/TransitionValues;I)Landroid/animation/Animator;
    .registers 16

    .line 340
    iget p3, p0, Landroidx/transition/Visibility;->mMode:I

    const/4 v0, 0x2

    and-int/2addr p3, v0

    const/4 v1, 0x0

    if-eq p3, v0, :cond_8

    return-object v1

    :cond_8
    if-nez p2, :cond_b

    return-object v1

    .line 349
    :cond_b
    iget-object p3, p2, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    if-eqz p4, :cond_12

    .line 350
    iget-object v2, p4, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    goto :goto_13

    :cond_12
    move-object v2, v1

    .line 355
    :goto_13
    sget v3, Landroidx/transition/R$id;->save_overlay_view:I

    invoke-virtual {p3, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_23

    move-object v2, v1

    const/4 v6, 0x1

    goto/16 :goto_89

    :cond_23
    if-eqz v2, :cond_36

    .line 365
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_2c

    goto :goto_36

    :cond_2c
    const/4 v3, 0x4

    if-ne p5, v3, :cond_30

    goto :goto_32

    :cond_30
    if-ne p3, v2, :cond_3b

    :goto_32
    move-object v3, v2

    const/4 v6, 0x0

    move-object v2, v1

    goto :goto_3e

    :cond_36
    :goto_36
    if-eqz v2, :cond_3b

    move-object v3, v1

    const/4 v6, 0x0

    goto :goto_3e

    :cond_3b
    move-object v2, v1

    move-object v3, v2

    const/4 v6, 0x1

    :goto_3e
    if-eqz v6, :cond_85

    .line 390
    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    if-nez v6, :cond_47

    goto :goto_81

    .line 393
    :cond_47
    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    instance-of v6, v6, Landroid/view/View;

    if-eqz v6, :cond_85

    .line 394
    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 395
    invoke-virtual {p0, v6, v5}, Landroidx/transition/Visibility;->getTransitionValues(Landroid/view/View;Z)Landroidx/transition/TransitionValues;

    move-result-object v7

    .line 396
    invoke-virtual {p0, v6, v5}, Landroidx/transition/Visibility;->getMatchedTransitionValues(Landroid/view/View;Z)Landroidx/transition/TransitionValues;

    move-result-object v8

    .line 399
    invoke-direct {p0, v7, v8}, Landroidx/transition/Visibility;->getVisibilityChangeInfo(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroidx/transition/Visibility$VisibilityInfo;

    move-result-object v7

    .line 400
    iget-boolean v7, v7, Landroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    if-nez v7, :cond_6a

    .line 401
    invoke-static {p1, p3, v6}, Landroidx/transition/TransitionUtils;->copyViewImage(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    goto :goto_85

    .line 404
    :cond_6a
    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v7

    .line 405
    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    if-nez v6, :cond_85

    const/4 v6, -0x1

    if-eq v7, v6, :cond_85

    .line 406
    invoke-virtual {p1, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_85

    iget-boolean v6, p0, Landroidx/transition/Visibility;->mCanRemoveViews:Z

    if-eqz v6, :cond_85

    :goto_81
    move-object v2, v3

    const/4 v6, 0x0

    move-object v3, p3

    goto :goto_89

    :cond_85
    :goto_85
    const/4 v6, 0x0

    move-object v9, v3

    move-object v3, v2

    move-object v2, v9

    :goto_89
    if-eqz v3, :cond_dd

    if-nez v6, :cond_bf

    .line 421
    iget-object p5, p2, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "android:visibility:screenLocation"

    invoke-interface {p5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, [I

    check-cast p5, [I

    .line 422
    aget v1, p5, v4

    .line 423
    aget p5, p5, v5

    new-array v0, v0, [I

    .line 425
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    aget v2, v0, v4

    sub-int/2addr v1, v2

    .line 426
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v3, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    aget v0, v0, v5

    sub-int/2addr p5, v0

    .line 427
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int/2addr p5, v0

    invoke-virtual {v3, p5}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 428
    invoke-static {p1}, Landroidx/transition/ViewGroupUtils;->getOverlay(Landroid/view/ViewGroup;)Landroidx/transition/ViewGroupOverlayImpl;

    move-result-object p5

    invoke-interface {p5, v3}, Landroidx/transition/ViewGroupOverlayImpl;->add(Landroid/view/View;)V

    .line 430
    :cond_bf
    invoke-virtual {p0, p1, v3, p2, p4}, Landroidx/transition/Visibility;->onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object p2

    if-nez v6, :cond_dc

    if-nez p2, :cond_cf

    .line 433
    invoke-static {p1}, Landroidx/transition/ViewGroupUtils;->getOverlay(Landroid/view/ViewGroup;)Landroidx/transition/ViewGroupOverlayImpl;

    move-result-object p1

    invoke-interface {p1, v3}, Landroidx/transition/ViewGroupOverlayImpl;->remove(Landroid/view/View;)V

    goto :goto_dc

    .line 435
    :cond_cf
    sget p4, Landroidx/transition/R$id;->save_overlay_view:I

    invoke-virtual {p3, p4, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 438
    new-instance p4, Landroidx/transition/Visibility$1;

    invoke-direct {p4, p0, p1, v3, p3}, Landroidx/transition/Visibility$1;-><init>(Landroidx/transition/Visibility;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p0, p4}, Landroidx/transition/Visibility;->addListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    :cond_dc
    :goto_dc
    return-object p2

    :cond_dd
    if-eqz v2, :cond_ff

    .line 467
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result p3

    .line 468
    invoke-static {v2, v4}, Landroidx/transition/ViewUtils;->setTransitionVisibility(Landroid/view/View;I)V

    .line 469
    invoke-virtual {p0, p1, v2, p2, p4}, Landroidx/transition/Visibility;->onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object p1

    if-eqz p1, :cond_fb

    .line 471
    new-instance p2, Landroidx/transition/Visibility$DisappearListener;

    invoke-direct {p2, v2, p5, v5}, Landroidx/transition/Visibility$DisappearListener;-><init>(Landroid/view/View;IZ)V

    .line 473
    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 474
    invoke-static {p1, p2}, Landroidx/transition/AnimatorUtils;->addPauseListener(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V

    .line 475
    invoke-virtual {p0, p2}, Landroidx/transition/Visibility;->addListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    goto :goto_fe

    .line 477
    :cond_fb
    invoke-static {v2, p3}, Landroidx/transition/ViewUtils;->setTransitionVisibility(Landroid/view/View;I)V

    :goto_fe
    return-object p1

    :cond_ff
    return-object v1
.end method

.method public setMode(I)V
    .registers 3

    and-int/lit8 v0, p1, -0x4

    if-nez v0, :cond_7

    .line 129
    iput p1, p0, Landroidx/transition/Visibility;->mMode:I

    return-void

    .line 127
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Only MODE_IN and MODE_OUT flags are allowed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

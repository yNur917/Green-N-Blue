.class public Landroidx/transition/ChangeTransform;
.super Landroidx/transition/Transition;
.source "ChangeTransform.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/transition/ChangeTransform$PathAnimatorMatrix;,
        Landroidx/transition/ChangeTransform$GhostListener;,
        Landroidx/transition/ChangeTransform$Transforms;
    }
.end annotation


# static fields
.field private static final NON_TRANSLATIONS_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroidx/transition/ChangeTransform$PathAnimatorMatrix;",
            "[F>;"
        }
    .end annotation
.end field

.field private static final PROPNAME_INTERMEDIATE_MATRIX:Ljava/lang/String; = "android:changeTransform:intermediateMatrix"

.field private static final PROPNAME_INTERMEDIATE_PARENT_MATRIX:Ljava/lang/String; = "android:changeTransform:intermediateParentMatrix"

.field private static final PROPNAME_MATRIX:Ljava/lang/String; = "android:changeTransform:matrix"

.field private static final PROPNAME_PARENT:Ljava/lang/String; = "android:changeTransform:parent"

.field private static final PROPNAME_PARENT_MATRIX:Ljava/lang/String; = "android:changeTransform:parentMatrix"

.field private static final PROPNAME_TRANSFORMS:Ljava/lang/String; = "android:changeTransform:transforms"

.field private static final SUPPORTS_VIEW_REMOVAL_SUPPRESSION:Z

.field private static final TRANSLATIONS_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroidx/transition/ChangeTransform$PathAnimatorMatrix;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final sTransitionProperties:[Ljava/lang/String;


# instance fields
.field private mReparent:Z

.field private mTempMatrix:Landroid/graphics/Matrix;

.field mUseOverlay:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-string v0, "android:changeTransform:matrix"

    const-string v1, "android:changeTransform:transforms"

    const-string v2, "android:changeTransform:parentMatrix"

    .line 60
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/transition/ChangeTransform;->sTransitionProperties:[Ljava/lang/String;

    .line 69
    new-instance v0, Landroidx/transition/ChangeTransform$1;

    const-class v1, [F

    const-string v2, "nonTranslations"

    invoke-direct {v0, v1, v2}, Landroidx/transition/ChangeTransform$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroidx/transition/ChangeTransform;->NON_TRANSLATIONS_PROPERTY:Landroid/util/Property;

    .line 85
    new-instance v0, Landroidx/transition/ChangeTransform$2;

    const-class v1, Landroid/graphics/PointF;

    const-string v2, "translations"

    invoke-direct {v0, v1, v2}, Landroidx/transition/ChangeTransform$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroidx/transition/ChangeTransform;->TRANSLATIONS_PROPERTY:Landroid/util/Property;

    .line 101
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2a

    const/4 v0, 0x1

    goto :goto_2b

    :cond_2a
    const/4 v0, 0x0

    :goto_2b
    sput-boolean v0, Landroidx/transition/ChangeTransform;->SUPPORTS_VIEW_REMOVAL_SUPPRESSION:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 108
    invoke-direct {p0}, Landroidx/transition/Transition;-><init>()V

    const/4 v0, 0x1

    .line 103
    iput-boolean v0, p0, Landroidx/transition/ChangeTransform;->mUseOverlay:Z

    .line 105
    iput-boolean v0, p0, Landroidx/transition/ChangeTransform;->mReparent:Z

    .line 106
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroidx/transition/ChangeTransform;->mTempMatrix:Landroid/graphics/Matrix;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    .line 114
    invoke-direct {p0, p1, p2}, Landroidx/transition/Transition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    .line 103
    iput-boolean v0, p0, Landroidx/transition/ChangeTransform;->mUseOverlay:Z

    .line 105
    iput-boolean v0, p0, Landroidx/transition/ChangeTransform;->mReparent:Z

    .line 106
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Landroidx/transition/ChangeTransform;->mTempMatrix:Landroid/graphics/Matrix;

    .line 115
    sget-object v1, Landroidx/transition/Styleable;->CHANGE_TRANSFORM:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 116
    check-cast p2, Lorg/xmlpull/v1/XmlPullParser;

    const-string v1, "reparentWithOverlay"

    invoke-static {p1, p2, v1, v0, v0}, Landroidx/core/content/res/TypedArrayUtils;->getNamedBoolean(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroidx/transition/ChangeTransform;->mUseOverlay:Z

    const-string v1, "reparent"

    const/4 v2, 0x0

    .line 118
    invoke-static {p1, p2, v1, v2, v0}, Landroidx/core/content/res/TypedArrayUtils;->getNamedBoolean(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/transition/ChangeTransform;->mReparent:Z

    .line 120
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private captureValues(Landroidx/transition/TransitionValues;)V
    .registers 6

    .line 197
    iget-object v0, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    .line 198
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_b

    return-void

    .line 201
    :cond_b
    iget-object v1, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    const-string v3, "android:changeTransform:parent"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    new-instance v1, Landroidx/transition/ChangeTransform$Transforms;

    invoke-direct {v1, v0}, Landroidx/transition/ChangeTransform$Transforms;-><init>(Landroid/view/View;)V

    .line 203
    iget-object v2, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:changeTransform:transforms"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    invoke-virtual {v0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    if-eqz v1, :cond_35

    .line 205
    invoke-virtual {v1}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v2

    if-eqz v2, :cond_2f

    goto :goto_35

    .line 208
    :cond_2f
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    goto :goto_36

    :cond_35
    :goto_35
    const/4 v2, 0x0

    .line 210
    :goto_36
    iget-object v1, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:changeTransform:matrix"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    iget-boolean v1, p0, Landroidx/transition/ChangeTransform;->mReparent:Z

    if-eqz v1, :cond_7f

    .line 212
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 213
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 214
    invoke-static {v2, v1}, Landroidx/transition/ViewUtils;->transformMatrixToGlobal(Landroid/view/View;Landroid/graphics/Matrix;)V

    .line 215
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 216
    iget-object v2, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:changeTransform:parentMatrix"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    iget-object v1, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    sget v2, Landroidx/transition/R$id;->transition_transform:I

    .line 218
    invoke-virtual {v0, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "android:changeTransform:intermediateMatrix"

    .line 217
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    iget-object p1, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    sget v1, Landroidx/transition/R$id;->parent_matrix:I

    .line 220
    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "android:changeTransform:intermediateParentMatrix"

    .line 219
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7f
    return-void
.end method

.method private createGhostView(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)V
    .registers 7

    .line 388
    iget-object v0, p3, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    .line 390
    iget-object v1, p3, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:changeTransform:parentMatrix"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Matrix;

    .line 391
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 392
    invoke-static {p1, v2}, Landroidx/transition/ViewUtils;->transformMatrixToLocal(Landroid/view/View;Landroid/graphics/Matrix;)V

    .line 394
    invoke-static {v0, p1, v2}, Landroidx/transition/GhostViewUtils;->addGhost(Landroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/Matrix;)Landroidx/transition/GhostView;

    move-result-object p1

    if-nez p1, :cond_1b

    return-void

    .line 399
    :cond_1b
    iget-object v1, p2, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:changeTransform:parent"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p2, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-interface {p1, v1, v2}, Landroidx/transition/GhostView;->reserveEndViewTransition(Landroid/view/ViewGroup;Landroid/view/View;)V

    move-object v1, p0

    .line 403
    :goto_2b
    iget-object v2, v1, Landroidx/transition/Transition;->mParent:Landroidx/transition/TransitionSet;

    if-eqz v2, :cond_32

    .line 404
    iget-object v1, v1, Landroidx/transition/Transition;->mParent:Landroidx/transition/TransitionSet;

    goto :goto_2b

    .line 407
    :cond_32
    new-instance v2, Landroidx/transition/ChangeTransform$GhostListener;

    invoke-direct {v2, v0, p1}, Landroidx/transition/ChangeTransform$GhostListener;-><init>(Landroid/view/View;Landroidx/transition/GhostView;)V

    .line 408
    invoke-virtual {v1, v2}, Landroidx/transition/Transition;->addListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    .line 412
    sget-boolean p1, Landroidx/transition/ChangeTransform;->SUPPORTS_VIEW_REMOVAL_SUPPRESSION:Z

    if-eqz p1, :cond_4f

    .line 413
    iget-object p1, p2, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    iget-object p3, p3, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    if-eq p1, p3, :cond_4a

    .line 414
    iget-object p1, p2, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Landroidx/transition/ViewUtils;->setTransitionAlpha(Landroid/view/View;F)V

    :cond_4a
    const/high16 p1, 0x3f800000    # 1.0f

    .line 416
    invoke-static {v0, p1}, Landroidx/transition/ViewUtils;->setTransitionAlpha(Landroid/view/View;F)V

    :cond_4f
    return-void
.end method

.method private createTransformAnimator(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;Z)Landroid/animation/ObjectAnimator;
    .registers 16

    .line 286
    iget-object p1, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v0, "android:changeTransform:matrix"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Matrix;

    .line 287
    iget-object v1, p2, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Matrix;

    if-nez p1, :cond_16

    .line 290
    sget-object p1, Landroidx/transition/MatrixUtils;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    :cond_16
    if-nez v0, :cond_1a

    .line 294
    sget-object v0, Landroidx/transition/MatrixUtils;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    :cond_1a
    move-object v4, v0

    .line 297
    invoke-virtual {p1, v4}, Landroid/graphics/Matrix;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    const/4 p1, 0x0

    return-object p1

    .line 301
    :cond_23
    iget-object v0, p2, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "android:changeTransform:transforms"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroidx/transition/ChangeTransform$Transforms;

    .line 304
    iget-object v5, p2, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    .line 305
    invoke-static {v5}, Landroidx/transition/ChangeTransform;->setIdentityTransforms(Landroid/view/View;)V

    const/16 p2, 0x9

    new-array v0, p2, [F

    .line 308
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    new-array p1, p2, [F

    .line 310
    invoke-virtual {v4, p1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 311
    new-instance v7, Landroidx/transition/ChangeTransform$PathAnimatorMatrix;

    invoke-direct {v7, v5, v0}, Landroidx/transition/ChangeTransform$PathAnimatorMatrix;-><init>(Landroid/view/View;[F)V

    .line 314
    sget-object v1, Landroidx/transition/ChangeTransform;->NON_TRANSLATIONS_PROPERTY:Landroid/util/Property;

    new-instance v2, Landroidx/transition/FloatArrayEvaluator;

    new-array p2, p2, [F

    invoke-direct {v2, p2}, Landroidx/transition/FloatArrayEvaluator;-><init>([F)V

    const/4 p2, 0x2

    new-array v3, p2, [[F

    const/4 v8, 0x0

    aput-object v0, v3, v8

    const/4 v9, 0x1

    aput-object p1, v3, v9

    invoke-static {v1, v2, v3}, Landroid/animation/PropertyValuesHolder;->ofObject(Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 317
    invoke-virtual {p0}, Landroidx/transition/ChangeTransform;->getPathMotion()Landroidx/transition/PathMotion;

    move-result-object v2

    aget v3, v0, p2

    const/4 v10, 0x5

    aget v0, v0, v10

    aget v11, p1, p2

    aget p1, p1, v10

    invoke-virtual {v2, v3, v0, v11, p1}, Landroidx/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object p1

    .line 320
    sget-object v0, Landroidx/transition/ChangeTransform;->TRANSLATIONS_PROPERTY:Landroid/util/Property;

    invoke-static {v0, p1}, Landroidx/transition/PropertyValuesHolderUtils;->ofPointF(Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    new-array p2, p2, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, p2, v8

    aput-object p1, p2, v9

    .line 322
    invoke-static {v7, p2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 327
    new-instance p2, Landroidx/transition/ChangeTransform$3;

    move-object v1, p2

    move-object v2, p0

    move v3, p3

    invoke-direct/range {v1 .. v7}, Landroidx/transition/ChangeTransform$3;-><init>(Landroidx/transition/ChangeTransform;ZLandroid/graphics/Matrix;Landroid/view/View;Landroidx/transition/ChangeTransform$Transforms;Landroidx/transition/ChangeTransform$PathAnimatorMatrix;)V

    .line 368
    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 369
    invoke-static {p1, p2}, Landroidx/transition/AnimatorUtils;->addPauseListener(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V

    return-object p1
.end method

.method private parentsMatch(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)Z
    .registers 6

    .line 375
    invoke-virtual {p0, p1}, Landroidx/transition/ChangeTransform;->isValidTarget(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1a

    invoke-virtual {p0, p2}, Landroidx/transition/ChangeTransform;->isValidTarget(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_1a

    .line 378
    :cond_f
    invoke-virtual {p0, p1, v1}, Landroidx/transition/ChangeTransform;->getMatchedTransitionValues(Landroid/view/View;Z)Landroidx/transition/TransitionValues;

    move-result-object p1

    if-eqz p1, :cond_1f

    .line 380
    iget-object p1, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    if-ne p2, p1, :cond_1d

    goto :goto_1e

    :cond_1a
    :goto_1a
    if-ne p1, p2, :cond_1d

    goto :goto_1e

    :cond_1d
    const/4 v1, 0x0

    :goto_1e
    move v2, v1

    :cond_1f
    return v2
.end method

.method static setIdentityTransforms(Landroid/view/View;)V
    .registers 10

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    .line 441
    invoke-static/range {v0 .. v8}, Landroidx/transition/ChangeTransform;->setTransforms(Landroid/view/View;FFFFFFFF)V

    return-void
.end method

.method private setMatricesForParent(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)V
    .registers 7

    .line 421
    iget-object v0, p2, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "android:changeTransform:parentMatrix"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Matrix;

    .line 422
    iget-object p2, p2, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    sget v2, Landroidx/transition/R$id;->parent_matrix:I

    invoke-virtual {p2, v2, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 424
    iget-object p2, p0, Landroidx/transition/ChangeTransform;->mTempMatrix:Landroid/graphics/Matrix;

    .line 425
    invoke-virtual {p2}, Landroid/graphics/Matrix;->reset()V

    .line 426
    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 428
    iget-object v0, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:changeTransform:matrix"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Matrix;

    if-nez v0, :cond_2f

    .line 430
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 431
    iget-object v3, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    :cond_2f
    iget-object p1, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Matrix;

    .line 435
    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 436
    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    return-void
.end method

.method static setTransforms(Landroid/view/View;FFFFFFFF)V
    .registers 9

    .line 448
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 449
    invoke-virtual {p0, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 450
    invoke-static {p0, p3}, Landroidx/core/view/ViewCompat;->setTranslationZ(Landroid/view/View;F)V

    .line 451
    invoke-virtual {p0, p4}, Landroid/view/View;->setScaleX(F)V

    .line 452
    invoke-virtual {p0, p5}, Landroid/view/View;->setScaleY(F)V

    .line 453
    invoke-virtual {p0, p6}, Landroid/view/View;->setRotationX(F)V

    .line 454
    invoke-virtual {p0, p7}, Landroid/view/View;->setRotationY(F)V

    .line 455
    invoke-virtual {p0, p8}, Landroid/view/View;->setRotation(F)V

    return-void
.end method


# virtual methods
.method public captureEndValues(Landroidx/transition/TransitionValues;)V
    .registers 2

    .line 238
    invoke-direct {p0, p1}, Landroidx/transition/ChangeTransform;->captureValues(Landroidx/transition/TransitionValues;)V

    return-void
.end method

.method public captureStartValues(Landroidx/transition/TransitionValues;)V
    .registers 3

    .line 226
    invoke-direct {p0, p1}, Landroidx/transition/ChangeTransform;->captureValues(Landroidx/transition/TransitionValues;)V

    .line 227
    sget-boolean v0, Landroidx/transition/ChangeTransform;->SUPPORTS_VIEW_REMOVAL_SUPPRESSION:Z

    if-nez v0, :cond_14

    .line 231
    iget-object v0, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object p1, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    :cond_14
    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .registers 9

    if-eqz p2, :cond_79

    if-eqz p3, :cond_79

    .line 244
    iget-object v0, p2, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "android:changeTransform:parent"

    .line 245
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_79

    iget-object v0, p3, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    .line 246
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    goto :goto_79

    .line 250
    :cond_17
    iget-object v0, p2, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 251
    iget-object v2, p3, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 252
    iget-boolean v2, p0, Landroidx/transition/ChangeTransform;->mReparent:Z

    if-eqz v2, :cond_33

    invoke-direct {p0, v0, v1}, Landroidx/transition/ChangeTransform;->parentsMatch(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)Z

    move-result v1

    if-nez v1, :cond_33

    const/4 v1, 0x1

    goto :goto_34

    :cond_33
    const/4 v1, 0x0

    .line 254
    :goto_34
    iget-object v2, p2, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:changeTransform:intermediateMatrix"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Matrix;

    if-eqz v2, :cond_47

    .line 256
    iget-object v3, p2, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v4, "android:changeTransform:matrix"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    :cond_47
    iget-object v2, p2, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:changeTransform:intermediateParentMatrix"

    .line 260
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Matrix;

    if-eqz v2, :cond_5a

    .line 262
    iget-object v3, p2, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v4, "android:changeTransform:parentMatrix"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5a
    if-eqz v1, :cond_5f

    .line 267
    invoke-direct {p0, p2, p3}, Landroidx/transition/ChangeTransform;->setMatricesForParent(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)V

    .line 271
    :cond_5f
    invoke-direct {p0, p2, p3, v1}, Landroidx/transition/ChangeTransform;->createTransformAnimator(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;Z)Landroid/animation/ObjectAnimator;

    move-result-object v2

    if-eqz v1, :cond_6f

    if-eqz v2, :cond_6f

    .line 274
    iget-boolean v1, p0, Landroidx/transition/ChangeTransform;->mUseOverlay:Z

    if-eqz v1, :cond_6f

    .line 275
    invoke-direct {p0, p1, p2, p3}, Landroidx/transition/ChangeTransform;->createGhostView(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)V

    goto :goto_78

    .line 276
    :cond_6f
    sget-boolean p1, Landroidx/transition/ChangeTransform;->SUPPORTS_VIEW_REMOVAL_SUPPRESSION:Z

    if-nez p1, :cond_78

    .line 278
    iget-object p1, p2, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    :cond_78
    :goto_78
    return-object v2

    :cond_79
    :goto_79
    const/4 p1, 0x0

    return-object p1
.end method

.method public getReparent()Z
    .registers 2

    .line 175
    iget-boolean v0, p0, Landroidx/transition/ChangeTransform;->mReparent:Z

    return v0
.end method

.method public getReparentWithOverlay()Z
    .registers 2

    .line 141
    iget-boolean v0, p0, Landroidx/transition/ChangeTransform;->mUseOverlay:Z

    return v0
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .registers 2

    .line 193
    sget-object v0, Landroidx/transition/ChangeTransform;->sTransitionProperties:[Ljava/lang/String;

    return-object v0
.end method

.method public setReparent(Z)V
    .registers 2

    .line 188
    iput-boolean p1, p0, Landroidx/transition/ChangeTransform;->mReparent:Z

    return-void
.end method

.method public setReparentWithOverlay(Z)V
    .registers 2

    .line 163
    iput-boolean p1, p0, Landroidx/transition/ChangeTransform;->mUseOverlay:Z

    return-void
.end method

.class public Landroidx/constraintlayout/motion/widget/KeyTrigger;
.super Landroidx/constraintlayout/motion/widget/Key;
.source "KeyTrigger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/motion/widget/KeyTrigger$Loader;
    }
.end annotation


# static fields
.field public static final CROSS:Ljava/lang/String; = "CROSS"

.field public static final KEY_TYPE:I = 0x5

.field static final NAME:Ljava/lang/String; = "KeyTrigger"

.field public static final NEGATIVE_CROSS:Ljava/lang/String; = "negativeCross"

.field public static final POSITIVE_CROSS:Ljava/lang/String; = "positiveCross"

.field public static final POST_LAYOUT:Ljava/lang/String; = "postLayout"

.field private static final TAG:Ljava/lang/String; = "KeyTrigger"

.field public static final TRIGGER_COLLISION_ID:Ljava/lang/String; = "triggerCollisionId"

.field public static final TRIGGER_COLLISION_VIEW:Ljava/lang/String; = "triggerCollisionView"

.field public static final TRIGGER_ID:Ljava/lang/String; = "triggerID"

.field public static final TRIGGER_RECEIVER:Ljava/lang/String; = "triggerReceiver"

.field public static final TRIGGER_SLACK:Ljava/lang/String; = "triggerSlack"

.field public static final VIEW_TRANSITION_ON_CROSS:Ljava/lang/String; = "viewTransitionOnCross"

.field public static final VIEW_TRANSITION_ON_NEGATIVE_CROSS:Ljava/lang/String; = "viewTransitionOnNegativeCross"

.field public static final VIEW_TRANSITION_ON_POSITIVE_CROSS:Ljava/lang/String; = "viewTransitionOnPositiveCross"


# instance fields
.field mCollisionRect:Landroid/graphics/RectF;

.field private mCross:Ljava/lang/String;

.field private mCurveFit:I

.field private mFireCrossReset:Z

.field private mFireLastPos:F

.field private mFireNegativeReset:Z

.field private mFirePositiveReset:Z

.field private mFireThreshold:F

.field mMethodHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private mNegativeCross:Ljava/lang/String;

.field private mPositiveCross:Ljava/lang/String;

.field private mPostLayout:Z

.field mTargetRect:Landroid/graphics/RectF;

.field private mTriggerCollisionId:I

.field private mTriggerCollisionView:Landroid/view/View;

.field private mTriggerID:I

.field private mTriggerReceiver:I

.field mTriggerSlack:F

.field mViewTransitionOnCross:I

.field mViewTransitionOnNegativeCross:I

.field mViewTransitionOnPositiveCross:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 46
    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/Key;-><init>()V

    const/4 v0, -0x1

    .line 62
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mCurveFit:I

    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mCross:Ljava/lang/String;

    .line 64
    sget v1, Landroidx/constraintlayout/motion/widget/KeyTrigger;->UNSET:I

    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerReceiver:I

    .line 65
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mNegativeCross:Ljava/lang/String;

    .line 66
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mPositiveCross:Ljava/lang/String;

    .line 67
    sget v1, Landroidx/constraintlayout/motion/widget/KeyTrigger;->UNSET:I

    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerID:I

    .line 68
    sget v1, Landroidx/constraintlayout/motion/widget/KeyTrigger;->UNSET:I

    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerCollisionId:I

    .line 69
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerCollisionView:Landroid/view/View;

    const v0, 0x3dcccccd    # 0.1f

    .line 70
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerSlack:F

    const/4 v0, 0x1

    .line 71
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireCrossReset:Z

    .line 72
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireNegativeReset:Z

    .line 73
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFirePositiveReset:Z

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 74
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireThreshold:F

    const/4 v0, 0x0

    .line 76
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mPostLayout:Z

    .line 77
    sget v0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->UNSET:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mViewTransitionOnNegativeCross:I

    .line 78
    sget v0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->UNSET:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mViewTransitionOnPositiveCross:I

    .line 79
    sget v0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->UNSET:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mViewTransitionOnCross:I

    .line 81
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mCollisionRect:Landroid/graphics/RectF;

    .line 82
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTargetRect:Landroid/graphics/RectF;

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mMethodHashMap:Ljava/util/HashMap;

    const/4 v0, 0x5

    .line 87
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mType:I

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mCustomConstraints:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$002(Landroidx/constraintlayout/motion/widget/KeyTrigger;F)F
    .registers 2

    .line 46
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireThreshold:F

    return p1
.end method

.method static synthetic access$102(Landroidx/constraintlayout/motion/widget/KeyTrigger;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 46
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mNegativeCross:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Landroidx/constraintlayout/motion/widget/KeyTrigger;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 46
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mPositiveCross:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Landroidx/constraintlayout/motion/widget/KeyTrigger;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 46
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mCross:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Landroidx/constraintlayout/motion/widget/KeyTrigger;)I
    .registers 1

    .line 46
    iget p0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerID:I

    return p0
.end method

.method static synthetic access$402(Landroidx/constraintlayout/motion/widget/KeyTrigger;I)I
    .registers 2

    .line 46
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerID:I

    return p1
.end method

.method static synthetic access$500(Landroidx/constraintlayout/motion/widget/KeyTrigger;)I
    .registers 1

    .line 46
    iget p0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerCollisionId:I

    return p0
.end method

.method static synthetic access$502(Landroidx/constraintlayout/motion/widget/KeyTrigger;I)I
    .registers 2

    .line 46
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerCollisionId:I

    return p1
.end method

.method static synthetic access$600(Landroidx/constraintlayout/motion/widget/KeyTrigger;)Z
    .registers 1

    .line 46
    iget-boolean p0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mPostLayout:Z

    return p0
.end method

.method static synthetic access$602(Landroidx/constraintlayout/motion/widget/KeyTrigger;Z)Z
    .registers 2

    .line 46
    iput-boolean p1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mPostLayout:Z

    return p1
.end method

.method static synthetic access$700(Landroidx/constraintlayout/motion/widget/KeyTrigger;)I
    .registers 1

    .line 46
    iget p0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerReceiver:I

    return p0
.end method

.method static synthetic access$702(Landroidx/constraintlayout/motion/widget/KeyTrigger;I)I
    .registers 2

    .line 46
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerReceiver:I

    return p1
.end method

.method private fire(Ljava/lang/String;Landroid/view/View;)V
    .registers 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "str",
            "call"
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    :cond_3
    const-string v0, "."

    .line 286
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 287
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/motion/widget/KeyTrigger;->fireCustom(Ljava/lang/String;Landroid/view/View;)V

    return-void

    .line 291
    :cond_f
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mMethodHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_23

    .line 292
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mMethodHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    if-nez v0, :cond_24

    return-void

    :cond_23
    move-object v0, v1

    :cond_24
    const-string v2, " "

    const-string v3, "\"on class "

    const-string v4, "KeyTrigger"

    const/4 v5, 0x0

    if-nez v0, :cond_6f

    .line 299
    :try_start_2d
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-array v6, v5, [Ljava/lang/Class;

    invoke-virtual {v0, p1, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 300
    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mMethodHashMap:Ljava/util/HashMap;

    invoke-virtual {v6, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2d .. :try_end_3c} :catch_3d

    goto :goto_6f

    .line 302
    :catch_3d
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mMethodHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not find method \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/view/View;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 303
    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6f
    :goto_6f
    :try_start_6f
    new-array p1, v5, [Ljava/lang/Object;

    .line 309
    invoke-virtual {v0, p2, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_74} :catch_75

    goto :goto_a3

    .line 311
    :catch_75
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Exception in call \""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mCross:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/view/View;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 311
    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_a3
    return-void
.end method

.method private fireCustom(Ljava/lang/String;Landroid/view/View;)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "str",
            "view"
        }
    .end annotation

    .line 317
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    if-nez v0, :cond_16

    .line 319
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 321
    :cond_16
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mCustomConstraints:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_20
    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_48

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 322
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    if-nez v0, :cond_3a

    .line 323
    invoke-virtual {v3, p1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 324
    :cond_3a
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mCustomConstraints:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintAttribute;

    if-eqz v2, :cond_20

    .line 326
    invoke-virtual {v2, p2}, Landroidx/constraintlayout/widget/ConstraintAttribute;->applyCustom(Landroid/view/View;)V

    goto :goto_20

    :cond_48
    return-void
.end method

.method private setUpRect(Landroid/graphics/RectF;Landroid/view/View;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "rect",
            "child",
            "postLayout"
        }
    .end annotation

    .line 158
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p1, Landroid/graphics/RectF;->top:F

    .line 159
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v0

    int-to-float v0, v0

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    .line 160
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    iput v0, p1, Landroid/graphics/RectF;->left:F

    .line 161
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p1, Landroid/graphics/RectF;->right:F

    if-eqz p3, :cond_25

    .line 163
    invoke-virtual {p2}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    :cond_25
    return-void
.end method


# virtual methods
.method public addValues(Ljava/util/HashMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "splines"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/motion/utils/ViewSpline;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public clone()Landroidx/constraintlayout/motion/widget/Key;
    .registers 2

    .line 454
    new-instance v0, Landroidx/constraintlayout/motion/widget/KeyTrigger;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/KeyTrigger;-><init>()V

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/motion/widget/KeyTrigger;->copy(Landroidx/constraintlayout/motion/widget/Key;)Landroidx/constraintlayout/motion/widget/Key;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 46
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/KeyTrigger;->clone()Landroidx/constraintlayout/motion/widget/Key;

    move-result-object v0

    return-object v0
.end method

.method public conditionallyFire(FLandroid/view/View;)V
    .registers 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pos",
            "child"
        }
    .end annotation

    .line 172
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerCollisionId:I

    sget v1, Landroidx/constraintlayout/motion/widget/KeyTrigger;->UNSET:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_62

    .line 173
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerCollisionView:Landroid/view/View;

    if-nez v0, :cond_1a

    .line 174
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerCollisionId:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerCollisionView:Landroid/view/View;

    .line 177
    :cond_1a
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mCollisionRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerCollisionView:Landroid/view/View;

    iget-boolean v4, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mPostLayout:Z

    invoke-direct {p0, v0, v1, v4}, Landroidx/constraintlayout/motion/widget/KeyTrigger;->setUpRect(Landroid/graphics/RectF;Landroid/view/View;Z)V

    .line 178
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTargetRect:Landroid/graphics/RectF;

    iget-boolean v1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mPostLayout:Z

    invoke-direct {p0, v0, p2, v1}, Landroidx/constraintlayout/motion/widget/KeyTrigger;->setUpRect(Landroid/graphics/RectF;Landroid/view/View;Z)V

    .line 179
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mCollisionRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 182
    iget-boolean v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireCrossReset:Z

    if-eqz v0, :cond_3c

    .line 184
    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireCrossReset:Z

    const/4 v0, 0x1

    goto :goto_3d

    :cond_3c
    const/4 v0, 0x0

    .line 186
    :goto_3d
    iget-boolean v1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFirePositiveReset:Z

    if-eqz v1, :cond_45

    .line 188
    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFirePositiveReset:Z

    const/4 v1, 0x1

    goto :goto_46

    :cond_45
    const/4 v1, 0x0

    .line 190
    :goto_46
    iput-boolean v3, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireNegativeReset:Z

    move v4, v1

    const/4 v1, 0x0

    goto/16 :goto_e3

    .line 192
    :cond_4c
    iget-boolean v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireCrossReset:Z

    if-nez v0, :cond_54

    .line 194
    iput-boolean v3, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireCrossReset:Z

    const/4 v0, 0x1

    goto :goto_55

    :cond_54
    const/4 v0, 0x0

    .line 196
    :goto_55
    iget-boolean v1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireNegativeReset:Z

    if-eqz v1, :cond_5d

    .line 198
    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireNegativeReset:Z

    const/4 v1, 0x1

    goto :goto_5e

    :cond_5d
    const/4 v1, 0x0

    .line 200
    :goto_5e
    iput-boolean v3, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFirePositiveReset:Z

    goto/16 :goto_e2

    .line 206
    :cond_62
    iget-boolean v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireCrossReset:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_78

    .line 208
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireThreshold:F

    sub-float v4, p1, v0

    .line 209
    iget v5, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireLastPos:F

    sub-float/2addr v5, v0

    mul-float v4, v4, v5

    cmpg-float v0, v4, v1

    if-gez v0, :cond_88

    .line 213
    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireCrossReset:Z

    const/4 v0, 0x1

    goto :goto_89

    .line 216
    :cond_78
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireThreshold:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerSlack:F

    cmpl-float v0, v0, v4

    if-lez v0, :cond_88

    .line 217
    iput-boolean v3, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireCrossReset:Z

    :cond_88
    const/4 v0, 0x0

    .line 222
    :goto_89
    iget-boolean v4, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireNegativeReset:Z

    if-eqz v4, :cond_a2

    .line 223
    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireThreshold:F

    sub-float v5, p1, v4

    .line 224
    iget v6, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireLastPos:F

    sub-float/2addr v6, v4

    mul-float v6, v6, v5

    cmpg-float v4, v6, v1

    if-gez v4, :cond_b2

    cmpg-float v4, v5, v1

    if-gez v4, :cond_b2

    .line 227
    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireNegativeReset:Z

    const/4 v4, 0x1

    goto :goto_b3

    .line 230
    :cond_a2
    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireThreshold:F

    sub-float v4, p1, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerSlack:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_b2

    .line 231
    iput-boolean v3, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireNegativeReset:Z

    :cond_b2
    const/4 v4, 0x0

    .line 235
    :goto_b3
    iget-boolean v5, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFirePositiveReset:Z

    if-eqz v5, :cond_d1

    .line 236
    iget v5, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireThreshold:F

    sub-float v6, p1, v5

    .line 237
    iget v7, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireLastPos:F

    sub-float/2addr v7, v5

    mul-float v7, v7, v6

    cmpg-float v5, v7, v1

    if-gez v5, :cond_cc

    cmpl-float v1, v6, v1

    if-lez v1, :cond_cc

    .line 240
    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFirePositiveReset:Z

    const/4 v1, 0x1

    goto :goto_cd

    :cond_cc
    const/4 v1, 0x0

    :goto_cd
    move v8, v4

    move v4, v1

    move v1, v8

    goto :goto_e3

    .line 243
    :cond_d1
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireThreshold:F

    sub-float v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v5, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerSlack:F

    cmpl-float v1, v1, v5

    if-lez v1, :cond_e1

    .line 244
    iput-boolean v3, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFirePositiveReset:Z

    :cond_e1
    move v1, v4

    :goto_e2
    const/4 v4, 0x0

    .line 248
    :goto_e3
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireLastPos:F

    if-nez v1, :cond_eb

    if-nez v0, :cond_eb

    if-eqz v4, :cond_f6

    .line 251
    :cond_eb
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v6, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerID:I

    invoke-virtual {v5, v6, v4, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->fireTrigger(IZF)V

    .line 253
    :cond_f6
    iget p1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerReceiver:I

    sget v5, Landroidx/constraintlayout/motion/widget/KeyTrigger;->UNSET:I

    if-ne p1, v5, :cond_fe

    move-object p1, p2

    goto :goto_10a

    :cond_fe
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v5, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerReceiver:I

    invoke-virtual {p1, v5}, Landroidx/constraintlayout/motion/widget/MotionLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    :goto_10a
    if-eqz v1, :cond_128

    .line 256
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mNegativeCross:Ljava/lang/String;

    if-eqz v1, :cond_113

    .line 257
    invoke-direct {p0, v1, p1}, Landroidx/constraintlayout/motion/widget/KeyTrigger;->fire(Ljava/lang/String;Landroid/view/View;)V

    .line 259
    :cond_113
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mViewTransitionOnNegativeCross:I

    sget v5, Landroidx/constraintlayout/motion/widget/KeyTrigger;->UNSET:I

    if-eq v1, v5, :cond_128

    .line 260
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v5, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mViewTransitionOnNegativeCross:I

    new-array v6, v3, [Landroid/view/View;

    aput-object p1, v6, v2

    invoke-virtual {v1, v5, v6}, Landroidx/constraintlayout/motion/widget/MotionLayout;->viewTransition(I[Landroid/view/View;)V

    :cond_128
    if-eqz v4, :cond_146

    .line 264
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mPositiveCross:Ljava/lang/String;

    if-eqz v1, :cond_131

    .line 265
    invoke-direct {p0, v1, p1}, Landroidx/constraintlayout/motion/widget/KeyTrigger;->fire(Ljava/lang/String;Landroid/view/View;)V

    .line 267
    :cond_131
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mViewTransitionOnPositiveCross:I

    sget v4, Landroidx/constraintlayout/motion/widget/KeyTrigger;->UNSET:I

    if-eq v1, v4, :cond_146

    .line 268
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mViewTransitionOnPositiveCross:I

    new-array v5, v3, [Landroid/view/View;

    aput-object p1, v5, v2

    invoke-virtual {v1, v4, v5}, Landroidx/constraintlayout/motion/widget/MotionLayout;->viewTransition(I[Landroid/view/View;)V

    :cond_146
    if-eqz v0, :cond_164

    .line 272
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mCross:Ljava/lang/String;

    if-eqz v0, :cond_14f

    .line 273
    invoke-direct {p0, v0, p1}, Landroidx/constraintlayout/motion/widget/KeyTrigger;->fire(Ljava/lang/String;Landroid/view/View;)V

    .line 275
    :cond_14f
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mViewTransitionOnCross:I

    sget v1, Landroidx/constraintlayout/motion/widget/KeyTrigger;->UNSET:I

    if-eq v0, v1, :cond_164

    .line 276
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mViewTransitionOnCross:I

    new-array v1, v3, [Landroid/view/View;

    aput-object p1, v1, v2

    invoke-virtual {p2, v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->viewTransition(I[Landroid/view/View;)V

    :cond_164
    return-void
.end method

.method public copy(Landroidx/constraintlayout/motion/widget/Key;)Landroidx/constraintlayout/motion/widget/Key;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "src"
        }
    .end annotation

    .line 430
    invoke-super {p0, p1}, Landroidx/constraintlayout/motion/widget/Key;->copy(Landroidx/constraintlayout/motion/widget/Key;)Landroidx/constraintlayout/motion/widget/Key;

    .line 431
    check-cast p1, Landroidx/constraintlayout/motion/widget/KeyTrigger;

    .line 432
    iget v0, p1, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mCurveFit:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mCurveFit:I

    .line 433
    iget-object v0, p1, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mCross:Ljava/lang/String;

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mCross:Ljava/lang/String;

    .line 434
    iget v0, p1, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerReceiver:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerReceiver:I

    .line 435
    iget-object v0, p1, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mNegativeCross:Ljava/lang/String;

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mNegativeCross:Ljava/lang/String;

    .line 436
    iget-object v0, p1, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mPositiveCross:Ljava/lang/String;

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mPositiveCross:Ljava/lang/String;

    .line 437
    iget v0, p1, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerID:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerID:I

    .line 438
    iget v0, p1, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerCollisionId:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerCollisionId:I

    .line 439
    iget-object v0, p1, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerCollisionView:Landroid/view/View;

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerCollisionView:Landroid/view/View;

    .line 440
    iget v0, p1, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerSlack:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerSlack:F

    .line 441
    iget-boolean v0, p1, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireCrossReset:Z

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireCrossReset:Z

    .line 442
    iget-boolean v0, p1, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireNegativeReset:Z

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireNegativeReset:Z

    .line 443
    iget-boolean v0, p1, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFirePositiveReset:Z

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFirePositiveReset:Z

    .line 444
    iget v0, p1, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireThreshold:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireThreshold:F

    .line 445
    iget v0, p1, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireLastPos:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireLastPos:F

    .line 446
    iget-boolean v0, p1, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mPostLayout:Z

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mPostLayout:Z

    .line 447
    iget-object v0, p1, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mCollisionRect:Landroid/graphics/RectF;

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mCollisionRect:Landroid/graphics/RectF;

    .line 448
    iget-object v0, p1, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTargetRect:Landroid/graphics/RectF;

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTargetRect:Landroid/graphics/RectF;

    .line 449
    iget-object p1, p1, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mMethodHashMap:Ljava/util/HashMap;

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mMethodHashMap:Ljava/util/HashMap;

    return-object p0
.end method

.method public getAttributeNames(Ljava/util/HashSet;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "attributes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method getCurveFit()I
    .registers 2

    .line 103
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mCurveFit:I

    return v0
.end method

.method public load(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    .line 93
    sget-object v0, Landroidx/constraintlayout/widget/R$styleable;->KeyTrigger:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 94
    invoke-static {p0, p2, p1}, Landroidx/constraintlayout/motion/widget/KeyTrigger$Loader;->read(Landroidx/constraintlayout/motion/widget/KeyTrigger;Landroid/content/res/TypedArray;Landroid/content/Context;)V

    return-void
.end method

.method public setValue(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tag",
            "value"
        }
    .end annotation

    .line 116
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_f2

    goto/16 :goto_9c

    :sswitch_d
    const-string v0, "triggerReceiver"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_17

    goto/16 :goto_9c

    :cond_17
    const/16 v1, 0xb

    goto/16 :goto_9c

    :sswitch_1b
    const-string v0, "postLayout"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_25

    goto/16 :goto_9c

    :cond_25
    const/16 v1, 0xa

    goto/16 :goto_9c

    :sswitch_29
    const-string v0, "viewTransitionOnCross"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_33

    goto/16 :goto_9c

    :cond_33
    const/16 v1, 0x9

    goto/16 :goto_9c

    :sswitch_37
    const-string v0, "triggerSlack"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_41

    goto/16 :goto_9c

    :cond_41
    const/16 v1, 0x8

    goto/16 :goto_9c

    :sswitch_45
    const-string v0, "CROSS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4e

    goto :goto_9c

    :cond_4e
    const/4 v1, 0x7

    goto :goto_9c

    :sswitch_50
    const-string v0, "viewTransitionOnNegativeCross"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_59

    goto :goto_9c

    :cond_59
    const/4 v1, 0x6

    goto :goto_9c

    :sswitch_5b
    const-string v0, "triggerCollisionView"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_64

    goto :goto_9c

    :cond_64
    const/4 v1, 0x5

    goto :goto_9c

    :sswitch_66
    const-string v0, "negativeCross"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6f

    goto :goto_9c

    :cond_6f
    const/4 v1, 0x4

    goto :goto_9c

    :sswitch_71
    const-string v0, "triggerID"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7a

    goto :goto_9c

    :cond_7a
    const/4 v1, 0x3

    goto :goto_9c

    :sswitch_7c
    const-string v0, "triggerCollisionId"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_85

    goto :goto_9c

    :cond_85
    const/4 v1, 0x2

    goto :goto_9c

    :sswitch_87
    const-string v0, "viewTransitionOnPositiveCross"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_90

    goto :goto_9c

    :cond_90
    const/4 v1, 0x1

    goto :goto_9c

    :sswitch_92
    const-string v0, "positiveCross"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9b

    goto :goto_9c

    :cond_9b
    const/4 v1, 0x0

    :goto_9c
    packed-switch v1, :pswitch_data_124

    goto :goto_f1

    .line 121
    :pswitch_a0
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyTrigger;->toInt(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerReceiver:I

    goto :goto_f1

    .line 142
    :pswitch_a7
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyTrigger;->toBoolean(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mPostLayout:Z

    goto :goto_f1

    .line 151
    :pswitch_ae
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyTrigger;->toInt(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mViewTransitionOnCross:I

    goto :goto_f1

    .line 139
    :pswitch_b5
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyTrigger;->toFloat(Ljava/lang/Object;)F

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerSlack:F

    goto :goto_f1

    .line 118
    :pswitch_bc
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mCross:Ljava/lang/String;

    goto :goto_f1

    .line 145
    :pswitch_c3
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyTrigger;->toInt(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mViewTransitionOnNegativeCross:I

    goto :goto_f1

    .line 136
    :pswitch_ca
    check-cast p2, Landroid/view/View;

    iput-object p2, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerCollisionView:Landroid/view/View;

    goto :goto_f1

    .line 124
    :pswitch_cf
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mNegativeCross:Ljava/lang/String;

    goto :goto_f1

    .line 130
    :pswitch_d6
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyTrigger;->toInt(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerID:I

    goto :goto_f1

    .line 133
    :pswitch_dd
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyTrigger;->toInt(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerCollisionId:I

    goto :goto_f1

    .line 148
    :pswitch_e4
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyTrigger;->toInt(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mViewTransitionOnPositiveCross:I

    goto :goto_f1

    .line 127
    :pswitch_eb
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mPositiveCross:Ljava/lang/String;

    :goto_f1
    return-void

    :sswitch_data_f2
    .sparse-switch
        -0x5f0e9e39 -> :sswitch_92
        -0x399a6b12 -> :sswitch_87
        -0x2ee3a4eb -> :sswitch_7c
        -0x26ab2f2d -> :sswitch_71
        -0x26090af5 -> :sswitch_66
        -0x4880de1 -> :sswitch_5b
        -0x94d7ce -> :sswitch_50
        0x3d6a020 -> :sswitch_45
        0x15b9acb8 -> :sswitch_37
        0x4d99e267 -> :sswitch_29
        0x538787ea -> :sswitch_1b
        0x5b846bc7 -> :sswitch_d
    .end sparse-switch

    :pswitch_data_124
    .packed-switch 0x0
        :pswitch_eb
        :pswitch_e4
        :pswitch_dd
        :pswitch_d6
        :pswitch_cf
        :pswitch_ca
        :pswitch_c3
        :pswitch_bc
        :pswitch_b5
        :pswitch_ae
        :pswitch_a7
        :pswitch_a0
    .end packed-switch
.end method

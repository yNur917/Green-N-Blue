.class Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;
.super Ljava/lang/Object;
.source "ConstraintLayoutStates.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/widget/ConstraintLayoutStates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Variant"
.end annotation


# instance fields
.field mConstraintID:I

.field mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

.field mId:I

.field mMaxHeight:F

.field mMaxWidth:F

.field mMinHeight:F

.field mMinWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "parser"
        }
    .end annotation

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 186
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mMinWidth:F

    .line 187
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mMinHeight:F

    .line 188
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mMaxWidth:F

    .line 189
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mMaxHeight:F

    const/4 v0, -0x1

    .line 190
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mConstraintID:I

    .line 194
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object p2

    .line 195
    sget-object v0, Landroidx/constraintlayout/widget/R$styleable;->Variant:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 196
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_1f
    if-ge v1, v0, :cond_97

    .line 202
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 203
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->Variant_constraints:I

    if-ne v2, v3, :cond_59

    .line 204
    iget v3, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mConstraintID:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mConstraintID:I

    .line 205
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mConstraintID:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v2

    .line 206
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mConstraintID:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    const-string v3, "layout"

    .line 208
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_94

    .line 209
    new-instance v2, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v2}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    iput-object v2, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 213
    iget v3, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mConstraintID:I

    invoke-virtual {v2, p1, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroid/content/Context;I)V

    goto :goto_94

    .line 223
    :cond_59
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->Variant_region_heightLessThan:I

    if-ne v2, v3, :cond_66

    .line 224
    iget v3, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mMaxHeight:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mMaxHeight:F

    goto :goto_94

    .line 225
    :cond_66
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->Variant_region_heightMoreThan:I

    if-ne v2, v3, :cond_73

    .line 226
    iget v3, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mMinHeight:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mMinHeight:F

    goto :goto_94

    .line 227
    :cond_73
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->Variant_region_widthLessThan:I

    if-ne v2, v3, :cond_80

    .line 228
    iget v3, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mMaxWidth:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mMaxWidth:F

    goto :goto_94

    .line 229
    :cond_80
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->Variant_region_widthMoreThan:I

    if-ne v2, v3, :cond_8d

    .line 230
    iget v3, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mMinWidth:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mMinWidth:F

    goto :goto_94

    :cond_8d
    const-string v2, "ConstraintLayoutStates"

    const-string v3, "Unknown tag"

    .line 232
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_94
    :goto_94
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    .line 235
    :cond_97
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method match(FF)Z
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "widthDp",
            "heightDp"
        }
    .end annotation

    .line 258
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mMinWidth:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_10

    .line 259
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mMinWidth:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_10

    return v1

    .line 261
    :cond_10
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mMinHeight:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 262
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mMinHeight:F

    cmpg-float v0, p2, v0

    if-gez v0, :cond_1f

    return v1

    .line 264
    :cond_1f
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mMaxWidth:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 265
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mMaxWidth:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_2e

    return v1

    .line 267
    :cond_2e
    iget p1, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mMaxHeight:F

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-nez p1, :cond_3d

    .line 268
    iget p1, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mMaxHeight:F

    cmpl-float p1, p2, p1

    if-lez p1, :cond_3d

    return v1

    :cond_3d
    const/4 p1, 0x1

    return p1
.end method

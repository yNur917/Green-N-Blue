.class Landroidx/appcompat/widget/AppCompatCheckedTextViewHelper;
.super Ljava/lang/Object;
.source "AppCompatCheckedTextViewHelper.java"


# instance fields
.field private mCheckMarkTintList:Landroid/content/res/ColorStateList;

.field private mCheckMarkTintMode:Landroid/graphics/PorterDuff$Mode;

.field private mHasCheckMarkTint:Z

.field private mHasCheckMarkTintMode:Z

.field private mSkipNextApply:Z

.field private final mView:Landroid/widget/CheckedTextView;


# direct methods
.method constructor <init>(Landroid/widget/CheckedTextView;)V
    .registers 3

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatCheckedTextViewHelper;->mCheckMarkTintList:Landroid/content/res/ColorStateList;

    .line 44
    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatCheckedTextViewHelper;->mCheckMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Landroidx/appcompat/widget/AppCompatCheckedTextViewHelper;->mHasCheckMarkTint:Z

    .line 46
    iput-boolean v0, p0, Landroidx/appcompat/widget/AppCompatCheckedTextViewHelper;->mHasCheckMarkTintMode:Z

    .line 51
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatCheckedTextViewHelper;->mView:Landroid/widget/CheckedTextView;

    return-void
.end method


# virtual methods
.method applyCheckMarkTint()V
    .registers 3

    .line 133
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatCheckedTextViewHelper;->mView:Landroid/widget/CheckedTextView;

    invoke-static {v0}, Landroidx/core/widget/CheckedTextViewCompat;->getCheckMarkDrawable(Landroid/widget/CheckedTextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3e

    .line 135
    iget-boolean v1, p0, Landroidx/appcompat/widget/AppCompatCheckedTextViewHelper;->mHasCheckMarkTint:Z

    if-nez v1, :cond_10

    iget-boolean v1, p0, Landroidx/appcompat/widget/AppCompatCheckedTextViewHelper;->mHasCheckMarkTintMode:Z

    if-eqz v1, :cond_3e

    .line 136
    :cond_10
    invoke-static {v0}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 137
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 138
    iget-boolean v1, p0, Landroidx/appcompat/widget/AppCompatCheckedTextViewHelper;->mHasCheckMarkTint:Z

    if-eqz v1, :cond_21

    .line 139
    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatCheckedTextViewHelper;->mCheckMarkTintList:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 141
    :cond_21
    iget-boolean v1, p0, Landroidx/appcompat/widget/AppCompatCheckedTextViewHelper;->mHasCheckMarkTintMode:Z

    if-eqz v1, :cond_2a

    .line 142
    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatCheckedTextViewHelper;->mCheckMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 146
    :cond_2a
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 147
    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatCheckedTextViewHelper;->mView:Landroid/widget/CheckedTextView;

    invoke-virtual {v1}, Landroid/widget/CheckedTextView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 149
    :cond_39
    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatCheckedTextViewHelper;->mView:Landroid/widget/CheckedTextView;

    invoke-virtual {v1, v0}, Landroid/widget/CheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3e
    return-void
.end method

.method getSupportCheckMarkTintList()Landroid/content/res/ColorStateList;
    .registers 2

    .line 108
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatCheckedTextViewHelper;->mCheckMarkTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method getSupportCheckMarkTintMode()Landroid/graphics/PorterDuff$Mode;
    .registers 2

    .line 119
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatCheckedTextViewHelper;->mCheckMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method loadFromAttributes(Landroid/util/AttributeSet;I)V
    .registers 13

    .line 55
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatCheckedTextViewHelper;->mView:Landroid/widget/CheckedTextView;

    .line 56
    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroidx/appcompat/R$styleable;->CheckedTextView:[I

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, p2, v2}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object v0

    .line 58
    iget-object v3, p0, Landroidx/appcompat/widget/AppCompatCheckedTextViewHelper;->mView:Landroid/widget/CheckedTextView;

    invoke-virtual {v3}, Landroid/widget/CheckedTextView;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Landroidx/appcompat/R$styleable;->CheckedTextView:[I

    .line 59
    invoke-virtual {v0}, Landroidx/appcompat/widget/TintTypedArray;->getWrappedTypeArray()Landroid/content/res/TypedArray;

    move-result-object v7

    const/4 v9, 0x0

    move-object v6, p1

    move v8, p2

    .line 58
    invoke-static/range {v3 .. v9}, Landroidx/core/view/ViewCompat;->saveAttributeDataForStyleable(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 62
    :try_start_1f
    sget p1, Landroidx/appcompat/R$styleable;->CheckedTextView_checkMarkCompat:I

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result p1

    if-eqz p1, :cond_3f

    .line 63
    sget p1, Landroidx/appcompat/R$styleable;->CheckedTextView_checkMarkCompat:I

    invoke-virtual {v0, p1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result p1
    :try_end_2d
    .catchall {:try_start_1f .. :try_end_2d} :catchall_8f

    if-eqz p1, :cond_3f

    .line 67
    :try_start_2f
    iget-object p2, p0, Landroidx/appcompat/widget/AppCompatCheckedTextViewHelper;->mView:Landroid/widget/CheckedTextView;

    .line 68
    invoke-virtual {p2}, Landroid/widget/CheckedTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 67
    invoke-virtual {p2, p1}, Landroid/widget/CheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_3c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2f .. :try_end_3c} :catch_3e
    .catchall {:try_start_2f .. :try_end_3c} :catchall_8f

    const/4 p1, 0x1

    goto :goto_40

    :catch_3e
    nop

    :cond_3f
    const/4 p1, 0x0

    :goto_40
    if-nez p1, :cond_5f

    .line 76
    :try_start_42
    sget p1, Landroidx/appcompat/R$styleable;->CheckedTextView_android_checkMark:I

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result p1

    if-eqz p1, :cond_5f

    .line 78
    sget p1, Landroidx/appcompat/R$styleable;->CheckedTextView_android_checkMark:I

    invoke-virtual {v0, p1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result p1

    if-eqz p1, :cond_5f

    .line 81
    iget-object p2, p0, Landroidx/appcompat/widget/AppCompatCheckedTextViewHelper;->mView:Landroid/widget/CheckedTextView;

    .line 82
    invoke-virtual {p2}, Landroid/widget/CheckedTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 81
    invoke-virtual {p2, p1}, Landroid/widget/CheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 85
    :cond_5f
    sget p1, Landroidx/appcompat/R$styleable;->CheckedTextView_checkMarkTint:I

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result p1

    if-eqz p1, :cond_72

    .line 86
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatCheckedTextViewHelper;->mView:Landroid/widget/CheckedTextView;

    sget p2, Landroidx/appcompat/R$styleable;->CheckedTextView_checkMarkTint:I

    .line 87
    invoke-virtual {v0, p2}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    .line 86
    invoke-static {p1, p2}, Landroidx/core/widget/CheckedTextViewCompat;->setCheckMarkTintList(Landroid/widget/CheckedTextView;Landroid/content/res/ColorStateList;)V

    .line 89
    :cond_72
    sget p1, Landroidx/appcompat/R$styleable;->CheckedTextView_checkMarkTintMode:I

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result p1

    if-eqz p1, :cond_8b

    .line 90
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatCheckedTextViewHelper;->mView:Landroid/widget/CheckedTextView;

    sget p2, Landroidx/appcompat/R$styleable;->CheckedTextView_checkMarkTintMode:I

    const/4 v1, -0x1

    .line 92
    invoke-virtual {v0, p2, v1}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result p2

    const/4 v1, 0x0

    .line 91
    invoke-static {p2, v1}, Landroidx/appcompat/widget/DrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p2

    .line 90
    invoke-static {p1, p2}, Landroidx/core/widget/CheckedTextViewCompat;->setCheckMarkTintMode(Landroid/widget/CheckedTextView;Landroid/graphics/PorterDuff$Mode;)V
    :try_end_8b
    .catchall {:try_start_42 .. :try_end_8b} :catchall_8f

    .line 96
    :cond_8b
    invoke-virtual {v0}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    return-void

    :catchall_8f
    move-exception p1

    invoke-virtual {v0}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 97
    throw p1
.end method

.method onSetCheckMarkDrawable()V
    .registers 2

    .line 123
    iget-boolean v0, p0, Landroidx/appcompat/widget/AppCompatCheckedTextViewHelper;->mSkipNextApply:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    .line 124
    iput-boolean v0, p0, Landroidx/appcompat/widget/AppCompatCheckedTextViewHelper;->mSkipNextApply:Z

    return-void

    :cond_8
    const/4 v0, 0x1

    .line 128
    iput-boolean v0, p0, Landroidx/appcompat/widget/AppCompatCheckedTextViewHelper;->mSkipNextApply:Z

    .line 129
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatCheckedTextViewHelper;->applyCheckMarkTint()V

    return-void
.end method

.method setSupportCheckMarkTintList(Landroid/content/res/ColorStateList;)V
    .registers 2

    .line 101
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatCheckedTextViewHelper;->mCheckMarkTintList:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    .line 102
    iput-boolean p1, p0, Landroidx/appcompat/widget/AppCompatCheckedTextViewHelper;->mHasCheckMarkTint:Z

    .line 104
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatCheckedTextViewHelper;->applyCheckMarkTint()V

    return-void
.end method

.method setSupportCheckMarkTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 2

    .line 112
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatCheckedTextViewHelper;->mCheckMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    const/4 p1, 0x1

    .line 113
    iput-boolean p1, p0, Landroidx/appcompat/widget/AppCompatCheckedTextViewHelper;->mHasCheckMarkTintMode:Z

    .line 115
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatCheckedTextViewHelper;->applyCheckMarkTint()V

    return-void
.end method

.class public Landroidx/constraintlayout/core/state/helpers/AlignVerticallyReference;
.super Landroidx/constraintlayout/core/state/HelperReference;
.source "AlignVerticallyReference.java"


# instance fields
.field private mBias:F


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/core/state/State;)V
    .registers 3

    .line 28
    sget-object v0, Landroidx/constraintlayout/core/state/State$Helper;->ALIGN_VERTICALLY:Landroidx/constraintlayout/core/state/State$Helper;

    invoke-direct {p0, p1, v0}, Landroidx/constraintlayout/core/state/HelperReference;-><init>(Landroidx/constraintlayout/core/state/State;Landroidx/constraintlayout/core/state/State$Helper;)V

    const/high16 p1, 0x3f000000    # 0.5f

    .line 25
    iput p1, p0, Landroidx/constraintlayout/core/state/helpers/AlignVerticallyReference;->mBias:F

    return-void
.end method


# virtual methods
.method public apply()V
    .registers 5

    .line 32
    iget-object v0, p0, Landroidx/constraintlayout/core/state/helpers/AlignVerticallyReference;->mReferences:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_57

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 33
    iget-object v2, p0, Landroidx/constraintlayout/core/state/helpers/AlignVerticallyReference;->mState:Landroidx/constraintlayout/core/state/State;

    invoke-virtual {v2, v1}, Landroidx/constraintlayout/core/state/State;->constraints(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    move-result-object v1

    .line 34
    invoke-virtual {v1}, Landroidx/constraintlayout/core/state/ConstraintReference;->clearVertical()Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 35
    iget-object v2, p0, Landroidx/constraintlayout/core/state/helpers/AlignVerticallyReference;->mTopToTop:Ljava/lang/Object;

    if-eqz v2, :cond_23

    .line 36
    iget-object v2, p0, Landroidx/constraintlayout/core/state/helpers/AlignVerticallyReference;->mTopToTop:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/state/ConstraintReference;->topToTop(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    goto :goto_32

    .line 37
    :cond_23
    iget-object v2, p0, Landroidx/constraintlayout/core/state/helpers/AlignVerticallyReference;->mTopToBottom:Ljava/lang/Object;

    if-eqz v2, :cond_2d

    .line 38
    iget-object v2, p0, Landroidx/constraintlayout/core/state/helpers/AlignVerticallyReference;->mTopToBottom:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/state/ConstraintReference;->topToBottom(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    goto :goto_32

    .line 40
    :cond_2d
    sget-object v2, Landroidx/constraintlayout/core/state/State;->PARENT:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/state/ConstraintReference;->topToTop(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 42
    :goto_32
    iget-object v2, p0, Landroidx/constraintlayout/core/state/helpers/AlignVerticallyReference;->mBottomToTop:Ljava/lang/Object;

    if-eqz v2, :cond_3c

    .line 43
    iget-object v2, p0, Landroidx/constraintlayout/core/state/helpers/AlignVerticallyReference;->mBottomToTop:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/state/ConstraintReference;->bottomToTop(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    goto :goto_4b

    .line 44
    :cond_3c
    iget-object v2, p0, Landroidx/constraintlayout/core/state/helpers/AlignVerticallyReference;->mBottomToBottom:Ljava/lang/Object;

    if-eqz v2, :cond_46

    .line 45
    iget-object v2, p0, Landroidx/constraintlayout/core/state/helpers/AlignVerticallyReference;->mBottomToBottom:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/state/ConstraintReference;->bottomToBottom(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    goto :goto_4b

    .line 47
    :cond_46
    sget-object v2, Landroidx/constraintlayout/core/state/State;->PARENT:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/state/ConstraintReference;->bottomToBottom(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 49
    :goto_4b
    iget v2, p0, Landroidx/constraintlayout/core/state/helpers/AlignVerticallyReference;->mBias:F

    const/high16 v3, 0x3f000000    # 0.5f

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_6

    .line 50
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/state/ConstraintReference;->verticalBias(F)Landroidx/constraintlayout/core/state/ConstraintReference;

    goto :goto_6

    :cond_57
    return-void
.end method

.class public Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference;
.super Landroidx/constraintlayout/core/state/helpers/ChainReference;
.source "HorizontalChainReference.java"


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/core/state/State;)V
    .registers 3

    .line 26
    sget-object v0, Landroidx/constraintlayout/core/state/State$Helper;->HORIZONTAL_CHAIN:Landroidx/constraintlayout/core/state/State$Helper;

    invoke-direct {p0, p1, v0}, Landroidx/constraintlayout/core/state/helpers/ChainReference;-><init>(Landroidx/constraintlayout/core/state/State;Landroidx/constraintlayout/core/state/State$Helper;)V

    return-void
.end method


# virtual methods
.method public apply()V
    .registers 6

    .line 32
    iget-object v0, p0, Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference;->mReferences:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 33
    iget-object v2, p0, Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference;->mState:Landroidx/constraintlayout/core/state/State;

    invoke-virtual {v2, v1}, Landroidx/constraintlayout/core/state/State;->constraints(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    move-result-object v1

    .line 34
    invoke-virtual {v1}, Landroidx/constraintlayout/core/state/ConstraintReference;->clearHorizontal()Landroidx/constraintlayout/core/state/ConstraintReference;

    goto :goto_6

    .line 37
    :cond_1a
    iget-object v0, p0, Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference;->mReferences:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    :goto_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 38
    iget-object v4, p0, Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference;->mState:Landroidx/constraintlayout/core/state/State;

    invoke-virtual {v4, v3}, Landroidx/constraintlayout/core/state/State;->constraints(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    move-result-object v3

    if-nez v2, :cond_7a

    .line 41
    iget-object v2, p0, Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference;->mStartToStart:Ljava/lang/Object;

    if-eqz v2, :cond_44

    .line 42
    iget-object v2, p0, Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference;->mStartToStart:Ljava/lang/Object;

    invoke-virtual {v3, v2}, Landroidx/constraintlayout/core/state/ConstraintReference;->startToStart(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    move-result-object v2

    iget v4, p0, Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference;->mMarginStart:I

    invoke-virtual {v2, v4}, Landroidx/constraintlayout/core/state/ConstraintReference;->margin(I)Landroidx/constraintlayout/core/state/ConstraintReference;

    goto :goto_79

    .line 43
    :cond_44
    iget-object v2, p0, Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference;->mStartToEnd:Ljava/lang/Object;

    if-eqz v2, :cond_54

    .line 44
    iget-object v2, p0, Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference;->mStartToEnd:Ljava/lang/Object;

    invoke-virtual {v3, v2}, Landroidx/constraintlayout/core/state/ConstraintReference;->startToEnd(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    move-result-object v2

    iget v4, p0, Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference;->mMarginStart:I

    invoke-virtual {v2, v4}, Landroidx/constraintlayout/core/state/ConstraintReference;->margin(I)Landroidx/constraintlayout/core/state/ConstraintReference;

    goto :goto_79

    .line 45
    :cond_54
    iget-object v2, p0, Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference;->mLeftToLeft:Ljava/lang/Object;

    if-eqz v2, :cond_64

    .line 47
    iget-object v2, p0, Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference;->mLeftToLeft:Ljava/lang/Object;

    invoke-virtual {v3, v2}, Landroidx/constraintlayout/core/state/ConstraintReference;->startToStart(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    move-result-object v2

    iget v4, p0, Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference;->mMarginLeft:I

    invoke-virtual {v2, v4}, Landroidx/constraintlayout/core/state/ConstraintReference;->margin(I)Landroidx/constraintlayout/core/state/ConstraintReference;

    goto :goto_79

    .line 48
    :cond_64
    iget-object v2, p0, Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference;->mLeftToRight:Ljava/lang/Object;

    if-eqz v2, :cond_74

    .line 50
    iget-object v2, p0, Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference;->mLeftToRight:Ljava/lang/Object;

    invoke-virtual {v3, v2}, Landroidx/constraintlayout/core/state/ConstraintReference;->startToEnd(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    move-result-object v2

    iget v4, p0, Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference;->mMarginLeft:I

    invoke-virtual {v2, v4}, Landroidx/constraintlayout/core/state/ConstraintReference;->margin(I)Landroidx/constraintlayout/core/state/ConstraintReference;

    goto :goto_79

    .line 52
    :cond_74
    sget-object v2, Landroidx/constraintlayout/core/state/State;->PARENT:Ljava/lang/Integer;

    invoke-virtual {v3, v2}, Landroidx/constraintlayout/core/state/ConstraintReference;->startToStart(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    :goto_79
    move-object v2, v3

    :cond_7a
    if-eqz v1, :cond_8a

    .line 56
    invoke-virtual {v3}, Landroidx/constraintlayout/core/state/ConstraintReference;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroidx/constraintlayout/core/state/ConstraintReference;->endToStart(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 57
    invoke-virtual {v1}, Landroidx/constraintlayout/core/state/ConstraintReference;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroidx/constraintlayout/core/state/ConstraintReference;->startToEnd(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    :cond_8a
    move-object v1, v3

    goto :goto_22

    :cond_8c
    if-eqz v1, :cond_d3

    .line 63
    iget-object v0, p0, Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference;->mEndToStart:Ljava/lang/Object;

    if-eqz v0, :cond_9e

    .line 64
    iget-object v0, p0, Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference;->mEndToStart:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/state/ConstraintReference;->endToStart(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    move-result-object v0

    iget v1, p0, Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference;->mMarginEnd:I

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/state/ConstraintReference;->margin(I)Landroidx/constraintlayout/core/state/ConstraintReference;

    goto :goto_d3

    .line 65
    :cond_9e
    iget-object v0, p0, Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference;->mEndToEnd:Ljava/lang/Object;

    if-eqz v0, :cond_ae

    .line 66
    iget-object v0, p0, Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference;->mEndToEnd:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/state/ConstraintReference;->endToEnd(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    move-result-object v0

    iget v1, p0, Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference;->mMarginEnd:I

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/state/ConstraintReference;->margin(I)Landroidx/constraintlayout/core/state/ConstraintReference;

    goto :goto_d3

    .line 67
    :cond_ae
    iget-object v0, p0, Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference;->mRightToLeft:Ljava/lang/Object;

    if-eqz v0, :cond_be

    .line 69
    iget-object v0, p0, Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference;->mRightToLeft:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/state/ConstraintReference;->endToStart(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    move-result-object v0

    iget v1, p0, Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference;->mMarginRight:I

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/state/ConstraintReference;->margin(I)Landroidx/constraintlayout/core/state/ConstraintReference;

    goto :goto_d3

    .line 70
    :cond_be
    iget-object v0, p0, Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference;->mRightToRight:Ljava/lang/Object;

    if-eqz v0, :cond_ce

    .line 72
    iget-object v0, p0, Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference;->mRightToRight:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/state/ConstraintReference;->endToEnd(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    move-result-object v0

    iget v1, p0, Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference;->mMarginRight:I

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/state/ConstraintReference;->margin(I)Landroidx/constraintlayout/core/state/ConstraintReference;

    goto :goto_d3

    .line 74
    :cond_ce
    sget-object v0, Landroidx/constraintlayout/core/state/State;->PARENT:Ljava/lang/Integer;

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/state/ConstraintReference;->endToEnd(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    :cond_d3
    :goto_d3
    if-nez v2, :cond_d6

    return-void

    .line 82
    :cond_d6
    iget v0, p0, Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference;->mBias:F

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_e3

    .line 83
    iget v0, p0, Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference;->mBias:F

    invoke-virtual {v2, v0}, Landroidx/constraintlayout/core/state/ConstraintReference;->horizontalBias(F)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 86
    :cond_e3
    sget-object v0, Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference$1;->$SwitchMap$androidx$constraintlayout$core$state$State$Chain:[I

    iget-object v1, p0, Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference;->mStyle:Landroidx/constraintlayout/core/state/State$Chain;

    invoke-virtual {v1}, Landroidx/constraintlayout/core/state/State$Chain;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_ff

    const/4 v3, 0x2

    if-eq v0, v3, :cond_fb

    const/4 v1, 0x3

    if-eq v0, v1, :cond_f7

    goto :goto_103

    .line 94
    :cond_f7
    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/state/ConstraintReference;->setHorizontalChainStyle(I)V

    goto :goto_103

    .line 91
    :cond_fb
    invoke-virtual {v2, v1}, Landroidx/constraintlayout/core/state/ConstraintReference;->setHorizontalChainStyle(I)V

    goto :goto_103

    :cond_ff
    const/4 v0, 0x0

    .line 88
    invoke-virtual {v2, v0}, Landroidx/constraintlayout/core/state/ConstraintReference;->setHorizontalChainStyle(I)V

    :goto_103
    return-void
.end method

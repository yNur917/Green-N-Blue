.class public Lcom/google/firebase/database/collection/LLRBBlackValueNode;
.super Lcom/google/firebase/database/collection/LLRBValueNode;
.source "LLRBBlackValueNode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/firebase/database/collection/LLRBValueNode<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private size:I


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/firebase/database/collection/LLRBNode;Lcom/google/firebase/database/collection/LLRBNode;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Lcom/google/firebase/database/collection/LLRBNode<",
            "TK;TV;>;",
            "Lcom/google/firebase/database/collection/LLRBNode<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/firebase/database/collection/LLRBValueNode;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/firebase/database/collection/LLRBNode;Lcom/google/firebase/database/collection/LLRBNode;)V

    const/4 p1, -0x1

    .line 28
    iput p1, p0, Lcom/google/firebase/database/collection/LLRBBlackValueNode;->size:I

    return-void
.end method


# virtual methods
.method protected copy(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/firebase/database/collection/LLRBNode;Lcom/google/firebase/database/collection/LLRBNode;)Lcom/google/firebase/database/collection/LLRBValueNode;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Lcom/google/firebase/database/collection/LLRBNode<",
            "TK;TV;>;",
            "Lcom/google/firebase/database/collection/LLRBNode<",
            "TK;TV;>;)",
            "Lcom/google/firebase/database/collection/LLRBValueNode<",
            "TK;TV;>;"
        }
    .end annotation

    if-nez p1, :cond_6

    .line 63
    invoke-virtual {p0}, Lcom/google/firebase/database/collection/LLRBBlackValueNode;->getKey()Ljava/lang/Object;

    move-result-object p1

    :cond_6
    if-nez p2, :cond_c

    .line 64
    invoke-virtual {p0}, Lcom/google/firebase/database/collection/LLRBBlackValueNode;->getValue()Ljava/lang/Object;

    move-result-object p2

    :cond_c
    if-nez p3, :cond_12

    .line 65
    invoke-virtual {p0}, Lcom/google/firebase/database/collection/LLRBBlackValueNode;->getLeft()Lcom/google/firebase/database/collection/LLRBNode;

    move-result-object p3

    :cond_12
    if-nez p4, :cond_18

    .line 66
    invoke-virtual {p0}, Lcom/google/firebase/database/collection/LLRBBlackValueNode;->getRight()Lcom/google/firebase/database/collection/LLRBNode;

    move-result-object p4

    .line 67
    :cond_18
    new-instance v0, Lcom/google/firebase/database/collection/LLRBBlackValueNode;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/firebase/database/collection/LLRBBlackValueNode;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/firebase/database/collection/LLRBNode;Lcom/google/firebase/database/collection/LLRBNode;)V

    return-object v0
.end method

.method protected getColor()Lcom/google/firebase/database/collection/LLRBNode$Color;
    .registers 2

    .line 36
    sget-object v0, Lcom/google/firebase/database/collection/LLRBNode$Color;->BLACK:Lcom/google/firebase/database/collection/LLRBNode$Color;

    return-object v0
.end method

.method public isRed()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method setLeft(Lcom/google/firebase/database/collection/LLRBNode;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/collection/LLRBNode<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 54
    iget v0, p0, Lcom/google/firebase/database/collection/LLRBBlackValueNode;->size:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    .line 58
    invoke-super {p0, p1}, Lcom/google/firebase/database/collection/LLRBValueNode;->setLeft(Lcom/google/firebase/database/collection/LLRBNode;)V

    return-void

    .line 56
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Can\'t set left after using size"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public size()I
    .registers 3

    .line 46
    iget v0, p0, Lcom/google/firebase/database/collection/LLRBBlackValueNode;->size:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1a

    .line 47
    invoke-virtual {p0}, Lcom/google/firebase/database/collection/LLRBBlackValueNode;->getLeft()Lcom/google/firebase/database/collection/LLRBNode;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/firebase/database/collection/LLRBNode;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Lcom/google/firebase/database/collection/LLRBBlackValueNode;->getRight()Lcom/google/firebase/database/collection/LLRBNode;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/firebase/database/collection/LLRBNode;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/firebase/database/collection/LLRBBlackValueNode;->size:I

    .line 49
    :cond_1a
    iget v0, p0, Lcom/google/firebase/database/collection/LLRBBlackValueNode;->size:I

    return v0
.end method

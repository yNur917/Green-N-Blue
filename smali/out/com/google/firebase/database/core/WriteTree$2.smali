.class Lcom/google/firebase/database/core/WriteTree$2;
.super Ljava/lang/Object;
.source "WriteTree.java"

# interfaces
.implements Lcom/google/firebase/database/core/utilities/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/database/core/WriteTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/firebase/database/core/utilities/Predicate<",
        "Lcom/google/firebase/database/core/UserWriteRecord;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 413
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(Lcom/google/firebase/database/core/UserWriteRecord;)Z
    .registers 2

    .line 416
    invoke-virtual {p1}, Lcom/google/firebase/database/core/UserWriteRecord;->isVisible()Z

    move-result p1

    return p1
.end method

.method public bridge synthetic evaluate(Ljava/lang/Object;)Z
    .registers 2

    .line 413
    check-cast p1, Lcom/google/firebase/database/core/UserWriteRecord;

    invoke-virtual {p0, p1}, Lcom/google/firebase/database/core/WriteTree$2;->evaluate(Lcom/google/firebase/database/core/UserWriteRecord;)Z

    move-result p1

    return p1
.end method

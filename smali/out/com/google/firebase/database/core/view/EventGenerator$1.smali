.class Lcom/google/firebase/database/core/view/EventGenerator$1;
.super Ljava/lang/Object;
.source "EventGenerator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/core/view/EventGenerator;->changeComparator()Ljava/util/Comparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/google/firebase/database/core/view/Change;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/firebase/database/core/view/EventGenerator;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/core/view/EventGenerator;)V
    .registers 2

    .line 103
    iput-object p1, p0, Lcom/google/firebase/database/core/view/EventGenerator$1;->this$0:Lcom/google/firebase/database/core/view/EventGenerator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/google/firebase/database/core/view/Change;Lcom/google/firebase/database/core/view/Change;)I
    .registers 5

    .line 107
    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/Change;->getChildKey()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {p2}, Lcom/google/firebase/database/core/view/Change;->getChildKey()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    invoke-static {v0}, Lcom/google/firebase/database/core/utilities/Utilities;->hardAssert(Z)V

    .line 108
    new-instance v0, Lcom/google/firebase/database/snapshot/NamedNode;

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/Change;->getChildKey()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/Change;->getIndexedNode()Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/database/snapshot/IndexedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/google/firebase/database/snapshot/NamedNode;-><init>(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)V

    .line 109
    new-instance p1, Lcom/google/firebase/database/snapshot/NamedNode;

    invoke-virtual {p2}, Lcom/google/firebase/database/core/view/Change;->getChildKey()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/firebase/database/core/view/Change;->getIndexedNode()Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/firebase/database/snapshot/IndexedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object p2

    invoke-direct {p1, v1, p2}, Lcom/google/firebase/database/snapshot/NamedNode;-><init>(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)V

    .line 110
    iget-object p2, p0, Lcom/google/firebase/database/core/view/EventGenerator$1;->this$0:Lcom/google/firebase/database/core/view/EventGenerator;

    invoke-static {p2}, Lcom/google/firebase/database/core/view/EventGenerator;->access$000(Lcom/google/firebase/database/core/view/EventGenerator;)Lcom/google/firebase/database/snapshot/Index;

    move-result-object p2

    invoke-virtual {p2, v0, p1}, Lcom/google/firebase/database/snapshot/Index;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 103
    check-cast p1, Lcom/google/firebase/database/core/view/Change;

    check-cast p2, Lcom/google/firebase/database/core/view/Change;

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/database/core/view/EventGenerator$1;->compare(Lcom/google/firebase/database/core/view/Change;Lcom/google/firebase/database/core/view/Change;)I

    move-result p1

    return p1
.end method

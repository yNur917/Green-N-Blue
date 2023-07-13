.class Lcom/google/firebase/database/core/view/ViewProcessor$WriteTreeCompleteChildSource;
.super Ljava/lang/Object;
.source "ViewProcessor.java"

# interfaces
.implements Lcom/google/firebase/database/core/view/filter/NodeFilter$CompleteChildSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/database/core/view/ViewProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WriteTreeCompleteChildSource"
.end annotation


# instance fields
.field private final optCompleteServerCache:Lcom/google/firebase/database/snapshot/Node;

.field private final viewCache:Lcom/google/firebase/database/core/view/ViewCache;

.field private final writes:Lcom/google/firebase/database/core/WriteTreeRef;


# direct methods
.method public constructor <init>(Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/snapshot/Node;)V
    .registers 4

    .line 697
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 698
    iput-object p1, p0, Lcom/google/firebase/database/core/view/ViewProcessor$WriteTreeCompleteChildSource;->writes:Lcom/google/firebase/database/core/WriteTreeRef;

    .line 699
    iput-object p2, p0, Lcom/google/firebase/database/core/view/ViewProcessor$WriteTreeCompleteChildSource;->viewCache:Lcom/google/firebase/database/core/view/ViewCache;

    .line 700
    iput-object p3, p0, Lcom/google/firebase/database/core/view/ViewProcessor$WriteTreeCompleteChildSource;->optCompleteServerCache:Lcom/google/firebase/database/snapshot/Node;

    return-void
.end method


# virtual methods
.method public getChildAfterChild(Lcom/google/firebase/database/snapshot/Index;Lcom/google/firebase/database/snapshot/NamedNode;Z)Lcom/google/firebase/database/snapshot/NamedNode;
    .registers 6

    .line 727
    iget-object v0, p0, Lcom/google/firebase/database/core/view/ViewProcessor$WriteTreeCompleteChildSource;->optCompleteServerCache:Lcom/google/firebase/database/snapshot/Node;

    if-eqz v0, :cond_5

    goto :goto_b

    .line 729
    :cond_5
    iget-object v0, p0, Lcom/google/firebase/database/core/view/ViewProcessor$WriteTreeCompleteChildSource;->viewCache:Lcom/google/firebase/database/core/view/ViewCache;

    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/ViewCache;->getCompleteServerSnap()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    .line 730
    :goto_b
    iget-object v1, p0, Lcom/google/firebase/database/core/view/ViewProcessor$WriteTreeCompleteChildSource;->writes:Lcom/google/firebase/database/core/WriteTreeRef;

    invoke-virtual {v1, v0, p2, p3, p1}, Lcom/google/firebase/database/core/WriteTreeRef;->calcNextNodeAfterPost(Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/NamedNode;ZLcom/google/firebase/database/snapshot/Index;)Lcom/google/firebase/database/snapshot/NamedNode;

    move-result-object p1

    return-object p1
.end method

.method public getCompleteChild(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/snapshot/Node;
    .registers 6

    .line 705
    iget-object v0, p0, Lcom/google/firebase/database/core/view/ViewProcessor$WriteTreeCompleteChildSource;->viewCache:Lcom/google/firebase/database/core/view/ViewCache;

    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/ViewCache;->getEventCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v0

    .line 706
    invoke-virtual {v0, p1}, Lcom/google/firebase/database/core/view/CacheNode;->isCompleteForChild(Lcom/google/firebase/database/snapshot/ChildKey;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 707
    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/CacheNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/firebase/database/snapshot/Node;->getImmediateChild(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object p1

    return-object p1

    .line 710
    :cond_15
    iget-object v0, p0, Lcom/google/firebase/database/core/view/ViewProcessor$WriteTreeCompleteChildSource;->optCompleteServerCache:Lcom/google/firebase/database/snapshot/Node;

    if-eqz v0, :cond_29

    .line 712
    new-instance v1, Lcom/google/firebase/database/core/view/CacheNode;

    .line 714
    invoke-static {}, Lcom/google/firebase/database/snapshot/KeyIndex;->getInstance()Lcom/google/firebase/database/snapshot/KeyIndex;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/firebase/database/snapshot/IndexedNode;->from(Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/Index;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lcom/google/firebase/database/core/view/CacheNode;-><init>(Lcom/google/firebase/database/snapshot/IndexedNode;ZZ)V

    goto :goto_2f

    .line 718
    :cond_29
    iget-object v0, p0, Lcom/google/firebase/database/core/view/ViewProcessor$WriteTreeCompleteChildSource;->viewCache:Lcom/google/firebase/database/core/view/ViewCache;

    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/ViewCache;->getServerCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v1

    .line 720
    :goto_2f
    iget-object v0, p0, Lcom/google/firebase/database/core/view/ViewProcessor$WriteTreeCompleteChildSource;->writes:Lcom/google/firebase/database/core/WriteTreeRef;

    invoke-virtual {v0, p1, v1}, Lcom/google/firebase/database/core/WriteTreeRef;->calcCompleteChild(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/core/view/CacheNode;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object p1

    return-object p1
.end method

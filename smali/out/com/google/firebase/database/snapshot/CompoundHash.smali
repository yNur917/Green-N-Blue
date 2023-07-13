.class public Lcom/google/firebase/database/snapshot/CompoundHash;
.super Ljava/lang/Object;
.source "CompoundHash.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;,
        Lcom/google/firebase/database/snapshot/CompoundHash$SimpleSizeSplitStrategy;,
        Lcom/google/firebase/database/snapshot/CompoundHash$SplitStrategy;
    }
.end annotation


# instance fields
.field private final hashes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final posts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/database/core/Path;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/firebase/database/core/Path;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_14

    .line 36
    iput-object p1, p0, Lcom/google/firebase/database/snapshot/CompoundHash;->posts:Ljava/util/List;

    .line 37
    iput-object p2, p0, Lcom/google/firebase/database/snapshot/CompoundHash;->hashes:Ljava/util/List;

    return-void

    .line 33
    :cond_14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Number of posts need to be n-1 for n hashes in CompoundHash"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$500(Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;)V
    .registers 2

    .line 27
    invoke-static {p0, p1}, Lcom/google/firebase/database/snapshot/CompoundHash;->processNode(Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;)V

    return-void
.end method

.method public static fromNode(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/CompoundHash;
    .registers 2

    .line 203
    new-instance v0, Lcom/google/firebase/database/snapshot/CompoundHash$SimpleSizeSplitStrategy;

    invoke-direct {v0, p0}, Lcom/google/firebase/database/snapshot/CompoundHash$SimpleSizeSplitStrategy;-><init>(Lcom/google/firebase/database/snapshot/Node;)V

    invoke-static {p0, v0}, Lcom/google/firebase/database/snapshot/CompoundHash;->fromNode(Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/CompoundHash$SplitStrategy;)Lcom/google/firebase/database/snapshot/CompoundHash;

    move-result-object p0

    return-object p0
.end method

.method public static fromNode(Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/CompoundHash$SplitStrategy;)Lcom/google/firebase/database/snapshot/CompoundHash;
    .registers 3

    .line 207
    invoke-interface {p0}, Lcom/google/firebase/database/snapshot/Node;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 208
    new-instance p0, Lcom/google/firebase/database/snapshot/CompoundHash;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    const-string v0, ""

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/firebase/database/snapshot/CompoundHash;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object p0

    .line 210
    :cond_16
    new-instance v0, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;

    invoke-direct {v0, p1}, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;-><init>(Lcom/google/firebase/database/snapshot/CompoundHash$SplitStrategy;)V

    .line 211
    invoke-static {p0, v0}, Lcom/google/firebase/database/snapshot/CompoundHash;->processNode(Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;)V

    .line 212
    invoke-static {v0}, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->access$000(Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;)V

    .line 213
    new-instance p0, Lcom/google/firebase/database/snapshot/CompoundHash;

    invoke-static {v0}, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->access$100(Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;)Ljava/util/List;

    move-result-object p1

    invoke-static {v0}, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->access$200(Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/firebase/database/snapshot/CompoundHash;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object p0
.end method

.method private static processNode(Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;)V
    .registers 4

    .line 218
    invoke-interface {p0}, Lcom/google/firebase/database/snapshot/Node;->isLeafNode()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 219
    check-cast p0, Lcom/google/firebase/database/snapshot/LeafNode;

    invoke-static {p1, p0}, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->access$300(Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;Lcom/google/firebase/database/snapshot/LeafNode;)V

    goto :goto_21

    .line 220
    :cond_c
    invoke-interface {p0}, Lcom/google/firebase/database/snapshot/Node;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_39

    .line 223
    instance-of v0, p0, Lcom/google/firebase/database/snapshot/ChildrenNode;

    if-eqz v0, :cond_22

    .line 226
    check-cast p0, Lcom/google/firebase/database/snapshot/ChildrenNode;

    .line 227
    new-instance v0, Lcom/google/firebase/database/snapshot/CompoundHash$1;

    invoke-direct {v0, p1}, Lcom/google/firebase/database/snapshot/CompoundHash$1;-><init>(Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;)V

    const/4 p1, 0x1

    .line 236
    invoke-virtual {p0, v0, p1}, Lcom/google/firebase/database/snapshot/ChildrenNode;->forEachChild(Lcom/google/firebase/database/snapshot/ChildrenNode$ChildVisitor;Z)V

    :goto_21
    return-void

    .line 224
    :cond_22
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected children node, but got: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 221
    :cond_39
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Can\'t calculate hash on empty node!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getHashes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/google/firebase/database/snapshot/CompoundHash;->hashes:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPosts()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/database/core/Path;",
            ">;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/google/firebase/database/snapshot/CompoundHash;->posts:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.class public abstract Lcom/google/firebase/database/snapshot/Index;
.super Ljava/lang/Object;
.source "Index.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/google/firebase/database/snapshot/NamedNode;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromQueryDefinition(Ljava/lang/String;)Lcom/google/firebase/database/snapshot/Index;
    .registers 3

    const-string v0, ".value"

    .line 41
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 42
    invoke-static {}, Lcom/google/firebase/database/snapshot/ValueIndex;->getInstance()Lcom/google/firebase/database/snapshot/ValueIndex;

    move-result-object p0

    return-object p0

    :cond_d
    const-string v0, ".key"

    .line 43
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 44
    invoke-static {}, Lcom/google/firebase/database/snapshot/KeyIndex;->getInstance()Lcom/google/firebase/database/snapshot/KeyIndex;

    move-result-object p0

    return-object p0

    :cond_1a
    const-string v0, ".priority"

    .line 45
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 49
    new-instance v0, Lcom/google/firebase/database/snapshot/PathIndex;

    new-instance v1, Lcom/google/firebase/database/core/Path;

    invoke-direct {v1, p0}, Lcom/google/firebase/database/core/Path;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/firebase/database/snapshot/PathIndex;-><init>(Lcom/google/firebase/database/core/Path;)V

    return-object v0

    .line 46
    :cond_2d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "queryDefinition shouldn\'t ever be .priority since it\'s the default"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public compare(Lcom/google/firebase/database/snapshot/NamedNode;Lcom/google/firebase/database/snapshot/NamedNode;Z)I
    .registers 4

    if-eqz p3, :cond_7

    .line 55
    invoke-virtual {p0, p2, p1}, Lcom/google/firebase/database/snapshot/Index;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1

    .line 57
    :cond_7
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/database/snapshot/Index;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public abstract getQueryDefinition()Ljava/lang/String;
.end method

.method public indexedValueChanged(Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/Node;)Z
    .registers 5

    .line 25
    new-instance v0, Lcom/google/firebase/database/snapshot/NamedNode;

    invoke-static {}, Lcom/google/firebase/database/snapshot/ChildKey;->getMinName()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/firebase/database/snapshot/NamedNode;-><init>(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)V

    .line 26
    new-instance p1, Lcom/google/firebase/database/snapshot/NamedNode;

    invoke-static {}, Lcom/google/firebase/database/snapshot/ChildKey;->getMinName()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v1

    invoke-direct {p1, v1, p2}, Lcom/google/firebase/database/snapshot/NamedNode;-><init>(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)V

    .line 27
    invoke-virtual {p0, v0, p1}, Lcom/google/firebase/database/snapshot/Index;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    if-eqz p1, :cond_1a

    const/4 p1, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p1, 0x0

    :goto_1b
    return p1
.end method

.method public abstract isDefinedOn(Lcom/google/firebase/database/snapshot/Node;)Z
.end method

.method public abstract makePost(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/NamedNode;
.end method

.method public abstract maxPost()Lcom/google/firebase/database/snapshot/NamedNode;
.end method

.method public minPost()Lcom/google/firebase/database/snapshot/NamedNode;
    .registers 2

    .line 33
    invoke-static {}, Lcom/google/firebase/database/snapshot/NamedNode;->getMinNode()Lcom/google/firebase/database/snapshot/NamedNode;

    move-result-object v0

    return-object v0
.end method

.class public Lcom/google/firebase/database/snapshot/ValueIndex;
.super Lcom/google/firebase/database/snapshot/Index;
.source "ValueIndex.java"


# static fields
.field private static final INSTANCE:Lcom/google/firebase/database/snapshot/ValueIndex;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 19
    new-instance v0, Lcom/google/firebase/database/snapshot/ValueIndex;

    invoke-direct {v0}, Lcom/google/firebase/database/snapshot/ValueIndex;-><init>()V

    sput-object v0, Lcom/google/firebase/database/snapshot/ValueIndex;->INSTANCE:Lcom/google/firebase/database/snapshot/ValueIndex;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Lcom/google/firebase/database/snapshot/Index;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/google/firebase/database/snapshot/ValueIndex;
    .registers 1

    .line 26
    sget-object v0, Lcom/google/firebase/database/snapshot/ValueIndex;->INSTANCE:Lcom/google/firebase/database/snapshot/ValueIndex;

    return-object v0
.end method


# virtual methods
.method public compare(Lcom/google/firebase/database/snapshot/NamedNode;Lcom/google/firebase/database/snapshot/NamedNode;)I
    .registers 5

    .line 51
    invoke-virtual {p1}, Lcom/google/firebase/database/snapshot/NamedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/firebase/database/snapshot/NamedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/firebase/database/snapshot/Node;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_1b

    .line 53
    invoke-virtual {p1}, Lcom/google/firebase/database/snapshot/NamedNode;->getName()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object p1

    invoke-virtual {p2}, Lcom/google/firebase/database/snapshot/NamedNode;->getName()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/firebase/database/snapshot/ChildKey;->compareTo(Lcom/google/firebase/database/snapshot/ChildKey;)I

    move-result p1

    return p1

    :cond_1b
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 17
    check-cast p1, Lcom/google/firebase/database/snapshot/NamedNode;

    check-cast p2, Lcom/google/firebase/database/snapshot/NamedNode;

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/database/snapshot/ValueIndex;->compare(Lcom/google/firebase/database/snapshot/NamedNode;Lcom/google/firebase/database/snapshot/NamedNode;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 2

    .line 67
    instance-of p1, p1, Lcom/google/firebase/database/snapshot/ValueIndex;

    return p1
.end method

.method public getQueryDefinition()Ljava/lang/String;
    .registers 2

    const-string v0, ".value"

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    const/4 v0, 0x4

    return v0
.end method

.method public isDefinedOn(Lcom/google/firebase/database/snapshot/Node;)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method

.method public makePost(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/NamedNode;
    .registers 4

    .line 36
    new-instance v0, Lcom/google/firebase/database/snapshot/NamedNode;

    invoke-direct {v0, p1, p2}, Lcom/google/firebase/database/snapshot/NamedNode;-><init>(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)V

    return-object v0
.end method

.method public maxPost()Lcom/google/firebase/database/snapshot/NamedNode;
    .registers 4

    .line 41
    new-instance v0, Lcom/google/firebase/database/snapshot/NamedNode;

    invoke-static {}, Lcom/google/firebase/database/snapshot/ChildKey;->getMaxName()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v1

    sget-object v2, Lcom/google/firebase/database/snapshot/Node;->MAX_NODE:Lcom/google/firebase/database/snapshot/ChildrenNode;

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/database/snapshot/NamedNode;-><init>(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "ValueIndex"

    return-object v0
.end method

.class public Lcom/google/firebase/database/snapshot/KeyIndex;
.super Lcom/google/firebase/database/snapshot/Index;
.source "KeyIndex.java"


# static fields
.field private static final INSTANCE:Lcom/google/firebase/database/snapshot/KeyIndex;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 21
    new-instance v0, Lcom/google/firebase/database/snapshot/KeyIndex;

    invoke-direct {v0}, Lcom/google/firebase/database/snapshot/KeyIndex;-><init>()V

    sput-object v0, Lcom/google/firebase/database/snapshot/KeyIndex;->INSTANCE:Lcom/google/firebase/database/snapshot/KeyIndex;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Lcom/google/firebase/database/snapshot/Index;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/google/firebase/database/snapshot/KeyIndex;
    .registers 1

    .line 24
    sget-object v0, Lcom/google/firebase/database/snapshot/KeyIndex;->INSTANCE:Lcom/google/firebase/database/snapshot/KeyIndex;

    return-object v0
.end method


# virtual methods
.method public compare(Lcom/google/firebase/database/snapshot/NamedNode;Lcom/google/firebase/database/snapshot/NamedNode;)I
    .registers 3

    .line 55
    invoke-virtual {p1}, Lcom/google/firebase/database/snapshot/NamedNode;->getName()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object p1

    invoke-virtual {p2}, Lcom/google/firebase/database/snapshot/NamedNode;->getName()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/firebase/database/snapshot/ChildKey;->compareTo(Lcom/google/firebase/database/snapshot/ChildKey;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 19
    check-cast p1, Lcom/google/firebase/database/snapshot/NamedNode;

    check-cast p2, Lcom/google/firebase/database/snapshot/NamedNode;

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/database/snapshot/KeyIndex;->compare(Lcom/google/firebase/database/snapshot/NamedNode;Lcom/google/firebase/database/snapshot/NamedNode;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 2

    .line 60
    instance-of p1, p1, Lcom/google/firebase/database/snapshot/KeyIndex;

    return p1
.end method

.method public getQueryDefinition()Ljava/lang/String;
    .registers 2

    const-string v0, ".key"

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    const/16 v0, 0x25

    return v0
.end method

.method public isDefinedOn(Lcom/google/firebase/database/snapshot/Node;)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method

.method public makePost(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/NamedNode;
    .registers 4

    .line 38
    instance-of p1, p2, Lcom/google/firebase/database/snapshot/StringNode;

    invoke-static {p1}, Lcom/google/firebase/database/core/utilities/Utilities;->hardAssert(Z)V

    .line 40
    new-instance p1, Lcom/google/firebase/database/snapshot/NamedNode;

    invoke-interface {p2}, Lcom/google/firebase/database/snapshot/Node;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/google/firebase/database/snapshot/ChildKey;->fromString(Ljava/lang/String;)Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object p2

    invoke-static {}, Lcom/google/firebase/database/snapshot/EmptyNode;->Empty()Lcom/google/firebase/database/snapshot/EmptyNode;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/google/firebase/database/snapshot/NamedNode;-><init>(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)V

    return-object p1
.end method

.method public maxPost()Lcom/google/firebase/database/snapshot/NamedNode;
    .registers 2

    .line 45
    invoke-static {}, Lcom/google/firebase/database/snapshot/NamedNode;->getMaxNode()Lcom/google/firebase/database/snapshot/NamedNode;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "KeyIndex"

    return-object v0
.end method

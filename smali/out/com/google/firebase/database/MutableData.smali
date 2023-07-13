.class public Lcom/google/firebase/database/MutableData;
.super Ljava/lang/Object;
.source "MutableData.java"


# instance fields
.field private final holder:Lcom/google/firebase/database/core/SnapshotHolder;

.field private final prefixPath:Lcom/google/firebase/database/core/Path;


# direct methods
.method private constructor <init>(Lcom/google/firebase/database/core/SnapshotHolder;Lcom/google/firebase/database/core/Path;)V
    .registers 3

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/google/firebase/database/MutableData;->holder:Lcom/google/firebase/database/core/SnapshotHolder;

    .line 53
    iput-object p2, p0, Lcom/google/firebase/database/MutableData;->prefixPath:Lcom/google/firebase/database/core/Path;

    .line 54
    invoke-virtual {p0}, Lcom/google/firebase/database/MutableData;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/google/firebase/database/core/ValidationPath;->validateWithObject(Lcom/google/firebase/database/core/Path;Ljava/lang/Object;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/database/core/SnapshotHolder;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/MutableData$1;)V
    .registers 4

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/database/MutableData;-><init>(Lcom/google/firebase/database/core/SnapshotHolder;Lcom/google/firebase/database/core/Path;)V

    return-void
.end method

.method constructor <init>(Lcom/google/firebase/database/snapshot/Node;)V
    .registers 4

    .line 48
    new-instance v0, Lcom/google/firebase/database/core/SnapshotHolder;

    invoke-direct {v0, p1}, Lcom/google/firebase/database/core/SnapshotHolder;-><init>(Lcom/google/firebase/database/snapshot/Node;)V

    new-instance p1, Lcom/google/firebase/database/core/Path;

    const-string v1, ""

    invoke-direct {p1, v1}, Lcom/google/firebase/database/core/Path;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p1}, Lcom/google/firebase/database/MutableData;-><init>(Lcom/google/firebase/database/core/SnapshotHolder;Lcom/google/firebase/database/core/Path;)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/firebase/database/MutableData;)Lcom/google/firebase/database/core/SnapshotHolder;
    .registers 1

    .line 41
    iget-object p0, p0, Lcom/google/firebase/database/MutableData;->holder:Lcom/google/firebase/database/core/SnapshotHolder;

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/firebase/database/MutableData;)Lcom/google/firebase/database/core/Path;
    .registers 1

    .line 41
    iget-object p0, p0, Lcom/google/firebase/database/MutableData;->prefixPath:Lcom/google/firebase/database/core/Path;

    return-object p0
.end method


# virtual methods
.method public child(Ljava/lang/String;)Lcom/google/firebase/database/MutableData;
    .registers 6

    .line 84
    invoke-static {p1}, Lcom/google/firebase/database/core/utilities/Validation;->validatePathString(Ljava/lang/String;)V

    .line 85
    new-instance v0, Lcom/google/firebase/database/MutableData;

    iget-object v1, p0, Lcom/google/firebase/database/MutableData;->holder:Lcom/google/firebase/database/core/SnapshotHolder;

    iget-object v2, p0, Lcom/google/firebase/database/MutableData;->prefixPath:Lcom/google/firebase/database/core/Path;

    new-instance v3, Lcom/google/firebase/database/core/Path;

    invoke-direct {v3, p1}, Lcom/google/firebase/database/core/Path;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/google/firebase/database/core/Path;->child(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/Path;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/google/firebase/database/MutableData;-><init>(Lcom/google/firebase/database/core/SnapshotHolder;Lcom/google/firebase/database/core/Path;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    .line 336
    instance-of v0, p1, Lcom/google/firebase/database/MutableData;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/google/firebase/database/MutableData;->holder:Lcom/google/firebase/database/core/SnapshotHolder;

    check-cast p1, Lcom/google/firebase/database/MutableData;

    iget-object v1, p1, Lcom/google/firebase/database/MutableData;->holder:Lcom/google/firebase/database/core/SnapshotHolder;

    .line 337
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/google/firebase/database/MutableData;->prefixPath:Lcom/google/firebase/database/core/Path;

    iget-object p1, p1, Lcom/google/firebase/database/MutableData;->prefixPath:Lcom/google/firebase/database/core/Path;

    .line 338
    invoke-virtual {v0, p1}, Lcom/google/firebase/database/core/Path;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1c

    const/4 p1, 0x1

    goto :goto_1d

    :cond_1c
    const/4 p1, 0x0

    :goto_1d
    return p1
.end method

.method public getChildren()Ljava/lang/Iterable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/google/firebase/database/MutableData;",
            ">;"
        }
    .end annotation

    .line 104
    invoke-virtual {p0}, Lcom/google/firebase/database/MutableData;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    .line 105
    invoke-interface {v0}, Lcom/google/firebase/database/snapshot/Node;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1f

    invoke-interface {v0}, Lcom/google/firebase/database/snapshot/Node;->isLeafNode()Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_1f

    .line 129
    :cond_11
    invoke-static {v0}, Lcom/google/firebase/database/snapshot/IndexedNode;->from(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/snapshot/IndexedNode;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 130
    new-instance v1, Lcom/google/firebase/database/MutableData$2;

    invoke-direct {v1, p0, v0}, Lcom/google/firebase/database/MutableData$2;-><init>(Lcom/google/firebase/database/MutableData;Ljava/util/Iterator;)V

    return-object v1

    .line 106
    :cond_1f
    :goto_1f
    new-instance v0, Lcom/google/firebase/database/MutableData$1;

    invoke-direct {v0, p0}, Lcom/google/firebase/database/MutableData$1;-><init>(Lcom/google/firebase/database/MutableData;)V

    return-object v0
.end method

.method public getChildrenCount()J
    .registers 3

    .line 90
    invoke-virtual {p0}, Lcom/google/firebase/database/MutableData;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/firebase/database/snapshot/Node;->getChildCount()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getKey()Ljava/lang/String;
    .registers 2

    .line 159
    iget-object v0, p0, Lcom/google/firebase/database/MutableData;->prefixPath:Lcom/google/firebase/database/core/Path;

    invoke-virtual {v0}, Lcom/google/firebase/database/core/Path;->getBack()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/firebase/database/MutableData;->prefixPath:Lcom/google/firebase/database/core/Path;

    invoke-virtual {v0}, Lcom/google/firebase/database/core/Path;->getBack()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/snapshot/ChildKey;->asString()Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return-object v0
.end method

.method getNode()Lcom/google/firebase/database/snapshot/Node;
    .registers 3

    .line 58
    iget-object v0, p0, Lcom/google/firebase/database/MutableData;->holder:Lcom/google/firebase/database/core/SnapshotHolder;

    iget-object v1, p0, Lcom/google/firebase/database/MutableData;->prefixPath:Lcom/google/firebase/database/core/Path;

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/core/SnapshotHolder;->getNode(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()Ljava/lang/Object;
    .registers 2

    .line 328
    invoke-virtual {p0}, Lcom/google/firebase/database/MutableData;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/firebase/database/snapshot/Node;->getPriority()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/firebase/database/snapshot/Node;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 2

    .line 183
    invoke-virtual {p0}, Lcom/google/firebase/database/MutableData;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/firebase/database/snapshot/Node;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValue(Lcom/google/firebase/database/GenericTypeIndicator;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/firebase/database/GenericTypeIndicator<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 259
    invoke-virtual {p0}, Lcom/google/firebase/database/MutableData;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/firebase/database/snapshot/Node;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 260
    invoke-static {v0, p1}, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper;->convertToCustomClass(Ljava/lang/Object;Lcom/google/firebase/database/GenericTypeIndicator;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getValue(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 232
    invoke-virtual {p0}, Lcom/google/firebase/database/MutableData;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/firebase/database/snapshot/Node;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 233
    invoke-static {v0, p1}, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper;->convertToCustomClass(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public hasChild(Ljava/lang/String;)Z
    .registers 4

    .line 72
    invoke-virtual {p0}, Lcom/google/firebase/database/MutableData;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/database/core/Path;

    invoke-direct {v1, p1}, Lcom/google/firebase/database/core/Path;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/google/firebase/database/snapshot/Node;->getChild(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/firebase/database/snapshot/Node;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public hasChildren()Z
    .registers 3

    .line 63
    invoke-virtual {p0}, Lcom/google/firebase/database/MutableData;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    .line 64
    invoke-interface {v0}, Lcom/google/firebase/database/snapshot/Node;->isLeafNode()Z

    move-result v1

    if-nez v1, :cond_12

    invoke-interface {v0}, Lcom/google/firebase/database/snapshot/Node;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public setPriority(Ljava/lang/Object;)V
    .registers 6

    .line 309
    iget-object v0, p0, Lcom/google/firebase/database/MutableData;->holder:Lcom/google/firebase/database/core/SnapshotHolder;

    iget-object v1, p0, Lcom/google/firebase/database/MutableData;->prefixPath:Lcom/google/firebase/database/core/Path;

    .line 311
    invoke-virtual {p0}, Lcom/google/firebase/database/MutableData;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v2

    iget-object v3, p0, Lcom/google/firebase/database/MutableData;->prefixPath:Lcom/google/firebase/database/core/Path;

    invoke-static {v3, p1}, Lcom/google/firebase/database/snapshot/PriorityUtilities;->parsePriority(Lcom/google/firebase/database/core/Path;Ljava/lang/Object;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object p1

    invoke-interface {v2, p1}, Lcom/google/firebase/database/snapshot/Node;->updatePriority(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object p1

    .line 309
    invoke-virtual {v0, v1, p1}, Lcom/google/firebase/database/core/SnapshotHolder;->update(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)V

    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/database/DatabaseException;
        }
    .end annotation

    .line 297
    iget-object v0, p0, Lcom/google/firebase/database/MutableData;->prefixPath:Lcom/google/firebase/database/core/Path;

    invoke-static {v0, p1}, Lcom/google/firebase/database/core/ValidationPath;->validateWithObject(Lcom/google/firebase/database/core/Path;Ljava/lang/Object;)V

    .line 298
    invoke-static {p1}, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper;->convertToPlainJavaTypes(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 299
    invoke-static {p1}, Lcom/google/firebase/database/core/utilities/Validation;->validateWritableObject(Ljava/lang/Object;)V

    .line 300
    iget-object v0, p0, Lcom/google/firebase/database/MutableData;->holder:Lcom/google/firebase/database/core/SnapshotHolder;

    iget-object v1, p0, Lcom/google/firebase/database/MutableData;->prefixPath:Lcom/google/firebase/database/core/Path;

    invoke-static {p1}, Lcom/google/firebase/database/snapshot/NodeUtilities;->NodeFromJSON(Ljava/lang/Object;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/google/firebase/database/core/SnapshotHolder;->update(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 343
    iget-object v0, p0, Lcom/google/firebase/database/MutableData;->prefixPath:Lcom/google/firebase/database/core/Path;

    invoke-virtual {v0}, Lcom/google/firebase/database/core/Path;->getFront()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v0

    .line 344
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MutableData { key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_17

    .line 345
    invoke-virtual {v0}, Lcom/google/firebase/database/snapshot/ChildKey;->asString()Ljava/lang/String;

    move-result-object v0

    goto :goto_19

    :cond_17
    const-string v0, "<none>"

    :goto_19
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", value = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/firebase/database/MutableData;->holder:Lcom/google/firebase/database/core/SnapshotHolder;

    .line 347
    invoke-virtual {v0}, Lcom/google/firebase/database/core/SnapshotHolder;->getRootNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/google/firebase/database/snapshot/Node;->getValue(Z)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " }"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

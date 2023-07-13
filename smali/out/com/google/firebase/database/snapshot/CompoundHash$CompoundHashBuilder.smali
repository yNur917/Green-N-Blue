.class Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;
.super Ljava/lang/Object;
.source "CompoundHash.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/database/snapshot/CompoundHash;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CompoundHashBuilder"
.end annotation


# instance fields
.field private final currentHashes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private currentPath:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/google/firebase/database/snapshot/ChildKey;",
            ">;"
        }
    .end annotation
.end field

.field private currentPathDepth:I

.field private final currentPaths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/database/core/Path;",
            ">;"
        }
    .end annotation
.end field

.field private lastLeafDepth:I

.field private needsComma:Z

.field private optHashValueBuilder:Ljava/lang/StringBuilder;

.field private final splitStrategy:Lcom/google/firebase/database/snapshot/CompoundHash$SplitStrategy;


# direct methods
.method public constructor <init>(Lcom/google/firebase/database/snapshot/CompoundHash$SplitStrategy;)V
    .registers 3

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 80
    iput-object v0, p0, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->optHashValueBuilder:Ljava/lang/StringBuilder;

    .line 87
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->currentPath:Ljava/util/Stack;

    const/4 v0, -0x1

    .line 90
    iput v0, p0, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->lastLeafDepth:I

    const/4 v0, 0x1

    .line 93
    iput-boolean v0, p0, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->needsComma:Z

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->currentPaths:Ljava/util/List;

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->currentHashes:Ljava/util/List;

    .line 100
    iput-object p1, p0, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->splitStrategy:Lcom/google/firebase/database/snapshot/CompoundHash$SplitStrategy;

    return-void
.end method

.method static synthetic access$000(Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;)V
    .registers 1

    .line 77
    invoke-direct {p0}, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->finishHashing()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;)Ljava/util/List;
    .registers 1

    .line 77
    iget-object p0, p0, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->currentPaths:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;)Ljava/util/List;
    .registers 1

    .line 77
    iget-object p0, p0, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->currentHashes:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;Lcom/google/firebase/database/snapshot/LeafNode;)V
    .registers 2

    .line 77
    invoke-direct {p0, p1}, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->processLeaf(Lcom/google/firebase/database/snapshot/LeafNode;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;Lcom/google/firebase/database/snapshot/ChildKey;)V
    .registers 2

    .line 77
    invoke-direct {p0, p1}, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->startChild(Lcom/google/firebase/database/snapshot/ChildKey;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;)V
    .registers 1

    .line 77
    invoke-direct {p0}, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->endChild()V

    return-void
.end method

.method private appendKey(Ljava/lang/StringBuilder;Lcom/google/firebase/database/snapshot/ChildKey;)V
    .registers 3

    .line 136
    invoke-virtual {p2}, Lcom/google/firebase/database/snapshot/ChildKey;->asString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/google/firebase/database/core/utilities/Utilities;->stringHashV2Representation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private currentPath(I)Lcom/google/firebase/database/core/Path;
    .registers 5

    .line 116
    new-array v0, p1, [Lcom/google/firebase/database/snapshot/ChildKey;

    const/4 v1, 0x0

    :goto_3
    if-ge v1, p1, :cond_12

    .line 118
    iget-object v2, p0, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->currentPath:Ljava/util/Stack;

    invoke-virtual {v2, v1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/database/snapshot/ChildKey;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 120
    :cond_12
    new-instance p1, Lcom/google/firebase/database/core/Path;

    invoke-direct {p1, v0}, Lcom/google/firebase/database/core/Path;-><init>([Lcom/google/firebase/database/snapshot/ChildKey;)V

    return-object p1
.end method

.method private endChild()V
    .registers 4

    .line 169
    iget v0, p0, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->currentPathDepth:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->currentPathDepth:I

    .line 170
    invoke-virtual {p0}, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->buildingRange()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 171
    iget-object v0, p0, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->optHashValueBuilder:Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    :cond_13
    iput-boolean v1, p0, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->needsComma:Z

    return-void
.end method

.method private endRange()V
    .registers 4

    .line 186
    invoke-virtual {p0}, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->buildingRange()Z

    move-result v0

    const-string v1, "Can\'t end range without starting a range!"

    invoke-static {v0, v1}, Lcom/google/firebase/database/core/utilities/Utilities;->hardAssert(ZLjava/lang/String;)V

    const/4 v0, 0x0

    .line 188
    :goto_a
    iget v1, p0, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->currentPathDepth:I

    const-string v2, ")"

    if-ge v0, v1, :cond_18

    .line 189
    iget-object v1, p0, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->optHashValueBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 191
    :cond_18
    iget-object v0, p0, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->optHashValueBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    iget v0, p0, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->lastLeafDepth:I

    invoke-direct {p0, v0}, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->currentPath(I)Lcom/google/firebase/database/core/Path;

    move-result-object v0

    .line 194
    iget-object v1, p0, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->optHashValueBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/firebase/database/core/utilities/Utilities;->sha1HexDigest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 195
    iget-object v2, p0, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->currentHashes:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    iget-object v1, p0, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->currentPaths:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 198
    iput-object v0, p0, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->optHashValueBuilder:Ljava/lang/StringBuilder;

    return-void
.end method

.method private ensureRange()V
    .registers 4

    .line 124
    invoke-virtual {p0}, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->buildingRange()Z

    move-result v0

    if-nez v0, :cond_38

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->optHashValueBuilder:Ljava/lang/StringBuilder;

    const-string v1, "("

    .line 126
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    iget v0, p0, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->currentPathDepth:I

    invoke-direct {p0, v0}, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->currentPath(I)Lcom/google/firebase/database/core/Path;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/core/Path;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/database/snapshot/ChildKey;

    .line 128
    iget-object v2, p0, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->optHashValueBuilder:Ljava/lang/StringBuilder;

    invoke-direct {p0, v2, v1}, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->appendKey(Ljava/lang/StringBuilder;Lcom/google/firebase/database/snapshot/ChildKey;)V

    .line 129
    iget-object v1, p0, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->optHashValueBuilder:Ljava/lang/StringBuilder;

    const-string v2, ":("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1c

    :cond_35
    const/4 v0, 0x0

    .line 131
    iput-boolean v0, p0, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->needsComma:Z

    :cond_38
    return-void
.end method

.method private finishHashing()V
    .registers 3

    .line 177
    iget v0, p0, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->currentPathDepth:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    const-string v1, "Can\'t finish hashing in the middle processing a child"

    invoke-static {v0, v1}, Lcom/google/firebase/database/core/utilities/Utilities;->hardAssert(ZLjava/lang/String;)V

    .line 178
    invoke-virtual {p0}, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->buildingRange()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 179
    invoke-direct {p0}, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->endRange()V

    .line 182
    :cond_15
    iget-object v0, p0, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->currentHashes:Ljava/util/List;

    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private processLeaf(Lcom/google/firebase/database/snapshot/LeafNode;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/snapshot/LeafNode<",
            "*>;)V"
        }
    .end annotation

    .line 140
    invoke-direct {p0}, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->ensureRange()V

    .line 142
    iget v0, p0, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->currentPathDepth:I

    iput v0, p0, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->lastLeafDepth:I

    .line 143
    iget-object v0, p0, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->optHashValueBuilder:Ljava/lang/StringBuilder;

    sget-object v1, Lcom/google/firebase/database/snapshot/Node$HashVersion;->V2:Lcom/google/firebase/database/snapshot/Node$HashVersion;

    invoke-virtual {p1, v1}, Lcom/google/firebase/database/snapshot/LeafNode;->getHashRepresentation(Lcom/google/firebase/database/snapshot/Node$HashVersion;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    .line 144
    iput-boolean p1, p0, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->needsComma:Z

    .line 145
    iget-object p1, p0, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->splitStrategy:Lcom/google/firebase/database/snapshot/CompoundHash$SplitStrategy;

    invoke-interface {p1, p0}, Lcom/google/firebase/database/snapshot/CompoundHash$SplitStrategy;->shouldSplit(Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;)Z

    move-result p1

    if-eqz p1, :cond_20

    .line 146
    invoke-direct {p0}, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->endRange()V

    :cond_20
    return-void
.end method

.method private startChild(Lcom/google/firebase/database/snapshot/ChildKey;)V
    .registers 4

    .line 151
    invoke-direct {p0}, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->ensureRange()V

    .line 153
    iget-boolean v0, p0, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->needsComma:Z

    if-eqz v0, :cond_e

    .line 154
    iget-object v0, p0, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->optHashValueBuilder:Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    :cond_e
    iget-object v0, p0, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->optHashValueBuilder:Ljava/lang/StringBuilder;

    invoke-direct {p0, v0, p1}, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->appendKey(Ljava/lang/StringBuilder;Lcom/google/firebase/database/snapshot/ChildKey;)V

    .line 157
    iget-object v0, p0, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->optHashValueBuilder:Ljava/lang/StringBuilder;

    const-string v1, ":("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    iget v0, p0, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->currentPathDepth:I

    iget-object v1, p0, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->currentPath:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    if-ne v0, v1, :cond_2a

    .line 160
    iget-object v0, p0, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->currentPath:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    goto :goto_31

    .line 162
    :cond_2a
    iget-object v0, p0, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->currentPath:Ljava/util/Stack;

    iget v1, p0, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->currentPathDepth:I

    invoke-virtual {v0, v1, p1}, Ljava/util/Stack;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 164
    :goto_31
    iget p1, p0, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->currentPathDepth:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->currentPathDepth:I

    const/4 p1, 0x0

    .line 165
    iput-boolean p1, p0, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->needsComma:Z

    return-void
.end method


# virtual methods
.method public buildingRange()Z
    .registers 2

    .line 104
    iget-object v0, p0, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->optHashValueBuilder:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public currentHashLength()I
    .registers 2

    .line 108
    iget-object v0, p0, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->optHashValueBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    return v0
.end method

.method public currentPath()Lcom/google/firebase/database/core/Path;
    .registers 2

    .line 112
    iget v0, p0, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->currentPathDepth:I

    invoke-direct {p0, v0}, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->currentPath(I)Lcom/google/firebase/database/core/Path;

    move-result-object v0

    return-object v0
.end method

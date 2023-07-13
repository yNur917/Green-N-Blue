.class Lcom/google/firebase/database/snapshot/CompoundHash$SimpleSizeSplitStrategy;
.super Ljava/lang/Object;
.source "CompoundHash.java"

# interfaces
.implements Lcom/google/firebase/database/snapshot/CompoundHash$SplitStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/database/snapshot/CompoundHash;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SimpleSizeSplitStrategy"
.end annotation


# instance fields
.field private final splitThreshold:J


# direct methods
.method public constructor <init>(Lcom/google/firebase/database/snapshot/Node;)V
    .registers 6

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-static {p1}, Lcom/google/firebase/database/core/utilities/NodeSizeEstimator;->estimateSerializedNodeSize(Lcom/google/firebase/database/snapshot/Node;)J

    move-result-wide v0

    const-wide/16 v2, 0x64

    mul-long v0, v0, v2

    long-to-double v0, v0

    .line 65
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-long v0, v0

    const-wide/16 v2, 0x200

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/firebase/database/snapshot/CompoundHash$SimpleSizeSplitStrategy;->splitThreshold:J

    return-void
.end method


# virtual methods
.method public shouldSplit(Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;)Z
    .registers 7

    .line 71
    invoke-virtual {p1}, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->currentHashLength()I

    move-result v0

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/google/firebase/database/snapshot/CompoundHash$SimpleSizeSplitStrategy;->splitThreshold:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_29

    .line 72
    invoke-virtual {p1}, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->currentPath()Lcom/google/firebase/database/core/Path;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/core/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_27

    .line 73
    invoke-virtual {p1}, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->currentPath()Lcom/google/firebase/database/core/Path;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/database/core/Path;->getBack()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object p1

    invoke-static {}, Lcom/google/firebase/database/snapshot/ChildKey;->getPriorityKey()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/firebase/database/snapshot/ChildKey;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_29

    :cond_27
    const/4 p1, 0x1

    goto :goto_2a

    :cond_29
    const/4 p1, 0x0

    :goto_2a
    return p1
.end method

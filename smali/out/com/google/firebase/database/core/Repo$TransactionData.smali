.class Lcom/google/firebase/database/core/Repo$TransactionData;
.super Ljava/lang/Object;
.source "Repo.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/database/core/Repo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TransactionData"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/google/firebase/database/core/Repo$TransactionData;",
        ">;"
    }
.end annotation


# instance fields
.field private abortReason:Lcom/google/firebase/database/DatabaseError;

.field private applyLocally:Z

.field private currentInputSnapshot:Lcom/google/firebase/database/snapshot/Node;

.field private currentOutputSnapshotRaw:Lcom/google/firebase/database/snapshot/Node;

.field private currentOutputSnapshotResolved:Lcom/google/firebase/database/snapshot/Node;

.field private currentWriteId:J

.field private handler:Lcom/google/firebase/database/Transaction$Handler;

.field private order:J

.field private outstandingListener:Lcom/google/firebase/database/ValueEventListener;

.field private path:Lcom/google/firebase/database/core/Path;

.field private retryCount:I

.field private status:Lcom/google/firebase/database/core/Repo$TransactionStatus;


# direct methods
.method private constructor <init>(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/Transaction$Handler;Lcom/google/firebase/database/ValueEventListener;Lcom/google/firebase/database/core/Repo$TransactionStatus;ZJ)V
    .registers 8

    .line 883
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 884
    iput-object p1, p0, Lcom/google/firebase/database/core/Repo$TransactionData;->path:Lcom/google/firebase/database/core/Path;

    .line 885
    iput-object p2, p0, Lcom/google/firebase/database/core/Repo$TransactionData;->handler:Lcom/google/firebase/database/Transaction$Handler;

    .line 886
    iput-object p3, p0, Lcom/google/firebase/database/core/Repo$TransactionData;->outstandingListener:Lcom/google/firebase/database/ValueEventListener;

    .line 887
    iput-object p4, p0, Lcom/google/firebase/database/core/Repo$TransactionData;->status:Lcom/google/firebase/database/core/Repo$TransactionStatus;

    const/4 p1, 0x0

    .line 888
    iput p1, p0, Lcom/google/firebase/database/core/Repo$TransactionData;->retryCount:I

    .line 889
    iput-boolean p5, p0, Lcom/google/firebase/database/core/Repo$TransactionData;->applyLocally:Z

    .line 890
    iput-wide p6, p0, Lcom/google/firebase/database/core/Repo$TransactionData;->order:J

    const/4 p1, 0x0

    .line 891
    iput-object p1, p0, Lcom/google/firebase/database/core/Repo$TransactionData;->abortReason:Lcom/google/firebase/database/DatabaseError;

    .line 892
    iput-object p1, p0, Lcom/google/firebase/database/core/Repo$TransactionData;->currentInputSnapshot:Lcom/google/firebase/database/snapshot/Node;

    .line 893
    iput-object p1, p0, Lcom/google/firebase/database/core/Repo$TransactionData;->currentOutputSnapshotRaw:Lcom/google/firebase/database/snapshot/Node;

    .line 894
    iput-object p1, p0, Lcom/google/firebase/database/core/Repo$TransactionData;->currentOutputSnapshotResolved:Lcom/google/firebase/database/snapshot/Node;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/Transaction$Handler;Lcom/google/firebase/database/ValueEventListener;Lcom/google/firebase/database/core/Repo$TransactionStatus;ZJLcom/google/firebase/database/core/Repo$1;)V
    .registers 9

    .line 863
    invoke-direct/range {p0 .. p7}, Lcom/google/firebase/database/core/Repo$TransactionData;-><init>(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/Transaction$Handler;Lcom/google/firebase/database/ValueEventListener;Lcom/google/firebase/database/core/Repo$TransactionStatus;ZJ)V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/firebase/database/core/Repo$TransactionData;)Lcom/google/firebase/database/snapshot/Node;
    .registers 1

    .line 863
    iget-object p0, p0, Lcom/google/firebase/database/core/Repo$TransactionData;->currentInputSnapshot:Lcom/google/firebase/database/snapshot/Node;

    return-object p0
.end method

.method static synthetic access$1502(Lcom/google/firebase/database/core/Repo$TransactionData;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;
    .registers 2

    .line 863
    iput-object p1, p0, Lcom/google/firebase/database/core/Repo$TransactionData;->currentInputSnapshot:Lcom/google/firebase/database/snapshot/Node;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/google/firebase/database/core/Repo$TransactionData;)Lcom/google/firebase/database/snapshot/Node;
    .registers 1

    .line 863
    iget-object p0, p0, Lcom/google/firebase/database/core/Repo$TransactionData;->currentOutputSnapshotRaw:Lcom/google/firebase/database/snapshot/Node;

    return-object p0
.end method

.method static synthetic access$1602(Lcom/google/firebase/database/core/Repo$TransactionData;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;
    .registers 2

    .line 863
    iput-object p1, p0, Lcom/google/firebase/database/core/Repo$TransactionData;->currentOutputSnapshotRaw:Lcom/google/firebase/database/snapshot/Node;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/google/firebase/database/core/Repo$TransactionData;)Lcom/google/firebase/database/snapshot/Node;
    .registers 1

    .line 863
    iget-object p0, p0, Lcom/google/firebase/database/core/Repo$TransactionData;->currentOutputSnapshotResolved:Lcom/google/firebase/database/snapshot/Node;

    return-object p0
.end method

.method static synthetic access$1702(Lcom/google/firebase/database/core/Repo$TransactionData;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;
    .registers 2

    .line 863
    iput-object p1, p0, Lcom/google/firebase/database/core/Repo$TransactionData;->currentOutputSnapshotResolved:Lcom/google/firebase/database/snapshot/Node;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/google/firebase/database/core/Repo$TransactionData;)Lcom/google/firebase/database/core/Repo$TransactionStatus;
    .registers 1

    .line 863
    iget-object p0, p0, Lcom/google/firebase/database/core/Repo$TransactionData;->status:Lcom/google/firebase/database/core/Repo$TransactionStatus;

    return-object p0
.end method

.method static synthetic access$1802(Lcom/google/firebase/database/core/Repo$TransactionData;Lcom/google/firebase/database/core/Repo$TransactionStatus;)Lcom/google/firebase/database/core/Repo$TransactionStatus;
    .registers 2

    .line 863
    iput-object p1, p0, Lcom/google/firebase/database/core/Repo$TransactionData;->status:Lcom/google/firebase/database/core/Repo$TransactionStatus;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/google/firebase/database/core/Repo$TransactionData;)J
    .registers 3

    .line 863
    iget-wide v0, p0, Lcom/google/firebase/database/core/Repo$TransactionData;->currentWriteId:J

    return-wide v0
.end method

.method static synthetic access$1902(Lcom/google/firebase/database/core/Repo$TransactionData;J)J
    .registers 3

    .line 863
    iput-wide p1, p0, Lcom/google/firebase/database/core/Repo$TransactionData;->currentWriteId:J

    return-wide p1
.end method

.method static synthetic access$2100(Lcom/google/firebase/database/core/Repo$TransactionData;)I
    .registers 1

    .line 863
    iget p0, p0, Lcom/google/firebase/database/core/Repo$TransactionData;->retryCount:I

    return p0
.end method

.method static synthetic access$2108(Lcom/google/firebase/database/core/Repo$TransactionData;)I
    .registers 3

    .line 863
    iget v0, p0, Lcom/google/firebase/database/core/Repo$TransactionData;->retryCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/firebase/database/core/Repo$TransactionData;->retryCount:I

    return v0
.end method

.method static synthetic access$2200(Lcom/google/firebase/database/core/Repo$TransactionData;)Lcom/google/firebase/database/core/Path;
    .registers 1

    .line 863
    iget-object p0, p0, Lcom/google/firebase/database/core/Repo$TransactionData;->path:Lcom/google/firebase/database/core/Path;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/google/firebase/database/core/Repo$TransactionData;)Lcom/google/firebase/database/Transaction$Handler;
    .registers 1

    .line 863
    iget-object p0, p0, Lcom/google/firebase/database/core/Repo$TransactionData;->handler:Lcom/google/firebase/database/Transaction$Handler;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/google/firebase/database/core/Repo$TransactionData;)Lcom/google/firebase/database/ValueEventListener;
    .registers 1

    .line 863
    iget-object p0, p0, Lcom/google/firebase/database/core/Repo$TransactionData;->outstandingListener:Lcom/google/firebase/database/ValueEventListener;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/google/firebase/database/core/Repo$TransactionData;)Lcom/google/firebase/database/DatabaseError;
    .registers 1

    .line 863
    iget-object p0, p0, Lcom/google/firebase/database/core/Repo$TransactionData;->abortReason:Lcom/google/firebase/database/DatabaseError;

    return-object p0
.end method

.method static synthetic access$2902(Lcom/google/firebase/database/core/Repo$TransactionData;Lcom/google/firebase/database/DatabaseError;)Lcom/google/firebase/database/DatabaseError;
    .registers 2

    .line 863
    iput-object p1, p0, Lcom/google/firebase/database/core/Repo$TransactionData;->abortReason:Lcom/google/firebase/database/DatabaseError;

    return-object p1
.end method

.method static synthetic access$3000(Lcom/google/firebase/database/core/Repo$TransactionData;)Z
    .registers 1

    .line 863
    iget-boolean p0, p0, Lcom/google/firebase/database/core/Repo$TransactionData;->applyLocally:Z

    return p0
.end method


# virtual methods
.method public compareTo(Lcom/google/firebase/database/core/Repo$TransactionData;)I
    .registers 6

    .line 899
    iget-wide v0, p0, Lcom/google/firebase/database/core/Repo$TransactionData;->order:J

    iget-wide v2, p1, Lcom/google/firebase/database/core/Repo$TransactionData;->order:J

    cmp-long p1, v0, v2

    if-gez p1, :cond_a

    const/4 p1, -0x1

    return p1

    :cond_a
    cmp-long p1, v0, v2

    if-nez p1, :cond_10

    const/4 p1, 0x0

    return p1

    :cond_10
    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 863
    check-cast p1, Lcom/google/firebase/database/core/Repo$TransactionData;

    invoke-virtual {p0, p1}, Lcom/google/firebase/database/core/Repo$TransactionData;->compareTo(Lcom/google/firebase/database/core/Repo$TransactionData;)I

    move-result p1

    return p1
.end method

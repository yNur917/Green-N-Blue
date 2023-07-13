.class final enum Lcom/google/firebase/database/core/operation/OperationSource$Source;
.super Ljava/lang/Enum;
.source "OperationSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/database/core/operation/OperationSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Source"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/firebase/database/core/operation/OperationSource$Source;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/firebase/database/core/operation/OperationSource$Source;

.field public static final enum Server:Lcom/google/firebase/database/core/operation/OperationSource$Source;

.field public static final enum User:Lcom/google/firebase/database/core/operation/OperationSource$Source;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 24
    new-instance v0, Lcom/google/firebase/database/core/operation/OperationSource$Source;

    const-string v1, "User"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/database/core/operation/OperationSource$Source;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/database/core/operation/OperationSource$Source;->User:Lcom/google/firebase/database/core/operation/OperationSource$Source;

    .line 25
    new-instance v1, Lcom/google/firebase/database/core/operation/OperationSource$Source;

    const-string v3, "Server"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/google/firebase/database/core/operation/OperationSource$Source;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/firebase/database/core/operation/OperationSource$Source;->Server:Lcom/google/firebase/database/core/operation/OperationSource$Source;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/google/firebase/database/core/operation/OperationSource$Source;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 23
    sput-object v3, Lcom/google/firebase/database/core/operation/OperationSource$Source;->$VALUES:[Lcom/google/firebase/database/core/operation/OperationSource$Source;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firebase/database/core/operation/OperationSource$Source;
    .registers 2

    .line 23
    const-class v0, Lcom/google/firebase/database/core/operation/OperationSource$Source;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/database/core/operation/OperationSource$Source;

    return-object p0
.end method

.method public static values()[Lcom/google/firebase/database/core/operation/OperationSource$Source;
    .registers 1

    .line 23
    sget-object v0, Lcom/google/firebase/database/core/operation/OperationSource$Source;->$VALUES:[Lcom/google/firebase/database/core/operation/OperationSource$Source;

    invoke-virtual {v0}, [Lcom/google/firebase/database/core/operation/OperationSource$Source;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firebase/database/core/operation/OperationSource$Source;

    return-object v0
.end method

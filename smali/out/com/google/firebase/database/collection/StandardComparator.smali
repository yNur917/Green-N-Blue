.class public Lcom/google/firebase/database/collection/StandardComparator;
.super Ljava/lang/Object;
.source "StandardComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A::",
        "Ljava/lang/Comparable<",
        "TA;>;>",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "TA;>;"
    }
.end annotation


# static fields
.field private static INSTANCE:Lcom/google/firebase/database/collection/StandardComparator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 21
    new-instance v0, Lcom/google/firebase/database/collection/StandardComparator;

    invoke-direct {v0}, Lcom/google/firebase/database/collection/StandardComparator;-><init>()V

    sput-object v0, Lcom/google/firebase/database/collection/StandardComparator;->INSTANCE:Lcom/google/firebase/database/collection/StandardComparator;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getComparator(Ljava/lang/Class;)Lcom/google/firebase/database/collection/StandardComparator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "TT;>;>(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/google/firebase/database/collection/StandardComparator<",
            "TT;>;"
        }
    .end annotation

    .line 27
    sget-object p0, Lcom/google/firebase/database/collection/StandardComparator;->INSTANCE:Lcom/google/firebase/database/collection/StandardComparator;

    return-object p0
.end method


# virtual methods
.method public compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TA;)I"
        }
    .end annotation

    .line 32
    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 19
    check-cast p1, Ljava/lang/Comparable;

    check-cast p2, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/database/collection/StandardComparator;->compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p1

    return p1
.end method

.class public Lcom/google/firebase/database/collection/ImmutableSortedMap$Builder;
.super Ljava/lang/Object;
.source "ImmutableSortedMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/database/collection/ImmutableSortedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/database/collection/ImmutableSortedMap$Builder$KeyTranslator;
    }
.end annotation


# static fields
.field static final ARRAY_TO_RB_TREE_SIZE_THRESHOLD:I = 0x19

.field private static final IDENTITY_TRANSLATOR:Lcom/google/firebase/database/collection/ImmutableSortedMap$Builder$KeyTranslator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 126
    new-instance v0, Lcom/google/firebase/database/collection/ImmutableSortedMap$Builder$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/firebase/database/collection/ImmutableSortedMap$Builder$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/google/firebase/database/collection/ImmutableSortedMap$Builder;->IDENTITY_TRANSLATOR:Lcom/google/firebase/database/collection/ImmutableSortedMap$Builder$KeyTranslator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildFrom(Ljava/util/List;Ljava/util/Map;Lcom/google/firebase/database/collection/ImmutableSortedMap$Builder$KeyTranslator;Ljava/util/Comparator;)Lcom/google/firebase/database/collection/ImmutableSortedMap;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TA;>;",
            "Ljava/util/Map<",
            "TB;TC;>;",
            "Lcom/google/firebase/database/collection/ImmutableSortedMap$Builder$KeyTranslator<",
            "TA;TB;>;",
            "Ljava/util/Comparator<",
            "TA;>;)",
            "Lcom/google/firebase/database/collection/ImmutableSortedMap<",
            "TA;TC;>;"
        }
    .end annotation

    .line 147
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x19

    if-ge v0, v1, :cond_d

    .line 148
    invoke-static {p0, p1, p2, p3}, Lcom/google/firebase/database/collection/ArraySortedMap;->buildFrom(Ljava/util/List;Ljava/util/Map;Lcom/google/firebase/database/collection/ImmutableSortedMap$Builder$KeyTranslator;Ljava/util/Comparator;)Lcom/google/firebase/database/collection/ArraySortedMap;

    move-result-object p0

    return-object p0

    .line 150
    :cond_d
    invoke-static {p0, p1, p2, p3}, Lcom/google/firebase/database/collection/RBTreeSortedMap;->buildFrom(Ljava/util/List;Ljava/util/Map;Lcom/google/firebase/database/collection/ImmutableSortedMap$Builder$KeyTranslator;Ljava/util/Comparator;)Lcom/google/firebase/database/collection/RBTreeSortedMap;

    move-result-object p0

    return-object p0
.end method

.method public static emptyMap(Ljava/util/Comparator;)Lcom/google/firebase/database/collection/ImmutableSortedMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "TK;>;)",
            "Lcom/google/firebase/database/collection/ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 119
    new-instance v0, Lcom/google/firebase/database/collection/ArraySortedMap;

    invoke-direct {v0, p0}, Lcom/google/firebase/database/collection/ArraySortedMap;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static fromMap(Ljava/util/Map;Ljava/util/Comparator;)Lcom/google/firebase/database/collection/ImmutableSortedMap;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TA;TB;>;",
            "Ljava/util/Comparator<",
            "TA;>;)",
            "Lcom/google/firebase/database/collection/ImmutableSortedMap<",
            "TA;TB;>;"
        }
    .end annotation

    .line 135
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v1, 0x19

    if-ge v0, v1, :cond_d

    .line 136
    invoke-static {p0, p1}, Lcom/google/firebase/database/collection/ArraySortedMap;->fromMap(Ljava/util/Map;Ljava/util/Comparator;)Lcom/google/firebase/database/collection/ArraySortedMap;

    move-result-object p0

    return-object p0

    .line 138
    :cond_d
    invoke-static {p0, p1}, Lcom/google/firebase/database/collection/RBTreeSortedMap;->fromMap(Ljava/util/Map;Ljava/util/Comparator;)Lcom/google/firebase/database/collection/RBTreeSortedMap;

    move-result-object p0

    return-object p0
.end method

.method public static identityTranslator()Lcom/google/firebase/database/collection/ImmutableSortedMap$Builder$KeyTranslator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/firebase/database/collection/ImmutableSortedMap$Builder$KeyTranslator<",
            "TA;TA;>;"
        }
    .end annotation

    .line 130
    sget-object v0, Lcom/google/firebase/database/collection/ImmutableSortedMap$Builder;->IDENTITY_TRANSLATOR:Lcom/google/firebase/database/collection/ImmutableSortedMap$Builder$KeyTranslator;

    return-object v0
.end method

.method static synthetic lambda$static$0(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 1

    return-object p0
.end method

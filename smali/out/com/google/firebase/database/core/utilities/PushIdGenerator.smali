.class public Lcom/google/firebase/database/core/utilities/PushIdGenerator;
.super Ljava/lang/Object;
.source "PushIdGenerator.java"


# static fields
.field private static final MAX_KEY_LEN:I = 0x312

.field private static final MAX_PUSH_CHAR:C = 'z'

.field private static final MIN_PUSH_CHAR:C = '-'

.field private static final PUSH_CHARS:Ljava/lang/String; = "-0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_abcdefghijklmnopqrstuvwxyz"

.field private static lastPushTime:J

.field private static final lastRandChars:[I

.field private static final randGen:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 34
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/google/firebase/database/core/utilities/PushIdGenerator;->randGen:Ljava/util/Random;

    const-wide/16 v0, 0x0

    .line 36
    sput-wide v0, Lcom/google/firebase/database/core/utilities/PushIdGenerator;->lastPushTime:J

    const/16 v0, 0xc

    new-array v0, v0, [I

    .line 38
    sput-object v0, Lcom/google/firebase/database/core/utilities/PushIdGenerator;->lastRandChars:[I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized generatePushChildName(J)Ljava/lang/String;
    .registers 15

    const-class v0, Lcom/google/firebase/database/core/utilities/PushIdGenerator;

    monitor-enter v0

    .line 41
    :try_start_3
    sget-wide v1, Lcom/google/firebase/database/core/utilities/PushIdGenerator;->lastPushTime:J

    const/4 v3, 0x1

    const/4 v4, 0x0

    cmp-long v5, p0, v1

    if-nez v5, :cond_d

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    .line 42
    :goto_e
    sput-wide p0, Lcom/google/firebase/database/core/utilities/PushIdGenerator;->lastPushTime:J

    const/16 v2, 0x8

    new-array v2, v2, [C

    .line 45
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x14

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v7, 0x7

    :goto_1c
    if-ltz v7, :cond_2f

    const-string v8, "-0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_abcdefghijklmnopqrstuvwxyz"

    const-wide/16 v9, 0x40

    .line 47
    rem-long v11, p0, v9

    long-to-int v12, v11

    invoke-virtual {v8, v12}, Ljava/lang/String;->charAt(I)C

    move-result v8

    aput-char v8, v2, v7

    .line 48
    div-long/2addr p0, v9

    add-int/lit8 v7, v7, -0x1

    goto :goto_1c

    :cond_2f
    const-wide/16 v7, 0x0

    cmp-long v9, p0, v7

    if-nez v9, :cond_37

    const/4 p0, 0x1

    goto :goto_38

    :cond_37
    const/4 p0, 0x0

    .line 50
    :goto_38
    invoke-static {p0}, Lcom/google/firebase/database/core/utilities/Utilities;->hardAssert(Z)V

    .line 52
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    const/16 p0, 0xc

    if-nez v1, :cond_54

    const/4 p1, 0x0

    :goto_43
    if-ge p1, p0, :cond_57

    .line 56
    sget-object v1, Lcom/google/firebase/database/core/utilities/PushIdGenerator;->lastRandChars:[I

    sget-object v2, Lcom/google/firebase/database/core/utilities/PushIdGenerator;->randGen:Ljava/util/Random;

    const/16 v7, 0x40

    invoke-virtual {v2, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    aput v2, v1, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_43

    .line 59
    :cond_54
    invoke-static {}, Lcom/google/firebase/database/core/utilities/PushIdGenerator;->incrementArray()V

    :cond_57
    const/4 p1, 0x0

    :goto_58
    if-ge p1, p0, :cond_6a

    const-string v1, "-0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_abcdefghijklmnopqrstuvwxyz"

    .line 62
    sget-object v2, Lcom/google/firebase/database/core/utilities/PushIdGenerator;->lastRandChars:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    goto :goto_58

    .line 64
    :cond_6a
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-ne p0, v6, :cond_71

    goto :goto_72

    :cond_71
    const/4 v3, 0x0

    :goto_72
    invoke-static {v3}, Lcom/google/firebase/database/core/utilities/Utilities;->hardAssert(Z)V

    .line 65
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_79
    .catchall {:try_start_3 .. :try_end_79} :catchall_7b

    monitor-exit v0

    return-object p0

    :catchall_7b
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static incrementArray()V
    .registers 4

    const/16 v0, 0xb

    :goto_2
    if-ltz v0, :cond_17

    .line 142
    sget-object v1, Lcom/google/firebase/database/core/utilities/PushIdGenerator;->lastRandChars:[I

    aget v2, v1, v0

    const/16 v3, 0x3f

    if-eq v2, v3, :cond_11

    add-int/lit8 v2, v2, 0x1

    .line 143
    aput v2, v1, v0

    return-void

    :cond_11
    const/4 v2, 0x0

    .line 146
    aput v2, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_17
    return-void
.end method

.method public static final predecessor(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 70
    invoke-static {p0}, Lcom/google/firebase/database/core/utilities/Validation;->validateNullableKey(Ljava/lang/String;)V

    .line 71
    invoke-static {p0}, Lcom/google/firebase/database/core/utilities/Utilities;->tryParseInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1f

    .line 73
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/high16 v2, -0x80000000

    if-ne p0, v2, :cond_15

    const-string p0, "[MIN_NAME]"

    return-object p0

    .line 76
    :cond_15
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    sub-int/2addr p0, v1

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 78
    :cond_1f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    sub-int/2addr p0, v1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result p0

    const/16 v2, 0x2d

    if-ne p0, v2, :cond_4a

    .line 80
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-ne p0, v1, :cond_3f

    const p0, 0x7fffffff

    .line 81
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3f
    const/4 p0, 0x0

    .line 85
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0, p0, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 91
    :cond_4a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    sub-int/2addr p0, v1

    .line 92
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    const-string v3, "-0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_abcdefghijklmnopqrstuvwxyz"

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 90
    invoke-virtual {v0, p0, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 93
    new-instance p0, Ljava/lang/String;

    .line 94
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    rsub-int v1, v1, 0x312

    new-array v1, v1, [C

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    const-string v1, "\u0000"

    const-string v2, "z"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 93
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final successor(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 99
    invoke-static {p0}, Lcom/google/firebase/database/core/utilities/Validation;->validateNullableKey(Ljava/lang/String;)V

    .line 100
    invoke-static {p0}, Lcom/google/firebase/database/core/utilities/Utilities;->tryParseInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x2d

    if-eqz v0, :cond_24

    .line 102
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const v2, 0x7fffffff

    if-ne p0, v2, :cond_19

    .line 104
    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 106
    :cond_19
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 108
    :cond_24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 110
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    const/16 v2, 0x312

    if-ge p0, v2, :cond_39

    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 118
    :cond_39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    :goto_3f
    if-ltz p0, :cond_4c

    .line 119
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    const/16 v2, 0x7a

    if-ne v1, v2, :cond_4c

    add-int/lit8 p0, p0, -0x1

    goto :goto_3f

    :cond_4c
    const/4 v1, -0x1

    if-ne p0, v1, :cond_52

    const-string p0, "[MAX_KEY]"

    return-object p0

    .line 133
    :cond_52
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    const-string v2, "-0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_abcdefghijklmnopqrstuvwxyz"

    .line 134
    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v2, p0, 0x1

    .line 135
    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v2, v1}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x0

    .line 137
    invoke-virtual {v0, p0, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

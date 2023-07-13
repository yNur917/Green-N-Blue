.class public Landroidx/constraintlayout/core/parser/CLParser;
.super Ljava/lang/Object;
.source "CLParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/core/parser/CLParser$TYPE;
    }
.end annotation


# static fields
.field static DEBUG:Z = false


# instance fields
.field private hasComment:Z

.field private lineNumber:I

.field private mContent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Landroidx/constraintlayout/core/parser/CLParser;->hasComment:Z

    .line 33
    iput-object p1, p0, Landroidx/constraintlayout/core/parser/CLParser;->mContent:Ljava/lang/String;

    return-void
.end method

.method private createElement(Landroidx/constraintlayout/core/parser/CLElement;ILandroidx/constraintlayout/core/parser/CLParser$TYPE;Z[C)Landroidx/constraintlayout/core/parser/CLElement;
    .registers 9

    .line 231
    sget-boolean v0, Landroidx/constraintlayout/core/parser/CLParser;->DEBUG:Z

    if-eqz v0, :cond_24

    .line 232
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-char v2, p5, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 234
    :cond_24
    sget-object v0, Landroidx/constraintlayout/core/parser/CLParser$1;->$SwitchMap$androidx$constraintlayout$core$parser$CLParser$TYPE:[I

    invoke-virtual {p3}, Landroidx/constraintlayout/core/parser/CLParser$TYPE;->ordinal()I

    move-result p3

    aget p3, v0, p3

    const/4 v0, 0x0

    packed-switch p3, :pswitch_data_6a

    move-object p3, v0

    goto :goto_51

    .line 258
    :pswitch_32
    invoke-static {p5}, Landroidx/constraintlayout/core/parser/CLToken;->allocate([C)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object p3

    goto :goto_51

    .line 254
    :pswitch_37
    invoke-static {p5}, Landroidx/constraintlayout/core/parser/CLKey;->allocate([C)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object p3

    goto :goto_51

    .line 250
    :pswitch_3c
    invoke-static {p5}, Landroidx/constraintlayout/core/parser/CLNumber;->allocate([C)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object p3

    goto :goto_51

    .line 246
    :pswitch_41
    invoke-static {p5}, Landroidx/constraintlayout/core/parser/CLString;->allocate([C)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object p3

    goto :goto_51

    .line 241
    :pswitch_46
    invoke-static {p5}, Landroidx/constraintlayout/core/parser/CLArray;->allocate([C)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object p3

    goto :goto_4f

    .line 236
    :pswitch_4b
    invoke-static {p5}, Landroidx/constraintlayout/core/parser/CLObject;->allocate([C)Landroidx/constraintlayout/core/parser/CLObject;

    move-result-object p3

    :goto_4f
    add-int/lit8 p2, p2, 0x1

    :goto_51
    if-nez p3, :cond_54

    return-object v0

    .line 266
    :cond_54
    iget p5, p0, Landroidx/constraintlayout/core/parser/CLParser;->lineNumber:I

    invoke-virtual {p3, p5}, Landroidx/constraintlayout/core/parser/CLElement;->setLine(I)V

    if-eqz p4, :cond_5f

    int-to-long p4, p2

    .line 268
    invoke-virtual {p3, p4, p5}, Landroidx/constraintlayout/core/parser/CLElement;->setStart(J)V

    .line 270
    :cond_5f
    instance-of p2, p1, Landroidx/constraintlayout/core/parser/CLContainer;

    if-eqz p2, :cond_68

    .line 271
    check-cast p1, Landroidx/constraintlayout/core/parser/CLContainer;

    .line 272
    invoke-virtual {p3, p1}, Landroidx/constraintlayout/core/parser/CLElement;->setContainer(Landroidx/constraintlayout/core/parser/CLContainer;)V

    :cond_68
    return-object p3

    nop

    :pswitch_data_6a
    .packed-switch 0x1
        :pswitch_4b
        :pswitch_46
        :pswitch_41
        :pswitch_3c
        :pswitch_37
        :pswitch_32
    .end packed-switch
.end method

.method private getNextJsonElement(ICLandroidx/constraintlayout/core/parser/CLElement;[C)Landroidx/constraintlayout/core/parser/CLElement;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/constraintlayout/core/parser/CLParsingException;
        }
    .end annotation

    const/16 v0, 0x9

    if-eq p2, v0, :cond_d5

    const/16 v0, 0xa

    if-eq p2, v0, :cond_d5

    const/16 v0, 0xd

    if-eq p2, v0, :cond_d5

    const/16 v0, 0x20

    if-eq p2, v0, :cond_d5

    const/16 v0, 0x22

    if-eq p2, v0, :cond_ba

    const/16 v0, 0x27

    if-eq p2, v0, :cond_ba

    const/16 v0, 0x5b

    if-eq p2, v0, :cond_ae

    const/16 v0, 0x5d

    if-eq p2, v0, :cond_9f

    const/16 v0, 0x7b

    if-eq p2, v0, :cond_93

    const/16 v0, 0x7d

    if-eq p2, v0, :cond_9f

    packed-switch p2, :pswitch_data_d6

    .line 214
    instance-of v0, p3, Landroidx/constraintlayout/core/parser/CLContainer;

    if-eqz v0, :cond_6b

    instance-of v0, p3, Landroidx/constraintlayout/core/parser/CLObject;

    if-nez v0, :cond_6b

    .line 215
    sget-object v4, Landroidx/constraintlayout/core/parser/CLParser$TYPE;->TOKEN:Landroidx/constraintlayout/core/parser/CLParser$TYPE;

    const/4 v5, 0x1

    move-object v1, p0

    move-object v2, p3

    move v3, p1

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Landroidx/constraintlayout/core/parser/CLParser;->createElement(Landroidx/constraintlayout/core/parser/CLElement;ILandroidx/constraintlayout/core/parser/CLParser$TYPE;Z[C)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object p3

    .line 216
    move-object p4, p3

    check-cast p4, Landroidx/constraintlayout/core/parser/CLToken;

    int-to-long v0, p1

    .line 217
    invoke-virtual {p4, p2, v0, v1}, Landroidx/constraintlayout/core/parser/CLToken;->validate(CJ)Z

    move-result p1

    if-eqz p1, :cond_4a

    goto/16 :goto_d5

    .line 218
    :cond_4a
    new-instance p1, Landroidx/constraintlayout/core/parser/CLParsingException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "incorrect token <"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p2, "> at line "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Landroidx/constraintlayout/core/parser/CLParser;->lineNumber:I

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p4}, Landroidx/constraintlayout/core/parser/CLParsingException;-><init>(Ljava/lang/String;Landroidx/constraintlayout/core/parser/CLElement;)V

    throw p1

    .line 221
    :cond_6b
    sget-object v3, Landroidx/constraintlayout/core/parser/CLParser$TYPE;->KEY:Landroidx/constraintlayout/core/parser/CLParser$TYPE;

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p3

    move v2, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroidx/constraintlayout/core/parser/CLParser;->createElement(Landroidx/constraintlayout/core/parser/CLElement;ILandroidx/constraintlayout/core/parser/CLParser$TYPE;Z[C)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object p3

    goto/16 :goto_d5

    :pswitch_78
    const/4 p2, 0x1

    add-int/2addr p1, p2

    .line 192
    array-length v0, p4

    if-ge p1, v0, :cond_d5

    aget-char p1, p4, p1

    const/16 p4, 0x2f

    if-ne p1, p4, :cond_d5

    .line 193
    iput-boolean p2, p0, Landroidx/constraintlayout/core/parser/CLParser;->hasComment:Z

    goto/16 :goto_d5

    .line 210
    :pswitch_87
    sget-object v3, Landroidx/constraintlayout/core/parser/CLParser$TYPE;->NUMBER:Landroidx/constraintlayout/core/parser/CLParser$TYPE;

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p3

    move v2, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroidx/constraintlayout/core/parser/CLParser;->createElement(Landroidx/constraintlayout/core/parser/CLElement;ILandroidx/constraintlayout/core/parser/CLParser$TYPE;Z[C)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object p3

    goto :goto_d5

    .line 170
    :cond_93
    sget-object v3, Landroidx/constraintlayout/core/parser/CLParser$TYPE;->OBJECT:Landroidx/constraintlayout/core/parser/CLParser$TYPE;

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p3

    move v2, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroidx/constraintlayout/core/parser/CLParser;->createElement(Landroidx/constraintlayout/core/parser/CLElement;ILandroidx/constraintlayout/core/parser/CLParser$TYPE;Z[C)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object p3

    goto :goto_d5

    :cond_9f
    add-int/lit8 p2, p1, -0x1

    int-to-long v0, p2

    .line 179
    invoke-virtual {p3, v0, v1}, Landroidx/constraintlayout/core/parser/CLElement;->setEnd(J)V

    .line 180
    invoke-virtual {p3}, Landroidx/constraintlayout/core/parser/CLElement;->getContainer()Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object p3

    int-to-long p1, p1

    .line 181
    invoke-virtual {p3, p1, p2}, Landroidx/constraintlayout/core/parser/CLElement;->setEnd(J)V

    goto :goto_d5

    .line 174
    :cond_ae
    sget-object v3, Landroidx/constraintlayout/core/parser/CLParser$TYPE;->ARRAY:Landroidx/constraintlayout/core/parser/CLParser$TYPE;

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p3

    move v2, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroidx/constraintlayout/core/parser/CLParser;->createElement(Landroidx/constraintlayout/core/parser/CLElement;ILandroidx/constraintlayout/core/parser/CLParser$TYPE;Z[C)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object p3

    goto :goto_d5

    .line 185
    :cond_ba
    instance-of p2, p3, Landroidx/constraintlayout/core/parser/CLObject;

    if-eqz p2, :cond_ca

    .line 186
    sget-object v3, Landroidx/constraintlayout/core/parser/CLParser$TYPE;->KEY:Landroidx/constraintlayout/core/parser/CLParser$TYPE;

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p3

    move v2, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroidx/constraintlayout/core/parser/CLParser;->createElement(Landroidx/constraintlayout/core/parser/CLElement;ILandroidx/constraintlayout/core/parser/CLParser$TYPE;Z[C)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object p3

    goto :goto_d5

    .line 188
    :cond_ca
    sget-object v3, Landroidx/constraintlayout/core/parser/CLParser$TYPE;->STRING:Landroidx/constraintlayout/core/parser/CLParser$TYPE;

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p3

    move v2, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroidx/constraintlayout/core/parser/CLParser;->createElement(Landroidx/constraintlayout/core/parser/CLElement;ILandroidx/constraintlayout/core/parser/CLParser$TYPE;Z[C)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object p3

    :cond_d5
    :goto_d5
    :pswitch_d5
    return-object p3

    :pswitch_data_d6
    .packed-switch 0x2b
        :pswitch_87
        :pswitch_d5
        :pswitch_87
        :pswitch_87
        :pswitch_78
        :pswitch_87
        :pswitch_87
        :pswitch_87
        :pswitch_87
        :pswitch_87
        :pswitch_87
        :pswitch_87
        :pswitch_87
        :pswitch_87
        :pswitch_87
        :pswitch_d5
    .end packed-switch
.end method

.method public static parse(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLObject;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/constraintlayout/core/parser/CLParsingException;
        }
    .end annotation

    .line 29
    new-instance v0, Landroidx/constraintlayout/core/parser/CLParser;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/core/parser/CLParser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/constraintlayout/core/parser/CLParser;->parse()Landroidx/constraintlayout/core/parser/CLObject;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public parse()Landroidx/constraintlayout/core/parser/CLObject;
    .registers 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/constraintlayout/core/parser/CLParsingException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 39
    iget-object v1, v0, Landroidx/constraintlayout/core/parser/CLParser;->mContent:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 42
    array-length v2, v1

    const/4 v3, 0x1

    .line 45
    iput v3, v0, Landroidx/constraintlayout/core/parser/CLParser;->lineNumber:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_e
    const/4 v6, -0x1

    const/16 v7, 0xa

    if-ge v5, v2, :cond_24

    .line 49
    aget-char v8, v1, v5

    const/16 v9, 0x7b

    if-ne v8, v9, :cond_1a

    goto :goto_25

    :cond_1a
    if-ne v8, v7, :cond_21

    .line 55
    iget v6, v0, Landroidx/constraintlayout/core/parser/CLParser;->lineNumber:I

    add-int/2addr v6, v3

    iput v6, v0, Landroidx/constraintlayout/core/parser/CLParser;->lineNumber:I

    :cond_21
    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    :cond_24
    const/4 v5, -0x1

    :goto_25
    if-eq v5, v6, :cond_191

    .line 63
    invoke-static {v1}, Landroidx/constraintlayout/core/parser/CLObject;->allocate([C)Landroidx/constraintlayout/core/parser/CLObject;

    move-result-object v6

    .line 64
    iget v8, v0, Landroidx/constraintlayout/core/parser/CLParser;->lineNumber:I

    invoke-virtual {v6, v8}, Landroidx/constraintlayout/core/parser/CLObject;->setLine(I)V

    int-to-long v8, v5

    .line 65
    invoke-virtual {v6, v8, v9}, Landroidx/constraintlayout/core/parser/CLObject;->setStart(J)V

    add-int/2addr v5, v3

    move-object v8, v6

    :goto_36
    if-ge v5, v2, :cond_150

    .line 69
    aget-char v9, v1, v5

    if-ne v9, v7, :cond_41

    .line 71
    iget v10, v0, Landroidx/constraintlayout/core/parser/CLParser;->lineNumber:I

    add-int/2addr v10, v3

    iput v10, v0, Landroidx/constraintlayout/core/parser/CLParser;->lineNumber:I

    .line 73
    :cond_41
    iget-boolean v10, v0, Landroidx/constraintlayout/core/parser/CLParser;->hasComment:Z

    if-eqz v10, :cond_49

    if-ne v9, v7, :cond_14a

    .line 75
    iput-boolean v4, v0, Landroidx/constraintlayout/core/parser/CLParser;->hasComment:Z

    :cond_49
    if-nez v8, :cond_4d

    goto/16 :goto_150

    .line 86
    :cond_4d
    invoke-virtual {v8}, Landroidx/constraintlayout/core/parser/CLElement;->isDone()Z

    move-result v10

    if-eqz v10, :cond_59

    .line 87
    invoke-direct {v0, v5, v9, v8, v1}, Landroidx/constraintlayout/core/parser/CLParser;->getNextJsonElement(ICLandroidx/constraintlayout/core/parser/CLElement;[C)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v8

    goto/16 :goto_131

    .line 88
    :cond_59
    instance-of v10, v8, Landroidx/constraintlayout/core/parser/CLObject;

    const/16 v11, 0x7d

    if-eqz v10, :cond_6f

    if-ne v9, v11, :cond_69

    add-int/lit8 v9, v5, -0x1

    int-to-long v9, v9

    .line 90
    invoke-virtual {v8, v9, v10}, Landroidx/constraintlayout/core/parser/CLElement;->setEnd(J)V

    goto/16 :goto_131

    .line 92
    :cond_69
    invoke-direct {v0, v5, v9, v8, v1}, Landroidx/constraintlayout/core/parser/CLParser;->getNextJsonElement(ICLandroidx/constraintlayout/core/parser/CLElement;[C)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v8

    goto/16 :goto_131

    .line 94
    :cond_6f
    instance-of v10, v8, Landroidx/constraintlayout/core/parser/CLArray;

    const/16 v12, 0x5d

    if-eqz v10, :cond_85

    if-ne v9, v12, :cond_7f

    add-int/lit8 v9, v5, -0x1

    int-to-long v9, v9

    .line 96
    invoke-virtual {v8, v9, v10}, Landroidx/constraintlayout/core/parser/CLElement;->setEnd(J)V

    goto/16 :goto_131

    .line 98
    :cond_7f
    invoke-direct {v0, v5, v9, v8, v1}, Landroidx/constraintlayout/core/parser/CLParser;->getNextJsonElement(ICLandroidx/constraintlayout/core/parser/CLElement;[C)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v8

    goto/16 :goto_131

    .line 100
    :cond_85
    instance-of v10, v8, Landroidx/constraintlayout/core/parser/CLString;

    const-wide/16 v13, 0x1

    if-eqz v10, :cond_a0

    .line 101
    iget-wide v10, v8, Landroidx/constraintlayout/core/parser/CLElement;->start:J

    long-to-int v11, v10

    aget-char v10, v1, v11

    if-ne v10, v9, :cond_131

    .line 103
    iget-wide v9, v8, Landroidx/constraintlayout/core/parser/CLElement;->start:J

    add-long/2addr v9, v13

    invoke-virtual {v8, v9, v10}, Landroidx/constraintlayout/core/parser/CLElement;->setStart(J)V

    add-int/lit8 v9, v5, -0x1

    int-to-long v9, v9

    .line 104
    invoke-virtual {v8, v9, v10}, Landroidx/constraintlayout/core/parser/CLElement;->setEnd(J)V

    goto/16 :goto_131

    .line 107
    :cond_a0
    instance-of v15, v8, Landroidx/constraintlayout/core/parser/CLToken;

    if-eqz v15, :cond_d4

    .line 108
    move-object v15, v8

    check-cast v15, Landroidx/constraintlayout/core/parser/CLToken;

    int-to-long v3, v5

    .line 109
    invoke-virtual {v15, v9, v3, v4}, Landroidx/constraintlayout/core/parser/CLToken;->validate(CJ)Z

    move-result v3

    if-eqz v3, :cond_af

    goto :goto_d4

    .line 110
    :cond_af
    new-instance v1, Landroidx/constraintlayout/core/parser/CLParsingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parsing incorrect token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Landroidx/constraintlayout/core/parser/CLToken;->content()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " at line "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroidx/constraintlayout/core/parser/CLParser;->lineNumber:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v15}, Landroidx/constraintlayout/core/parser/CLParsingException;-><init>(Ljava/lang/String;Landroidx/constraintlayout/core/parser/CLElement;)V

    throw v1

    .line 114
    :cond_d4
    :goto_d4
    instance-of v3, v8, Landroidx/constraintlayout/core/parser/CLKey;

    if-nez v3, :cond_da

    if-eqz v10, :cond_f5

    .line 115
    :cond_da
    iget-wide v3, v8, Landroidx/constraintlayout/core/parser/CLElement;->start:J

    long-to-int v4, v3

    aget-char v3, v1, v4

    const/16 v4, 0x27

    if-eq v3, v4, :cond_e7

    const/16 v4, 0x22

    if-ne v3, v4, :cond_f5

    :cond_e7
    if-ne v3, v9, :cond_f5

    .line 117
    iget-wide v3, v8, Landroidx/constraintlayout/core/parser/CLElement;->start:J

    add-long/2addr v3, v13

    invoke-virtual {v8, v3, v4}, Landroidx/constraintlayout/core/parser/CLElement;->setStart(J)V

    add-int/lit8 v3, v5, -0x1

    int-to-long v3, v3

    .line 118
    invoke-virtual {v8, v3, v4}, Landroidx/constraintlayout/core/parser/CLElement;->setEnd(J)V

    .line 121
    :cond_f5
    invoke-virtual {v8}, Landroidx/constraintlayout/core/parser/CLElement;->isDone()Z

    move-result v3

    if-nez v3, :cond_131

    if-eq v9, v11, :cond_115

    if-eq v9, v12, :cond_115

    const/16 v3, 0x2c

    if-eq v9, v3, :cond_115

    const/16 v3, 0x20

    if-eq v9, v3, :cond_115

    const/16 v3, 0x9

    if-eq v9, v3, :cond_115

    const/16 v3, 0xd

    if-eq v9, v3, :cond_115

    if-eq v9, v7, :cond_115

    const/16 v3, 0x3a

    if-ne v9, v3, :cond_131

    :cond_115
    add-int/lit8 v3, v5, -0x1

    int-to-long v3, v3

    .line 123
    invoke-virtual {v8, v3, v4}, Landroidx/constraintlayout/core/parser/CLElement;->setEnd(J)V

    if-eq v9, v11, :cond_11f

    if-ne v9, v12, :cond_131

    .line 125
    :cond_11f
    invoke-virtual {v8}, Landroidx/constraintlayout/core/parser/CLElement;->getContainer()Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v8

    .line 126
    invoke-virtual {v8, v3, v4}, Landroidx/constraintlayout/core/parser/CLElement;->setEnd(J)V

    .line 127
    instance-of v9, v8, Landroidx/constraintlayout/core/parser/CLKey;

    if-eqz v9, :cond_131

    .line 128
    invoke-virtual {v8}, Landroidx/constraintlayout/core/parser/CLElement;->getContainer()Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v8

    .line 129
    invoke-virtual {v8, v3, v4}, Landroidx/constraintlayout/core/parser/CLElement;->setEnd(J)V

    .line 136
    :cond_131
    :goto_131
    invoke-virtual {v8}, Landroidx/constraintlayout/core/parser/CLElement;->isDone()Z

    move-result v3

    if-eqz v3, :cond_14a

    instance-of v3, v8, Landroidx/constraintlayout/core/parser/CLKey;

    if-eqz v3, :cond_146

    move-object v3, v8

    check-cast v3, Landroidx/constraintlayout/core/parser/CLKey;

    iget-object v3, v3, Landroidx/constraintlayout/core/parser/CLKey;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_14a

    .line 137
    :cond_146
    invoke-virtual {v8}, Landroidx/constraintlayout/core/parser/CLElement;->getContainer()Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v8

    :cond_14a
    add-int/lit8 v5, v5, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    goto/16 :goto_36

    :cond_150
    :goto_150
    if-eqz v8, :cond_172

    .line 142
    invoke-virtual {v8}, Landroidx/constraintlayout/core/parser/CLElement;->isDone()Z

    move-result v1

    if-nez v1, :cond_172

    .line 143
    instance-of v1, v8, Landroidx/constraintlayout/core/parser/CLString;

    if-eqz v1, :cond_166

    .line 144
    iget-wide v3, v8, Landroidx/constraintlayout/core/parser/CLElement;->start:J

    long-to-int v1, v3

    const/4 v3, 0x1

    add-int/2addr v1, v3

    int-to-long v4, v1

    invoke-virtual {v8, v4, v5}, Landroidx/constraintlayout/core/parser/CLElement;->setStart(J)V

    goto :goto_167

    :cond_166
    const/4 v3, 0x1

    :goto_167
    add-int/lit8 v1, v2, -0x1

    int-to-long v4, v1

    .line 146
    invoke-virtual {v8, v4, v5}, Landroidx/constraintlayout/core/parser/CLElement;->setEnd(J)V

    .line 147
    invoke-virtual {v8}, Landroidx/constraintlayout/core/parser/CLElement;->getContainer()Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v8

    goto :goto_150

    .line 150
    :cond_172
    sget-boolean v1, Landroidx/constraintlayout/core/parser/CLParser;->DEBUG:Z

    if-eqz v1, :cond_190

    .line 151
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Root: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroidx/constraintlayout/core/parser/CLObject;->toJSON()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_190
    return-object v6

    .line 59
    :cond_191
    new-instance v1, Landroidx/constraintlayout/core/parser/CLParsingException;

    const/4 v2, 0x0

    const-string v3, "invalid json content"

    invoke-direct {v1, v3, v2}, Landroidx/constraintlayout/core/parser/CLParsingException;-><init>(Ljava/lang/String;Landroidx/constraintlayout/core/parser/CLElement;)V

    throw v1
.end method

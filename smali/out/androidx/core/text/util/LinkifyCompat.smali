.class public final Landroidx/core/text/util/LinkifyCompat;
.super Ljava/lang/Object;
.source "LinkifyCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/text/util/LinkifyCompat$LinkSpec;,
        Landroidx/core/text/util/LinkifyCompat$LinkifyMask;
    }
.end annotation


# static fields
.field private static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroidx/core/text/util/LinkifyCompat$LinkSpec;",
            ">;"
        }
    .end annotation
.end field

.field private static final EMPTY_STRING:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 56
    sput-object v0, Landroidx/core/text/util/LinkifyCompat;->EMPTY_STRING:[Ljava/lang/String;

    .line 58
    new-instance v0, Landroidx/core/text/util/LinkifyCompat$1;

    invoke-direct {v0}, Landroidx/core/text/util/LinkifyCompat$1;-><init>()V

    sput-object v0, Landroidx/core/text/util/LinkifyCompat;->COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 539
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addLinkMovementMethod(Landroid/widget/TextView;)V
    .registers 2

    .line 377
    invoke-virtual {p0}, Landroid/widget/TextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v0

    .line 379
    instance-of v0, v0, Landroid/text/method/LinkMovementMethod;

    if-nez v0, :cond_15

    .line 380
    invoke-virtual {p0}, Landroid/widget/TextView;->getLinksClickable()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 381
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :cond_15
    return-void
.end method

.method public static addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;)V
    .registers 10

    .line 206
    invoke-static {}, Landroidx/core/text/util/LinkifyCompat;->shouldAddLinksFallbackToFramework()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 207
    invoke-static {p0, p1, p2}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;)V

    return-void

    :cond_a
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 210
    invoke-static/range {v1 .. v6}, Landroidx/core/text/util/LinkifyCompat;->addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    return-void
.end method

.method public static addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V
    .registers 12

    .line 230
    invoke-static {}, Landroidx/core/text/util/LinkifyCompat;->shouldAddLinksFallbackToFramework()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 231
    invoke-static {p0, p1, p2, p3, p4}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    return-void

    :cond_a
    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    .line 234
    invoke-static/range {v1 .. v6}, Landroidx/core/text/util/LinkifyCompat;->addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    return-void
.end method

.method public static addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V
    .registers 13

    .line 257
    invoke-static {}, Landroidx/core/text/util/LinkifyCompat;->shouldAddLinksFallbackToFramework()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 258
    invoke-static/range {p0 .. p5}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    return-void

    .line 261
    :cond_a
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v0

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 263
    invoke-static/range {v1 .. v6}, Landroidx/core/text/util/LinkifyCompat;->addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Z

    move-result p1

    if-eqz p1, :cond_24

    .line 266
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 267
    invoke-static {p0}, Landroidx/core/text/util/LinkifyCompat;->addLinkMovementMethod(Landroid/widget/TextView;)V

    :cond_24
    return-void
.end method

.method public static addLinks(Landroid/text/Spannable;I)Z
    .registers 12

    .line 101
    invoke-static {}, Landroidx/core/text/util/LinkifyCompat;->shouldAddLinksFallbackToFramework()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 102
    invoke-static {p0, p1}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    move-result p0

    return p0

    :cond_b
    const/4 v0, 0x0

    if-nez p1, :cond_f

    return v0

    .line 108
    :cond_f
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v1

    const-class v2, Landroid/text/style/URLSpan;

    invoke-interface {p0, v0, v1, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/URLSpan;

    .line 110
    array-length v2, v1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_1e
    if-ltz v2, :cond_28

    .line 111
    aget-object v4, v1, v2

    invoke-interface {p0, v4}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_1e

    :cond_28
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_30

    const/4 v1, 0x4

    .line 115
    invoke-static {p0, v1}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    .line 118
    :cond_30
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_4d

    .line 121
    sget-object v6, Landroidx/core/util/PatternsCompat;->AUTOLINK_WEB_URL:Ljava/util/regex/Pattern;

    const-string v2, "http://"

    const-string v4, "https://"

    const-string v5, "rtsp://"

    filled-new-array {v2, v4, v5}, [Ljava/lang/String;

    move-result-object v7

    sget-object v8, Landroid/text/util/Linkify;->sUrlMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    const/4 v9, 0x0

    move-object v4, v1

    move-object v5, p0

    invoke-static/range {v4 .. v9}, Landroidx/core/text/util/LinkifyCompat;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    :cond_4d
    and-int/lit8 v2, p1, 0x2

    if-eqz v2, :cond_60

    .line 127
    sget-object v6, Landroidx/core/util/PatternsCompat;->AUTOLINK_EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    const-string v2, "mailto:"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v1

    move-object v5, p0

    invoke-static/range {v4 .. v9}, Landroidx/core/text/util/LinkifyCompat;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    :cond_60
    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_67

    .line 133
    invoke-static {v1, p0}, Landroidx/core/text/util/LinkifyCompat;->gatherMapLinks(Ljava/util/ArrayList;Landroid/text/Spannable;)V

    .line 136
    :cond_67
    invoke-static {v1, p0}, Landroidx/core/text/util/LinkifyCompat;->pruneOverlaps(Ljava/util/ArrayList;Landroid/text/Spannable;)V

    .line 138
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_71

    return v0

    .line 142
    :cond_71
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_75
    :goto_75
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/text/util/LinkifyCompat$LinkSpec;

    .line 143
    iget-object v1, v0, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->frameworkAddedSpan:Landroid/text/style/URLSpan;

    if-nez v1, :cond_75

    .line 144
    iget-object v1, v0, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->url:Ljava/lang/String;

    iget v2, v0, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->start:I

    iget v0, v0, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->end:I

    invoke-static {v1, v2, v0, p0}, Landroidx/core/text/util/LinkifyCompat;->applyLink(Ljava/lang/String;IILandroid/text/Spannable;)V

    goto :goto_75

    :cond_8f
    return v3
.end method

.method public static addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;)Z
    .registers 9

    .line 282
    invoke-static {}, Landroidx/core/text/util/LinkifyCompat;->shouldAddLinksFallbackToFramework()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 283
    invoke-static {p0, p1, p2}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_b
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 285
    invoke-static/range {v0 .. v5}, Landroidx/core/text/util/LinkifyCompat;->addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Z

    move-result p0

    return p0
.end method

.method public static addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Z
    .registers 11

    .line 306
    invoke-static {}, Landroidx/core/text/util/LinkifyCompat;->shouldAddLinksFallbackToFramework()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 307
    invoke-static {p0, p1, p2, p3, p4}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Z

    move-result p0

    return p0

    :cond_b
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    .line 309
    invoke-static/range {v0 .. v5}, Landroidx/core/text/util/LinkifyCompat;->addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Z

    move-result p0

    return p0
.end method

.method public static addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Z
    .registers 12

    .line 332
    invoke-static {}, Landroidx/core/text/util/LinkifyCompat;->shouldAddLinksFallbackToFramework()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 333
    invoke-static/range {p0 .. p5}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Z

    move-result p0

    return p0

    :cond_b
    const-string v0, ""

    if-nez p2, :cond_10

    move-object p2, v0

    :cond_10
    const/4 v1, 0x1

    if-eqz p3, :cond_16

    .line 338
    array-length v2, p3

    if-ge v2, v1, :cond_18

    .line 339
    :cond_16
    sget-object p3, Landroidx/core/text/util/LinkifyCompat;->EMPTY_STRING:[Ljava/lang/String;

    .line 342
    :cond_18
    array-length v2, p3

    add-int/2addr v2, v1

    new-array v2, v2, [Ljava/lang/String;

    .line 343
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 p2, 0x0

    .line 344
    :goto_26
    array-length v4, p3

    if-ge p2, v4, :cond_3a

    .line 345
    aget-object v4, p3, p2

    add-int/lit8 p2, p2, 0x1

    if-nez v4, :cond_31

    move-object v4, v0

    goto :goto_37

    .line 346
    :cond_31
    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    :goto_37
    aput-object v4, v2, p2

    goto :goto_26

    .line 350
    :cond_3a
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    const/4 p2, 0x0

    .line 352
    :cond_3f
    :goto_3f
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result p3

    if-eqz p3, :cond_64

    .line 353
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->start()I

    move-result p3

    .line 354
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    if-eqz p4, :cond_54

    .line 358
    invoke-interface {p4, p0, p3, v0}, Landroid/text/util/Linkify$MatchFilter;->acceptMatch(Ljava/lang/CharSequence;II)Z

    move-result v4

    goto :goto_55

    :cond_54
    const/4 v4, 0x1

    :goto_55
    if-eqz v4, :cond_3f

    .line 362
    invoke-virtual {p1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v2, p1, p5}, Landroidx/core/text/util/LinkifyCompat;->makeUrl(Ljava/lang/String;[Ljava/lang/String;Ljava/util/regex/Matcher;Landroid/text/util/Linkify$TransformFilter;)Ljava/lang/String;

    move-result-object p2

    .line 364
    invoke-static {p2, p3, v0, p0}, Landroidx/core/text/util/LinkifyCompat;->applyLink(Ljava/lang/String;IILandroid/text/Spannable;)V

    const/4 p2, 0x1

    goto :goto_3f

    :cond_64
    return p2
.end method

.method public static addLinks(Landroid/widget/TextView;I)Z
    .registers 6

    .line 163
    invoke-static {}, Landroidx/core/text/util/LinkifyCompat;->shouldAddLinksFallbackToFramework()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 164
    invoke-static {p0, p1}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;I)Z

    move-result p0

    return p0

    :cond_b
    const/4 v0, 0x0

    if-nez p1, :cond_f

    return v0

    .line 170
    :cond_f
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 172
    instance-of v2, v1, Landroid/text/Spannable;

    const/4 v3, 0x1

    if-eqz v2, :cond_25

    .line 173
    check-cast v1, Landroid/text/Spannable;

    invoke-static {v1, p1}, Landroidx/core/text/util/LinkifyCompat;->addLinks(Landroid/text/Spannable;I)Z

    move-result p1

    if-eqz p1, :cond_24

    .line 174
    invoke-static {p0}, Landroidx/core/text/util/LinkifyCompat;->addLinkMovementMethod(Landroid/widget/TextView;)V

    return v3

    :cond_24
    return v0

    .line 180
    :cond_25
    invoke-static {v1}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v1

    .line 182
    invoke-static {v1, p1}, Landroidx/core/text/util/LinkifyCompat;->addLinks(Landroid/text/Spannable;I)Z

    move-result p1

    if-eqz p1, :cond_36

    .line 183
    invoke-static {p0}, Landroidx/core/text/util/LinkifyCompat;->addLinkMovementMethod(Landroid/widget/TextView;)V

    .line 184
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return v3

    :cond_36
    return v0
.end method

.method private static applyLink(Ljava/lang/String;IILandroid/text/Spannable;)V
    .registers 5

    .line 437
    new-instance v0, Landroid/text/style/URLSpan;

    invoke-direct {v0, p0}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    const/16 p0, 0x21

    .line 439
    invoke-interface {p3, v0, p1, p2, p0}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method private static findAddress(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 484
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_b

    .line 485
    invoke-static {p0}, Landroid/webkit/WebView;->findAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 487
    :cond_b
    invoke-static {p0}, Landroidx/core/text/util/FindAddress;->findAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/core/text/util/LinkifyCompat$LinkSpec;",
            ">;",
            "Landroid/text/Spannable;",
            "Ljava/util/regex/Pattern;",
            "[",
            "Ljava/lang/String;",
            "Landroid/text/util/Linkify$MatchFilter;",
            "Landroid/text/util/Linkify$TransformFilter;",
            ")V"
        }
    .end annotation

    .line 417
    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    .line 419
    :cond_4
    :goto_4
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 420
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->start()I

    move-result v0

    .line 421
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    if-eqz p4, :cond_1a

    .line 423
    invoke-interface {p4, p1, v0, v1}, Landroid/text/util/Linkify$MatchFilter;->acceptMatch(Ljava/lang/CharSequence;II)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 424
    :cond_1a
    new-instance v2, Landroidx/core/text/util/LinkifyCompat$LinkSpec;

    invoke-direct {v2}, Landroidx/core/text/util/LinkifyCompat$LinkSpec;-><init>()V

    const/4 v3, 0x0

    .line 425
    invoke-virtual {p2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p3, p2, p5}, Landroidx/core/text/util/LinkifyCompat;->makeUrl(Ljava/lang/String;[Ljava/lang/String;Ljava/util/regex/Matcher;Landroid/text/util/Linkify$TransformFilter;)Ljava/lang/String;

    move-result-object v3

    .line 427
    iput-object v3, v2, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->url:Ljava/lang/String;

    .line 428
    iput v0, v2, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->start:I

    .line 429
    iput v1, v2, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->end:I

    .line 431
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_32
    return-void
.end method

.method private static gatherMapLinks(Ljava/util/ArrayList;Landroid/text/Spannable;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/core/text/util/LinkifyCompat$LinkSpec;",
            ">;",
            "Landroid/text/Spannable;",
            ")V"
        }
    .end annotation

    .line 443
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 448
    :catch_5
    :goto_5
    :try_start_5
    invoke-static {p1}, Landroidx/core/text/util/LinkifyCompat;->findAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_43

    .line 449
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_12

    goto :goto_43

    .line 455
    :cond_12
    new-instance v3, Landroidx/core/text/util/LinkifyCompat$LinkSpec;

    invoke-direct {v3}, Landroidx/core/text/util/LinkifyCompat$LinkSpec;-><init>()V

    .line 456
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v2

    add-int/2addr v2, v0

    .line 459
    iput v2, v3, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->start:I

    add-int/2addr v0, v4

    .line 460
    iput v0, v3, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->end:I

    .line 461
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1
    :try_end_26
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_5 .. :try_end_26} :catch_43

    :try_start_26
    const-string v2, "UTF-8"

    .line 467
    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_2c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_26 .. :try_end_2c} :catch_5
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_26 .. :try_end_2c} :catch_43

    .line 472
    :try_start_2c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "geo:0,0?q="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->url:Ljava/lang/String;

    .line 473
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_42
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2c .. :try_end_42} :catch_43

    goto :goto_5

    :catch_43
    :cond_43
    :goto_43
    return-void
.end method

.method private static makeUrl(Ljava/lang/String;[Ljava/lang/String;Ljava/util/regex/Matcher;Landroid/text/util/Linkify$TransformFilter;)Ljava/lang/String;
    .registers 11

    if-eqz p3, :cond_6

    .line 389
    invoke-interface {p3, p2, p0}, Landroid/text/util/Linkify$TransformFilter;->transformUrl(Ljava/util/regex/Matcher;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_6
    const/4 p2, 0x0

    const/4 p3, 0x0

    .line 394
    :goto_8
    array-length v0, p1

    const/4 v6, 0x1

    if-ge p3, v0, :cond_4b

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 395
    aget-object v3, p1, p3

    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_48

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 399
    aget-object v3, p1, p3

    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_4c

    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v1, p1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p3, p1, p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    invoke-virtual {p0, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_4c

    :cond_48
    add-int/lit8 p3, p3, 0x1

    goto :goto_8

    :cond_4b
    const/4 v6, 0x0

    :cond_4c
    :goto_4c
    if-nez v6, :cond_62

    .line 407
    array-length p3, p1

    if-lez p3, :cond_62

    .line 408
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object p1, p1, p2

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_62
    return-object p0
.end method

.method private static pruneOverlaps(Ljava/util/ArrayList;Landroid/text/Spannable;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/core/text/util/LinkifyCompat$LinkSpec;",
            ">;",
            "Landroid/text/Spannable;",
            ")V"
        }
    .end annotation

    .line 492
    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v0

    const-class v1, Landroid/text/style/URLSpan;

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0, v1}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/URLSpan;

    const/4 v1, 0x0

    .line 493
    :goto_e
    array-length v3, v0

    if-ge v1, v3, :cond_30

    .line 494
    new-instance v3, Landroidx/core/text/util/LinkifyCompat$LinkSpec;

    invoke-direct {v3}, Landroidx/core/text/util/LinkifyCompat$LinkSpec;-><init>()V

    .line 495
    aget-object v4, v0, v1

    iput-object v4, v3, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->frameworkAddedSpan:Landroid/text/style/URLSpan;

    .line 496
    aget-object v4, v0, v1

    invoke-interface {p1, v4}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    iput v4, v3, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->start:I

    .line 497
    aget-object v4, v0, v1

    invoke-interface {p1, v4}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    iput v4, v3, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->end:I

    .line 498
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 501
    :cond_30
    sget-object v0, Landroidx/core/text/util/LinkifyCompat;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 503
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_39
    add-int/lit8 v1, v0, -0x1

    if-ge v2, v1, :cond_93

    .line 507
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/text/util/LinkifyCompat$LinkSpec;

    add-int/lit8 v3, v2, 0x1

    .line 508
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/core/text/util/LinkifyCompat$LinkSpec;

    .line 511
    iget v5, v1, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->start:I

    iget v6, v4, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->start:I

    if-gt v5, v6, :cond_91

    iget v5, v1, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->end:I

    iget v6, v4, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->start:I

    if-le v5, v6, :cond_91

    .line 512
    iget v5, v4, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->end:I

    iget v6, v1, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->end:I

    const/4 v7, -0x1

    if-gt v5, v6, :cond_60

    :goto_5e
    move v1, v3

    goto :goto_7c

    .line 514
    :cond_60
    iget v5, v1, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->end:I

    iget v6, v1, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->start:I

    sub-int/2addr v5, v6

    iget v6, v4, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->end:I

    iget v8, v4, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->start:I

    sub-int/2addr v6, v8

    if-le v5, v6, :cond_6d

    goto :goto_5e

    .line 516
    :cond_6d
    iget v5, v1, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->end:I

    iget v1, v1, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->start:I

    sub-int/2addr v5, v1

    iget v1, v4, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->end:I

    iget v4, v4, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->start:I

    sub-int/2addr v1, v4

    if-ge v5, v1, :cond_7b

    move v1, v2

    goto :goto_7c

    :cond_7b
    const/4 v1, -0x1

    :goto_7c
    if-eq v1, v7, :cond_91

    .line 521
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/core/text/util/LinkifyCompat$LinkSpec;

    iget-object v3, v3, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->frameworkAddedSpan:Landroid/text/style/URLSpan;

    if-eqz v3, :cond_8b

    .line 523
    invoke-interface {p1, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 525
    :cond_8b
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_39

    :cond_91
    move v2, v3

    goto :goto_39

    :cond_93
    return-void
.end method

.method private static shouldAddLinksFallbackToFramework()Z
    .registers 2

    .line 373
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

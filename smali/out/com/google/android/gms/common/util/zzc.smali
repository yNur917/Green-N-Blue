.class final Lcom/google/android/gms/common/util/zzc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@18.1.0"


# static fields
.field private static final zza:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "\\\\u[0-9a-fA-F]{4}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/util/zzc;->zza:Ljava/util/regex/Pattern;

    return-void
.end method

.method public static zza(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6f

    sget-object v0, Lcom/google/android/gms/common/util/zzc;->zza:Ljava/util/regex/Pattern;

    .line 2
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3
    :cond_e
    :goto_e
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_5b

    if-nez v2, :cond_1b

    new-instance v2, Ljava/lang/StringBuilder;

    .line 4
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 5
    :cond_1b
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    move v4, v3

    :goto_20
    const/16 v5, 0x5c

    if-ltz v4, :cond_2d

    .line 6
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v5, :cond_2d

    add-int/lit8 v4, v4, -0x1

    goto :goto_20

    :cond_2d
    sub-int/2addr v3, v4

    const/4 v4, 0x2

    rem-int/2addr v3, v4

    if-eqz v3, :cond_e

    .line 7
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    .line 8
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 9
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v4

    invoke-virtual {v2, p0, v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    if-ne v3, v5, :cond_4f

    const-string v1, "\\\\"

    .line 10
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_56

    .line 11
    :cond_4f
    invoke-static {v3}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v1

    .line 12
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 13
    :goto_56
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    goto :goto_e

    :cond_5b
    if-nez v2, :cond_5e

    return-object p0

    .line 14
    :cond_5e
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->regionEnd()I

    move-result v3

    if-ge v1, v3, :cond_6b

    .line 15
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->regionEnd()I

    move-result v0

    invoke-virtual {v2, p0, v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    :cond_6b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_6f
    return-object p0
.end method

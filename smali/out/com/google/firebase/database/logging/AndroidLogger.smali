.class public Lcom/google/firebase/database/logging/AndroidLogger;
.super Lcom/google/firebase/database/logging/DefaultLogger;
.source "AndroidLogger.java"


# direct methods
.method public constructor <init>(Lcom/google/firebase/database/logging/Logger$Level;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/logging/Logger$Level;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/database/logging/DefaultLogger;-><init>(Lcom/google/firebase/database/logging/Logger$Level;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method protected buildLogMessage(Lcom/google/firebase/database/logging/Logger$Level;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;
    .registers 6

    return-object p3
.end method

.method protected debug(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 49
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected error(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 34
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected info(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 44
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected warn(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 39
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

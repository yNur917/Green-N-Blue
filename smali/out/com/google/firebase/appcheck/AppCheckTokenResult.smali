.class public abstract Lcom/google/firebase/appcheck/AppCheckTokenResult;
.super Ljava/lang/Object;
.source "AppCheckTokenResult.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getError()Lcom/google/firebase/FirebaseException;
.end method

.method public abstract getToken()Ljava/lang/String;
.end method

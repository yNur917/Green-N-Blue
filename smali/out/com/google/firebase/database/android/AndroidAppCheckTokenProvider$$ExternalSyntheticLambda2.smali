.class public final synthetic Lcom/google/firebase/database/android/AndroidAppCheckTokenProvider$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/database/core/TokenProvider$TokenChangeListener;

.field public final synthetic f$1:Lcom/google/firebase/appcheck/AppCheckTokenResult;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/database/core/TokenProvider$TokenChangeListener;Lcom/google/firebase/appcheck/AppCheckTokenResult;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/database/android/AndroidAppCheckTokenProvider$$ExternalSyntheticLambda2;->f$0:Lcom/google/firebase/database/core/TokenProvider$TokenChangeListener;

    iput-object p2, p0, Lcom/google/firebase/database/android/AndroidAppCheckTokenProvider$$ExternalSyntheticLambda2;->f$1:Lcom/google/firebase/appcheck/AppCheckTokenResult;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/firebase/database/android/AndroidAppCheckTokenProvider$$ExternalSyntheticLambda2;->f$0:Lcom/google/firebase/database/core/TokenProvider$TokenChangeListener;

    iget-object v1, p0, Lcom/google/firebase/database/android/AndroidAppCheckTokenProvider$$ExternalSyntheticLambda2;->f$1:Lcom/google/firebase/appcheck/AppCheckTokenResult;

    invoke-static {v0, v1}, Lcom/google/firebase/database/android/AndroidAppCheckTokenProvider;->lambda$addTokenChangeListener$3(Lcom/google/firebase/database/core/TokenProvider$TokenChangeListener;Lcom/google/firebase/appcheck/AppCheckTokenResult;)V

    return-void
.end method

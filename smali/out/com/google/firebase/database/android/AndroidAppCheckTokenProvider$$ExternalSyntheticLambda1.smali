.class public final synthetic Lcom/google/firebase/database/android/AndroidAppCheckTokenProvider$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/database/core/TokenProvider$GetTokenCompletionListener;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/database/core/TokenProvider$GetTokenCompletionListener;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/database/android/AndroidAppCheckTokenProvider$$ExternalSyntheticLambda1;->f$0:Lcom/google/firebase/database/core/TokenProvider$GetTokenCompletionListener;

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .registers 3

    iget-object v0, p0, Lcom/google/firebase/database/android/AndroidAppCheckTokenProvider$$ExternalSyntheticLambda1;->f$0:Lcom/google/firebase/database/core/TokenProvider$GetTokenCompletionListener;

    invoke-static {v0, p1}, Lcom/google/firebase/database/android/AndroidAppCheckTokenProvider;->lambda$getToken$2(Lcom/google/firebase/database/core/TokenProvider$GetTokenCompletionListener;Ljava/lang/Exception;)V

    return-void
.end method

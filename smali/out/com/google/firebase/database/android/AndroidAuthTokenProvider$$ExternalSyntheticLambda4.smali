.class public final synthetic Lcom/google/firebase/database/android/AndroidAuthTokenProvider$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/database/core/TokenProvider$GetTokenCompletionListener;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/database/core/TokenProvider$GetTokenCompletionListener;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/database/android/AndroidAuthTokenProvider$$ExternalSyntheticLambda4;->f$0:Lcom/google/firebase/database/core/TokenProvider$GetTokenCompletionListener;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/google/firebase/database/android/AndroidAuthTokenProvider$$ExternalSyntheticLambda4;->f$0:Lcom/google/firebase/database/core/TokenProvider$GetTokenCompletionListener;

    check-cast p1, Lcom/google/firebase/auth/GetTokenResult;

    invoke-static {v0, p1}, Lcom/google/firebase/database/android/AndroidAuthTokenProvider;->lambda$getToken$1(Lcom/google/firebase/database/core/TokenProvider$GetTokenCompletionListener;Lcom/google/firebase/auth/GetTokenResult;)V

    return-void
.end method

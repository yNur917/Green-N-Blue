.class Lcom/example/greenandblue/FriedRiceActivity$3;
.super Ljava/lang/Object;
.source "FriedRiceActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/greenandblue/FriedRiceActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/greenandblue/FriedRiceActivity;

.field final synthetic val$ref:Lcom/google/firebase/database/DatabaseReference;


# direct methods
.method constructor <init>(Lcom/example/greenandblue/FriedRiceActivity;Lcom/google/firebase/database/DatabaseReference;)V
    .registers 3

    .line 64
    iput-object p1, p0, Lcom/example/greenandblue/FriedRiceActivity$3;->this$0:Lcom/example/greenandblue/FriedRiceActivity;

    iput-object p2, p0, Lcom/example/greenandblue/FriedRiceActivity$3;->val$ref:Lcom/google/firebase/database/DatabaseReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .line 68
    iget-object p1, p0, Lcom/example/greenandblue/FriedRiceActivity$3;->this$0:Lcom/example/greenandblue/FriedRiceActivity;

    iget-object p1, p1, Lcom/example/greenandblue/FriedRiceActivity;->fr_name1:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 69
    iget-object v0, p0, Lcom/example/greenandblue/FriedRiceActivity$3;->this$0:Lcom/example/greenandblue/FriedRiceActivity;

    iget-object v0, v0, Lcom/example/greenandblue/FriedRiceActivity;->disp1:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 70
    iget-object v1, p0, Lcom/example/greenandblue/FriedRiceActivity$3;->this$0:Lcom/example/greenandblue/FriedRiceActivity;

    iget-object v1, v1, Lcom/example/greenandblue/FriedRiceActivity;->disp:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 71
    iget-object v2, p0, Lcom/example/greenandblue/FriedRiceActivity$3;->this$0:Lcom/example/greenandblue/FriedRiceActivity;

    iget-object v2, v2, Lcom/example/greenandblue/FriedRiceActivity;->Complain:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 72
    new-instance v3, Lcom/example/greenandblue/food1;

    invoke-direct {v3, v0, v1, p1, v2}, Lcom/example/greenandblue/food1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object p1, p0, Lcom/example/greenandblue/FriedRiceActivity$3;->val$ref:Lcom/google/firebase/database/DatabaseReference;

    invoke-virtual {p1}, Lcom/google/firebase/database/DatabaseReference;->push()Lcom/google/firebase/database/DatabaseReference;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/google/firebase/database/DatabaseReference;->setValue(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    .line 76
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/example/greenandblue/FriedRiceActivity$3;->this$0:Lcom/example/greenandblue/FriedRiceActivity;

    const-class v1, Lcom/example/greenandblue/Customer_infoActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 77
    iget-object v0, p0, Lcom/example/greenandblue/FriedRiceActivity$3;->this$0:Lcom/example/greenandblue/FriedRiceActivity;

    invoke-virtual {v0, p1}, Lcom/example/greenandblue/FriedRiceActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

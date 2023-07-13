.class Lcom/example/greenandblue/Manual_IngredientActivity$1;
.super Ljava/lang/Object;
.source "Manual_IngredientActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/greenandblue/Manual_IngredientActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/greenandblue/Manual_IngredientActivity;


# direct methods
.method constructor <init>(Lcom/example/greenandblue/Manual_IngredientActivity;)V
    .registers 2

    .line 47
    iput-object p1, p0, Lcom/example/greenandblue/Manual_IngredientActivity$1;->this$0:Lcom/example/greenandblue/Manual_IngredientActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 11

    .line 51
    iget-object p1, p0, Lcom/example/greenandblue/Manual_IngredientActivity$1;->this$0:Lcom/example/greenandblue/Manual_IngredientActivity;

    iget-object p1, p1, Lcom/example/greenandblue/Manual_IngredientActivity;->rice_extra1:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 52
    iget-object p1, p0, Lcom/example/greenandblue/Manual_IngredientActivity$1;->this$0:Lcom/example/greenandblue/Manual_IngredientActivity;

    iget-object p1, p1, Lcom/example/greenandblue/Manual_IngredientActivity;->noodles_extra1:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 53
    iget-object p1, p0, Lcom/example/greenandblue/Manual_IngredientActivity$1;->this$0:Lcom/example/greenandblue/Manual_IngredientActivity;

    iget-object p1, p1, Lcom/example/greenandblue/Manual_IngredientActivity;->vegetables_extra1:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 54
    iget-object p1, p0, Lcom/example/greenandblue/Manual_IngredientActivity$1;->this$0:Lcom/example/greenandblue/Manual_IngredientActivity;

    iget-object p1, p1, Lcom/example/greenandblue/Manual_IngredientActivity;->flour_extra1:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 55
    iget-object p1, p0, Lcom/example/greenandblue/Manual_IngredientActivity$1;->this$0:Lcom/example/greenandblue/Manual_IngredientActivity;

    iget-object p1, p1, Lcom/example/greenandblue/Manual_IngredientActivity;->chickpeas_extra1:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 56
    iget-object p1, p0, Lcom/example/greenandblue/Manual_IngredientActivity$1;->this$0:Lcom/example/greenandblue/Manual_IngredientActivity;

    iget-object p1, p1, Lcom/example/greenandblue/Manual_IngredientActivity;->chickenpiece_extra1:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 57
    iget-object p1, p0, Lcom/example/greenandblue/Manual_IngredientActivity$1;->this$0:Lcom/example/greenandblue/Manual_IngredientActivity;

    iget-object p1, p1, Lcom/example/greenandblue/Manual_IngredientActivity;->sausagepiece_extra1:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .line 58
    iget-object p1, p0, Lcom/example/greenandblue/Manual_IngredientActivity$1;->this$0:Lcom/example/greenandblue/Manual_IngredientActivity;

    iget-object p1, p1, Lcom/example/greenandblue/Manual_IngredientActivity;->prawnpiece_extra1:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    .line 60
    new-instance p1, Lcom/example/greenandblue/foodextra;

    move-object v0, p1

    invoke-direct/range {v0 .. v8}, Lcom/example/greenandblue/foodextra;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/example/greenandblue/Manual_IngredientActivity$1;->this$0:Lcom/example/greenandblue/Manual_IngredientActivity;

    iget-object v0, v0, Lcom/example/greenandblue/Manual_IngredientActivity;->extra_ref:Lcom/google/firebase/database/DatabaseReference;

    invoke-virtual {v0}, Lcom/google/firebase/database/DatabaseReference;->push()Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/DatabaseReference;->setValue(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    .line 63
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/example/greenandblue/Manual_IngredientActivity$1;->this$0:Lcom/example/greenandblue/Manual_IngredientActivity;

    const-class v1, Lcom/example/greenandblue/Customer_infoActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 64
    iget-object v0, p0, Lcom/example/greenandblue/Manual_IngredientActivity$1;->this$0:Lcom/example/greenandblue/Manual_IngredientActivity;

    invoke-virtual {v0, p1}, Lcom/example/greenandblue/Manual_IngredientActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

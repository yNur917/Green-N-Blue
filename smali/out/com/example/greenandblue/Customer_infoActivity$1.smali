.class Lcom/example/greenandblue/Customer_infoActivity$1;
.super Ljava/lang/Object;
.source "Customer_infoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/greenandblue/Customer_infoActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/greenandblue/Customer_infoActivity;

.field final synthetic val$CustomerRef:Lcom/google/firebase/database/DatabaseReference;


# direct methods
.method constructor <init>(Lcom/example/greenandblue/Customer_infoActivity;Lcom/google/firebase/database/DatabaseReference;)V
    .registers 3

    .line 33
    iput-object p1, p0, Lcom/example/greenandblue/Customer_infoActivity$1;->this$0:Lcom/example/greenandblue/Customer_infoActivity;

    iput-object p2, p0, Lcom/example/greenandblue/Customer_infoActivity$1;->val$CustomerRef:Lcom/google/firebase/database/DatabaseReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 37
    iget-object p1, p0, Lcom/example/greenandblue/Customer_infoActivity$1;->this$0:Lcom/example/greenandblue/Customer_infoActivity;

    iget-object p1, p1, Lcom/example/greenandblue/Customer_infoActivity;->customername:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 38
    iget-object v0, p0, Lcom/example/greenandblue/Customer_infoActivity$1;->this$0:Lcom/example/greenandblue/Customer_infoActivity;

    iget-object v0, v0, Lcom/example/greenandblue/Customer_infoActivity;->customernumber:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 39
    iget-object v1, p0, Lcom/example/greenandblue/Customer_infoActivity$1;->this$0:Lcom/example/greenandblue/Customer_infoActivity;

    iget-object v1, v1, Lcom/example/greenandblue/Customer_infoActivity;->customeraddress:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 41
    new-instance v2, Lcom/example/greenandblue/customerInfo;

    invoke-direct {v2, p1, v0, v1}, Lcom/example/greenandblue/customerInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iget-object p1, p0, Lcom/example/greenandblue/Customer_infoActivity$1;->val$CustomerRef:Lcom/google/firebase/database/DatabaseReference;

    invoke-virtual {p1}, Lcom/google/firebase/database/DatabaseReference;->push()Lcom/google/firebase/database/DatabaseReference;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/google/firebase/database/DatabaseReference;->setValue(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    .line 44
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/example/greenandblue/Customer_infoActivity$1;->this$0:Lcom/example/greenandblue/Customer_infoActivity;

    const-class v1, Lcom/example/greenandblue/HomeActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 45
    iget-object v0, p0, Lcom/example/greenandblue/Customer_infoActivity$1;->this$0:Lcom/example/greenandblue/Customer_infoActivity;

    invoke-virtual {v0, p1}, Lcom/example/greenandblue/Customer_infoActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

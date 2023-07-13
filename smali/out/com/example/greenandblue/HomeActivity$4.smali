.class Lcom/example/greenandblue/HomeActivity$4;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/greenandblue/HomeActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/greenandblue/HomeActivity;


# direct methods
.method constructor <init>(Lcom/example/greenandblue/HomeActivity;)V
    .registers 2

    .line 69
    iput-object p1, p0, Lcom/example/greenandblue/HomeActivity$4;->this$0:Lcom/example/greenandblue/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 73
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/example/greenandblue/HomeActivity$4;->this$0:Lcom/example/greenandblue/HomeActivity;

    const-class v1, Lcom/example/greenandblue/MyFoodCartActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 74
    iget-object v0, p0, Lcom/example/greenandblue/HomeActivity$4;->this$0:Lcom/example/greenandblue/HomeActivity;

    invoke-virtual {v0, p1}, Lcom/example/greenandblue/HomeActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

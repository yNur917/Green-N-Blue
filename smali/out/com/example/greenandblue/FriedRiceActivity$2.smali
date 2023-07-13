.class Lcom/example/greenandblue/FriedRiceActivity$2;
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


# direct methods
.method constructor <init>(Lcom/example/greenandblue/FriedRiceActivity;)V
    .registers 2

    .line 48
    iput-object p1, p0, Lcom/example/greenandblue/FriedRiceActivity$2;->this$0:Lcom/example/greenandblue/FriedRiceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 51
    iget-object p1, p0, Lcom/example/greenandblue/FriedRiceActivity$2;->this$0:Lcom/example/greenandblue/FriedRiceActivity;

    iget-object p1, p1, Lcom/example/greenandblue/FriedRiceActivity;->disp:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 52
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    .line 54
    iget-object v0, p0, Lcom/example/greenandblue/FriedRiceActivity$2;->this$0:Lcom/example/greenandblue/FriedRiceActivity;

    iget-object v0, v0, Lcom/example/greenandblue/FriedRiceActivity;->disp:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v0, p0, Lcom/example/greenandblue/FriedRiceActivity$2;->this$0:Lcom/example/greenandblue/FriedRiceActivity;

    iget-object v0, v0, Lcom/example/greenandblue/FriedRiceActivity;->disp1:Landroid/widget/TextView;

    mul-int/lit16 p1, p1, 0xfa

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

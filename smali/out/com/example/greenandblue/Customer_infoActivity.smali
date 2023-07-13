.class public Lcom/example/greenandblue/Customer_infoActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "Customer_infoActivity.java"


# instance fields
.field public customeraddress:Landroid/widget/TextView;

.field public customername:Landroid/widget/TextView;

.field public customernumber:Landroid/widget/TextView;

.field public place_order:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 21
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b001d

    .line 22
    invoke-virtual {p0, p1}, Lcom/example/greenandblue/Customer_infoActivity;->setContentView(I)V

    const p1, 0x7f0800a0

    .line 24
    invoke-virtual {p0, p1}, Lcom/example/greenandblue/Customer_infoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/example/greenandblue/Customer_infoActivity;->customername:Landroid/widget/TextView;

    const p1, 0x7f08009f

    .line 25
    invoke-virtual {p0, p1}, Lcom/example/greenandblue/Customer_infoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/example/greenandblue/Customer_infoActivity;->customernumber:Landroid/widget/TextView;

    const p1, 0x7f08009e

    .line 26
    invoke-virtual {p0, p1}, Lcom/example/greenandblue/Customer_infoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/example/greenandblue/Customer_infoActivity;->customeraddress:Landroid/widget/TextView;

    const p1, 0x7f080005

    .line 27
    invoke-virtual {p0, p1}, Lcom/example/greenandblue/Customer_infoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/example/greenandblue/Customer_infoActivity;->place_order:Landroid/widget/Button;

    .line 31
    invoke-static {}, Lcom/google/firebase/database/FirebaseDatabase;->getInstance()Lcom/google/firebase/database/FirebaseDatabase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/database/FirebaseDatabase;->getReference()Lcom/google/firebase/database/DatabaseReference;

    move-result-object p1

    const-string v0, "customer"

    invoke-virtual {p1, v0}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object p1

    .line 33
    iget-object v0, p0, Lcom/example/greenandblue/Customer_infoActivity;->place_order:Landroid/widget/Button;

    new-instance v1, Lcom/example/greenandblue/Customer_infoActivity$1;

    invoke-direct {v1, p0, p1}, Lcom/example/greenandblue/Customer_infoActivity$1;-><init>(Lcom/example/greenandblue/Customer_infoActivity;Lcom/google/firebase/database/DatabaseReference;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.class public Lcom/example/greenandblue/PrawnNoodlesActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "PrawnNoodlesActivity.java"


# instance fields
.field public Complain2:Landroid/widget/TextView;

.field public Pn_name1:Landroid/widget/TextView;

.field public cart2:Landroid/widget/Button;

.field public dec2:Landroid/widget/Button;

.field public disp2:Landroid/widget/TextView;

.field public disp3:Landroid/widget/TextView;

.field public inc2:Landroid/widget/Button;


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

    .line 24
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b0023

    .line 25
    invoke-virtual {p0, p1}, Lcom/example/greenandblue/PrawnNoodlesActivity;->setContentView(I)V

    const p1, 0x7f0800fd

    .line 27
    invoke-virtual {p0, p1}, Lcom/example/greenandblue/PrawnNoodlesActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/example/greenandblue/PrawnNoodlesActivity;->inc2:Landroid/widget/Button;

    const p1, 0x7f0800a5

    .line 28
    invoke-virtual {p0, p1}, Lcom/example/greenandblue/PrawnNoodlesActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/example/greenandblue/PrawnNoodlesActivity;->dec2:Landroid/widget/Button;

    const p1, 0x7f080162

    .line 29
    invoke-virtual {p0, p1}, Lcom/example/greenandblue/PrawnNoodlesActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/example/greenandblue/PrawnNoodlesActivity;->disp2:Landroid/widget/TextView;

    const p1, 0x7f0801ef

    .line 30
    invoke-virtual {p0, p1}, Lcom/example/greenandblue/PrawnNoodlesActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/example/greenandblue/PrawnNoodlesActivity;->disp3:Landroid/widget/TextView;

    const p1, 0x7f08000b

    .line 31
    invoke-virtual {p0, p1}, Lcom/example/greenandblue/PrawnNoodlesActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/example/greenandblue/PrawnNoodlesActivity;->Pn_name1:Landroid/widget/TextView;

    const p1, 0x7f08004f

    .line 32
    invoke-virtual {p0, p1}, Lcom/example/greenandblue/PrawnNoodlesActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/example/greenandblue/PrawnNoodlesActivity;->cart2:Landroid/widget/Button;

    const p1, 0x7f08008e

    .line 33
    invoke-virtual {p0, p1}, Lcom/example/greenandblue/PrawnNoodlesActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/example/greenandblue/PrawnNoodlesActivity;->Complain2:Landroid/widget/TextView;

    .line 37
    iget-object p1, p0, Lcom/example/greenandblue/PrawnNoodlesActivity;->inc2:Landroid/widget/Button;

    new-instance v0, Lcom/example/greenandblue/PrawnNoodlesActivity$1;

    invoke-direct {v0, p0}, Lcom/example/greenandblue/PrawnNoodlesActivity$1;-><init>(Lcom/example/greenandblue/PrawnNoodlesActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    iget-object p1, p0, Lcom/example/greenandblue/PrawnNoodlesActivity;->dec2:Landroid/widget/Button;

    new-instance v0, Lcom/example/greenandblue/PrawnNoodlesActivity$2;

    invoke-direct {v0, p0}, Lcom/example/greenandblue/PrawnNoodlesActivity$2;-><init>(Lcom/example/greenandblue/PrawnNoodlesActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    invoke-static {}, Lcom/google/firebase/database/FirebaseDatabase;->getInstance()Lcom/google/firebase/database/FirebaseDatabase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/database/FirebaseDatabase;->getReference()Lcom/google/firebase/database/DatabaseReference;

    move-result-object p1

    const-string v0, "customer"

    invoke-virtual {p1, v0}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object p1

    .line 64
    iget-object v0, p0, Lcom/example/greenandblue/PrawnNoodlesActivity;->cart2:Landroid/widget/Button;

    new-instance v1, Lcom/example/greenandblue/PrawnNoodlesActivity$3;

    invoke-direct {v1, p0, p1}, Lcom/example/greenandblue/PrawnNoodlesActivity$3;-><init>(Lcom/example/greenandblue/PrawnNoodlesActivity;Lcom/google/firebase/database/DatabaseReference;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

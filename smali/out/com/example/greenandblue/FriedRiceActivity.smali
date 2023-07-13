.class public Lcom/example/greenandblue/FriedRiceActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "FriedRiceActivity.java"


# instance fields
.field public Complain:Landroid/widget/TextView;

.field public cart1:Landroid/widget/Button;

.field public dec:Landroid/widget/Button;

.field public disp:Landroid/widget/TextView;

.field public disp1:Landroid/widget/TextView;

.field public fr_name1:Landroid/widget/TextView;

.field public inc:Landroid/widget/Button;


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

    const p1, 0x7f0b001e

    .line 25
    invoke-virtual {p0, p1}, Lcom/example/greenandblue/FriedRiceActivity;->setContentView(I)V

    const p1, 0x7f0800fc

    .line 27
    invoke-virtual {p0, p1}, Lcom/example/greenandblue/FriedRiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/example/greenandblue/FriedRiceActivity;->inc:Landroid/widget/Button;

    const p1, 0x7f0800a4

    .line 28
    invoke-virtual {p0, p1}, Lcom/example/greenandblue/FriedRiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/example/greenandblue/FriedRiceActivity;->dec:Landroid/widget/Button;

    const p1, 0x7f08000a

    .line 29
    invoke-virtual {p0, p1}, Lcom/example/greenandblue/FriedRiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/example/greenandblue/FriedRiceActivity;->disp:Landroid/widget/TextView;

    const p1, 0x7f080014

    .line 30
    invoke-virtual {p0, p1}, Lcom/example/greenandblue/FriedRiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/example/greenandblue/FriedRiceActivity;->disp1:Landroid/widget/TextView;

    const p1, 0x7f080007

    .line 31
    invoke-virtual {p0, p1}, Lcom/example/greenandblue/FriedRiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/example/greenandblue/FriedRiceActivity;->fr_name1:Landroid/widget/TextView;

    const p1, 0x7f08004e

    .line 32
    invoke-virtual {p0, p1}, Lcom/example/greenandblue/FriedRiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/example/greenandblue/FriedRiceActivity;->cart1:Landroid/widget/Button;

    const p1, 0x7f08008d

    .line 33
    invoke-virtual {p0, p1}, Lcom/example/greenandblue/FriedRiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/example/greenandblue/FriedRiceActivity;->Complain:Landroid/widget/TextView;

    .line 37
    iget-object p1, p0, Lcom/example/greenandblue/FriedRiceActivity;->inc:Landroid/widget/Button;

    new-instance v0, Lcom/example/greenandblue/FriedRiceActivity$1;

    invoke-direct {v0, p0}, Lcom/example/greenandblue/FriedRiceActivity$1;-><init>(Lcom/example/greenandblue/FriedRiceActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    iget-object p1, p0, Lcom/example/greenandblue/FriedRiceActivity;->dec:Landroid/widget/Button;

    new-instance v0, Lcom/example/greenandblue/FriedRiceActivity$2;

    invoke-direct {v0, p0}, Lcom/example/greenandblue/FriedRiceActivity$2;-><init>(Lcom/example/greenandblue/FriedRiceActivity;)V

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
    iget-object v0, p0, Lcom/example/greenandblue/FriedRiceActivity;->cart1:Landroid/widget/Button;

    new-instance v1, Lcom/example/greenandblue/FriedRiceActivity$3;

    invoke-direct {v1, p0, p1}, Lcom/example/greenandblue/FriedRiceActivity$3;-><init>(Lcom/example/greenandblue/FriedRiceActivity;Lcom/google/firebase/database/DatabaseReference;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

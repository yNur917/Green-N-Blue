.class public Lcom/example/greenandblue/Manual_IngredientActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "Manual_IngredientActivity.java"


# instance fields
.field public addcartExtra:Landroid/widget/Button;

.field public chickenpiece_extra1:Landroid/widget/TextView;

.field public chickpeas_extra1:Landroid/widget/TextView;

.field extra_ref:Lcom/google/firebase/database/DatabaseReference;

.field public flour_extra1:Landroid/widget/TextView;

.field public noodles_extra1:Landroid/widget/TextView;

.field public prawnpiece_extra1:Landroid/widget/TextView;

.field public rice_extra1:Landroid/widget/TextView;

.field public sausagepiece_extra1:Landroid/widget/TextView;

.field public vegetables_extra1:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 31
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b0021

    .line 32
    invoke-virtual {p0, p1}, Lcom/example/greenandblue/Manual_IngredientActivity;->setContentView(I)V

    const p1, 0x7f08017f

    .line 34
    invoke-virtual {p0, p1}, Lcom/example/greenandblue/Manual_IngredientActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/example/greenandblue/Manual_IngredientActivity;->rice_extra1:Landroid/widget/TextView;

    const p1, 0x7f08015c

    .line 35
    invoke-virtual {p0, p1}, Lcom/example/greenandblue/Manual_IngredientActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/example/greenandblue/Manual_IngredientActivity;->noodles_extra1:Landroid/widget/TextView;

    const p1, 0x7f080200

    .line 36
    invoke-virtual {p0, p1}, Lcom/example/greenandblue/Manual_IngredientActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/example/greenandblue/Manual_IngredientActivity;->vegetables_extra1:Landroid/widget/TextView;

    const p1, 0x7f0800dc

    .line 37
    invoke-virtual {p0, p1}, Lcom/example/greenandblue/Manual_IngredientActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/example/greenandblue/Manual_IngredientActivity;->flour_extra1:Landroid/widget/TextView;

    const p1, 0x7f08007e

    .line 38
    invoke-virtual {p0, p1}, Lcom/example/greenandblue/Manual_IngredientActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/example/greenandblue/Manual_IngredientActivity;->chickpeas_extra1:Landroid/widget/TextView;

    const p1, 0x7f08007d

    .line 39
    invoke-virtual {p0, p1}, Lcom/example/greenandblue/Manual_IngredientActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/example/greenandblue/Manual_IngredientActivity;->chickenpiece_extra1:Landroid/widget/TextView;

    const p1, 0x7f080186

    .line 40
    invoke-virtual {p0, p1}, Lcom/example/greenandblue/Manual_IngredientActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/example/greenandblue/Manual_IngredientActivity;->sausagepiece_extra1:Landroid/widget/TextView;

    const p1, 0x7f080178

    .line 41
    invoke-virtual {p0, p1}, Lcom/example/greenandblue/Manual_IngredientActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/example/greenandblue/Manual_IngredientActivity;->prawnpiece_extra1:Landroid/widget/TextView;

    const p1, 0x7f080051

    .line 42
    invoke-virtual {p0, p1}, Lcom/example/greenandblue/Manual_IngredientActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/example/greenandblue/Manual_IngredientActivity;->addcartExtra:Landroid/widget/Button;

    .line 45
    invoke-static {}, Lcom/google/firebase/database/FirebaseDatabase;->getInstance()Lcom/google/firebase/database/FirebaseDatabase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/database/FirebaseDatabase;->getReference()Lcom/google/firebase/database/DatabaseReference;

    move-result-object p1

    const-string v0, "customer"

    invoke-virtual {p1, v0}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object p1

    iput-object p1, p0, Lcom/example/greenandblue/Manual_IngredientActivity;->extra_ref:Lcom/google/firebase/database/DatabaseReference;

    .line 47
    iget-object p1, p0, Lcom/example/greenandblue/Manual_IngredientActivity;->addcartExtra:Landroid/widget/Button;

    new-instance v0, Lcom/example/greenandblue/Manual_IngredientActivity$1;

    invoke-direct {v0, p0}, Lcom/example/greenandblue/Manual_IngredientActivity$1;-><init>(Lcom/example/greenandblue/Manual_IngredientActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

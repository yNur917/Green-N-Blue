.class public Lcom/example/greenandblue/HomeActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "HomeActivity.java"


# instance fields
.field public Cartbtn:Landroid/widget/Button;

.field public CholeBhature1:Landroid/widget/ImageView;

.field public FriedRice1:Landroid/widget/ImageView;

.field public PrawnNoodles1:Landroid/widget/ImageView;

.field public extrabtn:Landroid/widget/Button;

.field public home_cholebhature_btn:Landroid/widget/Button;

.field public home_friedrice_btn:Landroid/widget/Button;

.field public home_prawnnoodles_btn:Landroid/widget/Button;

.field public reference:Lcom/google/firebase/database/DatabaseReference;

.field public show_cart:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 31
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b001f

    .line 32
    invoke-virtual {p0, p1}, Lcom/example/greenandblue/HomeActivity;->setContentView(I)V

    .line 34
    invoke-static {}, Lcom/google/firebase/database/FirebaseDatabase;->getInstance()Lcom/google/firebase/database/FirebaseDatabase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/database/FirebaseDatabase;->getReference()Lcom/google/firebase/database/DatabaseReference;

    move-result-object p1

    const-string v0, "food"

    invoke-virtual {p1, v0}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object p1

    iput-object p1, p0, Lcom/example/greenandblue/HomeActivity;->reference:Lcom/google/firebase/database/DatabaseReference;

    const p1, 0x7f0800df

    .line 36
    invoke-virtual {p0, p1}, Lcom/example/greenandblue/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/example/greenandblue/HomeActivity;->FriedRice1:Landroid/widget/ImageView;

    const p1, 0x7f08000c

    .line 37
    invoke-virtual {p0, p1}, Lcom/example/greenandblue/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/example/greenandblue/HomeActivity;->PrawnNoodles1:Landroid/widget/ImageView;

    const p1, 0x7f080084

    .line 38
    invoke-virtual {p0, p1}, Lcom/example/greenandblue/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/example/greenandblue/HomeActivity;->CholeBhature1:Landroid/widget/ImageView;

    const p1, 0x7f080074

    .line 39
    invoke-virtual {p0, p1}, Lcom/example/greenandblue/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/example/greenandblue/HomeActivity;->Cartbtn:Landroid/widget/Button;

    const p1, 0x7f0800d2

    .line 40
    invoke-virtual {p0, p1}, Lcom/example/greenandblue/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/example/greenandblue/HomeActivity;->extrabtn:Landroid/widget/Button;

    const p1, 0x7f0800ef

    .line 41
    invoke-virtual {p0, p1}, Lcom/example/greenandblue/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/example/greenandblue/HomeActivity;->home_friedrice_btn:Landroid/widget/Button;

    const p1, 0x7f0800f0

    .line 42
    invoke-virtual {p0, p1}, Lcom/example/greenandblue/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/example/greenandblue/HomeActivity;->home_prawnnoodles_btn:Landroid/widget/Button;

    const p1, 0x7f0800ee

    .line 43
    invoke-virtual {p0, p1}, Lcom/example/greenandblue/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/example/greenandblue/HomeActivity;->home_cholebhature_btn:Landroid/widget/Button;

    .line 45
    iget-object p1, p0, Lcom/example/greenandblue/HomeActivity;->FriedRice1:Landroid/widget/ImageView;

    new-instance v0, Lcom/example/greenandblue/HomeActivity$1;

    invoke-direct {v0, p0}, Lcom/example/greenandblue/HomeActivity$1;-><init>(Lcom/example/greenandblue/HomeActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    iget-object p1, p0, Lcom/example/greenandblue/HomeActivity;->PrawnNoodles1:Landroid/widget/ImageView;

    new-instance v0, Lcom/example/greenandblue/HomeActivity$2;

    invoke-direct {v0, p0}, Lcom/example/greenandblue/HomeActivity$2;-><init>(Lcom/example/greenandblue/HomeActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    iget-object p1, p0, Lcom/example/greenandblue/HomeActivity;->CholeBhature1:Landroid/widget/ImageView;

    new-instance v0, Lcom/example/greenandblue/HomeActivity$3;

    invoke-direct {v0, p0}, Lcom/example/greenandblue/HomeActivity$3;-><init>(Lcom/example/greenandblue/HomeActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iget-object p1, p0, Lcom/example/greenandblue/HomeActivity;->Cartbtn:Landroid/widget/Button;

    new-instance v0, Lcom/example/greenandblue/HomeActivity$4;

    invoke-direct {v0, p0}, Lcom/example/greenandblue/HomeActivity$4;-><init>(Lcom/example/greenandblue/HomeActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iget-object p1, p0, Lcom/example/greenandblue/HomeActivity;->extrabtn:Landroid/widget/Button;

    new-instance v0, Lcom/example/greenandblue/HomeActivity$5;

    invoke-direct {v0, p0}, Lcom/example/greenandblue/HomeActivity$5;-><init>(Lcom/example/greenandblue/HomeActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

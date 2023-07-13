.class public Lcom/example/greenandblue/CholeBhatureActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "CholeBhatureActivity.java"


# instance fields
.field public Cb_name1:Landroid/widget/TextView;

.field public Complain3:Landroid/widget/TextView;

.field public cart3:Landroid/widget/Button;

.field public dec3:Landroid/widget/Button;

.field public disp4:Landroid/widget/TextView;

.field public disp5:Landroid/widget/TextView;

.field public inc3:Landroid/widget/Button;


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

    const p1, 0x7f0b001c

    .line 25
    invoke-virtual {p0, p1}, Lcom/example/greenandblue/CholeBhatureActivity;->setContentView(I)V

    const p1, 0x7f0800fe

    .line 27
    invoke-virtual {p0, p1}, Lcom/example/greenandblue/CholeBhatureActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/example/greenandblue/CholeBhatureActivity;->inc3:Landroid/widget/Button;

    const p1, 0x7f0800a6

    .line 28
    invoke-virtual {p0, p1}, Lcom/example/greenandblue/CholeBhatureActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/example/greenandblue/CholeBhatureActivity;->dec3:Landroid/widget/Button;

    const p1, 0x7f080163

    .line 29
    invoke-virtual {p0, p1}, Lcom/example/greenandblue/CholeBhatureActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/example/greenandblue/CholeBhatureActivity;->disp4:Landroid/widget/TextView;

    const p1, 0x7f0801f0

    .line 30
    invoke-virtual {p0, p1}, Lcom/example/greenandblue/CholeBhatureActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/example/greenandblue/CholeBhatureActivity;->disp5:Landroid/widget/TextView;

    const p1, 0x7f080004

    .line 31
    invoke-virtual {p0, p1}, Lcom/example/greenandblue/CholeBhatureActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/example/greenandblue/CholeBhatureActivity;->Cb_name1:Landroid/widget/TextView;

    const p1, 0x7f080050

    .line 32
    invoke-virtual {p0, p1}, Lcom/example/greenandblue/CholeBhatureActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/example/greenandblue/CholeBhatureActivity;->cart3:Landroid/widget/Button;

    const p1, 0x7f08008f

    .line 33
    invoke-virtual {p0, p1}, Lcom/example/greenandblue/CholeBhatureActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/example/greenandblue/CholeBhatureActivity;->Complain3:Landroid/widget/TextView;

    .line 37
    iget-object p1, p0, Lcom/example/greenandblue/CholeBhatureActivity;->inc3:Landroid/widget/Button;

    new-instance v0, Lcom/example/greenandblue/CholeBhatureActivity$1;

    invoke-direct {v0, p0}, Lcom/example/greenandblue/CholeBhatureActivity$1;-><init>(Lcom/example/greenandblue/CholeBhatureActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    iget-object p1, p0, Lcom/example/greenandblue/CholeBhatureActivity;->dec3:Landroid/widget/Button;

    new-instance v0, Lcom/example/greenandblue/CholeBhatureActivity$2;

    invoke-direct {v0, p0}, Lcom/example/greenandblue/CholeBhatureActivity$2;-><init>(Lcom/example/greenandblue/CholeBhatureActivity;)V

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
    iget-object v0, p0, Lcom/example/greenandblue/CholeBhatureActivity;->cart3:Landroid/widget/Button;

    new-instance v1, Lcom/example/greenandblue/CholeBhatureActivity$3;

    invoke-direct {v1, p0, p1}, Lcom/example/greenandblue/CholeBhatureActivity$3;-><init>(Lcom/example/greenandblue/CholeBhatureActivity;Lcom/google/firebase/database/DatabaseReference;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

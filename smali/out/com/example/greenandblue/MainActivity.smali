.class public Lcom/example/greenandblue/MainActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MainActivity.java"


# instance fields
.field public login:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 17
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b0020

    .line 18
    invoke-virtual {p0, p1}, Lcom/example/greenandblue/MainActivity;->setContentView(I)V

    const p1, 0x7f080116

    .line 20
    invoke-virtual {p0, p1}, Lcom/example/greenandblue/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/example/greenandblue/MainActivity;->login:Landroid/widget/Button;

    .line 23
    new-instance v0, Lcom/example/greenandblue/MainActivity$1;

    invoke-direct {v0, p0}, Lcom/example/greenandblue/MainActivity$1;-><init>(Lcom/example/greenandblue/MainActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

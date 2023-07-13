.class public Lcom/example/greenandblue/SignupActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SignupActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 11
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b0024

    .line 12
    invoke-virtual {p0, p1}, Lcom/example/greenandblue/SignupActivity;->setContentView(I)V

    return-void
.end method

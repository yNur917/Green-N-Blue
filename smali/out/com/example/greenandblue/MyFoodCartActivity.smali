.class public Lcom/example/greenandblue/MyFoodCartActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MyFoodCartActivity.java"


# instance fields
.field textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 31
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b0022

    .line 32
    invoke-virtual {p0, p1}, Lcom/example/greenandblue/MyFoodCartActivity;->setContentView(I)V

    return-void
.end method

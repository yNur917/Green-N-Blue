.class Landroidx/core/view/WindowInsetsControllerCompat$Impl26;
.super Landroidx/core/view/WindowInsetsControllerCompat$Impl23;
.source "WindowInsetsControllerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/WindowInsetsControllerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Impl26"
.end annotation


# direct methods
.method constructor <init>(Landroid/view/Window;Landroid/view/View;)V
    .registers 3

    .line 575
    invoke-direct {p0, p1, p2}, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;-><init>(Landroid/view/Window;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public isAppearanceLightNavigationBars()Z
    .registers 2

    .line 580
    iget-object v0, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl26;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public setAppearanceLightNavigationBars(Z)V
    .registers 3

    const/16 v0, 0x10

    if-eqz p1, :cond_12

    const/high16 p1, 0x8000000

    .line 587
    invoke-virtual {p0, p1}, Landroidx/core/view/WindowInsetsControllerCompat$Impl26;->unsetWindowFlag(I)V

    const/high16 p1, -0x80000000

    .line 588
    invoke-virtual {p0, p1}, Landroidx/core/view/WindowInsetsControllerCompat$Impl26;->setWindowFlag(I)V

    .line 589
    invoke-virtual {p0, v0}, Landroidx/core/view/WindowInsetsControllerCompat$Impl26;->setSystemUiFlag(I)V

    goto :goto_15

    .line 591
    :cond_12
    invoke-virtual {p0, v0}, Landroidx/core/view/WindowInsetsControllerCompat$Impl26;->unsetSystemUiFlag(I)V

    :goto_15
    return-void
.end method

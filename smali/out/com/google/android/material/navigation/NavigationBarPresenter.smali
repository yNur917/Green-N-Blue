.class public Lcom/google/android/material/navigation/NavigationBarPresenter;
.super Ljava/lang/Object;
.source "NavigationBarPresenter.java"

# interfaces
.implements Landroidx/appcompat/view/menu/MenuPresenter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/navigation/NavigationBarPresenter$SavedState;
    }
.end annotation


# instance fields
.field private id:I

.field private menu:Landroidx/appcompat/view/menu/MenuBuilder;

.field private menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

.field private updateSuspended:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lcom/google/android/material/navigation/NavigationBarPresenter;->updateSuspended:Z

    return-void
.end method


# virtual methods
.method public collapseItemActionView(Landroidx/appcompat/view/menu/MenuBuilder;Landroidx/appcompat/view/menu/MenuItemImpl;)Z
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public expandItemActionView(Landroidx/appcompat/view/menu/MenuBuilder;Landroidx/appcompat/view/menu/MenuItemImpl;)Z
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public flagActionItems()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getId()I
    .registers 2

    .line 110
    iget v0, p0, Lcom/google/android/material/navigation/NavigationBarPresenter;->id:I

    return v0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Landroidx/appcompat/view/menu/MenuView;
    .registers 2

    .line 63
    iget-object p1, p0, Lcom/google/android/material/navigation/NavigationBarPresenter;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    return-object p1
.end method

.method public initForMenu(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;)V
    .registers 3

    .line 56
    iput-object p2, p0, Lcom/google/android/material/navigation/NavigationBarPresenter;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 57
    iget-object p1, p0, Lcom/google/android/material/navigation/NavigationBarPresenter;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    invoke-virtual {p1, p2}, Lcom/google/android/material/navigation/NavigationBarMenuView;->initialize(Landroidx/appcompat/view/menu/MenuBuilder;)V

    return-void
.end method

.method public onCloseMenu(Landroidx/appcompat/view/menu/MenuBuilder;Z)V
    .registers 3

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 4

    .line 125
    instance-of v0, p1, Lcom/google/android/material/navigation/NavigationBarPresenter$SavedState;

    if-eqz v0, :cond_1e

    .line 126
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarPresenter;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    check-cast p1, Lcom/google/android/material/navigation/NavigationBarPresenter$SavedState;

    iget v1, p1, Lcom/google/android/material/navigation/NavigationBarPresenter$SavedState;->selectedItemId:I

    invoke-virtual {v0, v1}, Lcom/google/android/material/navigation/NavigationBarMenuView;->tryRestoreSelectedItemId(I)V

    .line 127
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarPresenter;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    .line 129
    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p1, p1, Lcom/google/android/material/navigation/NavigationBarPresenter$SavedState;->badgeSavedStates:Lcom/google/android/material/internal/ParcelableSparseArray;

    .line 128
    invoke-static {v0, p1}, Lcom/google/android/material/badge/BadgeUtils;->createBadgeDrawablesFromSavedStates(Landroid/content/Context;Lcom/google/android/material/internal/ParcelableSparseArray;)Landroid/util/SparseArray;

    move-result-object p1

    .line 130
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarPresenter;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/navigation/NavigationBarMenuView;->setBadgeDrawables(Landroid/util/SparseArray;)V

    :cond_1e
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    .line 116
    new-instance v0, Lcom/google/android/material/navigation/NavigationBarPresenter$SavedState;

    invoke-direct {v0}, Lcom/google/android/material/navigation/NavigationBarPresenter$SavedState;-><init>()V

    .line 117
    iget-object v1, p0, Lcom/google/android/material/navigation/NavigationBarPresenter;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    invoke-virtual {v1}, Lcom/google/android/material/navigation/NavigationBarMenuView;->getSelectedItemId()I

    move-result v1

    iput v1, v0, Lcom/google/android/material/navigation/NavigationBarPresenter$SavedState;->selectedItemId:I

    .line 118
    iget-object v1, p0, Lcom/google/android/material/navigation/NavigationBarPresenter;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    .line 119
    invoke-virtual {v1}, Lcom/google/android/material/navigation/NavigationBarMenuView;->getBadgeDrawables()Landroid/util/SparseArray;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/material/badge/BadgeUtils;->createParcelableBadgeStates(Landroid/util/SparseArray;)Lcom/google/android/material/internal/ParcelableSparseArray;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/material/navigation/NavigationBarPresenter$SavedState;->badgeSavedStates:Lcom/google/android/material/internal/ParcelableSparseArray;

    return-object v0
.end method

.method public onSubMenuSelected(Landroidx/appcompat/view/menu/SubMenuBuilder;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public setCallback(Landroidx/appcompat/view/menu/MenuPresenter$Callback;)V
    .registers 2

    return-void
.end method

.method public setId(I)V
    .registers 2

    .line 105
    iput p1, p0, Lcom/google/android/material/navigation/NavigationBarPresenter;->id:I

    return-void
.end method

.method public setMenuView(Lcom/google/android/material/navigation/NavigationBarMenuView;)V
    .registers 2

    .line 51
    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationBarPresenter;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    return-void
.end method

.method public setUpdateSuspended(Z)V
    .registers 2

    .line 135
    iput-boolean p1, p0, Lcom/google/android/material/navigation/NavigationBarPresenter;->updateSuspended:Z

    return-void
.end method

.method public updateMenuView(Z)V
    .registers 3

    .line 68
    iget-boolean v0, p0, Lcom/google/android/material/navigation/NavigationBarPresenter;->updateSuspended:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    if-eqz p1, :cond_d

    .line 72
    iget-object p1, p0, Lcom/google/android/material/navigation/NavigationBarPresenter;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    invoke-virtual {p1}, Lcom/google/android/material/navigation/NavigationBarMenuView;->buildMenuView()V

    goto :goto_12

    .line 74
    :cond_d
    iget-object p1, p0, Lcom/google/android/material/navigation/NavigationBarPresenter;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    invoke-virtual {p1}, Lcom/google/android/material/navigation/NavigationBarMenuView;->updateMenuView()V

    :goto_12
    return-void
.end method

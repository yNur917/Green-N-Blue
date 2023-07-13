.class public Lcom/example/greenandblue/food2;
.super Ljava/lang/Object;
.source "food2.java"


# instance fields
.field NumOfItems:Ljava/lang/String;

.field ProductName:Ljava/lang/String;

.field change:Ljava/lang/String;

.field price:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/example/greenandblue/food2;->price:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lcom/example/greenandblue/food2;->NumOfItems:Ljava/lang/String;

    .line 13
    iput-object p3, p0, Lcom/example/greenandblue/food2;->ProductName:Ljava/lang/String;

    .line 14
    iput-object p4, p0, Lcom/example/greenandblue/food2;->change:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getChange()Ljava/lang/String;
    .registers 2

    .line 42
    iget-object v0, p0, Lcom/example/greenandblue/food2;->change:Ljava/lang/String;

    return-object v0
.end method

.method public getNumOfItems()Ljava/lang/String;
    .registers 2

    .line 26
    iget-object v0, p0, Lcom/example/greenandblue/food2;->NumOfItems:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()Ljava/lang/String;
    .registers 2

    .line 18
    iget-object v0, p0, Lcom/example/greenandblue/food2;->price:Ljava/lang/String;

    return-object v0
.end method

.method public getProductName()Ljava/lang/String;
    .registers 2

    .line 34
    iget-object v0, p0, Lcom/example/greenandblue/food2;->ProductName:Ljava/lang/String;

    return-object v0
.end method

.method public setComplain(Ljava/lang/String;)V
    .registers 2

    .line 46
    iput-object p1, p0, Lcom/example/greenandblue/food2;->change:Ljava/lang/String;

    return-void
.end method

.method public setP2(Ljava/lang/String;)V
    .registers 2

    .line 30
    iput-object p1, p0, Lcom/example/greenandblue/food2;->NumOfItems:Ljava/lang/String;

    return-void
.end method

.method public setP3(Ljava/lang/String;)V
    .registers 2

    .line 38
    iput-object p1, p0, Lcom/example/greenandblue/food2;->ProductName:Ljava/lang/String;

    return-void
.end method

.method public setPrice(Ljava/lang/String;)V
    .registers 2

    .line 22
    iget-object p1, p0, Lcom/example/greenandblue/food2;->price:Ljava/lang/String;

    iput-object p1, p0, Lcom/example/greenandblue/food2;->price:Ljava/lang/String;

    return-void
.end method

.class public Lcom/example/greenandblue/customerInfo;
.super Ljava/lang/Object;
.source "customerInfo.java"


# instance fields
.field address:Ljava/lang/String;

.field name:Ljava/lang/String;

.field number:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/example/greenandblue/customerInfo;->name:Ljava/lang/String;

    .line 10
    iput-object p2, p0, Lcom/example/greenandblue/customerInfo;->number:Ljava/lang/String;

    .line 11
    iput-object p3, p0, Lcom/example/greenandblue/customerInfo;->address:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .registers 2

    .line 31
    iget-object v0, p0, Lcom/example/greenandblue/customerInfo;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 15
    iget-object v0, p0, Lcom/example/greenandblue/customerInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .registers 2

    .line 23
    iget-object v0, p0, Lcom/example/greenandblue/customerInfo;->number:Ljava/lang/String;

    return-object v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .registers 2

    .line 35
    iput-object p1, p0, Lcom/example/greenandblue/customerInfo;->address:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 19
    iget-object p1, p0, Lcom/example/greenandblue/customerInfo;->name:Ljava/lang/String;

    iput-object p1, p0, Lcom/example/greenandblue/customerInfo;->name:Ljava/lang/String;

    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .registers 2

    .line 27
    iget-object p1, p0, Lcom/example/greenandblue/customerInfo;->number:Ljava/lang/String;

    iput-object p1, p0, Lcom/example/greenandblue/customerInfo;->number:Ljava/lang/String;

    return-void
.end method

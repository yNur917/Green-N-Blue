.class public Landroidx/core/telephony/TelephonyManagerCompat;
.super Ljava/lang/Object;
.source "TelephonyManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/telephony/TelephonyManagerCompat$Api23Impl;,
        Landroidx/core/telephony/TelephonyManagerCompat$Api26Impl;,
        Landroidx/core/telephony/TelephonyManagerCompat$Api30Impl;
    }
.end annotation


# static fields
.field private static sGetDeviceIdMethod:Ljava/lang/reflect/Method;

.field private static sGetSubIdMethod:Ljava/lang/reflect/Method;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getImei(Landroid/telephony/TelephonyManager;)Ljava/lang/String;
    .registers 8

    .line 70
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_b

    .line 71
    invoke-static {p0}, Landroidx/core/telephony/TelephonyManagerCompat$Api26Impl;->getImei(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 72
    :cond_b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_58

    .line 77
    invoke-static {p0}, Landroidx/core/telephony/TelephonyManagerCompat;->getSubscriptionId(Landroid/telephony/TelephonyManager;)I

    move-result v0

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_58

    const/4 v1, -0x1

    if-eq v0, v1, :cond_58

    .line 79
    invoke-static {v0}, Landroidx/core/telephony/SubscriptionManagerCompat;->getSlotIndex(I)I

    move-result v0

    .line 80
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_2c

    .line 81
    invoke-static {p0, v0}, Landroidx/core/telephony/TelephonyManagerCompat$Api23Impl;->getDeviceId(Landroid/telephony/TelephonyManager;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 84
    :cond_2c
    :try_start_2c
    sget-object v1, Landroidx/core/telephony/TelephonyManagerCompat;->sGetDeviceIdMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_45

    .line 85
    const-class v1, Landroid/telephony/TelephonyManager;

    const-string v4, "getDeviceId"

    new-array v5, v3, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v2

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroidx/core/telephony/TelephonyManagerCompat;->sGetDeviceIdMethod:Ljava/lang/reflect/Method;

    .line 88
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 91
    :cond_45
    sget-object v1, Landroidx/core/telephony/TelephonyManagerCompat;->sGetDeviceIdMethod:Ljava/lang/reflect/Method;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v2

    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_55
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2c .. :try_end_55} :catch_56
    .catch Ljava/lang/IllegalAccessException; {:try_start_2c .. :try_end_55} :catch_56
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2c .. :try_end_55} :catch_56

    return-object p0

    :catch_56
    const/4 p0, 0x0

    return-object p0

    .line 102
    :cond_58
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSubscriptionId(Landroid/telephony/TelephonyManager;)I
    .registers 5

    .line 112
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_b

    .line 113
    invoke-static {p0}, Landroidx/core/telephony/TelephonyManagerCompat$Api30Impl;->getSubscriptionId(Landroid/telephony/TelephonyManager;)I

    move-result p0

    return p0

    .line 114
    :cond_b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_3e

    .line 116
    :try_start_11
    sget-object v0, Landroidx/core/telephony/TelephonyManagerCompat;->sGetSubIdMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-nez v0, :cond_26

    .line 117
    const-class v0, Landroid/telephony/TelephonyManager;

    const-string v2, "getSubId"

    new-array v3, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroidx/core/telephony/TelephonyManagerCompat;->sGetSubIdMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    .line 118
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 121
    :cond_26
    sget-object v0, Landroidx/core/telephony/TelephonyManagerCompat;->sGetSubIdMethod:Ljava/lang/reflect/Method;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_3e

    .line 122
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3e

    .line 123
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_3d
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_11 .. :try_end_3d} :catch_3e
    .catch Ljava/lang/IllegalAccessException; {:try_start_11 .. :try_end_3d} :catch_3e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_11 .. :try_end_3d} :catch_3e

    return p0

    :catch_3e
    :cond_3e
    const p0, 0x7fffffff

    return p0
.end method

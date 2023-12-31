.class public Lcom/google/android/gms/common/GoogleSignatureVerifier;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@18.1.0"


# annotations
.annotation runtime Lcom/google/errorprone/annotations/CheckReturnValue;
.end annotation

.annotation runtime Lcom/google/errorprone/annotations/RestrictedInheritance;
    allowedOnPath = ".*java.*/com/google/android/gms/common/testing/.*"
    explanation = "Sub classing of GMS Core\'s APIs are restricted to testing fakes."
    link = "go/gmscore-restrictedinheritance"
.end annotation


# static fields
.field private static zza:Lcom/google/android/gms/common/GoogleSignatureVerifier;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private static volatile zzb:Ljava/util/Set;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private final zzc:Landroid/content/Context;

.field private volatile zzd:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/GoogleSignatureVerifier;->zzc:Landroid/content/Context;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/google/android/gms/common/GoogleSignatureVerifier;
    .registers 3

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-class v0, Lcom/google/android/gms/common/GoogleSignatureVerifier;

    monitor-enter v0

    :try_start_6
    sget-object v1, Lcom/google/android/gms/common/GoogleSignatureVerifier;->zza:Lcom/google/android/gms/common/GoogleSignatureVerifier;

    if-nez v1, :cond_14

    .line 2
    invoke-static {p0}, Lcom/google/android/gms/common/zzn;->zze(Landroid/content/Context;)V

    new-instance v1, Lcom/google/android/gms/common/GoogleSignatureVerifier;

    .line 3
    invoke-direct {v1, p0}, Lcom/google/android/gms/common/GoogleSignatureVerifier;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/google/android/gms/common/GoogleSignatureVerifier;->zza:Lcom/google/android/gms/common/GoogleSignatureVerifier;

    .line 4
    :cond_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_18

    sget-object p0, Lcom/google/android/gms/common/GoogleSignatureVerifier;->zza:Lcom/google/android/gms/common/GoogleSignatureVerifier;

    return-object p0

    :catchall_18
    move-exception p0

    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw p0
.end method

.method static final varargs zza(Landroid/content/pm/PackageInfo;[Lcom/google/android/gms/common/zzj;)Lcom/google/android/gms/common/zzj;
    .registers 5
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 2
    :cond_6
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v0, v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_14

    const-string p0, "GoogleSignatureVerifier"

    const-string p1, "Package has more than one signature."

    .line 3
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_14
    new-instance v0, Lcom/google/android/gms/common/zzk;

    .line 4
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v2, 0x0

    aget-object p0, p0, v2

    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/zzk;-><init>([B)V

    .line 5
    :goto_22
    array-length p0, p1

    if-ge v2, p0, :cond_33

    .line 6
    aget-object p0, p1, v2

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/zzj;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_30

    .line 7
    aget-object p0, p1, v2

    return-object p0

    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    :cond_33
    return-object v1
.end method

.method public static final zzb(Landroid/content/pm/PackageInfo;Z)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_27

    if-eqz p0, :cond_27

    .line 1
    iget-object v2, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v3, "com.android.vending"

    .line 2
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    iget-object v2, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v3, "com.google.android.gms"

    .line 3
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 4
    :cond_1a
    iget-object p1, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez p1, :cond_20

    :cond_1e
    const/4 p1, 0x0

    goto :goto_27

    .line 5
    :cond_20
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 p1, p1, 0x81

    if-eqz p1, :cond_1e

    const/4 p1, 0x1

    :cond_27
    :goto_27
    if-eqz p0, :cond_45

    .line 6
    iget-object v2, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v2, :cond_45

    if-eqz p1, :cond_36

    .line 7
    sget-object p1, Lcom/google/android/gms/common/zzm;->zza:[Lcom/google/android/gms/common/zzj;

    invoke-static {p0, p1}, Lcom/google/android/gms/common/GoogleSignatureVerifier;->zza(Landroid/content/pm/PackageInfo;[Lcom/google/android/gms/common/zzj;)Lcom/google/android/gms/common/zzj;

    move-result-object p0

    goto :goto_42

    :cond_36
    new-array p1, v0, [Lcom/google/android/gms/common/zzj;

    .line 8
    sget-object v2, Lcom/google/android/gms/common/zzm;->zza:[Lcom/google/android/gms/common/zzj;

    aget-object v2, v2, v1

    aput-object v2, p1, v1

    invoke-static {p0, p1}, Lcom/google/android/gms/common/GoogleSignatureVerifier;->zza(Landroid/content/pm/PackageInfo;[Lcom/google/android/gms/common/zzj;)Lcom/google/android/gms/common/zzj;

    move-result-object p0

    :goto_42
    if-eqz p0, :cond_45

    return v0

    :cond_45
    return v1
.end method

.method private final zzc(Ljava/lang/String;ZZ)Lcom/google/android/gms/common/zzx;
    .registers 9

    const-string p2, "null pkg"

    if-nez p1, :cond_9

    .line 1
    invoke-static {p2}, Lcom/google/android/gms/common/zzx;->zzc(Ljava/lang/String;)Lcom/google/android/gms/common/zzx;

    move-result-object p1

    return-object p1

    :cond_9
    iget-object p3, p0, Lcom/google/android/gms/common/GoogleSignatureVerifier;->zzd:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_94

    .line 2
    invoke-static {}, Lcom/google/android/gms/common/zzn;->zzg()Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_23

    iget-object p2, p0, Lcom/google/android/gms/common/GoogleSignatureVerifier;->zzc:Landroid/content/Context;

    .line 3
    invoke-static {p2}, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->honorsDebugCertificates(Landroid/content/Context;)Z

    move-result p2

    .line 4
    invoke-static {p1, p2, v0, v0}, Lcom/google/android/gms/common/zzn;->zzb(Ljava/lang/String;ZZZ)Lcom/google/android/gms/common/zzx;

    move-result-object p2

    goto :goto_81

    :cond_23
    :try_start_23
    iget-object p3, p0, Lcom/google/android/gms/common/GoogleSignatureVerifier;->zzc:Landroid/content/Context;

    .line 5
    invoke-virtual {p3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p3

    const/16 v1, 0x40

    .line 6
    invoke-virtual {p3, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p3
    :try_end_2f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_23 .. :try_end_2f} :catch_88

    iget-object v1, p0, Lcom/google/android/gms/common/GoogleSignatureVerifier;->zzc:Landroid/content/Context;

    .line 7
    invoke-static {v1}, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->honorsDebugCertificates(Landroid/content/Context;)Z

    move-result v1

    if-nez p3, :cond_3c

    invoke-static {p2}, Lcom/google/android/gms/common/zzx;->zzc(Ljava/lang/String;)Lcom/google/android/gms/common/zzx;

    move-result-object p2

    goto :goto_81

    .line 8
    :cond_3c
    iget-object p2, p3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz p2, :cond_7b

    iget-object p2, p3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length p2, p2

    const/4 v2, 0x1

    if-eq p2, v2, :cond_47

    goto :goto_7b

    :cond_47
    new-instance p2, Lcom/google/android/gms/common/zzk;

    .line 9
    iget-object v3, p3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v3

    invoke-direct {p2, v3}, Lcom/google/android/gms/common/zzk;-><init>([B)V

    .line 10
    iget-object v3, p3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 11
    invoke-static {v3, p2, v1, v0}, Lcom/google/android/gms/common/zzn;->zza(Ljava/lang/String;Lcom/google/android/gms/common/zzj;ZZ)Lcom/google/android/gms/common/zzx;

    move-result-object v1

    iget-boolean v4, v1, Lcom/google/android/gms/common/zzx;->zza:Z

    if-eqz v4, :cond_79

    .line 12
    iget-object v4, p3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_79

    iget-object p3, p3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p3, p3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_79

    .line 13
    invoke-static {v3, p2, v0, v2}, Lcom/google/android/gms/common/zzn;->zza(Ljava/lang/String;Lcom/google/android/gms/common/zzj;ZZ)Lcom/google/android/gms/common/zzx;

    move-result-object p2

    iget-boolean p2, p2, Lcom/google/android/gms/common/zzx;->zza:Z

    if-eqz p2, :cond_79

    const-string p2, "debuggable release cert app rejected"

    invoke-static {p2}, Lcom/google/android/gms/common/zzx;->zzc(Ljava/lang/String;)Lcom/google/android/gms/common/zzx;

    move-result-object p2

    goto :goto_81

    :cond_79
    move-object p2, v1

    goto :goto_81

    :cond_7b
    :goto_7b
    const-string p2, "single cert required"

    .line 8
    invoke-static {p2}, Lcom/google/android/gms/common/zzx;->zzc(Ljava/lang/String;)Lcom/google/android/gms/common/zzx;

    move-result-object p2

    .line 4
    :goto_81
    iget-boolean p3, p2, Lcom/google/android/gms/common/zzx;->zza:Z

    if-eqz p3, :cond_87

    iput-object p1, p0, Lcom/google/android/gms/common/GoogleSignatureVerifier;->zzd:Ljava/lang/String;

    :cond_87
    return-object p2

    :catch_88
    move-exception p2

    const-string p3, "no pkg "

    .line 13
    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/google/android/gms/common/zzx;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/common/zzx;

    move-result-object p1

    return-object p1

    :cond_94
    invoke-static {}, Lcom/google/android/gms/common/zzx;->zzb()Lcom/google/android/gms/common/zzx;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public isGooglePublicSignedPackage(Landroid/content/pm/PackageInfo;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 1
    :cond_4
    invoke-static {p1, v0}, Lcom/google/android/gms/common/GoogleSignatureVerifier;->zzb(Landroid/content/pm/PackageInfo;Z)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_c

    return v2

    .line 2
    :cond_c
    invoke-static {p1, v2}, Lcom/google/android/gms/common/GoogleSignatureVerifier;->zzb(Landroid/content/pm/PackageInfo;Z)Z

    move-result p1

    if-eqz p1, :cond_22

    iget-object p1, p0, Lcom/google/android/gms/common/GoogleSignatureVerifier;->zzc:Landroid/content/Context;

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->honorsDebugCertificates(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1b

    return v2

    :cond_1b
    const-string p1, "GoogleSignatureVerifier"

    const-string v1, "Test-keys aren\'t accepted on this build."

    .line 4
    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    return v0
.end method

.method public isPackageGoogleSigned(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v0}, Lcom/google/android/gms/common/GoogleSignatureVerifier;->zzc(Ljava/lang/String;ZZ)Lcom/google/android/gms/common/zzx;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/common/zzx;->zze()V

    iget-boolean p1, p1, Lcom/google/android/gms/common/zzx;->zza:Z

    return p1
.end method

.method public isUidGoogleSigned(I)Z
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/GoogleSignatureVerifier;->zzc:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_27

    array-length v0, p1

    if-nez v0, :cond_10

    goto :goto_27

    :cond_10
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_13
    if-ge v3, v0, :cond_23

    .line 2
    aget-object v1, p1, v3

    .line 3
    invoke-direct {p0, v1, v2, v2}, Lcom/google/android/gms/common/GoogleSignatureVerifier;->zzc(Ljava/lang/String;ZZ)Lcom/google/android/gms/common/zzx;

    move-result-object v1

    iget-boolean v4, v1, Lcom/google/android/gms/common/zzx;->zza:Z

    if-eqz v4, :cond_20

    goto :goto_2d

    :cond_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 4
    :cond_23
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2d

    :cond_27
    :goto_27
    const-string p1, "no pkgs"

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/zzx;->zzc(Ljava/lang/String;)Lcom/google/android/gms/common/zzx;

    move-result-object v1

    .line 5
    :goto_2d
    invoke-virtual {v1}, Lcom/google/android/gms/common/zzx;->zze()V

    iget-boolean p1, v1, Lcom/google/android/gms/common/zzx;->zza:Z

    return p1
.end method

.class public Landroidx/lifecycle/ProcessLifecycleOwner;
.super Ljava/lang/Object;
.source "ProcessLifecycleOwner.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleOwner;


# static fields
.field static final TIMEOUT_MS:J = 0x2bcL

.field private static final sInstance:Landroidx/lifecycle/ProcessLifecycleOwner;


# instance fields
.field private mDelayedPauseRunnable:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field mInitializationListener:Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;

.field private mPauseSent:Z

.field private final mRegistry:Landroidx/lifecycle/LifecycleRegistry;

.field private mResumedCounter:I

.field private mStartedCounter:I

.field private mStopSent:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 92
    new-instance v0, Landroidx/lifecycle/ProcessLifecycleOwner;

    invoke-direct {v0}, Landroidx/lifecycle/ProcessLifecycleOwner;-><init>()V

    sput-object v0, Landroidx/lifecycle/ProcessLifecycleOwner;->sInstance:Landroidx/lifecycle/ProcessLifecycleOwner;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 58
    iput v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->mStartedCounter:I

    .line 59
    iput v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->mResumedCounter:I

    const/4 v0, 0x1

    .line 61
    iput-boolean v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->mPauseSent:Z

    .line 62
    iput-boolean v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->mStopSent:Z

    .line 65
    new-instance v0, Landroidx/lifecycle/LifecycleRegistry;

    invoke-direct {v0, p0}, Landroidx/lifecycle/LifecycleRegistry;-><init>(Landroidx/lifecycle/LifecycleOwner;)V

    iput-object v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->mRegistry:Landroidx/lifecycle/LifecycleRegistry;

    .line 67
    new-instance v0, Landroidx/lifecycle/ProcessLifecycleOwner$1;

    invoke-direct {v0, p0}, Landroidx/lifecycle/ProcessLifecycleOwner$1;-><init>(Landroidx/lifecycle/ProcessLifecycleOwner;)V

    iput-object v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->mDelayedPauseRunnable:Ljava/lang/Runnable;

    .line 75
    new-instance v0, Landroidx/lifecycle/ProcessLifecycleOwner$2;

    invoke-direct {v0, p0}, Landroidx/lifecycle/ProcessLifecycleOwner$2;-><init>(Landroidx/lifecycle/ProcessLifecycleOwner;)V

    iput-object v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->mInitializationListener:Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;

    return-void
.end method

.method public static get()Landroidx/lifecycle/LifecycleOwner;
    .registers 1

    .line 102
    sget-object v0, Landroidx/lifecycle/ProcessLifecycleOwner;->sInstance:Landroidx/lifecycle/ProcessLifecycleOwner;

    return-object v0
.end method

.method static init(Landroid/content/Context;)V
    .registers 2

    .line 106
    sget-object v0, Landroidx/lifecycle/ProcessLifecycleOwner;->sInstance:Landroidx/lifecycle/ProcessLifecycleOwner;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/ProcessLifecycleOwner;->attach(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method activityPaused()V
    .registers 5

    .line 130
    iget v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->mResumedCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->mResumedCounter:I

    if-nez v0, :cond_11

    .line 132
    iget-object v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->mDelayedPauseRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_11
    return-void
.end method

.method activityResumed()V
    .registers 3

    .line 118
    iget v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->mResumedCounter:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->mResumedCounter:I

    if-ne v0, v1, :cond_1e

    .line 120
    iget-boolean v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->mPauseSent:Z

    if-eqz v0, :cond_17

    .line 121
    iget-object v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->mRegistry:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    const/4 v0, 0x0

    .line 122
    iput-boolean v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->mPauseSent:Z

    goto :goto_1e

    .line 124
    :cond_17
    iget-object v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->mDelayedPauseRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1e
    :goto_1e
    return-void
.end method

.method activityStarted()V
    .registers 3

    .line 110
    iget v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->mStartedCounter:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->mStartedCounter:I

    if-ne v0, v1, :cond_16

    .line 111
    iget-boolean v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->mStopSent:Z

    if-eqz v0, :cond_16

    .line 112
    iget-object v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->mRegistry:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    const/4 v0, 0x0

    .line 113
    iput-boolean v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->mStopSent:Z

    :cond_16
    return-void
.end method

.method activityStopped()V
    .registers 2

    .line 137
    iget v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->mStartedCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->mStartedCounter:I

    .line 138
    invoke-virtual {p0}, Landroidx/lifecycle/ProcessLifecycleOwner;->dispatchStopIfNeeded()V

    return-void
.end method

.method attach(Landroid/content/Context;)V
    .registers 4

    .line 160
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->mHandler:Landroid/os/Handler;

    .line 161
    iget-object v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->mRegistry:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 162
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    .line 163
    new-instance v0, Landroidx/lifecycle/ProcessLifecycleOwner$3;

    invoke-direct {v0, p0}, Landroidx/lifecycle/ProcessLifecycleOwner$3;-><init>(Landroidx/lifecycle/ProcessLifecycleOwner;)V

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method dispatchPauseIfNeeded()V
    .registers 3

    .line 142
    iget v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->mResumedCounter:I

    if-nez v0, :cond_e

    const/4 v0, 0x1

    .line 143
    iput-boolean v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->mPauseSent:Z

    .line 144
    iget-object v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->mRegistry:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    :cond_e
    return-void
.end method

.method dispatchStopIfNeeded()V
    .registers 3

    .line 149
    iget v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->mStartedCounter:I

    if-nez v0, :cond_12

    iget-boolean v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->mPauseSent:Z

    if-eqz v0, :cond_12

    .line 150
    iget-object v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->mRegistry:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    const/4 v0, 0x1

    .line 151
    iput-boolean v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->mStopSent:Z

    :cond_12
    return-void
.end method

.method public getLifecycle()Landroidx/lifecycle/Lifecycle;
    .registers 2

    .line 212
    iget-object v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->mRegistry:Landroidx/lifecycle/LifecycleRegistry;

    return-object v0
.end method

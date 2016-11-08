.class public Lorg/mokee/platform/internal/display/LiveDisplayService;
.super Lorg/mokee/platform/internal/MKSystemService;
.source "LiveDisplayService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mokee/platform/internal/display/LiveDisplayService$State;,
        Lorg/mokee/platform/internal/display/LiveDisplayService$ModeObserver;,
        Lorg/mokee/platform/internal/display/LiveDisplayService$1;,
        Lorg/mokee/platform/internal/display/LiveDisplayService$2;,
        Lorg/mokee/platform/internal/display/LiveDisplayService$3;,
        Lorg/mokee/platform/internal/display/LiveDisplayService$4;,
        Lorg/mokee/platform/internal/display/LiveDisplayService$5;
    }
.end annotation


# static fields
.field private static ACTION_NEXT_MODE:Ljava/lang/String; = null

.field static ALL_CHANGED:I = 0x0

.field static DISPLAY_CHANGED:I = 0x0

.field static MODE_CHANGED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "LiveDisplay"

.field static TWILIGHT_CHANGED:I


# instance fields
.field private mAwaitingNudge:Z

.field private final mBinder:Landroid/os/IBinder;

.field private mCTC:Lorg/mokee/platform/internal/display/ColorTemperatureController;

.field private mConfig:Lmokee/hardware/LiveDisplayConfig;

.field private final mContext:Landroid/content/Context;

.field private mDHC:Lorg/mokee/platform/internal/display/DisplayHardwareController;

.field private final mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private final mFeatures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/mokee/platform/internal/display/LiveDisplayFeature;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Lcom/android/server/ServiceThread;

.field private mLowPowerModeListener:Landroid/os/PowerManagerInternal$LowPowerModeListener;

.field private mModeObserver:Lorg/mokee/platform/internal/display/LiveDisplayService$ModeObserver;

.field private final mNextModeReceiver:Landroid/content/BroadcastReceiver;

.field private mOMC:Lorg/mokee/platform/internal/display/OutdoorModeController;

.field private mPAC:Lorg/mokee/platform/internal/display/PictureAdjustmentController;

.field private final mState:Lorg/mokee/platform/internal/display/LiveDisplayService$State;

.field private mSunset:Z

.field private mTileAnnouncementEntries:[Ljava/lang/String;

.field private mTileDescriptionEntries:[Ljava/lang/String;

.field private mTileEntries:[Ljava/lang/String;

.field private mTileEntryIconRes:[I

.field private mTileValues:[Ljava/lang/String;

.field private final mTwilightListener:Lcom/android/server/twilight/TwilightListener;

.field private mTwilightManager:Lcom/android/server/twilight/TwilightManager;


# direct methods
.method static synthetic -get0(Lorg/mokee/platform/internal/display/LiveDisplayService;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/mokee/platform/internal/display/LiveDisplayService;->mAwaitingNudge:Z

    return v0
.end method

.method static synthetic -get1(Lorg/mokee/platform/internal/display/LiveDisplayService;)Lorg/mokee/platform/internal/display/ColorTemperatureController;
    .locals 1

    iget-object v0, p0, Lorg/mokee/platform/internal/display/LiveDisplayService;->mCTC:Lorg/mokee/platform/internal/display/ColorTemperatureController;

    return-object v0
.end method

.method static synthetic -get10(Lorg/mokee/platform/internal/display/LiveDisplayService;)Lcom/android/server/twilight/TwilightManager;
    .locals 1

    iget-object v0, p0, Lorg/mokee/platform/internal/display/LiveDisplayService;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    return-object v0
.end method

.method static synthetic -get2(Lorg/mokee/platform/internal/display/LiveDisplayService;)Lmokee/hardware/LiveDisplayConfig;
    .locals 1

    iget-object v0, p0, Lorg/mokee/platform/internal/display/LiveDisplayService;->mConfig:Lmokee/hardware/LiveDisplayConfig;

    return-object v0
.end method

.method static synthetic -get3(Lorg/mokee/platform/internal/display/LiveDisplayService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lorg/mokee/platform/internal/display/LiveDisplayService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get4(Lorg/mokee/platform/internal/display/LiveDisplayService;)Lorg/mokee/platform/internal/display/DisplayHardwareController;
    .locals 1

    iget-object v0, p0, Lorg/mokee/platform/internal/display/LiveDisplayService;->mDHC:Lorg/mokee/platform/internal/display/DisplayHardwareController;

    return-object v0
.end method

.method static synthetic -get5(Lorg/mokee/platform/internal/display/LiveDisplayService;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lorg/mokee/platform/internal/display/LiveDisplayService;->mFeatures:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get6(Lorg/mokee/platform/internal/display/LiveDisplayService;)Lorg/mokee/platform/internal/display/LiveDisplayService$ModeObserver;
    .locals 1

    iget-object v0, p0, Lorg/mokee/platform/internal/display/LiveDisplayService;->mModeObserver:Lorg/mokee/platform/internal/display/LiveDisplayService$ModeObserver;

    return-object v0
.end method

.method static synthetic -get7(Lorg/mokee/platform/internal/display/LiveDisplayService;)Lorg/mokee/platform/internal/display/OutdoorModeController;
    .locals 1

    iget-object v0, p0, Lorg/mokee/platform/internal/display/LiveDisplayService;->mOMC:Lorg/mokee/platform/internal/display/OutdoorModeController;

    return-object v0
.end method

.method static synthetic -get8(Lorg/mokee/platform/internal/display/LiveDisplayService;)Lorg/mokee/platform/internal/display/PictureAdjustmentController;
    .locals 1

    iget-object v0, p0, Lorg/mokee/platform/internal/display/LiveDisplayService;->mPAC:Lorg/mokee/platform/internal/display/PictureAdjustmentController;

    return-object v0
.end method

.method static synthetic -get9(Lorg/mokee/platform/internal/display/LiveDisplayService;)Lorg/mokee/platform/internal/display/LiveDisplayService$State;
    .locals 1

    iget-object v0, p0, Lorg/mokee/platform/internal/display/LiveDisplayService;->mState:Lorg/mokee/platform/internal/display/LiveDisplayService$State;

    return-object v0
.end method

.method static synthetic -wrap0(Lorg/mokee/platform/internal/display/LiveDisplayService;)Z
    .locals 1

    invoke-direct {p0}, Lorg/mokee/platform/internal/display/LiveDisplayService;->isScreenOn()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lorg/mokee/platform/internal/display/LiveDisplayService;Ljava/lang/String;I)I
    .locals 1
    .param p1, "setting"    # Ljava/lang/String;
    .param p2, "defValue"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lorg/mokee/platform/internal/display/LiveDisplayService;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lorg/mokee/platform/internal/display/LiveDisplayService;)I
    .locals 1

    invoke-direct {p0}, Lorg/mokee/platform/internal/display/LiveDisplayService;->getNextModeIndex()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lorg/mokee/platform/internal/display/LiveDisplayService;)V
    .locals 0

    invoke-direct {p0}, Lorg/mokee/platform/internal/display/LiveDisplayService;->nudge()V

    return-void
.end method

.method static synthetic -wrap4(Lorg/mokee/platform/internal/display/LiveDisplayService;)V
    .locals 0

    invoke-direct {p0}, Lorg/mokee/platform/internal/display/LiveDisplayService;->publishCustomTile()V

    return-void
.end method

.method static synthetic -wrap5(Lorg/mokee/platform/internal/display/LiveDisplayService;Ljava/lang/String;I)V
    .locals 0
    .param p1, "setting"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lorg/mokee/platform/internal/display/LiveDisplayService;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic -wrap6(Lorg/mokee/platform/internal/display/LiveDisplayService;)V
    .locals 0

    invoke-direct {p0}, Lorg/mokee/platform/internal/display/LiveDisplayService;->stopNudgingMe()V

    return-void
.end method

.method static synthetic -wrap7(Lorg/mokee/platform/internal/display/LiveDisplayService;I)V
    .locals 0
    .param p1, "flags"    # I

    .prologue
    invoke-direct {p0, p1}, Lorg/mokee/platform/internal/display/LiveDisplayService;->updateFeatures(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 114
    const-string/jumbo v0, "mokee.hardware.NEXT_LIVEDISPLAY_MODE"

    sput-object v0, Lorg/mokee/platform/internal/display/LiveDisplayService;->ACTION_NEXT_MODE:Ljava/lang/String;

    .line 116
    const/4 v0, 0x1

    sput v0, Lorg/mokee/platform/internal/display/LiveDisplayService;->MODE_CHANGED:I

    .line 117
    const/4 v0, 0x2

    sput v0, Lorg/mokee/platform/internal/display/LiveDisplayService;->DISPLAY_CHANGED:I

    .line 118
    const/4 v0, 0x4

    sput v0, Lorg/mokee/platform/internal/display/LiveDisplayService;->TWILIGHT_CHANGED:I

    .line 119
    const/16 v0, 0xff

    sput v0, Lorg/mokee/platform/internal/display/LiveDisplayService;->ALL_CHANGED:I

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 139
    invoke-direct {p0, p1}, Lorg/mokee/platform/internal/MKSystemService;-><init>(Landroid/content/Context;)V

    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mokee/platform/internal/display/LiveDisplayService;->mAwaitingNudge:Z

    .line 96
    iput-boolean v2, p0, Lorg/mokee/platform/internal/display/LiveDisplayService;->mSunset:Z

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/mokee/platform/internal/display/LiveDisplayService;->mFeatures:Ljava/util/List;

    .line 136
    new-instance v0, Lorg/mokee/platform/internal/display/LiveDisplayService$State;

    invoke-direct {v0}, Lorg/mokee/platform/internal/display/LiveDisplayService$State;-><init>()V

    iput-object v0, p0, Lorg/mokee/platform/internal/display/LiveDisplayService;->mState:Lorg/mokee/platform/internal/display/LiveDisplayService$State;

    .line 357
    new-instance v0, Lorg/mokee/platform/internal/display/LiveDisplayService$1;

    invoke-direct {v0, p0}, Lorg/mokee/platform/internal/display/LiveDisplayService$1;-><init>(Lorg/mokee/platform/internal/display/LiveDisplayService;)V

    iput-object v0, p0, Lorg/mokee/platform/internal/display/LiveDisplayService;->mNextModeReceiver:Landroid/content/BroadcastReceiver;

    .line 365
    new-instance v0, Lorg/mokee/platform/internal/display/LiveDisplayService$2;

    invoke-direct {v0, p0}, Lorg/mokee/platform/internal/display/LiveDisplayService$2;-><init>(Lorg/mokee/platform/internal/display/LiveDisplayService;)V

    iput-object v0, p0, Lorg/mokee/platform/internal/display/LiveDisplayService;->mBinder:Landroid/os/IBinder;

    .line 509
    new-instance v0, Lorg/mokee/platform/internal/display/LiveDisplayService$3;

    invoke-direct {v0, p0}, Lorg/mokee/platform/internal/display/LiveDisplayService$3;-><init>(Lorg/mokee/platform/internal/display/LiveDisplayService;)V

    .line 508
    iput-object v0, p0, Lorg/mokee/platform/internal/display/LiveDisplayService;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 533
    new-instance v0, Lorg/mokee/platform/internal/display/LiveDisplayService$4;

    invoke-direct {v0, p0}, Lorg/mokee/platform/internal/display/LiveDisplayService$4;-><init>(Lorg/mokee/platform/internal/display/LiveDisplayService;)V

    .line 532
    iput-object v0, p0, Lorg/mokee/platform/internal/display/LiveDisplayService;->mLowPowerModeListener:Landroid/os/PowerManagerInternal$LowPowerModeListener;

    .line 587
    new-instance v0, Lorg/mokee/platform/internal/display/LiveDisplayService$5;

    invoke-direct {v0, p0}, Lorg/mokee/platform/internal/display/LiveDisplayService$5;-><init>(Lorg/mokee/platform/internal/display/LiveDisplayService;)V

    iput-object v0, p0, Lorg/mokee/platform/internal/display/LiveDisplayService;->mTwilightListener:Lcom/android/server/twilight/TwilightListener;

    .line 141
    iput-object p1, p0, Lorg/mokee/platform/internal/display/LiveDisplayService;->mContext:Landroid/content/Context;

    .line 143
    new-instance v0, Lcom/android/server/ServiceThread;

    const-string/jumbo v1, "LiveDisplay"

    invoke-direct {v0, v1, v2, v2}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v0, p0, Lorg/mokee/platform/internal/display/LiveDisplayService;->mHandlerThread:Lcom/android/server/ServiceThread;

    .line 145
    iget-object v0, p0, Lorg/mokee/platform/internal/display/LiveDisplayService;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    .line 146
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lorg/mokee/platform/internal/display/LiveDisplayService;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lorg/mokee/platform/internal/display/LiveDisplayService;->mHandler:Landroid/os/Handler;

    .line 148
    invoke-direct {p0}, Lorg/mokee/platform/internal/display/LiveDisplayService;->updateCustomTileEntries()V

    .line 138
    return-void
.end method

.method private getCurrentModeIndex()I
    .locals 2

    .prologue
    .line 266
    iget-object v0, p0, Lorg/mokee/platform/internal/display/LiveDisplayService;->mTileValues:[Ljava/lang/String;

    iget-object v1, p0, Lorg/mokee/platform/internal/display/LiveDisplayService;->mModeObserver:Lorg/mokee/platform/internal/display/LiveDisplayService$ModeObserver;

    invoke-virtual {v1}, Lorg/mokee/platform/internal/display/LiveDisplayService$ModeObserver;->getMode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private getCustomTileLongClickPendingIntent()Landroid/app/PendingIntent;
    .locals 6

    .prologue
    .line 351
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v0, "mokee.settings.LIVEDISPLAY_SETTINGS"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 352
    .local v2, "i":Landroid/content/Intent;
    const/high16 v0, 0x10000000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 353
    iget-object v0, p0, Lorg/mokee/platform/internal/display/LiveDisplayService;->mContext:Landroid/content/Context;

    .line 354
    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 353
    const/4 v1, 0x0

    .line 354
    const/high16 v3, 0x8000000

    const/4 v4, 0x0

    .line 353
    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private getCustomTileNextModePendingIntent()Landroid/app/PendingIntent;
    .locals 5

    .prologue
    .line 345
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lorg/mokee/platform/internal/display/LiveDisplayService;->ACTION_NEXT_MODE:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 346
    .local v0, "i":Landroid/content/Intent;
    iget-object v1, p0, Lorg/mokee/platform/internal/display/LiveDisplayService;->mContext:Landroid/content/Context;

    .line 347
    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 346
    const/4 v3, 0x0

    .line 347
    const/high16 v4, 0x8000000

    .line 346
    invoke-static {v1, v3, v0, v4, v2}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method private getInt(Ljava/lang/String;I)I
    .locals 2
    .param p1, "setting"    # Ljava/lang/String;
    .param p2, "defValue"    # I

    .prologue
    .line 679
    iget-object v0, p0, Lorg/mokee/platform/internal/display/LiveDisplayService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 680
    const/4 v1, -0x2

    .line 679
    invoke-static {v0, p1, p2, v1}, Lmokee/providers/MKSettings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method private getNextModeIndex()I
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 270
    invoke-direct {p0}, Lorg/mokee/platform/internal/display/LiveDisplayService;->getCurrentModeIndex()I

    move-result v2

    add-int/lit8 v0, v2, 0x1

    .line 272
    .local v0, "next":I
    iget-object v2, p0, Lorg/mokee/platform/internal/display/LiveDisplayService;->mTileValues:[Ljava/lang/String;

    array-length v2, v2

    if-lt v0, v2, :cond_0

    .line 273
    const/4 v0, 0x0

    .line 279
    :cond_0
    :goto_0
    iget-object v2, p0, Lorg/mokee/platform/internal/display/LiveDisplayService;->mTileValues:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 280
    .local v1, "nextMode":I
    if-ne v1, v4, :cond_2

    .line 282
    iget-object v2, p0, Lorg/mokee/platform/internal/display/LiveDisplayService;->mConfig:Lmokee/hardware/LiveDisplayConfig;

    invoke-virtual {v2, v4}, Lmokee/hardware/LiveDisplayConfig;->hasFeature(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 283
    iget-object v2, p0, Lorg/mokee/platform/internal/display/LiveDisplayService;->mConfig:Lmokee/hardware/LiveDisplayConfig;

    const/16 v3, 0xe

    invoke-virtual {v2, v3}, Lmokee/hardware/LiveDisplayConfig;->hasFeature(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 297
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 298
    iget-object v2, p0, Lorg/mokee/platform/internal/display/LiveDisplayService;->mTileValues:[Ljava/lang/String;

    array-length v2, v2

    if-lt v0, v2, :cond_0

    .line 299
    const/4 v0, 0x0

    goto :goto_0

    .line 286
    :cond_2
    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 288
    iget-object v2, p0, Lorg/mokee/platform/internal/display/LiveDisplayService;->mCTC:Lorg/mokee/platform/internal/display/ColorTemperatureController;

    invoke-virtual {v2}, Lorg/mokee/platform/internal/display/ColorTemperatureController;->getDayColorTemperature()I

    move-result v2

    iget-object v3, p0, Lorg/mokee/platform/internal/display/LiveDisplayService;->mConfig:Lmokee/hardware/LiveDisplayConfig;

    invoke-virtual {v3}, Lmokee/hardware/LiveDisplayConfig;->getDefaultDayTemperature()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 303
    :cond_3
    return v1
.end method

.method private getSunsetCounter()I
    .locals 4

    .prologue
    .line 604
    iget-object v0, p0, Lorg/mokee/platform/internal/display/LiveDisplayService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 605
    const-string/jumbo v1, "live_display_hinted"

    .line 606
    const/4 v2, -0x3

    .line 607
    const/4 v3, -0x2

    .line 604
    invoke-static {v0, v1, v2, v3}, Lmokee/providers/MKSettings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method private isScreenOn()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 597
    iget-object v1, p0, Lorg/mokee/platform/internal/display/LiveDisplayService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1, v0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getState()I

    move-result v1

    .line 598
    const/4 v2, 0x2

    .line 597
    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private nudge()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const v11, 0x3f070045

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 635
    iget-object v7, p0, Lorg/mokee/platform/internal/display/LiveDisplayService;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    invoke-interface {v7}, Lcom/android/server/twilight/TwilightManager;->getCurrentState()Lcom/android/server/twilight/TwilightState;

    move-result-object v6

    .line 636
    .local v6, "twilight":Lcom/android/server/twilight/TwilightState;
    iget-boolean v7, p0, Lorg/mokee/platform/internal/display/LiveDisplayService;->mAwaitingNudge:Z

    if-eqz v7, :cond_0

    if-nez v6, :cond_1

    .line 637
    :cond_0
    return-void

    .line 640
    :cond_1
    invoke-direct {p0}, Lorg/mokee/platform/internal/display/LiveDisplayService;->getSunsetCounter()I

    move-result v1

    .line 643
    .local v1, "counter":I
    invoke-virtual {v6}, Lcom/android/server/twilight/TwilightState;->isNight()Z

    move-result v7

    if-eqz v7, :cond_2

    iget-boolean v7, p0, Lorg/mokee/platform/internal/display/LiveDisplayService;->mSunset:Z

    if-eqz v7, :cond_3

    :cond_2
    const/4 v5, 0x0

    .line 644
    .local v5, "transition":Z
    :goto_0
    invoke-virtual {v6}, Lcom/android/server/twilight/TwilightState;->isNight()Z

    move-result v7

    iput-boolean v7, p0, Lorg/mokee/platform/internal/display/LiveDisplayService;->mSunset:Z

    .line 645
    if-nez v5, :cond_4

    .line 646
    return-void

    .line 643
    .end local v5    # "transition":Z
    :cond_3
    const/4 v5, 0x1

    .restart local v5    # "transition":Z
    goto :goto_0

    .line 649
    :cond_4
    if-gtz v1, :cond_5

    .line 650
    add-int/lit8 v1, v1, 0x1

    .line 651
    invoke-direct {p0, v1}, Lorg/mokee/platform/internal/display/LiveDisplayService;->updateSunsetCounter(I)V

    .line 653
    :cond_5
    if-nez v1, :cond_6

    .line 655
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v7, "mokee.settings.LIVEDISPLAY_SETTINGS"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 657
    .local v2, "intent":Landroid/content/Intent;
    iget-object v7, p0, Lorg/mokee/platform/internal/display/LiveDisplayService;->mContext:Landroid/content/Context;

    const/high16 v8, 0x8000000

    .line 656
    invoke-static {v7, v9, v2, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 658
    .local v4, "result":Landroid/app/PendingIntent;
    new-instance v7, Landroid/app/Notification$Builder;

    iget-object v8, p0, Lorg/mokee/platform/internal/display/LiveDisplayService;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 659
    iget-object v8, p0, Lorg/mokee/platform/internal/display/LiveDisplayService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 660
    const v9, 0x3f07003a

    .line 659
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 658
    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    .line 661
    iget-object v8, p0, Lorg/mokee/platform/internal/display/LiveDisplayService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 658
    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    .line 663
    const v8, 0x3f020003

    .line 658
    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v7

    .line 664
    new-instance v8, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v8}, Landroid/app/Notification$BigTextStyle;-><init>()V

    iget-object v9, p0, Lorg/mokee/platform/internal/display/LiveDisplayService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v8

    .line 658
    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 671
    .local v0, "builder":Landroid/app/Notification$Builder;
    iget-object v7, p0, Lorg/mokee/platform/internal/display/LiveDisplayService;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "notification"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 672
    .local v3, "nm":Landroid/app/NotificationManager;
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v7

    sget-object v8, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v12, v10, v7, v8}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 674
    invoke-direct {p0, v10}, Lorg/mokee/platform/internal/display/LiveDisplayService;->updateSunsetCounter(I)V

    .line 634
    .end local v0    # "builder":Landroid/app/Notification$Builder;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "nm":Landroid/app/NotificationManager;
    .end local v4    # "result":Landroid/app/PendingIntent;
    :cond_6
    return-void
.end method

.method private publishCustomTile()V
    .locals 10

    .prologue
    .line 308
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    .line 309
    .local v7, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 311
    .local v4, "token":J
    :try_start_0
    invoke-direct {p0}, Lorg/mokee/platform/internal/display/LiveDisplayService;->getCurrentModeIndex()I

    move-result v0

    .line 312
    .local v0, "idx":I
    new-instance v6, Landroid/os/UserHandle;

    invoke-direct {v6, v7}, Landroid/os/UserHandle;-><init>(I)V

    .line 313
    .local v6, "user":Landroid/os/UserHandle;
    iget-object v8, p0, Lorg/mokee/platform/internal/display/LiveDisplayService;->mContext:Landroid/content/Context;

    invoke-static {v8, v7}, Lorg/mokee/internal/util/QSUtils;->getQSTileContext(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v1

    .line 315
    .local v1, "resourceContext":Landroid/content/Context;
    iget-object v8, p0, Lorg/mokee/platform/internal/display/LiveDisplayService;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lmokee/app/MKStatusBarManager;->getInstance(Landroid/content/Context;)Lmokee/app/MKStatusBarManager;

    move-result-object v2

    .line 316
    .local v2, "statusBarManager":Lmokee/app/MKStatusBarManager;
    new-instance v8, Lmokee/app/CustomTile$Builder;

    invoke-direct {v8, v1}, Lmokee/app/CustomTile$Builder;-><init>(Landroid/content/Context;)V

    .line 317
    iget-object v9, p0, Lorg/mokee/platform/internal/display/LiveDisplayService;->mTileEntries:[Ljava/lang/String;

    aget-object v9, v9, v0

    .line 316
    invoke-virtual {v8, v9}, Lmokee/app/CustomTile$Builder;->setLabel(Ljava/lang/String;)Lmokee/app/CustomTile$Builder;

    move-result-object v8

    .line 318
    iget-object v9, p0, Lorg/mokee/platform/internal/display/LiveDisplayService;->mTileDescriptionEntries:[Ljava/lang/String;

    aget-object v9, v9, v0

    .line 316
    invoke-virtual {v8, v9}, Lmokee/app/CustomTile$Builder;->setContentDescription(Ljava/lang/String;)Lmokee/app/CustomTile$Builder;

    move-result-object v8

    .line 319
    iget-object v9, p0, Lorg/mokee/platform/internal/display/LiveDisplayService;->mTileEntryIconRes:[I

    aget v9, v9, v0

    .line 316
    invoke-virtual {v8, v9}, Lmokee/app/CustomTile$Builder;->setIcon(I)Lmokee/app/CustomTile$Builder;

    move-result-object v8

    .line 320
    invoke-direct {p0}, Lorg/mokee/platform/internal/display/LiveDisplayService;->getCustomTileLongClickPendingIntent()Landroid/app/PendingIntent;

    move-result-object v9

    .line 316
    invoke-virtual {v8, v9}, Lmokee/app/CustomTile$Builder;->setOnLongClickIntent(Landroid/app/PendingIntent;)Lmokee/app/CustomTile$Builder;

    move-result-object v8

    .line 321
    invoke-direct {p0}, Lorg/mokee/platform/internal/display/LiveDisplayService;->getCustomTileNextModePendingIntent()Landroid/app/PendingIntent;

    move-result-object v9

    .line 316
    invoke-virtual {v8, v9}, Lmokee/app/CustomTile$Builder;->setOnClickIntent(Landroid/app/PendingIntent;)Lmokee/app/CustomTile$Builder;

    move-result-object v8

    .line 322
    const/4 v9, 0x0

    .line 316
    invoke-virtual {v8, v9}, Lmokee/app/CustomTile$Builder;->shouldCollapsePanel(Z)Lmokee/app/CustomTile$Builder;

    move-result-object v8

    invoke-virtual {v8}, Lmokee/app/CustomTile$Builder;->build()Lmokee/app/CustomTile;

    move-result-object v3

    .line 324
    .local v3, "tile":Lmokee/app/CustomTile;
    const-string/jumbo v8, "live_display"

    .line 325
    const-class v9, Lorg/mokee/platform/internal/display/LiveDisplayService;

    invoke-virtual {v9}, Ljava/lang/Class;->hashCode()I

    move-result v9

    .line 324
    invoke-virtual {v2, v8, v9, v3, v6}, Lmokee/app/MKStatusBarManager;->publishTileAsUser(Ljava/lang/String;ILmokee/app/CustomTile;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 327
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 306
    return-void

    .line 326
    .end local v0    # "idx":I
    .end local v1    # "resourceContext":Landroid/content/Context;
    .end local v2    # "statusBarManager":Lmokee/app/MKStatusBarManager;
    .end local v3    # "tile":Lmokee/app/CustomTile;
    .end local v6    # "user":Landroid/os/UserHandle;
    :catchall_0
    move-exception v8

    .line 327
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 326
    throw v8
.end method

.method private putInt(Ljava/lang/String;I)V
    .locals 2
    .param p1, "setting"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 684
    iget-object v0, p0, Lorg/mokee/platform/internal/display/LiveDisplayService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 685
    const/4 v1, -0x2

    .line 684
    invoke-static {v0, p1, p2, v1}, Lmokee/providers/MKSettings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 683
    return-void
.end method

.method private stopNudgingMe()V
    .locals 1

    .prologue
    .line 620
    iget-boolean v0, p0, Lorg/mokee/platform/internal/display/LiveDisplayService;->mAwaitingNudge:Z

    if-eqz v0, :cond_0

    .line 621
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/mokee/platform/internal/display/LiveDisplayService;->updateSunsetCounter(I)V

    .line 619
    :cond_0
    return-void
.end method

.method private unpublishCustomTile()V
    .locals 7

    .prologue
    .line 333
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .line 334
    .local v1, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 336
    .local v2, "token":J
    :try_start_0
    iget-object v4, p0, Lorg/mokee/platform/internal/display/LiveDisplayService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lmokee/app/MKStatusBarManager;->getInstance(Landroid/content/Context;)Lmokee/app/MKStatusBarManager;

    move-result-object v0

    .line 337
    .local v0, "statusBarManager":Lmokee/app/MKStatusBarManager;
    const-string/jumbo v4, "live_display"

    .line 338
    const-class v5, Lorg/mokee/platform/internal/display/LiveDisplayService;

    invoke-virtual {v5}, Ljava/lang/Class;->hashCode()I

    move-result v5

    new-instance v6, Landroid/os/UserHandle;

    invoke-direct {v6, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 337
    invoke-virtual {v0, v4, v5, v6}, Lmokee/app/MKStatusBarManager;->removeTileAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 340
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 331
    return-void

    .line 339
    .end local v0    # "statusBarManager":Lmokee/app/MKStatusBarManager;
    :catchall_0
    move-exception v4

    .line 340
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 339
    throw v4
.end method

.method private updateCustomTileEntries()V
    .locals 5

    .prologue
    .line 252
    iget-object v3, p0, Lorg/mokee/platform/internal/display/LiveDisplayService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 253
    .local v1, "res":Landroid/content/res/Resources;
    const v3, 0x3f040002

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/mokee/platform/internal/display/LiveDisplayService;->mTileEntries:[Ljava/lang/String;

    .line 254
    const v3, 0x3f040006

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/mokee/platform/internal/display/LiveDisplayService;->mTileDescriptionEntries:[Ljava/lang/String;

    .line 255
    const v3, 0x3f040007

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/mokee/platform/internal/display/LiveDisplayService;->mTileAnnouncementEntries:[Ljava/lang/String;

    .line 256
    const v3, 0x3f040004

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/mokee/platform/internal/display/LiveDisplayService;->mTileValues:[Ljava/lang/String;

    .line 257
    const v3, 0x3f040005

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 258
    .local v2, "typedArray":Landroid/content/res/TypedArray;
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->length()I

    move-result v3

    new-array v3, v3, [I

    iput-object v3, p0, Lorg/mokee/platform/internal/display/LiveDisplayService;->mTileEntryIconRes:[I

    .line 259
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lorg/mokee/platform/internal/display/LiveDisplayService;->mTileEntryIconRes:[I

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 260
    iget-object v3, p0, Lorg/mokee/platform/internal/display/LiveDisplayService;->mTileEntryIconRes:[I

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    aput v4, v3, v0

    .line 259
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 262
    :cond_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 251
    return-void
.end method

.method private updateFeatures(I)V
    .locals 2
    .param p1, "flags"    # I

    .prologue
    .line 241
    iget-object v0, p0, Lorg/mokee/platform/internal/display/LiveDisplayService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lorg/mokee/platform/internal/display/LiveDisplayService$6;

    invoke-direct {v1, p0, p1}, Lorg/mokee/platform/internal/display/LiveDisplayService$6;-><init>(Lorg/mokee/platform/internal/display/LiveDisplayService;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 240
    return-void
.end method

.method private updateSunsetCounter(I)V
    .locals 4
    .param p1, "count"    # I

    .prologue
    const/4 v0, 0x0

    .line 612
    iget-object v1, p0, Lorg/mokee/platform/internal/display/LiveDisplayService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 613
    const-string/jumbo v2, "live_display_hinted"

    .line 615
    const/4 v3, -0x2

    .line 612
    invoke-static {v1, v2, p1, v3}, Lmokee/providers/MKSettings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 616
    if-lez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lorg/mokee/platform/internal/display/LiveDisplayService;->mAwaitingNudge:Z

    .line 611
    return-void
.end method


# virtual methods
.method public getFeatureDeclaration()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    const-string/jumbo v0, "org.mokee.livedisplay"

    return-object v0
.end method

.method public isCoreService()Z
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x0

    return v0
.end method

.method public onBootPhase(I)V
    .locals 21
    .param p1, "phase"    # I

    .prologue
    .line 168
    const/16 v1, 0x3e8

    move/from16 v0, p1

    if-ne v0, v1, :cond_7

    .line 170
    invoke-direct/range {p0 .. p0}, Lorg/mokee/platform/internal/display/LiveDisplayService;->getSunsetCounter()I

    move-result v1

    const/4 v4, 0x1

    if-ge v1, v4, :cond_1

    const/4 v1, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v1, v0, Lorg/mokee/platform/internal/display/LiveDisplayService;->mAwaitingNudge:Z

    .line 172
    new-instance v1, Lorg/mokee/platform/internal/display/DisplayHardwareController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/mokee/platform/internal/display/LiveDisplayService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mokee/platform/internal/display/LiveDisplayService;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v4, v5}, Lorg/mokee/platform/internal/display/DisplayHardwareController;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lorg/mokee/platform/internal/display/LiveDisplayService;->mDHC:Lorg/mokee/platform/internal/display/DisplayHardwareController;

    .line 173
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/mokee/platform/internal/display/LiveDisplayService;->mFeatures:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/mokee/platform/internal/display/LiveDisplayService;->mDHC:Lorg/mokee/platform/internal/display/DisplayHardwareController;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    new-instance v1, Lorg/mokee/platform/internal/display/ColorTemperatureController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/mokee/platform/internal/display/LiveDisplayService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mokee/platform/internal/display/LiveDisplayService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/mokee/platform/internal/display/LiveDisplayService;->mDHC:Lorg/mokee/platform/internal/display/DisplayHardwareController;

    invoke-direct {v1, v4, v5, v6}, Lorg/mokee/platform/internal/display/ColorTemperatureController;-><init>(Landroid/content/Context;Landroid/os/Handler;Lorg/mokee/platform/internal/display/DisplayHardwareController;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lorg/mokee/platform/internal/display/LiveDisplayService;->mCTC:Lorg/mokee/platform/internal/display/ColorTemperatureController;

    .line 176
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/mokee/platform/internal/display/LiveDisplayService;->mFeatures:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/mokee/platform/internal/display/LiveDisplayService;->mCTC:Lorg/mokee/platform/internal/display/ColorTemperatureController;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    new-instance v1, Lorg/mokee/platform/internal/display/OutdoorModeController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/mokee/platform/internal/display/LiveDisplayService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mokee/platform/internal/display/LiveDisplayService;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v4, v5}, Lorg/mokee/platform/internal/display/OutdoorModeController;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lorg/mokee/platform/internal/display/LiveDisplayService;->mOMC:Lorg/mokee/platform/internal/display/OutdoorModeController;

    .line 179
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/mokee/platform/internal/display/LiveDisplayService;->mFeatures:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/mokee/platform/internal/display/LiveDisplayService;->mOMC:Lorg/mokee/platform/internal/display/OutdoorModeController;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    new-instance v1, Lorg/mokee/platform/internal/display/PictureAdjustmentController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/mokee/platform/internal/display/LiveDisplayService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mokee/platform/internal/display/LiveDisplayService;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v4, v5}, Lorg/mokee/platform/internal/display/PictureAdjustmentController;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lorg/mokee/platform/internal/display/LiveDisplayService;->mPAC:Lorg/mokee/platform/internal/display/PictureAdjustmentController;

    .line 182
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/mokee/platform/internal/display/LiveDisplayService;->mFeatures:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/mokee/platform/internal/display/LiveDisplayService;->mPAC:Lorg/mokee/platform/internal/display/PictureAdjustmentController;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2}, Ljava/util/BitSet;-><init>()V

    .line 186
    .local v2, "capabilities":Ljava/util/BitSet;
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/mokee/platform/internal/display/LiveDisplayService;->mFeatures:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/mokee/platform/internal/display/LiveDisplayFeature;>;"
    :cond_0
    :goto_1
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 187
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/mokee/platform/internal/display/LiveDisplayFeature;

    .line 188
    .local v17, "feature":Lorg/mokee/platform/internal/display/LiveDisplayFeature;
    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lorg/mokee/platform/internal/display/LiveDisplayFeature;->getCapabilities(Ljava/util/BitSet;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 189
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 170
    .end local v2    # "capabilities":Ljava/util/BitSet;
    .end local v17    # "feature":Lorg/mokee/platform/internal/display/LiveDisplayFeature;
    .end local v19    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/mokee/platform/internal/display/LiveDisplayFeature;>;"
    :cond_1
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 194
    .restart local v2    # "capabilities":Ljava/util/BitSet;
    .restart local v19    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/mokee/platform/internal/display/LiveDisplayFeature;>;"
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/mokee/platform/internal/display/LiveDisplayService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 195
    const v4, 0x3f060005

    .line 194
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 197
    .local v3, "defaultMode":I
    new-instance v1, Lmokee/hardware/LiveDisplayConfig;

    .line 198
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/mokee/platform/internal/display/LiveDisplayService;->mCTC:Lorg/mokee/platform/internal/display/ColorTemperatureController;

    invoke-virtual {v4}, Lorg/mokee/platform/internal/display/ColorTemperatureController;->getDefaultDayTemperature()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mokee/platform/internal/display/LiveDisplayService;->mCTC:Lorg/mokee/platform/internal/display/ColorTemperatureController;

    invoke-virtual {v5}, Lorg/mokee/platform/internal/display/ColorTemperatureController;->getDefaultNightTemperature()I

    move-result v5

    .line 199
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/mokee/platform/internal/display/LiveDisplayService;->mOMC:Lorg/mokee/platform/internal/display/OutdoorModeController;

    invoke-virtual {v6}, Lorg/mokee/platform/internal/display/OutdoorModeController;->getDefaultAutoOutdoorMode()Z

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/mokee/platform/internal/display/LiveDisplayService;->mDHC:Lorg/mokee/platform/internal/display/DisplayHardwareController;

    invoke-virtual {v7}, Lorg/mokee/platform/internal/display/DisplayHardwareController;->getDefaultAutoContrast()Z

    move-result v7

    .line 200
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/mokee/platform/internal/display/LiveDisplayService;->mDHC:Lorg/mokee/platform/internal/display/DisplayHardwareController;

    invoke-virtual {v8}, Lorg/mokee/platform/internal/display/DisplayHardwareController;->getDefaultCABC()Z

    move-result v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/mokee/platform/internal/display/LiveDisplayService;->mDHC:Lorg/mokee/platform/internal/display/DisplayHardwareController;

    invoke-virtual {v9}, Lorg/mokee/platform/internal/display/DisplayHardwareController;->getDefaultColorEnhancement()Z

    move-result v9

    .line 201
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/mokee/platform/internal/display/LiveDisplayService;->mCTC:Lorg/mokee/platform/internal/display/ColorTemperatureController;

    invoke-virtual {v10}, Lorg/mokee/platform/internal/display/ColorTemperatureController;->getColorTemperatureRange()Landroid/util/Range;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/mokee/platform/internal/display/LiveDisplayService;->mCTC:Lorg/mokee/platform/internal/display/ColorTemperatureController;

    invoke-virtual {v11}, Lorg/mokee/platform/internal/display/ColorTemperatureController;->getColorBalanceRange()Landroid/util/Range;

    move-result-object v11

    .line 202
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/mokee/platform/internal/display/LiveDisplayService;->mPAC:Lorg/mokee/platform/internal/display/PictureAdjustmentController;

    invoke-virtual {v12}, Lorg/mokee/platform/internal/display/PictureAdjustmentController;->getHueRange()Landroid/util/Range;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/mokee/platform/internal/display/LiveDisplayService;->mPAC:Lorg/mokee/platform/internal/display/PictureAdjustmentController;

    invoke-virtual {v13}, Lorg/mokee/platform/internal/display/PictureAdjustmentController;->getSaturationRange()Landroid/util/Range;

    move-result-object v13

    .line 203
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/mokee/platform/internal/display/LiveDisplayService;->mPAC:Lorg/mokee/platform/internal/display/PictureAdjustmentController;

    invoke-virtual {v14}, Lorg/mokee/platform/internal/display/PictureAdjustmentController;->getIntensityRange()Landroid/util/Range;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/mokee/platform/internal/display/LiveDisplayService;->mPAC:Lorg/mokee/platform/internal/display/PictureAdjustmentController;

    invoke-virtual {v15}, Lorg/mokee/platform/internal/display/PictureAdjustmentController;->getContrastRange()Landroid/util/Range;

    move-result-object v15

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mokee/platform/internal/display/LiveDisplayService;->mPAC:Lorg/mokee/platform/internal/display/PictureAdjustmentController;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lorg/mokee/platform/internal/display/PictureAdjustmentController;->getSaturationThresholdRange()Landroid/util/Range;

    move-result-object v16

    .line 197
    invoke-direct/range {v1 .. v16}, Lmokee/hardware/LiveDisplayConfig;-><init>(Ljava/util/BitSet;IIIZZZZLandroid/util/Range;Landroid/util/Range;Landroid/util/Range;Landroid/util/Range;Landroid/util/Range;Landroid/util/Range;Landroid/util/Range;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lorg/mokee/platform/internal/display/LiveDisplayService;->mConfig:Lmokee/hardware/LiveDisplayConfig;

    .line 207
    invoke-virtual/range {p0 .. p0}, Lorg/mokee/platform/internal/display/LiveDisplayService;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 208
    const-string/jumbo v4, "display"

    .line 207
    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    move-object/from16 v0, p0

    iput-object v1, v0, Lorg/mokee/platform/internal/display/LiveDisplayService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 209
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/mokee/platform/internal/display/LiveDisplayService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/mokee/platform/internal/display/LiveDisplayService;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 210
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/mokee/platform/internal/display/LiveDisplayService;->mState:Lorg/mokee/platform/internal/display/LiveDisplayService$State;

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/mokee/platform/internal/display/LiveDisplayService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 211
    const/4 v5, 0x0

    .line 210
    invoke-virtual {v1, v5}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getState()I

    move-result v1

    .line 211
    const/4 v5, 0x2

    .line 210
    if-ne v1, v5, :cond_5

    const/4 v1, 0x1

    :goto_2
    iput-boolean v1, v4, Lorg/mokee/platform/internal/display/LiveDisplayService$State;->mScreenOn:Z

    .line 213
    const-class v1, Landroid/os/PowerManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/os/PowerManagerInternal;

    .line 214
    .local v20, "pmi":Landroid/os/PowerManagerInternal;
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/mokee/platform/internal/display/LiveDisplayService;->mLowPowerModeListener:Landroid/os/PowerManagerInternal$LowPowerModeListener;

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V

    .line 215
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/mokee/platform/internal/display/LiveDisplayService;->mState:Lorg/mokee/platform/internal/display/LiveDisplayService$State;

    invoke-virtual/range {v20 .. v20}, Landroid/os/PowerManagerInternal;->getLowPowerModeEnabled()Z

    move-result v4

    iput-boolean v4, v1, Lorg/mokee/platform/internal/display/LiveDisplayService$State;->mLowPowerMode:Z

    .line 217
    const-class v1, Lcom/android/server/twilight/TwilightManager;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/twilight/TwilightManager;

    move-object/from16 v0, p0

    iput-object v1, v0, Lorg/mokee/platform/internal/display/LiveDisplayService;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    .line 218
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/mokee/platform/internal/display/LiveDisplayService;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    if-eqz v1, :cond_3

    .line 219
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/mokee/platform/internal/display/LiveDisplayService;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/mokee/platform/internal/display/LiveDisplayService;->mTwilightListener:Lcom/android/server/twilight/TwilightListener;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mokee/platform/internal/display/LiveDisplayService;->mHandler:Landroid/os/Handler;

    invoke-interface {v1, v4, v5}, Lcom/android/server/twilight/TwilightManager;->registerListener(Lcom/android/server/twilight/TwilightListener;Landroid/os/Handler;)V

    .line 220
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/mokee/platform/internal/display/LiveDisplayService;->mState:Lorg/mokee/platform/internal/display/LiveDisplayService$State;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/mokee/platform/internal/display/LiveDisplayService;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    invoke-interface {v4}, Lcom/android/server/twilight/TwilightManager;->getCurrentState()Lcom/android/server/twilight/TwilightState;

    move-result-object v4

    iput-object v4, v1, Lorg/mokee/platform/internal/display/LiveDisplayService$State;->mTwilight:Lcom/android/server/twilight/TwilightState;

    .line 223
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/mokee/platform/internal/display/LiveDisplayService;->mConfig:Lmokee/hardware/LiveDisplayConfig;

    invoke-virtual {v1}, Lmokee/hardware/LiveDisplayConfig;->hasModeSupport()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 224
    new-instance v1, Lorg/mokee/platform/internal/display/LiveDisplayService$ModeObserver;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/mokee/platform/internal/display/LiveDisplayService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v4}, Lorg/mokee/platform/internal/display/LiveDisplayService$ModeObserver;-><init>(Lorg/mokee/platform/internal/display/LiveDisplayService;Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lorg/mokee/platform/internal/display/LiveDisplayService;->mModeObserver:Lorg/mokee/platform/internal/display/LiveDisplayService$ModeObserver;

    .line 225
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/mokee/platform/internal/display/LiveDisplayService;->mState:Lorg/mokee/platform/internal/display/LiveDisplayService$State;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/mokee/platform/internal/display/LiveDisplayService;->mModeObserver:Lorg/mokee/platform/internal/display/LiveDisplayService$ModeObserver;

    invoke-virtual {v4}, Lorg/mokee/platform/internal/display/LiveDisplayService$ModeObserver;->getMode()I

    move-result v4

    iput v4, v1, Lorg/mokee/platform/internal/display/LiveDisplayService$State;->mMode:I

    .line 226
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/mokee/platform/internal/display/LiveDisplayService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/mokee/platform/internal/display/LiveDisplayService;->mNextModeReceiver:Landroid/content/BroadcastReceiver;

    .line 227
    new-instance v5, Landroid/content/IntentFilter;

    sget-object v6, Lorg/mokee/platform/internal/display/LiveDisplayService;->ACTION_NEXT_MODE:Ljava/lang/String;

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 226
    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 228
    invoke-direct/range {p0 .. p0}, Lorg/mokee/platform/internal/display/LiveDisplayService;->publishCustomTile()V

    .line 232
    :cond_4
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/mokee/platform/internal/display/LiveDisplayService;->mFeatures:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    move/from16 v0, v18

    if-ge v0, v1, :cond_6

    .line 233
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/mokee/platform/internal/display/LiveDisplayService;->mFeatures:Ljava/util/List;

    move/from16 v0, v18

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mokee/platform/internal/display/LiveDisplayFeature;

    invoke-virtual {v1}, Lorg/mokee/platform/internal/display/LiveDisplayFeature;->start()V

    .line 232
    add-int/lit8 v18, v18, 0x1

    goto :goto_3

    .line 210
    .end local v18    # "i":I
    .end local v20    # "pmi":Landroid/os/PowerManagerInternal;
    :cond_5
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 236
    .restart local v18    # "i":I
    .restart local v20    # "pmi":Landroid/os/PowerManagerInternal;
    :cond_6
    sget v1, Lorg/mokee/platform/internal/display/LiveDisplayService;->ALL_CHANGED:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lorg/mokee/platform/internal/display/LiveDisplayService;->updateFeatures(I)V

    .line 167
    .end local v2    # "capabilities":Ljava/util/BitSet;
    .end local v3    # "defaultMode":I
    .end local v18    # "i":I
    .end local v19    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/mokee/platform/internal/display/LiveDisplayFeature;>;"
    .end local v20    # "pmi":Landroid/os/PowerManagerInternal;
    :cond_7
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 163
    const-string/jumbo v0, "mklivedisplay"

    iget-object v1, p0, Lorg/mokee/platform/internal/display/LiveDisplayService;->mBinder:Landroid/os/IBinder;

    invoke-virtual {p0, v0, v1}, Lorg/mokee/platform/internal/display/LiveDisplayService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 162
    return-void
.end method

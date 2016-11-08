.class Lorg/mokee/platform/internal/display/LiveDisplayService$2;
.super Lmokee/hardware/ILiveDisplayService$Stub;
.source "LiveDisplayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mokee/platform/internal/display/LiveDisplayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mokee/platform/internal/display/LiveDisplayService;


# direct methods
.method constructor <init>(Lorg/mokee/platform/internal/display/LiveDisplayService;)V
    .locals 0
    .param p1, "this$0"    # Lorg/mokee/platform/internal/display/LiveDisplayService;

    .prologue
    .line 365
    iput-object p1, p0, Lorg/mokee/platform/internal/display/LiveDisplayService$2;->this$0:Lorg/mokee/platform/internal/display/LiveDisplayService;

    invoke-direct {p0}, Lmokee/hardware/ILiveDisplayService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 493
    iget-object v1, p0, Lorg/mokee/platform/internal/display/LiveDisplayService$2;->this$0:Lorg/mokee/platform/internal/display/LiveDisplayService;

    invoke-static {v1}, Lorg/mokee/platform/internal/display/LiveDisplayService;->-get3(Lorg/mokee/platform/internal/display/LiveDisplayService;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "android.permission.DUMP"

    const-string/jumbo v3, "LiveDisplay"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 496
    const-string/jumbo v1, "LiveDisplay Service State:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 497
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  mState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/mokee/platform/internal/display/LiveDisplayService$2;->this$0:Lorg/mokee/platform/internal/display/LiveDisplayService;

    invoke-static {v2}, Lorg/mokee/platform/internal/display/LiveDisplayService;->-get9(Lorg/mokee/platform/internal/display/LiveDisplayService;)Lorg/mokee/platform/internal/display/LiveDisplayService$State;

    move-result-object v2

    invoke-virtual {v2}, Lorg/mokee/platform/internal/display/LiveDisplayService$State;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 498
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  mConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/mokee/platform/internal/display/LiveDisplayService$2;->this$0:Lorg/mokee/platform/internal/display/LiveDisplayService;

    invoke-static {v2}, Lorg/mokee/platform/internal/display/LiveDisplayService;->-get2(Lorg/mokee/platform/internal/display/LiveDisplayService;)Lmokee/hardware/LiveDisplayConfig;

    move-result-object v2

    invoke-virtual {v2}, Lmokee/hardware/LiveDisplayConfig;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 499
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  mAwaitingNudge="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/mokee/platform/internal/display/LiveDisplayService$2;->this$0:Lorg/mokee/platform/internal/display/LiveDisplayService;

    invoke-static {v2}, Lorg/mokee/platform/internal/display/LiveDisplayService;->-get0(Lorg/mokee/platform/internal/display/LiveDisplayService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 501
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/mokee/platform/internal/display/LiveDisplayService$2;->this$0:Lorg/mokee/platform/internal/display/LiveDisplayService;

    invoke-static {v1}, Lorg/mokee/platform/internal/display/LiveDisplayService;->-get5(Lorg/mokee/platform/internal/display/LiveDisplayService;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 502
    iget-object v1, p0, Lorg/mokee/platform/internal/display/LiveDisplayService$2;->this$0:Lorg/mokee/platform/internal/display/LiveDisplayService;

    invoke-static {v1}, Lorg/mokee/platform/internal/display/LiveDisplayService;->-get5(Lorg/mokee/platform/internal/display/LiveDisplayService;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mokee/platform/internal/display/LiveDisplayFeature;

    invoke-virtual {v1, p2}, Lorg/mokee/platform/internal/display/LiveDisplayFeature;->dump(Ljava/io/PrintWriter;)V

    .line 501
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 492
    :cond_0
    return-void
.end method

.method public getColorAdjustment()[F
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lorg/mokee/platform/internal/display/LiveDisplayService$2;->this$0:Lorg/mokee/platform/internal/display/LiveDisplayService;

    invoke-static {v0}, Lorg/mokee/platform/internal/display/LiveDisplayService;->-get4(Lorg/mokee/platform/internal/display/LiveDisplayService;)Lorg/mokee/platform/internal/display/DisplayHardwareController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mokee/platform/internal/display/DisplayHardwareController;->getColorAdjustment()[F

    move-result-object v0

    return-object v0
.end method

.method public getColorTemperature()I
    .locals 1

    .prologue
    .line 479
    iget-object v0, p0, Lorg/mokee/platform/internal/display/LiveDisplayService$2;->this$0:Lorg/mokee/platform/internal/display/LiveDisplayService;

    invoke-static {v0}, Lorg/mokee/platform/internal/display/LiveDisplayService;->-get1(Lorg/mokee/platform/internal/display/LiveDisplayService;)Lorg/mokee/platform/internal/display/ColorTemperatureController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mokee/platform/internal/display/ColorTemperatureController;->getColorTemperature()I

    move-result v0

    return v0
.end method

.method public getConfig()Lmokee/hardware/LiveDisplayConfig;
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lorg/mokee/platform/internal/display/LiveDisplayService$2;->this$0:Lorg/mokee/platform/internal/display/LiveDisplayService;

    invoke-static {v0}, Lorg/mokee/platform/internal/display/LiveDisplayService;->-get2(Lorg/mokee/platform/internal/display/LiveDisplayService;)Lmokee/hardware/LiveDisplayConfig;

    move-result-object v0

    return-object v0
.end method

.method public getDayColorTemperature()I
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Lorg/mokee/platform/internal/display/LiveDisplayService$2;->this$0:Lorg/mokee/platform/internal/display/LiveDisplayService;

    invoke-static {v0}, Lorg/mokee/platform/internal/display/LiveDisplayService;->-get1(Lorg/mokee/platform/internal/display/LiveDisplayService;)Lorg/mokee/platform/internal/display/ColorTemperatureController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mokee/platform/internal/display/ColorTemperatureController;->getDayColorTemperature()I

    move-result v0

    return v0
.end method

.method public getDefaultPictureAdjustment()Lmokee/hardware/HSIC;
    .locals 1

    .prologue
    .line 489
    iget-object v0, p0, Lorg/mokee/platform/internal/display/LiveDisplayService$2;->this$0:Lorg/mokee/platform/internal/display/LiveDisplayService;

    invoke-static {v0}, Lorg/mokee/platform/internal/display/LiveDisplayService;->-get8(Lorg/mokee/platform/internal/display/LiveDisplayService;)Lorg/mokee/platform/internal/display/PictureAdjustmentController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mokee/platform/internal/display/PictureAdjustmentController;->getDefaultPictureAdjustment()Lmokee/hardware/HSIC;

    move-result-object v0

    return-object v0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lorg/mokee/platform/internal/display/LiveDisplayService$2;->this$0:Lorg/mokee/platform/internal/display/LiveDisplayService;

    invoke-static {v0}, Lorg/mokee/platform/internal/display/LiveDisplayService;->-get2(Lorg/mokee/platform/internal/display/LiveDisplayService;)Lmokee/hardware/LiveDisplayConfig;

    move-result-object v0

    invoke-virtual {v0}, Lmokee/hardware/LiveDisplayConfig;->hasModeSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lorg/mokee/platform/internal/display/LiveDisplayService$2;->this$0:Lorg/mokee/platform/internal/display/LiveDisplayService;

    invoke-static {v0}, Lorg/mokee/platform/internal/display/LiveDisplayService;->-get6(Lorg/mokee/platform/internal/display/LiveDisplayService;)Lorg/mokee/platform/internal/display/LiveDisplayService$ModeObserver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mokee/platform/internal/display/LiveDisplayService$ModeObserver;->getMode()I

    move-result v0

    return v0

    .line 377
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getNightColorTemperature()I
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lorg/mokee/platform/internal/display/LiveDisplayService$2;->this$0:Lorg/mokee/platform/internal/display/LiveDisplayService;

    invoke-static {v0}, Lorg/mokee/platform/internal/display/LiveDisplayService;->-get1(Lorg/mokee/platform/internal/display/LiveDisplayService;)Lorg/mokee/platform/internal/display/ColorTemperatureController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mokee/platform/internal/display/ColorTemperatureController;->getNightColorTemperature()I

    move-result v0

    return v0
.end method

.method public getPictureAdjustment()Lmokee/hardware/HSIC;
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Lorg/mokee/platform/internal/display/LiveDisplayService$2;->this$0:Lorg/mokee/platform/internal/display/LiveDisplayService;

    invoke-static {v0}, Lorg/mokee/platform/internal/display/LiveDisplayService;->-get8(Lorg/mokee/platform/internal/display/LiveDisplayService;)Lorg/mokee/platform/internal/display/PictureAdjustmentController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mokee/platform/internal/display/PictureAdjustmentController;->getPictureAdjustment()Lmokee/hardware/HSIC;

    move-result-object v0

    return-object v0
.end method

.method public isAutoContrastEnabled()Z
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lorg/mokee/platform/internal/display/LiveDisplayService$2;->this$0:Lorg/mokee/platform/internal/display/LiveDisplayService;

    invoke-static {v0}, Lorg/mokee/platform/internal/display/LiveDisplayService;->-get4(Lorg/mokee/platform/internal/display/LiveDisplayService;)Lorg/mokee/platform/internal/display/DisplayHardwareController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mokee/platform/internal/display/DisplayHardwareController;->isAutoContrastEnabled()Z

    move-result v0

    return v0
.end method

.method public isAutomaticOutdoorModeEnabled()Z
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lorg/mokee/platform/internal/display/LiveDisplayService$2;->this$0:Lorg/mokee/platform/internal/display/LiveDisplayService;

    invoke-static {v0}, Lorg/mokee/platform/internal/display/LiveDisplayService;->-get7(Lorg/mokee/platform/internal/display/LiveDisplayService;)Lorg/mokee/platform/internal/display/OutdoorModeController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mokee/platform/internal/display/OutdoorModeController;->isAutomaticOutdoorModeEnabled()Z

    move-result v0

    return v0
.end method

.method public isCABCEnabled()Z
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lorg/mokee/platform/internal/display/LiveDisplayService$2;->this$0:Lorg/mokee/platform/internal/display/LiveDisplayService;

    invoke-static {v0}, Lorg/mokee/platform/internal/display/LiveDisplayService;->-get4(Lorg/mokee/platform/internal/display/LiveDisplayService;)Lorg/mokee/platform/internal/display/DisplayHardwareController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mokee/platform/internal/display/DisplayHardwareController;->isCABCEnabled()Z

    move-result v0

    return v0
.end method

.method public isColorEnhancementEnabled()Z
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lorg/mokee/platform/internal/display/LiveDisplayService$2;->this$0:Lorg/mokee/platform/internal/display/LiveDisplayService;

    invoke-static {v0}, Lorg/mokee/platform/internal/display/LiveDisplayService;->-get4(Lorg/mokee/platform/internal/display/LiveDisplayService;)Lorg/mokee/platform/internal/display/DisplayHardwareController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mokee/platform/internal/display/DisplayHardwareController;->isColorEnhancementEnabled()Z

    move-result v0

    return v0
.end method

.method public setAutoContrastEnabled(Z)Z
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 410
    iget-object v0, p0, Lorg/mokee/platform/internal/display/LiveDisplayService$2;->this$0:Lorg/mokee/platform/internal/display/LiveDisplayService;

    invoke-static {v0}, Lorg/mokee/platform/internal/display/LiveDisplayService;->-get3(Lorg/mokee/platform/internal/display/LiveDisplayService;)Landroid/content/Context;

    move-result-object v0

    .line 411
    const-string/jumbo v1, "mokee.permission.MANAGE_LIVEDISPLAY"

    const/4 v2, 0x0

    .line 410
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    iget-object v0, p0, Lorg/mokee/platform/internal/display/LiveDisplayService$2;->this$0:Lorg/mokee/platform/internal/display/LiveDisplayService;

    invoke-static {v0}, Lorg/mokee/platform/internal/display/LiveDisplayService;->-get4(Lorg/mokee/platform/internal/display/LiveDisplayService;)Lorg/mokee/platform/internal/display/DisplayHardwareController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/mokee/platform/internal/display/DisplayHardwareController;->setAutoContrastEnabled(Z)Z

    move-result v0

    return v0
.end method

.method public setAutomaticOutdoorModeEnabled(Z)Z
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 446
    iget-object v0, p0, Lorg/mokee/platform/internal/display/LiveDisplayService$2;->this$0:Lorg/mokee/platform/internal/display/LiveDisplayService;

    invoke-static {v0}, Lorg/mokee/platform/internal/display/LiveDisplayService;->-get3(Lorg/mokee/platform/internal/display/LiveDisplayService;)Landroid/content/Context;

    move-result-object v0

    .line 447
    const-string/jumbo v1, "mokee.permission.MANAGE_LIVEDISPLAY"

    const/4 v2, 0x0

    .line 446
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    iget-object v0, p0, Lorg/mokee/platform/internal/display/LiveDisplayService$2;->this$0:Lorg/mokee/platform/internal/display/LiveDisplayService;

    invoke-static {v0}, Lorg/mokee/platform/internal/display/LiveDisplayService;->-get7(Lorg/mokee/platform/internal/display/LiveDisplayService;)Lorg/mokee/platform/internal/display/OutdoorModeController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/mokee/platform/internal/display/OutdoorModeController;->setAutomaticOutdoorModeEnabled(Z)Z

    move-result v0

    return v0
.end method

.method public setCABCEnabled(Z)Z
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 422
    iget-object v0, p0, Lorg/mokee/platform/internal/display/LiveDisplayService$2;->this$0:Lorg/mokee/platform/internal/display/LiveDisplayService;

    invoke-static {v0}, Lorg/mokee/platform/internal/display/LiveDisplayService;->-get3(Lorg/mokee/platform/internal/display/LiveDisplayService;)Landroid/content/Context;

    move-result-object v0

    .line 423
    const-string/jumbo v1, "mokee.permission.MANAGE_LIVEDISPLAY"

    const/4 v2, 0x0

    .line 422
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    iget-object v0, p0, Lorg/mokee/platform/internal/display/LiveDisplayService$2;->this$0:Lorg/mokee/platform/internal/display/LiveDisplayService;

    invoke-static {v0}, Lorg/mokee/platform/internal/display/LiveDisplayService;->-get4(Lorg/mokee/platform/internal/display/LiveDisplayService;)Lorg/mokee/platform/internal/display/DisplayHardwareController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/mokee/platform/internal/display/DisplayHardwareController;->setCABCEnabled(Z)Z

    move-result v0

    return v0
.end method

.method public setColorAdjustment([F)Z
    .locals 3
    .param p1, "adj"    # [F

    .prologue
    .line 398
    iget-object v0, p0, Lorg/mokee/platform/internal/display/LiveDisplayService$2;->this$0:Lorg/mokee/platform/internal/display/LiveDisplayService;

    invoke-static {v0}, Lorg/mokee/platform/internal/display/LiveDisplayService;->-get3(Lorg/mokee/platform/internal/display/LiveDisplayService;)Landroid/content/Context;

    move-result-object v0

    .line 399
    const-string/jumbo v1, "mokee.permission.MANAGE_LIVEDISPLAY"

    const/4 v2, 0x0

    .line 398
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    iget-object v0, p0, Lorg/mokee/platform/internal/display/LiveDisplayService$2;->this$0:Lorg/mokee/platform/internal/display/LiveDisplayService;

    invoke-static {v0}, Lorg/mokee/platform/internal/display/LiveDisplayService;->-get4(Lorg/mokee/platform/internal/display/LiveDisplayService;)Lorg/mokee/platform/internal/display/DisplayHardwareController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/mokee/platform/internal/display/DisplayHardwareController;->setColorAdjustment([F)Z

    move-result v0

    return v0
.end method

.method public setColorEnhancementEnabled(Z)Z
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 434
    iget-object v0, p0, Lorg/mokee/platform/internal/display/LiveDisplayService$2;->this$0:Lorg/mokee/platform/internal/display/LiveDisplayService;

    invoke-static {v0}, Lorg/mokee/platform/internal/display/LiveDisplayService;->-get3(Lorg/mokee/platform/internal/display/LiveDisplayService;)Landroid/content/Context;

    move-result-object v0

    .line 435
    const-string/jumbo v1, "mokee.permission.MANAGE_LIVEDISPLAY"

    const/4 v2, 0x0

    .line 434
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    iget-object v0, p0, Lorg/mokee/platform/internal/display/LiveDisplayService$2;->this$0:Lorg/mokee/platform/internal/display/LiveDisplayService;

    invoke-static {v0}, Lorg/mokee/platform/internal/display/LiveDisplayService;->-get4(Lorg/mokee/platform/internal/display/LiveDisplayService;)Lorg/mokee/platform/internal/display/DisplayHardwareController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/mokee/platform/internal/display/DisplayHardwareController;->setColorEnhancementEnabled(Z)Z

    move-result v0

    return v0
.end method

.method public setDayColorTemperature(I)Z
    .locals 3
    .param p1, "temperature"    # I

    .prologue
    .line 458
    iget-object v0, p0, Lorg/mokee/platform/internal/display/LiveDisplayService$2;->this$0:Lorg/mokee/platform/internal/display/LiveDisplayService;

    invoke-static {v0}, Lorg/mokee/platform/internal/display/LiveDisplayService;->-get3(Lorg/mokee/platform/internal/display/LiveDisplayService;)Landroid/content/Context;

    move-result-object v0

    .line 459
    const-string/jumbo v1, "mokee.permission.MANAGE_LIVEDISPLAY"

    const/4 v2, 0x0

    .line 458
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    iget-object v0, p0, Lorg/mokee/platform/internal/display/LiveDisplayService$2;->this$0:Lorg/mokee/platform/internal/display/LiveDisplayService;

    invoke-static {v0}, Lorg/mokee/platform/internal/display/LiveDisplayService;->-get1(Lorg/mokee/platform/internal/display/LiveDisplayService;)Lorg/mokee/platform/internal/display/ColorTemperatureController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/mokee/platform/internal/display/ColorTemperatureController;->setDayColorTemperature(I)V

    .line 461
    const/4 v0, 0x1

    return v0
.end method

.method public setMode(I)Z
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 383
    iget-object v0, p0, Lorg/mokee/platform/internal/display/LiveDisplayService$2;->this$0:Lorg/mokee/platform/internal/display/LiveDisplayService;

    invoke-static {v0}, Lorg/mokee/platform/internal/display/LiveDisplayService;->-get3(Lorg/mokee/platform/internal/display/LiveDisplayService;)Landroid/content/Context;

    move-result-object v0

    .line 384
    const-string/jumbo v1, "mokee.permission.MANAGE_LIVEDISPLAY"

    const/4 v2, 0x0

    .line 383
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    iget-object v0, p0, Lorg/mokee/platform/internal/display/LiveDisplayService$2;->this$0:Lorg/mokee/platform/internal/display/LiveDisplayService;

    invoke-static {v0}, Lorg/mokee/platform/internal/display/LiveDisplayService;->-get2(Lorg/mokee/platform/internal/display/LiveDisplayService;)Lmokee/hardware/LiveDisplayConfig;

    move-result-object v0

    invoke-virtual {v0}, Lmokee/hardware/LiveDisplayConfig;->hasModeSupport()Z

    move-result v0

    if-nez v0, :cond_0

    .line 386
    const/4 v0, 0x0

    return v0

    .line 388
    :cond_0
    iget-object v0, p0, Lorg/mokee/platform/internal/display/LiveDisplayService$2;->this$0:Lorg/mokee/platform/internal/display/LiveDisplayService;

    invoke-static {v0}, Lorg/mokee/platform/internal/display/LiveDisplayService;->-get6(Lorg/mokee/platform/internal/display/LiveDisplayService;)Lorg/mokee/platform/internal/display/LiveDisplayService$ModeObserver;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/mokee/platform/internal/display/LiveDisplayService$ModeObserver;->setMode(I)Z

    move-result v0

    return v0
.end method

.method public setNightColorTemperature(I)Z
    .locals 3
    .param p1, "temperature"    # I

    .prologue
    .line 471
    iget-object v0, p0, Lorg/mokee/platform/internal/display/LiveDisplayService$2;->this$0:Lorg/mokee/platform/internal/display/LiveDisplayService;

    invoke-static {v0}, Lorg/mokee/platform/internal/display/LiveDisplayService;->-get3(Lorg/mokee/platform/internal/display/LiveDisplayService;)Landroid/content/Context;

    move-result-object v0

    .line 472
    const-string/jumbo v1, "mokee.permission.MANAGE_LIVEDISPLAY"

    const/4 v2, 0x0

    .line 471
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    iget-object v0, p0, Lorg/mokee/platform/internal/display/LiveDisplayService$2;->this$0:Lorg/mokee/platform/internal/display/LiveDisplayService;

    invoke-static {v0}, Lorg/mokee/platform/internal/display/LiveDisplayService;->-get1(Lorg/mokee/platform/internal/display/LiveDisplayService;)Lorg/mokee/platform/internal/display/ColorTemperatureController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/mokee/platform/internal/display/ColorTemperatureController;->setNightColorTemperature(I)V

    .line 474
    const/4 v0, 0x1

    return v0
.end method

.method public setPictureAdjustment(Lmokee/hardware/HSIC;)Z
    .locals 1
    .param p1, "hsic"    # Lmokee/hardware/HSIC;

    .prologue
    .line 486
    iget-object v0, p0, Lorg/mokee/platform/internal/display/LiveDisplayService$2;->this$0:Lorg/mokee/platform/internal/display/LiveDisplayService;

    invoke-static {v0}, Lorg/mokee/platform/internal/display/LiveDisplayService;->-get8(Lorg/mokee/platform/internal/display/LiveDisplayService;)Lorg/mokee/platform/internal/display/PictureAdjustmentController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/mokee/platform/internal/display/PictureAdjustmentController;->setPictureAdjustment(Lmokee/hardware/HSIC;)Z

    move-result v0

    return v0
.end method

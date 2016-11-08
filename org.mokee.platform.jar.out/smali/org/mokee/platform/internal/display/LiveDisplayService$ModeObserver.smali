.class final Lorg/mokee/platform/internal/display/LiveDisplayService$ModeObserver;
.super Lcom/android/server/pm/UserContentObserver;
.source "LiveDisplayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mokee/platform/internal/display/LiveDisplayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ModeObserver"
.end annotation


# instance fields
.field private final MODE_SETTING:Landroid/net/Uri;

.field final synthetic this$0:Lorg/mokee/platform/internal/display/LiveDisplayService;


# direct methods
.method constructor <init>(Lorg/mokee/platform/internal/display/LiveDisplayService;Landroid/os/Handler;)V
    .locals 4
    .param p1, "this$0"    # Lorg/mokee/platform/internal/display/LiveDisplayService;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 549
    iput-object p1, p0, Lorg/mokee/platform/internal/display/LiveDisplayService$ModeObserver;->this$0:Lorg/mokee/platform/internal/display/LiveDisplayService;

    .line 550
    invoke-direct {p0, p2}, Lcom/android/server/pm/UserContentObserver;-><init>(Landroid/os/Handler;)V

    .line 547
    const-string/jumbo v1, "display_temperature_mode"

    invoke-static {v1}, Lmokee/providers/MKSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 546
    iput-object v1, p0, Lorg/mokee/platform/internal/display/LiveDisplayService$ModeObserver;->MODE_SETTING:Landroid/net/Uri;

    .line 552
    invoke-static {p1}, Lorg/mokee/platform/internal/display/LiveDisplayService;->-get3(Lorg/mokee/platform/internal/display/LiveDisplayService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 553
    .local v0, "cr":Landroid/content/ContentResolver;
    iget-object v1, p0, Lorg/mokee/platform/internal/display/LiveDisplayService$ModeObserver;->MODE_SETTING:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 555
    invoke-virtual {p0}, Lorg/mokee/platform/internal/display/LiveDisplayService$ModeObserver;->observe()V

    .line 549
    return-void
.end method


# virtual methods
.method getMode()I
    .locals 3

    .prologue
    .line 570
    iget-object v0, p0, Lorg/mokee/platform/internal/display/LiveDisplayService$ModeObserver;->this$0:Lorg/mokee/platform/internal/display/LiveDisplayService;

    const-string/jumbo v1, "display_temperature_mode"

    .line 571
    iget-object v2, p0, Lorg/mokee/platform/internal/display/LiveDisplayService$ModeObserver;->this$0:Lorg/mokee/platform/internal/display/LiveDisplayService;

    invoke-static {v2}, Lorg/mokee/platform/internal/display/LiveDisplayService;->-get2(Lorg/mokee/platform/internal/display/LiveDisplayService;)Lmokee/hardware/LiveDisplayConfig;

    move-result-object v2

    invoke-virtual {v2}, Lmokee/hardware/LiveDisplayConfig;->getDefaultMode()I

    move-result v2

    .line 570
    invoke-static {v0, v1, v2}, Lorg/mokee/platform/internal/display/LiveDisplayService;->-wrap1(Lorg/mokee/platform/internal/display/LiveDisplayService;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method setMode(I)Z
    .locals 2
    .param p1, "mode"    # I

    .prologue
    const/4 v1, 0x0

    .line 575
    iget-object v0, p0, Lorg/mokee/platform/internal/display/LiveDisplayService$ModeObserver;->this$0:Lorg/mokee/platform/internal/display/LiveDisplayService;

    invoke-static {v0}, Lorg/mokee/platform/internal/display/LiveDisplayService;->-get2(Lorg/mokee/platform/internal/display/LiveDisplayService;)Lmokee/hardware/LiveDisplayConfig;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmokee/hardware/LiveDisplayConfig;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_1

    if-ltz p1, :cond_1

    const/4 v0, 0x4

    if-gt p1, v0, :cond_1

    .line 576
    iget-object v0, p0, Lorg/mokee/platform/internal/display/LiveDisplayService$ModeObserver;->this$0:Lorg/mokee/platform/internal/display/LiveDisplayService;

    const-string/jumbo v1, "display_temperature_mode"

    invoke-static {v0, v1, p1}, Lorg/mokee/platform/internal/display/LiveDisplayService;->-wrap5(Lorg/mokee/platform/internal/display/LiveDisplayService;Ljava/lang/String;I)V

    .line 577
    iget-object v0, p0, Lorg/mokee/platform/internal/display/LiveDisplayService$ModeObserver;->this$0:Lorg/mokee/platform/internal/display/LiveDisplayService;

    invoke-static {v0}, Lorg/mokee/platform/internal/display/LiveDisplayService;->-get2(Lorg/mokee/platform/internal/display/LiveDisplayService;)Lmokee/hardware/LiveDisplayConfig;

    move-result-object v0

    invoke-virtual {v0}, Lmokee/hardware/LiveDisplayConfig;->getDefaultMode()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 578
    iget-object v0, p0, Lorg/mokee/platform/internal/display/LiveDisplayService$ModeObserver;->this$0:Lorg/mokee/platform/internal/display/LiveDisplayService;

    invoke-static {v0}, Lorg/mokee/platform/internal/display/LiveDisplayService;->-wrap6(Lorg/mokee/platform/internal/display/LiveDisplayService;)V

    .line 580
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 582
    :cond_1
    return v1
.end method

.method protected update()V
    .locals 3

    .prologue
    .line 560
    invoke-virtual {p0}, Lorg/mokee/platform/internal/display/LiveDisplayService$ModeObserver;->getMode()I

    move-result v0

    .line 561
    .local v0, "mode":I
    iget-object v1, p0, Lorg/mokee/platform/internal/display/LiveDisplayService$ModeObserver;->this$0:Lorg/mokee/platform/internal/display/LiveDisplayService;

    invoke-static {v1}, Lorg/mokee/platform/internal/display/LiveDisplayService;->-get9(Lorg/mokee/platform/internal/display/LiveDisplayService;)Lorg/mokee/platform/internal/display/LiveDisplayService$State;

    move-result-object v1

    iget v1, v1, Lorg/mokee/platform/internal/display/LiveDisplayService$State;->mMode:I

    if-eq v0, v1, :cond_0

    .line 562
    iget-object v1, p0, Lorg/mokee/platform/internal/display/LiveDisplayService$ModeObserver;->this$0:Lorg/mokee/platform/internal/display/LiveDisplayService;

    invoke-static {v1}, Lorg/mokee/platform/internal/display/LiveDisplayService;->-get9(Lorg/mokee/platform/internal/display/LiveDisplayService;)Lorg/mokee/platform/internal/display/LiveDisplayService$State;

    move-result-object v1

    iput v0, v1, Lorg/mokee/platform/internal/display/LiveDisplayService$State;->mMode:I

    .line 564
    iget-object v1, p0, Lorg/mokee/platform/internal/display/LiveDisplayService$ModeObserver;->this$0:Lorg/mokee/platform/internal/display/LiveDisplayService;

    sget v2, Lorg/mokee/platform/internal/display/LiveDisplayService;->MODE_CHANGED:I

    invoke-static {v1, v2}, Lorg/mokee/platform/internal/display/LiveDisplayService;->-wrap7(Lorg/mokee/platform/internal/display/LiveDisplayService;I)V

    .line 565
    iget-object v1, p0, Lorg/mokee/platform/internal/display/LiveDisplayService$ModeObserver;->this$0:Lorg/mokee/platform/internal/display/LiveDisplayService;

    invoke-static {v1}, Lorg/mokee/platform/internal/display/LiveDisplayService;->-wrap4(Lorg/mokee/platform/internal/display/LiveDisplayService;)V

    .line 559
    :cond_0
    return-void
.end method
.class public Lorg/mokee/platform/internal/MKStatusBarManagerService$CustomTileListeners;
.super Lorg/mokee/platform/internal/ManagedServices;
.source "MKStatusBarManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mokee/platform/internal/MKStatusBarManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CustomTileListeners"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mokee/platform/internal/MKStatusBarManagerService;


# direct methods
.method static synthetic -wrap0(Lorg/mokee/platform/internal/MKStatusBarManagerService$CustomTileListeners;Lorg/mokee/platform/internal/ManagedServices$ManagedServiceInfo;Lmokee/app/StatusBarPanelCustomTile;)V
    .locals 0
    .param p1, "info"    # Lorg/mokee/platform/internal/ManagedServices$ManagedServiceInfo;
    .param p2, "sbc"    # Lmokee/app/StatusBarPanelCustomTile;

    .prologue
    invoke-direct {p0, p1, p2}, Lorg/mokee/platform/internal/MKStatusBarManagerService$CustomTileListeners;->notifyPosted(Lorg/mokee/platform/internal/ManagedServices$ManagedServiceInfo;Lmokee/app/StatusBarPanelCustomTile;)V

    return-void
.end method

.method static synthetic -wrap1(Lorg/mokee/platform/internal/MKStatusBarManagerService$CustomTileListeners;Lorg/mokee/platform/internal/ManagedServices$ManagedServiceInfo;Lmokee/app/StatusBarPanelCustomTile;)V
    .locals 0
    .param p1, "info"    # Lorg/mokee/platform/internal/ManagedServices$ManagedServiceInfo;
    .param p2, "sbc"    # Lmokee/app/StatusBarPanelCustomTile;

    .prologue
    invoke-direct {p0, p1, p2}, Lorg/mokee/platform/internal/MKStatusBarManagerService$CustomTileListeners;->notifyRemoved(Lorg/mokee/platform/internal/ManagedServices$ManagedServiceInfo;Lmokee/app/StatusBarPanelCustomTile;)V

    return-void
.end method

.method public constructor <init>(Lorg/mokee/platform/internal/MKStatusBarManagerService;)V
    .locals 4
    .param p1, "this$0"    # Lorg/mokee/platform/internal/MKStatusBarManagerService;

    .prologue
    .line 546
    iput-object p1, p0, Lorg/mokee/platform/internal/MKStatusBarManagerService$CustomTileListeners;->this$0:Lorg/mokee/platform/internal/MKStatusBarManagerService;

    .line 547
    invoke-static {p1}, Lorg/mokee/platform/internal/MKStatusBarManagerService;->-get0(Lorg/mokee/platform/internal/MKStatusBarManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p1}, Lorg/mokee/platform/internal/MKStatusBarManagerService;->-get2(Lorg/mokee/platform/internal/MKStatusBarManagerService;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p1, Lorg/mokee/platform/internal/MKStatusBarManagerService;->mQSTileList:Ljava/util/ArrayList;

    invoke-static {p1}, Lorg/mokee/platform/internal/MKStatusBarManagerService;->-get3(Lorg/mokee/platform/internal/MKStatusBarManagerService;)Lorg/mokee/platform/internal/ManagedServices$UserProfiles;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/mokee/platform/internal/ManagedServices;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/Object;Lorg/mokee/platform/internal/ManagedServices$UserProfiles;)V

    .line 546
    return-void
.end method

.method private notifyPosted(Lorg/mokee/platform/internal/ManagedServices$ManagedServiceInfo;Lmokee/app/StatusBarPanelCustomTile;)V
    .locals 6
    .param p1, "info"    # Lorg/mokee/platform/internal/ManagedServices$ManagedServiceInfo;
    .param p2, "sbc"    # Lmokee/app/StatusBarPanelCustomTile;

    .prologue
    .line 649
    iget-object v1, p1, Lorg/mokee/platform/internal/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    check-cast v1, Lmokee/app/ICustomTileListener;

    .line 650
    .local v1, "listener":Lmokee/app/ICustomTileListener;
    new-instance v2, Lorg/mokee/platform/internal/MKStatusBarManagerService$StatusBarCustomTileHolder;

    invoke-direct {v2, p2}, Lorg/mokee/platform/internal/MKStatusBarManagerService$StatusBarCustomTileHolder;-><init>(Lmokee/app/StatusBarPanelCustomTile;)V

    .line 652
    .local v2, "sbcHolder":Lorg/mokee/platform/internal/MKStatusBarManagerService$StatusBarCustomTileHolder;
    :try_start_0
    invoke-interface {v1, v2}, Lmokee/app/ICustomTileListener;->onCustomTilePosted(Lorg/mokee/internal/statusbar/IStatusBarCustomTileHolder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 648
    :goto_0
    return-void

    .line 653
    :catch_0
    move-exception v0

    .line 654
    .local v0, "ex":Landroid/os/RemoteException;
    iget-object v3, p0, Lorg/mokee/platform/internal/MKStatusBarManagerService$CustomTileListeners;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unable to notify listener (posted): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private notifyRemoved(Lorg/mokee/platform/internal/ManagedServices$ManagedServiceInfo;Lmokee/app/StatusBarPanelCustomTile;)V
    .locals 6
    .param p1, "info"    # Lorg/mokee/platform/internal/ManagedServices$ManagedServiceInfo;
    .param p2, "sbc"    # Lmokee/app/StatusBarPanelCustomTile;

    .prologue
    .line 659
    invoke-virtual {p2}, Lmokee/app/StatusBarPanelCustomTile;->getUserId()I

    move-result v3

    invoke-virtual {p1, v3}, Lorg/mokee/platform/internal/ManagedServices$ManagedServiceInfo;->enabledAndUserMatches(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 660
    return-void

    .line 662
    :cond_0
    iget-object v1, p1, Lorg/mokee/platform/internal/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    check-cast v1, Lmokee/app/ICustomTileListener;

    .line 663
    .local v1, "listener":Lmokee/app/ICustomTileListener;
    new-instance v2, Lorg/mokee/platform/internal/MKStatusBarManagerService$StatusBarCustomTileHolder;

    invoke-direct {v2, p2}, Lorg/mokee/platform/internal/MKStatusBarManagerService$StatusBarCustomTileHolder;-><init>(Lmokee/app/StatusBarPanelCustomTile;)V

    .line 665
    .local v2, "sbcHolder":Lorg/mokee/platform/internal/MKStatusBarManagerService$StatusBarCustomTileHolder;
    :try_start_0
    invoke-interface {v1, v2}, Lmokee/app/ICustomTileListener;->onCustomTileRemoved(Lorg/mokee/internal/statusbar/IStatusBarCustomTileHolder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 658
    :goto_0
    return-void

    .line 666
    :catch_0
    move-exception v0

    .line 667
    .local v0, "ex":Landroid/os/RemoteException;
    iget-object v3, p0, Lorg/mokee/platform/internal/MKStatusBarManagerService$CustomTileListeners;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unable to notify listener (removed): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method protected asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1
    .param p1, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 567
    invoke-static {p1}, Lmokee/app/ICustomTileListener$Stub;->asInterface(Landroid/os/IBinder;)Lmokee/app/ICustomTileListener;

    move-result-object v0

    return-object v0
.end method

.method protected getConfig()Lorg/mokee/platform/internal/ManagedServices$Config;
    .locals 2

    .prologue
    .line 552
    new-instance v0, Lorg/mokee/platform/internal/ManagedServices$Config;

    invoke-direct {v0}, Lorg/mokee/platform/internal/ManagedServices$Config;-><init>()V

    .line 553
    .local v0, "c":Lorg/mokee/platform/internal/ManagedServices$Config;
    const-string/jumbo v1, "custom tile listener"

    iput-object v1, v0, Lorg/mokee/platform/internal/ManagedServices$Config;->caption:Ljava/lang/String;

    .line 554
    const-string/jumbo v1, "mokee.app.CustomTileListenerService"

    iput-object v1, v0, Lorg/mokee/platform/internal/ManagedServices$Config;->serviceInterface:Ljava/lang/String;

    .line 558
    const-string/jumbo v1, "mokee.permission.BIND_CUSTOM_TILE_LISTENER_SERVICE"

    .line 557
    iput-object v1, v0, Lorg/mokee/platform/internal/ManagedServices$Config;->bindPermission:Ljava/lang/String;

    .line 561
    const v1, 0x3f070022

    iput v1, v0, Lorg/mokee/platform/internal/ManagedServices$Config;->clientLabel:I

    .line 562
    return-object v0
.end method

.method public notifyPostedLocked(Lmokee/app/StatusBarPanelCustomTile;Lmokee/app/StatusBarPanelCustomTile;)V
    .locals 9
    .param p1, "sbc"    # Lmokee/app/StatusBarPanelCustomTile;
    .param p2, "oldSbc"    # Lmokee/app/StatusBarPanelCustomTile;

    .prologue
    .line 595
    const/4 v4, 0x0

    .line 597
    .local v4, "sbcClone":Lmokee/app/StatusBarPanelCustomTile;
    iget-object v7, p0, Lorg/mokee/platform/internal/MKStatusBarManagerService$CustomTileListeners;->mServices:Ljava/util/ArrayList;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local v4    # "sbcClone":Lmokee/app/StatusBarPanelCustomTile;
    .local v1, "info$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mokee/platform/internal/ManagedServices$ManagedServiceInfo;

    .line 598
    .local v0, "info":Lorg/mokee/platform/internal/ManagedServices$ManagedServiceInfo;
    iget-object v7, p0, Lorg/mokee/platform/internal/MKStatusBarManagerService$CustomTileListeners;->this$0:Lorg/mokee/platform/internal/MKStatusBarManagerService;

    invoke-static {v7, p1, v0}, Lorg/mokee/platform/internal/MKStatusBarManagerService;->-wrap1(Lorg/mokee/platform/internal/MKStatusBarManagerService;Lmokee/app/StatusBarPanelCustomTile;Lorg/mokee/platform/internal/ManagedServices$ManagedServiceInfo;)Z

    move-result v6

    .line 599
    .local v6, "sbnVisible":Z
    if-eqz p2, :cond_3

    iget-object v7, p0, Lorg/mokee/platform/internal/MKStatusBarManagerService$CustomTileListeners;->this$0:Lorg/mokee/platform/internal/MKStatusBarManagerService;

    invoke-static {v7, p2, v0}, Lorg/mokee/platform/internal/MKStatusBarManagerService;->-wrap1(Lorg/mokee/platform/internal/MKStatusBarManagerService;Lmokee/app/StatusBarPanelCustomTile;Lorg/mokee/platform/internal/ManagedServices$ManagedServiceInfo;)Z

    move-result v3

    .line 601
    :goto_1
    if-nez v3, :cond_1

    if-eqz v6, :cond_0

    .line 606
    :cond_1
    if-eqz v3, :cond_2

    if-eqz v6, :cond_4

    .line 616
    :cond_2
    invoke-virtual {p1}, Lmokee/app/StatusBarPanelCustomTile;->clone()Lmokee/app/StatusBarPanelCustomTile;

    move-result-object v4

    .line 618
    .local v4, "sbcClone":Lmokee/app/StatusBarPanelCustomTile;
    move-object v5, v4

    .line 619
    .local v5, "sbcToPost":Lmokee/app/StatusBarPanelCustomTile;
    iget-object v7, p0, Lorg/mokee/platform/internal/MKStatusBarManagerService$CustomTileListeners;->this$0:Lorg/mokee/platform/internal/MKStatusBarManagerService;

    invoke-static {v7}, Lorg/mokee/platform/internal/MKStatusBarManagerService;->-get2(Lorg/mokee/platform/internal/MKStatusBarManagerService;)Landroid/os/Handler;

    move-result-object v7

    new-instance v8, Lorg/mokee/platform/internal/MKStatusBarManagerService$CustomTileListeners$2;

    invoke-direct {v8, p0, v0, v5}, Lorg/mokee/platform/internal/MKStatusBarManagerService$CustomTileListeners$2;-><init>(Lorg/mokee/platform/internal/MKStatusBarManagerService$CustomTileListeners;Lorg/mokee/platform/internal/ManagedServices$ManagedServiceInfo;Lmokee/app/StatusBarPanelCustomTile;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 599
    .end local v4    # "sbcClone":Lmokee/app/StatusBarPanelCustomTile;
    .end local v5    # "sbcToPost":Lmokee/app/StatusBarPanelCustomTile;
    :cond_3
    const/4 v3, 0x0

    .local v3, "oldSbnVisible":Z
    goto :goto_1

    .line 607
    .end local v3    # "oldSbnVisible":Z
    :cond_4
    invoke-virtual {p2}, Lmokee/app/StatusBarPanelCustomTile;->clone()Lmokee/app/StatusBarPanelCustomTile;

    move-result-object v2

    .line 608
    .local v2, "oldSbcClone":Lmokee/app/StatusBarPanelCustomTile;
    iget-object v7, p0, Lorg/mokee/platform/internal/MKStatusBarManagerService$CustomTileListeners;->this$0:Lorg/mokee/platform/internal/MKStatusBarManagerService;

    invoke-static {v7}, Lorg/mokee/platform/internal/MKStatusBarManagerService;->-get2(Lorg/mokee/platform/internal/MKStatusBarManagerService;)Landroid/os/Handler;

    move-result-object v7

    new-instance v8, Lorg/mokee/platform/internal/MKStatusBarManagerService$CustomTileListeners$1;

    invoke-direct {v8, p0, v0, v2}, Lorg/mokee/platform/internal/MKStatusBarManagerService$CustomTileListeners$1;-><init>(Lorg/mokee/platform/internal/MKStatusBarManagerService$CustomTileListeners;Lorg/mokee/platform/internal/ManagedServices$ManagedServiceInfo;Lmokee/app/StatusBarPanelCustomTile;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 593
    .end local v0    # "info":Lorg/mokee/platform/internal/ManagedServices$ManagedServiceInfo;
    .end local v2    # "oldSbcClone":Lmokee/app/StatusBarPanelCustomTile;
    .end local v6    # "sbnVisible":Z
    :cond_5
    return-void
.end method

.method public notifyRemovedLocked(Lmokee/app/StatusBarPanelCustomTile;)V
    .locals 5
    .param p1, "sbc"    # Lmokee/app/StatusBarPanelCustomTile;

    .prologue
    .line 633
    invoke-virtual {p1}, Lmokee/app/StatusBarPanelCustomTile;->clone()Lmokee/app/StatusBarPanelCustomTile;

    move-result-object v2

    .line 634
    .local v2, "sbcClone":Lmokee/app/StatusBarPanelCustomTile;
    iget-object v3, p0, Lorg/mokee/platform/internal/MKStatusBarManagerService$CustomTileListeners;->mServices:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "info$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mokee/platform/internal/ManagedServices$ManagedServiceInfo;

    .line 635
    .local v0, "info":Lorg/mokee/platform/internal/ManagedServices$ManagedServiceInfo;
    iget-object v3, p0, Lorg/mokee/platform/internal/MKStatusBarManagerService$CustomTileListeners;->this$0:Lorg/mokee/platform/internal/MKStatusBarManagerService;

    invoke-static {v3, v2, v0}, Lorg/mokee/platform/internal/MKStatusBarManagerService;->-wrap1(Lorg/mokee/platform/internal/MKStatusBarManagerService;Lmokee/app/StatusBarPanelCustomTile;Lorg/mokee/platform/internal/ManagedServices$ManagedServiceInfo;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 638
    iget-object v3, p0, Lorg/mokee/platform/internal/MKStatusBarManagerService$CustomTileListeners;->this$0:Lorg/mokee/platform/internal/MKStatusBarManagerService;

    invoke-static {v3}, Lorg/mokee/platform/internal/MKStatusBarManagerService;->-get2(Lorg/mokee/platform/internal/MKStatusBarManagerService;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lorg/mokee/platform/internal/MKStatusBarManagerService$CustomTileListeners$3;

    invoke-direct {v4, p0, v0, v2}, Lorg/mokee/platform/internal/MKStatusBarManagerService$CustomTileListeners$3;-><init>(Lorg/mokee/platform/internal/MKStatusBarManagerService$CustomTileListeners;Lorg/mokee/platform/internal/ManagedServices$ManagedServiceInfo;Lmokee/app/StatusBarPanelCustomTile;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 631
    .end local v0    # "info":Lorg/mokee/platform/internal/ManagedServices$ManagedServiceInfo;
    :cond_1
    return-void
.end method

.method public onServiceAdded(Lorg/mokee/platform/internal/ManagedServices$ManagedServiceInfo;)V
    .locals 2
    .param p1, "info"    # Lorg/mokee/platform/internal/ManagedServices$ManagedServiceInfo;

    .prologue
    .line 572
    iget-object v1, p1, Lorg/mokee/platform/internal/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    check-cast v1, Lmokee/app/ICustomTileListener;

    .line 574
    .local v1, "listener":Lmokee/app/ICustomTileListener;
    :try_start_0
    invoke-interface {v1}, Lmokee/app/ICustomTileListener;->onListenerConnected()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 571
    :goto_0
    return-void

    .line 575
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method protected onServiceRemovedLocked(Lorg/mokee/platform/internal/ManagedServices$ManagedServiceInfo;)V
    .locals 0
    .param p1, "removed"    # Lorg/mokee/platform/internal/ManagedServices$ManagedServiceInfo;

    .prologue
    .line 581
    return-void
.end method

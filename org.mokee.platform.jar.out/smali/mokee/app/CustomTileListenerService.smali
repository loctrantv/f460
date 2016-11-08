.class public Lmokee/app/CustomTileListenerService;
.super Landroid/app/Service;
.source "CustomTileListenerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmokee/app/CustomTileListenerService$ICustomTileListenerWrapper;
    }
.end annotation


# static fields
.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "mokee.app.CustomTileListenerService"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mCurrentUser:I

.field private mStatusBarService:Lmokee/app/IMKStatusBarManager;

.field private mWrapper:Lmokee/app/CustomTileListenerService$ICustomTileListenerWrapper;


# direct methods
.method static synthetic -get0(Lmokee/app/CustomTileListenerService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmokee/app/CustomTileListenerService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lmokee/app/CustomTileListenerService;)Lmokee/app/CustomTileListenerService$ICustomTileListenerWrapper;
    .locals 1

    iget-object v0, p0, Lmokee/app/CustomTileListenerService;->mWrapper:Lmokee/app/CustomTileListenerService$ICustomTileListenerWrapper;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lmokee/app/CustomTileListenerService;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 52
    const-string/jumbo v1, "["

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 52
    invoke-virtual {p0}, Lmokee/app/CustomTileListenerService;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 52
    const-string/jumbo v1, "]"

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmokee/app/CustomTileListenerService;->TAG:Ljava/lang/String;

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lmokee/app/CustomTileListenerService;->mWrapper:Lmokee/app/CustomTileListenerService$ICustomTileListenerWrapper;

    .line 50
    return-void
.end method

.method private final getStatusBarInterface()Lmokee/app/IMKStatusBarManager;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lmokee/app/CustomTileListenerService;->mStatusBarService:Lmokee/app/IMKStatusBarManager;

    if-nez v0, :cond_0

    .line 76
    const-string/jumbo v0, "mkstatusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 75
    invoke-static {v0}, Lmokee/app/IMKStatusBarManager$Stub;->asInterface(Landroid/os/IBinder;)Lmokee/app/IMKStatusBarManager;

    move-result-object v0

    iput-object v0, p0, Lmokee/app/CustomTileListenerService;->mStatusBarService:Lmokee/app/IMKStatusBarManager;

    .line 78
    :cond_0
    iget-object v0, p0, Lmokee/app/CustomTileListenerService;->mStatusBarService:Lmokee/app/IMKStatusBarManager;

    return-object v0
.end method

.method private isBound()Z
    .locals 2

    .prologue
    .line 227
    invoke-direct {p0}, Lmokee/app/CustomTileListenerService;->getStatusBarInterface()Lmokee/app/IMKStatusBarManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmokee/app/CustomTileListenerService;->mWrapper:Lmokee/app/CustomTileListenerService$ICustomTileListenerWrapper;

    if-nez v0, :cond_1

    .line 228
    :cond_0
    iget-object v0, p0, Lmokee/app/CustomTileListenerService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "CustomTile listener service not yet bound."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    const/4 v0, 0x0

    return v0

    .line 231
    :cond_1
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 67
    iget-object v0, p0, Lmokee/app/CustomTileListenerService;->mWrapper:Lmokee/app/CustomTileListenerService$ICustomTileListenerWrapper;

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Lmokee/app/CustomTileListenerService$ICustomTileListenerWrapper;

    invoke-direct {v0, p0, v1}, Lmokee/app/CustomTileListenerService$ICustomTileListenerWrapper;-><init>(Lmokee/app/CustomTileListenerService;Lmokee/app/CustomTileListenerService$ICustomTileListenerWrapper;)V

    iput-object v0, p0, Lmokee/app/CustomTileListenerService;->mWrapper:Lmokee/app/CustomTileListenerService$ICustomTileListenerWrapper;

    .line 70
    :cond_0
    iget-object v0, p0, Lmokee/app/CustomTileListenerService;->mWrapper:Lmokee/app/CustomTileListenerService$ICustomTileListenerWrapper;

    return-object v0
.end method

.method public onCustomTilePosted(Lmokee/app/StatusBarPanelCustomTile;)V
    .locals 0
    .param p1, "sbc"    # Lmokee/app/StatusBarPanelCustomTile;

    .prologue
    .line 177
    return-void
.end method

.method public onCustomTileRemoved(Lmokee/app/StatusBarPanelCustomTile;)V
    .locals 0
    .param p1, "sbc"    # Lmokee/app/StatusBarPanelCustomTile;

    .prologue
    .line 188
    return-void
.end method

.method public onListenerConnected()V
    .locals 0

    .prologue
    .line 197
    return-void
.end method

.method public registerAsSystemService(Landroid/content/Context;Landroid/content/ComponentName;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "componentName"    # Landroid/content/ComponentName;
    .param p3, "currentUser"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 95
    invoke-direct {p0}, Lmokee/app/CustomTileListenerService;->isBound()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    return-void

    .line 98
    :cond_0
    iget-object v0, p0, Lmokee/app/CustomTileListenerService;->mStatusBarService:Lmokee/app/IMKStatusBarManager;

    .line 99
    .local v0, "statusBarInterface":Lmokee/app/IMKStatusBarManager;
    iget-object v1, p0, Lmokee/app/CustomTileListenerService;->mStatusBarService:Lmokee/app/IMKStatusBarManager;

    if-eqz v1, :cond_1

    .line 100
    new-instance v1, Lmokee/app/CustomTileListenerService$ICustomTileListenerWrapper;

    invoke-direct {v1, p0, v2}, Lmokee/app/CustomTileListenerService$ICustomTileListenerWrapper;-><init>(Lmokee/app/CustomTileListenerService;Lmokee/app/CustomTileListenerService$ICustomTileListenerWrapper;)V

    iput-object v1, p0, Lmokee/app/CustomTileListenerService;->mWrapper:Lmokee/app/CustomTileListenerService$ICustomTileListenerWrapper;

    .line 101
    iget-object v1, p0, Lmokee/app/CustomTileListenerService;->mWrapper:Lmokee/app/CustomTileListenerService$ICustomTileListenerWrapper;

    invoke-interface {v0, v1, p2, p3}, Lmokee/app/IMKStatusBarManager;->registerListener(Lmokee/app/ICustomTileListener;Landroid/content/ComponentName;I)V

    .line 102
    iput p3, p0, Lmokee/app/CustomTileListenerService;->mCurrentUser:I

    .line 94
    :cond_1
    return-void
.end method

.method public final removeCustomTile(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "id"    # I

    .prologue
    .line 217
    invoke-direct {p0}, Lmokee/app/CustomTileListenerService;->isBound()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 219
    :cond_0
    :try_start_0
    iget-object v1, p0, Lmokee/app/CustomTileListenerService;->mStatusBarService:Lmokee/app/IMKStatusBarManager;

    .line 220
    iget-object v2, p0, Lmokee/app/CustomTileListenerService;->mWrapper:Lmokee/app/CustomTileListenerService$ICustomTileListenerWrapper;

    .line 219
    invoke-interface {v1, v2, p1, p2, p3}, Lmokee/app/IMKStatusBarManager;->removeCustomTileFromListener(Lmokee/app/ICustomTileListener;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    :goto_0
    return-void

    .line 221
    :catch_0
    move-exception v0

    .line 222
    .local v0, "ex":Landroid/os/RemoteException;
    iget-object v1, p0, Lmokee/app/CustomTileListenerService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Unable to contact mkstautusbar manager"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public unregisterAsSystemService()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 114
    invoke-direct {p0}, Lmokee/app/CustomTileListenerService;->isBound()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    iget-object v0, p0, Lmokee/app/CustomTileListenerService;->mStatusBarService:Lmokee/app/IMKStatusBarManager;

    .line 116
    .local v0, "statusBarInterface":Lmokee/app/IMKStatusBarManager;
    iget-object v1, p0, Lmokee/app/CustomTileListenerService;->mWrapper:Lmokee/app/CustomTileListenerService$ICustomTileListenerWrapper;

    iget v2, p0, Lmokee/app/CustomTileListenerService;->mCurrentUser:I

    invoke-interface {v0, v1, v2}, Lmokee/app/IMKStatusBarManager;->unregisterListener(Lmokee/app/ICustomTileListener;I)V

    .line 117
    iput-object v3, p0, Lmokee/app/CustomTileListenerService;->mWrapper:Lmokee/app/CustomTileListenerService$ICustomTileListenerWrapper;

    .line 118
    iput-object v3, p0, Lmokee/app/CustomTileListenerService;->mStatusBarService:Lmokee/app/IMKStatusBarManager;

    .line 113
    .end local v0    # "statusBarInterface":Lmokee/app/IMKStatusBarManager;
    :cond_0
    return-void
.end method

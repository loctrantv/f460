.class Lorg/mokee/platform/internal/LiveLockScreenServiceBroker$2;
.super Ljava/lang/Object;
.source "LiveLockScreenServiceBroker.java"

# interfaces
.implements Lorg/mokee/platform/internal/common/BrokeredServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mokee/platform/internal/LiveLockScreenServiceBroker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mokee/platform/internal/LiveLockScreenServiceBroker;


# direct methods
.method constructor <init>(Lorg/mokee/platform/internal/LiveLockScreenServiceBroker;)V
    .locals 0
    .param p1, "this$0"    # Lorg/mokee/platform/internal/LiveLockScreenServiceBroker;

    .prologue
    .line 211
    iput-object p1, p0, Lorg/mokee/platform/internal/LiveLockScreenServiceBroker$2;->this$0:Lorg/mokee/platform/internal/LiveLockScreenServiceBroker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBrokeredServiceConnected()V
    .locals 6

    .prologue
    .line 217
    :try_start_0
    iget-object v4, p0, Lorg/mokee/platform/internal/LiveLockScreenServiceBroker$2;->this$0:Lorg/mokee/platform/internal/LiveLockScreenServiceBroker;

    invoke-static {v4}, Lorg/mokee/platform/internal/LiveLockScreenServiceBroker;->-get0(Lorg/mokee/platform/internal/LiveLockScreenServiceBroker;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 219
    .local v0, "N":I
    iget-object v4, p0, Lorg/mokee/platform/internal/LiveLockScreenServiceBroker$2;->this$0:Lorg/mokee/platform/internal/LiveLockScreenServiceBroker;

    invoke-virtual {v4}, Lorg/mokee/platform/internal/LiveLockScreenServiceBroker;->getBrokeredService()Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lmokee/app/ILiveLockScreenManagerProvider;

    .line 220
    .local v3, "iLiveLockScreenManagerProvider":Lmokee/app/ILiveLockScreenManagerProvider;
    if-eqz v3, :cond_0

    if-lez v0, :cond_0

    .line 221
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 223
    iget-object v4, p0, Lorg/mokee/platform/internal/LiveLockScreenServiceBroker$2;->this$0:Lorg/mokee/platform/internal/LiveLockScreenServiceBroker;

    invoke-static {v4}, Lorg/mokee/platform/internal/LiveLockScreenServiceBroker;->-get0(Lorg/mokee/platform/internal/LiveLockScreenServiceBroker;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lmokee/app/ILiveLockScreenChangeListener;

    .line 222
    invoke-interface {v3, v4}, Lmokee/app/ILiveLockScreenManagerProvider;->registerChangeListener(Lmokee/app/ILiveLockScreenChangeListener;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 229
    .end local v2    # "i":I
    :cond_0
    iget-object v4, p0, Lorg/mokee/platform/internal/LiveLockScreenServiceBroker$2;->this$0:Lorg/mokee/platform/internal/LiveLockScreenServiceBroker;

    invoke-static {v4}, Lorg/mokee/platform/internal/LiveLockScreenServiceBroker;->-get0(Lorg/mokee/platform/internal/LiveLockScreenServiceBroker;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 213
    .end local v0    # "N":I
    .end local v3    # "iLiveLockScreenManagerProvider":Lmokee/app/ILiveLockScreenManagerProvider;
    :goto_1
    return-void

    .line 226
    :catch_0
    move-exception v1

    .line 229
    .local v1, "e":Landroid/os/RemoteException;
    iget-object v4, p0, Lorg/mokee/platform/internal/LiveLockScreenServiceBroker$2;->this$0:Lorg/mokee/platform/internal/LiveLockScreenServiceBroker;

    invoke-static {v4}, Lorg/mokee/platform/internal/LiveLockScreenServiceBroker;->-get0(Lorg/mokee/platform/internal/LiveLockScreenServiceBroker;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto :goto_1

    .line 228
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v4

    .line 229
    iget-object v5, p0, Lorg/mokee/platform/internal/LiveLockScreenServiceBroker$2;->this$0:Lorg/mokee/platform/internal/LiveLockScreenServiceBroker;

    invoke-static {v5}, Lorg/mokee/platform/internal/LiveLockScreenServiceBroker;->-get0(Lorg/mokee/platform/internal/LiveLockScreenServiceBroker;)Landroid/os/RemoteCallbackList;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 228
    throw v4
.end method

.method public onBrokeredServiceDisconnected()V
    .locals 0

    .prologue
    .line 234
    return-void
.end method

.class public interface abstract Lmokee/app/ICustomTileListener;
.super Ljava/lang/Object;
.source "ICustomTileListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmokee/app/ICustomTileListener$NoOp;,
        Lmokee/app/ICustomTileListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onCustomTilePosted(Lorg/mokee/internal/statusbar/IStatusBarCustomTileHolder;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onCustomTileRemoved(Lorg/mokee/internal/statusbar/IStatusBarCustomTileHolder;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onListenerConnected()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

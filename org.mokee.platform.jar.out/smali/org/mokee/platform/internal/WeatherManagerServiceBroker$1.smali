.class Lorg/mokee/platform/internal/WeatherManagerServiceBroker$1;
.super Lmokee/weather/IMKWeatherManager$Stub;
.source "WeatherManagerServiceBroker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mokee/platform/internal/WeatherManagerServiceBroker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mokee/platform/internal/WeatherManagerServiceBroker;


# direct methods
.method constructor <init>(Lorg/mokee/platform/internal/WeatherManagerServiceBroker;)V
    .locals 0
    .param p1, "this$0"    # Lorg/mokee/platform/internal/WeatherManagerServiceBroker;

    .prologue
    .line 43
    iput-object p1, p0, Lorg/mokee/platform/internal/WeatherManagerServiceBroker$1;->this$0:Lorg/mokee/platform/internal/WeatherManagerServiceBroker;

    invoke-direct {p0}, Lmokee/weather/IMKWeatherManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelRequest(I)V
    .locals 1
    .param p1, "requestId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lorg/mokee/platform/internal/WeatherManagerServiceBroker$1;->this$0:Lorg/mokee/platform/internal/WeatherManagerServiceBroker;

    invoke-static {v0}, Lorg/mokee/platform/internal/WeatherManagerServiceBroker;->-wrap0(Lorg/mokee/platform/internal/WeatherManagerServiceBroker;)V

    .line 80
    iget-object v0, p0, Lorg/mokee/platform/internal/WeatherManagerServiceBroker$1;->this$0:Lorg/mokee/platform/internal/WeatherManagerServiceBroker;

    invoke-virtual {v0}, Lorg/mokee/platform/internal/WeatherManagerServiceBroker;->getBrokeredService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lmokee/weather/IMKWeatherManager;

    invoke-interface {v0, p1}, Lmokee/weather/IMKWeatherManager;->cancelRequest(I)V

    .line 78
    return-void
.end method

.method public getActiveWeatherServiceProviderLabel()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lorg/mokee/platform/internal/WeatherManagerServiceBroker$1;->this$0:Lorg/mokee/platform/internal/WeatherManagerServiceBroker;

    invoke-static {v0}, Lorg/mokee/platform/internal/WeatherManagerServiceBroker;->-wrap0(Lorg/mokee/platform/internal/WeatherManagerServiceBroker;)V

    .line 74
    iget-object v0, p0, Lorg/mokee/platform/internal/WeatherManagerServiceBroker$1;->this$0:Lorg/mokee/platform/internal/WeatherManagerServiceBroker;

    invoke-virtual {v0}, Lorg/mokee/platform/internal/WeatherManagerServiceBroker;->getBrokeredService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lmokee/weather/IMKWeatherManager;

    invoke-interface {v0}, Lmokee/weather/IMKWeatherManager;->getActiveWeatherServiceProviderLabel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public lookupCity(Lmokee/weather/RequestInfo;)V
    .locals 1
    .param p1, "info"    # Lmokee/weather/RequestInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lorg/mokee/platform/internal/WeatherManagerServiceBroker$1;->this$0:Lorg/mokee/platform/internal/WeatherManagerServiceBroker;

    invoke-static {v0}, Lorg/mokee/platform/internal/WeatherManagerServiceBroker;->-wrap0(Lorg/mokee/platform/internal/WeatherManagerServiceBroker;)V

    .line 54
    iget-object v0, p0, Lorg/mokee/platform/internal/WeatherManagerServiceBroker$1;->this$0:Lorg/mokee/platform/internal/WeatherManagerServiceBroker;

    invoke-virtual {v0}, Lorg/mokee/platform/internal/WeatherManagerServiceBroker;->getBrokeredService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lmokee/weather/IMKWeatherManager;

    invoke-interface {v0, p1}, Lmokee/weather/IMKWeatherManager;->lookupCity(Lmokee/weather/RequestInfo;)V

    .line 52
    return-void
.end method

.method public registerWeatherServiceProviderChangeListener(Lmokee/weather/IWeatherServiceProviderChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lmokee/weather/IWeatherServiceProviderChangeListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Lorg/mokee/platform/internal/WeatherManagerServiceBroker$1;->this$0:Lorg/mokee/platform/internal/WeatherManagerServiceBroker;

    invoke-static {v0}, Lorg/mokee/platform/internal/WeatherManagerServiceBroker;->-wrap0(Lorg/mokee/platform/internal/WeatherManagerServiceBroker;)V

    .line 61
    iget-object v0, p0, Lorg/mokee/platform/internal/WeatherManagerServiceBroker$1;->this$0:Lorg/mokee/platform/internal/WeatherManagerServiceBroker;

    invoke-virtual {v0}, Lorg/mokee/platform/internal/WeatherManagerServiceBroker;->getBrokeredService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lmokee/weather/IMKWeatherManager;

    invoke-interface {v0, p1}, Lmokee/weather/IMKWeatherManager;->registerWeatherServiceProviderChangeListener(Lmokee/weather/IWeatherServiceProviderChangeListener;)V

    .line 59
    return-void
.end method

.method public unregisterWeatherServiceProviderChangeListener(Lmokee/weather/IWeatherServiceProviderChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lmokee/weather/IWeatherServiceProviderChangeListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lorg/mokee/platform/internal/WeatherManagerServiceBroker$1;->this$0:Lorg/mokee/platform/internal/WeatherManagerServiceBroker;

    invoke-static {v0}, Lorg/mokee/platform/internal/WeatherManagerServiceBroker;->-wrap0(Lorg/mokee/platform/internal/WeatherManagerServiceBroker;)V

    .line 68
    iget-object v0, p0, Lorg/mokee/platform/internal/WeatherManagerServiceBroker$1;->this$0:Lorg/mokee/platform/internal/WeatherManagerServiceBroker;

    invoke-virtual {v0}, Lorg/mokee/platform/internal/WeatherManagerServiceBroker;->getBrokeredService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lmokee/weather/IMKWeatherManager;

    invoke-interface {v0, p1}, Lmokee/weather/IMKWeatherManager;->unregisterWeatherServiceProviderChangeListener(Lmokee/weather/IWeatherServiceProviderChangeListener;)V

    .line 66
    return-void
.end method

.method public updateWeather(Lmokee/weather/RequestInfo;)V
    .locals 1
    .param p1, "info"    # Lmokee/weather/RequestInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lorg/mokee/platform/internal/WeatherManagerServiceBroker$1;->this$0:Lorg/mokee/platform/internal/WeatherManagerServiceBroker;

    invoke-static {v0}, Lorg/mokee/platform/internal/WeatherManagerServiceBroker;->-wrap0(Lorg/mokee/platform/internal/WeatherManagerServiceBroker;)V

    .line 48
    iget-object v0, p0, Lorg/mokee/platform/internal/WeatherManagerServiceBroker$1;->this$0:Lorg/mokee/platform/internal/WeatherManagerServiceBroker;

    invoke-virtual {v0}, Lorg/mokee/platform/internal/WeatherManagerServiceBroker;->getBrokeredService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lmokee/weather/IMKWeatherManager;

    invoke-interface {v0, p1}, Lmokee/weather/IMKWeatherManager;->updateWeather(Lmokee/weather/RequestInfo;)V

    .line 46
    return-void
.end method

.class public Lorg/mokee/platform/internal/MKSystemServer;
.super Ljava/lang/Object;
.source "MKSystemServer.java"


# static fields
.field private static final ENCRYPTED_STATE:Ljava/lang/String; = "1"

.field private static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final TAG:Ljava/lang/String; = "MKSystemServer"


# instance fields
.field private mSystemContext:Landroid/content/Context;

.field private mSystemServiceHelper:Lorg/mokee/platform/internal/common/MKSystemServiceHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "systemContext"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lorg/mokee/platform/internal/MKSystemServer;->mSystemContext:Landroid/content/Context;

    .line 43
    new-instance v0, Lorg/mokee/platform/internal/common/MKSystemServiceHelper;

    iget-object v1, p0, Lorg/mokee/platform/internal/MKSystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/mokee/platform/internal/common/MKSystemServiceHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/mokee/platform/internal/MKSystemServer;->mSystemServiceHelper:Lorg/mokee/platform/internal/common/MKSystemServiceHelper;

    .line 41
    return-void
.end method

.method public static coreAppsOnly()Z
    .locals 2

    .prologue
    .line 48
    const-string/jumbo v1, "vold.decrypt"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, "cryptState":Ljava/lang/String;
    const-string/jumbo v1, "trigger_restart_min_framework"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 50
    const-string/jumbo v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 49
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 97
    const-string/jumbo v0, "MKSystemServer"

    const-string/jumbo v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const-string/jumbo v0, "MKSystemServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "BOOT FAILURE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 96
    return-void
.end method

.method private run()V
    .locals 3

    .prologue
    .line 59
    :try_start_0
    invoke-direct {p0}, Lorg/mokee/platform/internal/MKSystemServer;->startServices()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    return-void

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "ex":Ljava/lang/Throwable;
    const-string/jumbo v1, "System"

    const-string/jumbo v2, "******************************************"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    const-string/jumbo v1, "System"

    const-string/jumbo v2, "************ Failure starting mk system services"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 63
    throw v0
.end method

.method private startServices()V
    .locals 11

    .prologue
    .line 68
    iget-object v0, p0, Lorg/mokee/platform/internal/MKSystemServer;->mSystemContext:Landroid/content/Context;

    .line 69
    .local v0, "context":Landroid/content/Context;
    const-class v6, Lcom/android/server/SystemServiceManager;

    invoke-static {v6}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/SystemServiceManager;

    .line 70
    .local v5, "ssm":Lcom/android/server/SystemServiceManager;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 71
    const v7, 0x3f04000a

    .line 70
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 73
    .local v2, "externalServices":[Ljava/lang/String;
    const/4 v6, 0x0

    array-length v7, v2

    :goto_0
    if-ge v6, v7, :cond_3

    aget-object v4, v2, v6

    .line 75
    .local v4, "service":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v8, "MKSystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Attempting to start service "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v8, p0, Lorg/mokee/platform/internal/MKSystemServer;->mSystemServiceHelper:Lorg/mokee/platform/internal/common/MKSystemServiceHelper;

    invoke-virtual {v8, v4}, Lorg/mokee/platform/internal/common/MKSystemServiceHelper;->getServiceFor(Ljava/lang/String;)Lorg/mokee/platform/internal/MKSystemService;

    move-result-object v3

    .line 77
    .local v3, "mkSystemService":Lorg/mokee/platform/internal/MKSystemService;
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 78
    invoke-virtual {v3}, Lorg/mokee/platform/internal/MKSystemService;->getFeatureDeclaration()Ljava/lang/String;

    move-result-object v9

    .line 77
    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 79
    invoke-static {}, Lorg/mokee/platform/internal/MKSystemServer;->coreAppsOnly()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v3}, Lorg/mokee/platform/internal/MKSystemService;->isCoreService()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 83
    :cond_0
    const-string/jumbo v8, "MKSystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Starting service "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-virtual {v3}, Lorg/mokee/platform/internal/MKSystemService;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 73
    .end local v3    # "mkSystemService":Lorg/mokee/platform/internal/MKSystemService;
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 80
    .restart local v3    # "mkSystemService":Lorg/mokee/platform/internal/MKSystemService;
    :cond_1
    const-string/jumbo v8, "MKSystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Not starting "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 81
    const-string/jumbo v10, " - only parsing core apps"

    .line 80
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 90
    .end local v3    # "mkSystemService":Lorg/mokee/platform/internal/MKSystemService;
    :catch_0
    move-exception v1

    .line 91
    .local v1, "e":Ljava/lang/Throwable;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "starting "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8, v1}, Lorg/mokee/platform/internal/MKSystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 87
    .end local v1    # "e":Ljava/lang/Throwable;
    .restart local v3    # "mkSystemService":Lorg/mokee/platform/internal/MKSystemService;
    :cond_2
    :try_start_1
    const-string/jumbo v8, "MKSystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Not starting service "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 88
    const-string/jumbo v10, " due to feature not declared on device"

    .line 87
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 67
    .end local v3    # "mkSystemService":Lorg/mokee/platform/internal/MKSystemService;
    .end local v4    # "service":Ljava/lang/String;
    :cond_3
    return-void
.end method

.class public Lcom/facebook/react/turbomodule/core/TurboModuleManager;
.super Ljava/lang/Object;
.source "TurboModuleManager.java"

# interfaces
.implements Lcom/facebook/react/bridge/JSIModule;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/turbomodule/core/TurboModuleManager$ModuleProvider;
    }
.end annotation


# instance fields
.field private final mHybridData:Lcom/facebook/jni/HybridData;
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation
.end field

.field private final mModuleProvider:Lcom/facebook/react/turbomodule/core/TurboModuleManager$ModuleProvider;

.field private final mReactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    const-string v0, "turbomodulejsijni"

    invoke-static {v0}, Lcom/facebook/soloader/SoLoader;->loadLibrary(Ljava/lang/String;)Z

    .line 27
    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/facebook/react/bridge/JavaScriptContextHolder;Lcom/facebook/react/turbomodule/core/TurboModuleManager$ModuleProvider;)V
    .locals 3
    .param p1, "reactApplicationContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;
    .param p2, "jsContext"    # Lcom/facebook/react/bridge/JavaScriptContextHolder;
    .param p3, "moduleProvider"    # Lcom/facebook/react/turbomodule/core/TurboModuleManager$ModuleProvider;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/facebook/react/turbomodule/core/TurboModuleManager;->mReactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 39
    iget-object v0, p0, Lcom/facebook/react/turbomodule/core/TurboModuleManager;->mReactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 41
    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->getCatalystInstance()Lcom/facebook/react/bridge/CatalystInstance;

    move-result-object v0

    .line 42
    invoke-interface {v0}, Lcom/facebook/react/bridge/CatalystInstance;->getReactQueueConfiguration()Lcom/facebook/react/bridge/queue/ReactQueueConfiguration;

    move-result-object v0

    .line 43
    invoke-interface {v0}, Lcom/facebook/react/bridge/queue/ReactQueueConfiguration;->getJSQueueThread()Lcom/facebook/react/bridge/queue/MessageQueueThread;

    move-result-object v0

    .line 44
    .local v0, "jsMessageQueueThread":Lcom/facebook/react/bridge/queue/MessageQueueThread;
    invoke-virtual {p2}, Lcom/facebook/react/bridge/JavaScriptContextHolder;->get()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2, v0}, Lcom/facebook/react/turbomodule/core/TurboModuleManager;->initHybrid(JLcom/facebook/react/bridge/queue/MessageQueueThread;)Lcom/facebook/jni/HybridData;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/react/turbomodule/core/TurboModuleManager;->mHybridData:Lcom/facebook/jni/HybridData;

    .line 45
    iput-object p3, p0, Lcom/facebook/react/turbomodule/core/TurboModuleManager;->mModuleProvider:Lcom/facebook/react/turbomodule/core/TurboModuleManager$ModuleProvider;

    .line 46
    return-void
.end method


# virtual methods
.method protected getJavaModule(Ljava/lang/String;)Lcom/facebook/react/turbomodule/core/interfaces/TurboModule;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/facebook/react/turbomodule/core/TurboModuleManager;->mModuleProvider:Lcom/facebook/react/turbomodule/core/TurboModuleManager$ModuleProvider;

    iget-object v1, p0, Lcom/facebook/react/turbomodule/core/TurboModuleManager;->mReactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-interface {v0, p1, v1}, Lcom/facebook/react/turbomodule/core/TurboModuleManager$ModuleProvider;->getModule(Ljava/lang/String;Lcom/facebook/react/bridge/ReactApplicationContext;)Lcom/facebook/react/turbomodule/core/interfaces/TurboModule;

    move-result-object v0

    return-object v0
.end method

.method protected getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/facebook/react/turbomodule/core/TurboModuleManager;->mReactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    return-object v0
.end method

.method protected native initHybrid(JLcom/facebook/react/bridge/queue/MessageQueueThread;)Lcom/facebook/jni/HybridData;
.end method

.method public initialize()V
    .locals 0

    .line 67
    return-void
.end method

.method public installBindings()V
    .locals 0

    .line 59
    invoke-virtual {p0}, Lcom/facebook/react/turbomodule/core/TurboModuleManager;->installJSIBindings()V

    .line 60
    return-void
.end method

.method protected native installJSIBindings()V
.end method

.method public onCatalystInstanceDestroy()V
    .locals 0

    .line 70
    return-void
.end method

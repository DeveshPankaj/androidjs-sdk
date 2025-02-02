.class public Lcom/facebook/react/fabric/jsi/Binding;
.super Ljava/lang/Object;
.source "Binding.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "MissingNativeLoadLibrary"
    }
.end annotation

.annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
.end annotation


# instance fields
.field private final mHybridData:Lcom/facebook/jni/HybridData;
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 24
    invoke-static {}, Lcom/facebook/react/fabric/jsi/FabricSoLoader;->staticInit()V

    .line 25
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-static {}, Lcom/facebook/react/fabric/jsi/Binding;->initHybrid()Lcom/facebook/jni/HybridData;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/react/fabric/jsi/Binding;->mHybridData:Lcom/facebook/jni/HybridData;

    .line 33
    return-void
.end method

.method private static native initHybrid()Lcom/facebook/jni/HybridData;
.end method

.method private native installFabricUIManager(JLjava/lang/Object;Lcom/facebook/react/fabric/jsi/EventBeatManager;Lcom/facebook/react/bridge/queue/MessageQueueThread;Lcom/facebook/react/fabric/jsi/ComponentFactoryDelegate;Ljava/lang/Object;)V
.end method

.method private native uninstallFabricUIManager()V
.end method


# virtual methods
.method public register(Lcom/facebook/react/bridge/JavaScriptContextHolder;Lcom/facebook/react/fabric/FabricUIManager;Lcom/facebook/react/fabric/jsi/EventBeatManager;Lcom/facebook/react/bridge/queue/MessageQueueThread;Lcom/facebook/react/fabric/jsi/ComponentFactoryDelegate;Lcom/facebook/react/fabric/ReactNativeConfig;)V
    .locals 8
    .param p1, "jsContext"    # Lcom/facebook/react/bridge/JavaScriptContextHolder;
    .param p2, "fabricUIManager"    # Lcom/facebook/react/fabric/FabricUIManager;
    .param p3, "eventBeatManager"    # Lcom/facebook/react/fabric/jsi/EventBeatManager;
    .param p4, "jsMessageQueueThread"    # Lcom/facebook/react/bridge/queue/MessageQueueThread;
    .param p5, "componentFactoryDelegate"    # Lcom/facebook/react/fabric/jsi/ComponentFactoryDelegate;
    .param p6, "reactNativeConfig"    # Lcom/facebook/react/fabric/ReactNativeConfig;

    .line 61
    invoke-virtual {p2, p0}, Lcom/facebook/react/fabric/FabricUIManager;->setBinding(Lcom/facebook/react/fabric/jsi/Binding;)V

    .line 62
    nop

    .line 63
    invoke-virtual {p1}, Lcom/facebook/react/bridge/JavaScriptContextHolder;->get()J

    move-result-wide v1

    .line 62
    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/facebook/react/fabric/jsi/Binding;->installFabricUIManager(JLjava/lang/Object;Lcom/facebook/react/fabric/jsi/EventBeatManager;Lcom/facebook/react/bridge/queue/MessageQueueThread;Lcom/facebook/react/fabric/jsi/ComponentFactoryDelegate;Ljava/lang/Object;)V

    .line 64
    invoke-static {}, Lcom/facebook/react/uimanager/PixelUtil;->getDisplayMetricDensity()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/react/fabric/jsi/Binding;->setPixelDensity(F)V

    .line 65
    return-void
.end method

.method public native renderTemplateToSurface(ILjava/lang/String;)V
.end method

.method public native setConstraints(IFFFF)V
.end method

.method public native setPixelDensity(F)V
.end method

.method public native startSurface(ILcom/facebook/react/bridge/NativeMap;)V
.end method

.method public native stopSurface(I)V
.end method

.method public unregister()V
    .locals 0

    .line 70
    invoke-direct {p0}, Lcom/facebook/react/fabric/jsi/Binding;->uninstallFabricUIManager()V

    .line 71
    return-void
.end method

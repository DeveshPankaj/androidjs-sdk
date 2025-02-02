.class public Lcom/facebook/react/fabric/jsi/EventBeatManager;
.super Ljava/lang/Object;
.source "EventBeatManager.java"

# interfaces
.implements Lcom/facebook/react/uimanager/events/BatchEventDispatchedListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "MissingNativeLoadLibrary"
    }
.end annotation


# instance fields
.field private final mHybridData:Lcom/facebook/jni/HybridData;
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation
.end field

.field private final mReactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 24
    invoke-static {}, Lcom/facebook/react/fabric/jsi/FabricSoLoader;->staticInit()V

    .line 25
    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/JavaScriptContextHolder;Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 2
    .param p1, "jsContext"    # Lcom/facebook/react/bridge/JavaScriptContextHolder;
    .param p2, "reactApplicationContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-virtual {p1}, Lcom/facebook/react/bridge/JavaScriptContextHolder;->get()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/react/fabric/jsi/EventBeatManager;->initHybrid(J)Lcom/facebook/jni/HybridData;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/react/fabric/jsi/EventBeatManager;->mHybridData:Lcom/facebook/jni/HybridData;

    .line 37
    iput-object p2, p0, Lcom/facebook/react/fabric/jsi/EventBeatManager;->mReactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 38
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/react/fabric/jsi/EventBeatManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/facebook/react/fabric/jsi/EventBeatManager;

    .line 21
    invoke-direct {p0}, Lcom/facebook/react/fabric/jsi/EventBeatManager;->beat()V

    return-void
.end method

.method private native beat()V
.end method

.method private dispatchEventsAsync()V
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/facebook/react/fabric/jsi/EventBeatManager;->mReactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->isOnJSQueueThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    invoke-direct {p0}, Lcom/facebook/react/fabric/jsi/EventBeatManager;->beat()V

    goto :goto_0

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/fabric/jsi/EventBeatManager;->mReactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    new-instance v1, Lcom/facebook/react/fabric/jsi/EventBeatManager$1;

    invoke-direct {v1, p0}, Lcom/facebook/react/fabric/jsi/EventBeatManager$1;-><init>(Lcom/facebook/react/fabric/jsi/EventBeatManager;)V

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->runOnJSQueueThread(Ljava/lang/Runnable;)V

    .line 60
    :goto_0
    return-void
.end method

.method private static native initHybrid(J)Lcom/facebook/jni/HybridData;
.end method


# virtual methods
.method public onBatchEventDispatched()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/facebook/react/fabric/jsi/EventBeatManager;->dispatchEventsAsync()V

    .line 43
    return-void
.end method

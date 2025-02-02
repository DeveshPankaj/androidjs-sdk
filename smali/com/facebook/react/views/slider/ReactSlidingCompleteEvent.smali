.class public Lcom/facebook/react/views/slider/ReactSlidingCompleteEvent;
.super Lcom/facebook/react/uimanager/events/Event;
.source "ReactSlidingCompleteEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/uimanager/events/Event<",
        "Lcom/facebook/react/views/slider/ReactSlidingCompleteEvent;",
        ">;"
    }
.end annotation


# static fields
.field public static final EVENT_NAME:Ljava/lang/String; = "topSlidingComplete"


# instance fields
.field private final mValue:D


# direct methods
.method public constructor <init>(ID)V
    .locals 0
    .param p1, "viewId"    # I
    .param p2, "value"    # D

    .line 25
    invoke-direct {p0, p1}, Lcom/facebook/react/uimanager/events/Event;-><init>(I)V

    .line 26
    iput-wide p2, p0, Lcom/facebook/react/views/slider/ReactSlidingCompleteEvent;->mValue:D

    .line 27
    return-void
.end method

.method private serializeEventData()Lcom/facebook/react/bridge/WritableMap;
    .locals 4

    .line 54
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 55
    .local v0, "eventData":Lcom/facebook/react/bridge/WritableMap;
    invoke-virtual {p0}, Lcom/facebook/react/views/slider/ReactSlidingCompleteEvent;->getViewTag()I

    move-result v1

    const-string v2, "target"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 56
    invoke-virtual {p0}, Lcom/facebook/react/views/slider/ReactSlidingCompleteEvent;->getValue()D

    move-result-wide v1

    const-string v3, "value"

    invoke-interface {v0, v3, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 57
    return-object v0
.end method


# virtual methods
.method public canCoalesce()Z
    .locals 1

    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public dispatch(Lcom/facebook/react/uimanager/events/RCTEventEmitter;)V
    .locals 3
    .param p1, "rctEventEmitter"    # Lcom/facebook/react/uimanager/events/RCTEventEmitter;

    .line 50
    invoke-virtual {p0}, Lcom/facebook/react/views/slider/ReactSlidingCompleteEvent;->getViewTag()I

    move-result v0

    invoke-virtual {p0}, Lcom/facebook/react/views/slider/ReactSlidingCompleteEvent;->getEventName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/facebook/react/views/slider/ReactSlidingCompleteEvent;->serializeEventData()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lcom/facebook/react/uimanager/events/RCTEventEmitter;->receiveEvent(ILjava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    .line 51
    return-void
.end method

.method public getCoalescingKey()S
    .locals 1

    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method public getEventName()Ljava/lang/String;
    .locals 1

    .line 35
    const-string v0, "topSlidingComplete"

    return-object v0
.end method

.method public getValue()D
    .locals 2

    .line 30
    iget-wide v0, p0, Lcom/facebook/react/views/slider/ReactSlidingCompleteEvent;->mValue:D

    return-wide v0
.end method

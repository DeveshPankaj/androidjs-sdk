.class Lcom/facebook/react/views/textinput/ReactTextInputBlurEvent;
.super Lcom/facebook/react/uimanager/events/Event;
.source "ReactTextInputBlurEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/uimanager/events/Event<",
        "Lcom/facebook/react/views/textinput/ReactTextInputBlurEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final EVENT_NAME:Ljava/lang/String; = "topBlur"


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "viewId"    # I

    .line 23
    invoke-direct {p0, p1}, Lcom/facebook/react/uimanager/events/Event;-><init>(I)V

    .line 24
    return-void
.end method

.method private serializeEventData()Lcom/facebook/react/bridge/WritableMap;
    .locals 3

    .line 42
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 43
    .local v0, "eventData":Lcom/facebook/react/bridge/WritableMap;
    invoke-virtual {p0}, Lcom/facebook/react/views/textinput/ReactTextInputBlurEvent;->getViewTag()I

    move-result v1

    const-string v2, "target"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 44
    return-object v0
.end method


# virtual methods
.method public canCoalesce()Z
    .locals 1

    .line 33
    const/4 v0, 0x0

    return v0
.end method

.method public dispatch(Lcom/facebook/react/uimanager/events/RCTEventEmitter;)V
    .locals 3
    .param p1, "rctEventEmitter"    # Lcom/facebook/react/uimanager/events/RCTEventEmitter;

    .line 38
    invoke-virtual {p0}, Lcom/facebook/react/views/textinput/ReactTextInputBlurEvent;->getViewTag()I

    move-result v0

    invoke-virtual {p0}, Lcom/facebook/react/views/textinput/ReactTextInputBlurEvent;->getEventName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/facebook/react/views/textinput/ReactTextInputBlurEvent;->serializeEventData()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lcom/facebook/react/uimanager/events/RCTEventEmitter;->receiveEvent(ILjava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    .line 39
    return-void
.end method

.method public getEventName()Ljava/lang/String;
    .locals 1

    .line 28
    const-string v0, "topBlur"

    return-object v0
.end method

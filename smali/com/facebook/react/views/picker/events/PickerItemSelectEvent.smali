.class public Lcom/facebook/react/views/picker/events/PickerItemSelectEvent;
.super Lcom/facebook/react/uimanager/events/Event;
.source "PickerItemSelectEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/uimanager/events/Event<",
        "Lcom/facebook/react/views/picker/events/PickerItemSelectEvent;",
        ">;"
    }
.end annotation


# static fields
.field public static final EVENT_NAME:Ljava/lang/String; = "topSelect"


# instance fields
.field private final mPosition:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "position"    # I

    .line 21
    invoke-direct {p0, p1}, Lcom/facebook/react/uimanager/events/Event;-><init>(I)V

    .line 22
    iput p2, p0, Lcom/facebook/react/views/picker/events/PickerItemSelectEvent;->mPosition:I

    .line 23
    return-void
.end method

.method private serializeEventData()Lcom/facebook/react/bridge/WritableMap;
    .locals 3

    .line 36
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 37
    .local v0, "eventData":Lcom/facebook/react/bridge/WritableMap;
    iget v1, p0, Lcom/facebook/react/views/picker/events/PickerItemSelectEvent;->mPosition:I

    const-string v2, "position"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 38
    return-object v0
.end method


# virtual methods
.method public dispatch(Lcom/facebook/react/uimanager/events/RCTEventEmitter;)V
    .locals 3
    .param p1, "rctEventEmitter"    # Lcom/facebook/react/uimanager/events/RCTEventEmitter;

    .line 32
    invoke-virtual {p0}, Lcom/facebook/react/views/picker/events/PickerItemSelectEvent;->getViewTag()I

    move-result v0

    invoke-virtual {p0}, Lcom/facebook/react/views/picker/events/PickerItemSelectEvent;->getEventName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/facebook/react/views/picker/events/PickerItemSelectEvent;->serializeEventData()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lcom/facebook/react/uimanager/events/RCTEventEmitter;->receiveEvent(ILjava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    .line 33
    return-void
.end method

.method public getEventName()Ljava/lang/String;
    .locals 1

    .line 27
    const-string v0, "topSelect"

    return-object v0
.end method

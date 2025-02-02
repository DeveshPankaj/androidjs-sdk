.class public Lcom/facebook/react/fabric/mounting/mountitems/UpdateEventEmitterMountItem;
.super Ljava/lang/Object;
.source "UpdateEventEmitterMountItem.java"

# interfaces
.implements Lcom/facebook/react/fabric/mounting/mountitems/MountItem;


# instance fields
.field private final mEventHandler:Lcom/facebook/react/fabric/jsi/EventEmitterWrapper;

.field private final mReactTag:I


# direct methods
.method public constructor <init>(ILcom/facebook/react/fabric/jsi/EventEmitterWrapper;)V
    .locals 0
    .param p1, "reactTag"    # I
    .param p2, "EventHandler"    # Lcom/facebook/react/fabric/jsi/EventEmitterWrapper;

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput p1, p0, Lcom/facebook/react/fabric/mounting/mountitems/UpdateEventEmitterMountItem;->mReactTag:I

    .line 19
    iput-object p2, p0, Lcom/facebook/react/fabric/mounting/mountitems/UpdateEventEmitterMountItem;->mEventHandler:Lcom/facebook/react/fabric/jsi/EventEmitterWrapper;

    .line 20
    return-void
.end method


# virtual methods
.method public execute(Lcom/facebook/react/fabric/mounting/MountingManager;)V
    .locals 2
    .param p1, "mountingManager"    # Lcom/facebook/react/fabric/mounting/MountingManager;

    .line 24
    iget v0, p0, Lcom/facebook/react/fabric/mounting/mountitems/UpdateEventEmitterMountItem;->mReactTag:I

    iget-object v1, p0, Lcom/facebook/react/fabric/mounting/mountitems/UpdateEventEmitterMountItem;->mEventHandler:Lcom/facebook/react/fabric/jsi/EventEmitterWrapper;

    invoke-virtual {p1, v0, v1}, Lcom/facebook/react/fabric/mounting/MountingManager;->updateEventEmitter(ILcom/facebook/react/fabric/jsi/EventEmitterWrapper;)V

    .line 25
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UpdateEventEmitterMountItem ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/facebook/react/fabric/mounting/mountitems/UpdateEventEmitterMountItem;->mReactTag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

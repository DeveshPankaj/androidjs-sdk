.class public Lcom/facebook/react/fabric/mounting/mountitems/CreateMountItem;
.super Ljava/lang/Object;
.source "CreateMountItem.java"

# interfaces
.implements Lcom/facebook/react/fabric/mounting/mountitems/MountItem;


# instance fields
.field private final mComponentName:Ljava/lang/String;

.field private final mIsVirtual:Z

.field private final mReactTag:I

.field private final mThemedReactContext:Lcom/facebook/react/uimanager/ThemedReactContext;


# direct methods
.method public constructor <init>(Lcom/facebook/react/uimanager/ThemedReactContext;Ljava/lang/String;IZ)V
    .locals 0
    .param p1, "themedReactContext"    # Lcom/facebook/react/uimanager/ThemedReactContext;
    .param p2, "componentName"    # Ljava/lang/String;
    .param p3, "reactTag"    # I
    .param p4, "isVirtual"    # Z

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput p3, p0, Lcom/facebook/react/fabric/mounting/mountitems/CreateMountItem;->mReactTag:I

    .line 25
    iput-object p1, p0, Lcom/facebook/react/fabric/mounting/mountitems/CreateMountItem;->mThemedReactContext:Lcom/facebook/react/uimanager/ThemedReactContext;

    .line 26
    iput-object p2, p0, Lcom/facebook/react/fabric/mounting/mountitems/CreateMountItem;->mComponentName:Ljava/lang/String;

    .line 27
    iput-boolean p4, p0, Lcom/facebook/react/fabric/mounting/mountitems/CreateMountItem;->mIsVirtual:Z

    .line 28
    return-void
.end method


# virtual methods
.method public execute(Lcom/facebook/react/fabric/mounting/MountingManager;)V
    .locals 4
    .param p1, "mountingManager"    # Lcom/facebook/react/fabric/mounting/MountingManager;

    .line 32
    iget-object v0, p0, Lcom/facebook/react/fabric/mounting/mountitems/CreateMountItem;->mThemedReactContext:Lcom/facebook/react/uimanager/ThemedReactContext;

    iget-object v1, p0, Lcom/facebook/react/fabric/mounting/mountitems/CreateMountItem;->mComponentName:Ljava/lang/String;

    iget v2, p0, Lcom/facebook/react/fabric/mounting/mountitems/CreateMountItem;->mReactTag:I

    iget-boolean v3, p0, Lcom/facebook/react/fabric/mounting/mountitems/CreateMountItem;->mIsVirtual:Z

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/facebook/react/fabric/mounting/MountingManager;->createView(Lcom/facebook/react/uimanager/ThemedReactContext;Ljava/lang/String;IZ)V

    .line 33
    return-void
.end method

.method public getComponentName()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/facebook/react/fabric/mounting/mountitems/CreateMountItem;->mComponentName:Ljava/lang/String;

    return-object v0
.end method

.method public getThemedReactContext()Lcom/facebook/react/uimanager/ThemedReactContext;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/facebook/react/fabric/mounting/mountitems/CreateMountItem;->mThemedReactContext:Lcom/facebook/react/uimanager/ThemedReactContext;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CreateMountItem ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/facebook/react/fabric/mounting/mountitems/CreateMountItem;->mReactTag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/facebook/react/fabric/mounting/mountitems/CreateMountItem;->mComponentName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public Lcom/facebook/react/fabric/mounting/mountitems/RemoveMountItem;
.super Ljava/lang/Object;
.source "RemoveMountItem.java"

# interfaces
.implements Lcom/facebook/react/fabric/mounting/mountitems/MountItem;


# instance fields
.field private mIndex:I

.field private mParentReactTag:I

.field private mReactTag:I


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .param p1, "reactTag"    # I
    .param p2, "parentReactTag"    # I
    .param p3, "index"    # I

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput p1, p0, Lcom/facebook/react/fabric/mounting/mountitems/RemoveMountItem;->mReactTag:I

    .line 19
    iput p2, p0, Lcom/facebook/react/fabric/mounting/mountitems/RemoveMountItem;->mParentReactTag:I

    .line 20
    iput p3, p0, Lcom/facebook/react/fabric/mounting/mountitems/RemoveMountItem;->mIndex:I

    .line 21
    return-void
.end method


# virtual methods
.method public execute(Lcom/facebook/react/fabric/mounting/MountingManager;)V
    .locals 2
    .param p1, "mountingManager"    # Lcom/facebook/react/fabric/mounting/MountingManager;

    .line 25
    iget v0, p0, Lcom/facebook/react/fabric/mounting/mountitems/RemoveMountItem;->mParentReactTag:I

    iget v1, p0, Lcom/facebook/react/fabric/mounting/mountitems/RemoveMountItem;->mIndex:I

    invoke-virtual {p1, v0, v1}, Lcom/facebook/react/fabric/mounting/MountingManager;->removeViewAt(II)V

    .line 26
    return-void
.end method

.method public getIndex()I
    .locals 1

    .line 33
    iget v0, p0, Lcom/facebook/react/fabric/mounting/mountitems/RemoveMountItem;->mIndex:I

    return v0
.end method

.method public getParentReactTag()I
    .locals 1

    .line 29
    iget v0, p0, Lcom/facebook/react/fabric/mounting/mountitems/RemoveMountItem;->mParentReactTag:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemoveMountItem ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/facebook/react/fabric/mounting/mountitems/RemoveMountItem;->mReactTag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] - parentTag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/facebook/react/fabric/mounting/mountitems/RemoveMountItem;->mParentReactTag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " - index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/facebook/react/fabric/mounting/mountitems/RemoveMountItem;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

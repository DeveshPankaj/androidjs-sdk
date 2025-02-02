.class public Lcom/facebook/react/fabric/mounting/mountitems/UpdateLayoutMountItem;
.super Ljava/lang/Object;
.source "UpdateLayoutMountItem.java"

# interfaces
.implements Lcom/facebook/react/fabric/mounting/mountitems/MountItem;


# instance fields
.field private final mHeight:I

.field private final mReactTag:I

.field private final mWidth:I

.field private final mX:I

.field private final mY:I


# direct methods
.method public constructor <init>(IIIII)V
    .locals 0
    .param p1, "reactTag"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lcom/facebook/react/fabric/mounting/mountitems/UpdateLayoutMountItem;->mReactTag:I

    .line 21
    iput p2, p0, Lcom/facebook/react/fabric/mounting/mountitems/UpdateLayoutMountItem;->mX:I

    .line 22
    iput p3, p0, Lcom/facebook/react/fabric/mounting/mountitems/UpdateLayoutMountItem;->mY:I

    .line 23
    iput p4, p0, Lcom/facebook/react/fabric/mounting/mountitems/UpdateLayoutMountItem;->mWidth:I

    .line 24
    iput p5, p0, Lcom/facebook/react/fabric/mounting/mountitems/UpdateLayoutMountItem;->mHeight:I

    .line 25
    return-void
.end method


# virtual methods
.method public execute(Lcom/facebook/react/fabric/mounting/MountingManager;)V
    .locals 6
    .param p1, "mountingManager"    # Lcom/facebook/react/fabric/mounting/MountingManager;

    .line 29
    iget v1, p0, Lcom/facebook/react/fabric/mounting/mountitems/UpdateLayoutMountItem;->mReactTag:I

    iget v2, p0, Lcom/facebook/react/fabric/mounting/mountitems/UpdateLayoutMountItem;->mX:I

    iget v3, p0, Lcom/facebook/react/fabric/mounting/mountitems/UpdateLayoutMountItem;->mY:I

    iget v4, p0, Lcom/facebook/react/fabric/mounting/mountitems/UpdateLayoutMountItem;->mWidth:I

    iget v5, p0, Lcom/facebook/react/fabric/mounting/mountitems/UpdateLayoutMountItem;->mHeight:I

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/react/fabric/mounting/MountingManager;->updateLayout(IIIII)V

    .line 30
    return-void
.end method

.method public getHeight()I
    .locals 1

    .line 41
    iget v0, p0, Lcom/facebook/react/fabric/mounting/mountitems/UpdateLayoutMountItem;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 45
    iget v0, p0, Lcom/facebook/react/fabric/mounting/mountitems/UpdateLayoutMountItem;->mWidth:I

    return v0
.end method

.method public getX()I
    .locals 1

    .line 33
    iget v0, p0, Lcom/facebook/react/fabric/mounting/mountitems/UpdateLayoutMountItem;->mX:I

    return v0
.end method

.method public getY()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/facebook/react/fabric/mounting/mountitems/UpdateLayoutMountItem;->mY:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UpdateLayoutMountItem ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/facebook/react/fabric/mounting/mountitems/UpdateLayoutMountItem;->mReactTag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] - x: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/facebook/react/fabric/mounting/mountitems/UpdateLayoutMountItem;->mX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " - y: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/facebook/react/fabric/mounting/mountitems/UpdateLayoutMountItem;->mY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " - height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/facebook/react/fabric/mounting/mountitems/UpdateLayoutMountItem;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " - width: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/facebook/react/fabric/mounting/mountitems/UpdateLayoutMountItem;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

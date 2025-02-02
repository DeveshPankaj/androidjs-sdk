.class public Lcom/facebook/react/fabric/mounting/mountitems/BatchMountItem;
.super Ljava/lang/Object;
.source "BatchMountItem.java"

# interfaces
.implements Lcom/facebook/react/fabric/mounting/mountitems/MountItem;


# annotations
.annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
.end annotation


# instance fields
.field private final mMountItems:[Lcom/facebook/react/fabric/mounting/mountitems/MountItem;

.field private final mSize:I


# direct methods
.method public constructor <init>([Lcom/facebook/react/fabric/mounting/mountitems/MountItem;I)V
    .locals 3
    .param p1, "items"    # [Lcom/facebook/react/fabric/mounting/mountitems/MountItem;
    .param p2, "size"    # I

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    if-eqz p1, :cond_1

    .line 32
    if-ltz p2, :cond_0

    array-length v0, p1

    if-gt p2, v0, :cond_0

    .line 36
    iput-object p1, p0, Lcom/facebook/react/fabric/mounting/mountitems/BatchMountItem;->mMountItems:[Lcom/facebook/react/fabric/mounting/mountitems/MountItem;

    .line 37
    iput p2, p0, Lcom/facebook/react/fabric/mounting/mountitems/BatchMountItem;->mSize:I

    .line 38
    return-void

    .line 33
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid size received by parameter size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " items.size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method


# virtual methods
.method public execute(Lcom/facebook/react/fabric/mounting/MountingManager;)V
    .locals 4
    .param p1, "mountingManager"    # Lcom/facebook/react/fabric/mounting/MountingManager;

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FabricUIManager::mountViews ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/facebook/react/fabric/mounting/mountitems/BatchMountItem;->mSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " items)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-static {v1, v2, v0}, Lcom/facebook/systrace/Systrace;->beginSection(JLjava/lang/String;)V

    .line 45
    const/4 v0, 0x0

    .local v0, "mountItemIndex":I
    :goto_0
    iget v3, p0, Lcom/facebook/react/fabric/mounting/mountitems/BatchMountItem;->mSize:I

    if-ge v0, v3, :cond_0

    .line 46
    iget-object v3, p0, Lcom/facebook/react/fabric/mounting/mountitems/BatchMountItem;->mMountItems:[Lcom/facebook/react/fabric/mounting/mountitems/MountItem;

    aget-object v3, v3, v0

    .line 47
    .local v3, "mountItem":Lcom/facebook/react/fabric/mounting/mountitems/MountItem;
    invoke-interface {v3, p1}, Lcom/facebook/react/fabric/mounting/mountitems/MountItem;->execute(Lcom/facebook/react/fabric/mounting/MountingManager;)V

    .line 45
    .end local v3    # "mountItem":Lcom/facebook/react/fabric/mounting/mountitems/MountItem;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 50
    .end local v0    # "mountItemIndex":I
    :cond_0
    invoke-static {v1, v2}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    .line 51
    return-void
.end method

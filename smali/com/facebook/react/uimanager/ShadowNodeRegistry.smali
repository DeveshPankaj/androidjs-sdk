.class public Lcom/facebook/react/uimanager/ShadowNodeRegistry;
.super Ljava/lang/Object;
.source "ShadowNodeRegistry.java"


# instance fields
.field private final mRootTags:Landroid/util/SparseBooleanArray;

.field private final mTagsToCSSNodes:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/facebook/react/uimanager/ReactShadowNode;",
            ">;"
        }
    .end annotation
.end field

.field private final mThreadAsserter:Lcom/facebook/react/common/SingleThreadAsserter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/uimanager/ShadowNodeRegistry;->mTagsToCSSNodes:Landroid/util/SparseArray;

    .line 27
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/uimanager/ShadowNodeRegistry;->mRootTags:Landroid/util/SparseBooleanArray;

    .line 28
    new-instance v0, Lcom/facebook/react/common/SingleThreadAsserter;

    invoke-direct {v0}, Lcom/facebook/react/common/SingleThreadAsserter;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/uimanager/ShadowNodeRegistry;->mThreadAsserter:Lcom/facebook/react/common/SingleThreadAsserter;

    .line 29
    return-void
.end method


# virtual methods
.method public addNode(Lcom/facebook/react/uimanager/ReactShadowNode;)V
    .locals 2
    .param p1, "node"    # Lcom/facebook/react/uimanager/ReactShadowNode;

    .line 55
    iget-object v0, p0, Lcom/facebook/react/uimanager/ShadowNodeRegistry;->mThreadAsserter:Lcom/facebook/react/common/SingleThreadAsserter;

    invoke-virtual {v0}, Lcom/facebook/react/common/SingleThreadAsserter;->assertNow()V

    .line 56
    iget-object v0, p0, Lcom/facebook/react/uimanager/ShadowNodeRegistry;->mTagsToCSSNodes:Landroid/util/SparseArray;

    invoke-interface {p1}, Lcom/facebook/react/uimanager/ReactShadowNode;->getReactTag()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 57
    return-void
.end method

.method public addRootNode(Lcom/facebook/react/uimanager/ReactShadowNode;)V
    .locals 3
    .param p1, "node"    # Lcom/facebook/react/uimanager/ReactShadowNode;

    .line 32
    iget-object v0, p0, Lcom/facebook/react/uimanager/ShadowNodeRegistry;->mThreadAsserter:Lcom/facebook/react/common/SingleThreadAsserter;

    invoke-virtual {v0}, Lcom/facebook/react/common/SingleThreadAsserter;->assertNow()V

    .line 33
    invoke-interface {p1}, Lcom/facebook/react/uimanager/ReactShadowNode;->getReactTag()I

    move-result v0

    .line 34
    .local v0, "tag":I
    iget-object v1, p0, Lcom/facebook/react/uimanager/ShadowNodeRegistry;->mTagsToCSSNodes:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 35
    iget-object v1, p0, Lcom/facebook/react/uimanager/ShadowNodeRegistry;->mRootTags:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 36
    return-void
.end method

.method public getNode(I)Lcom/facebook/react/uimanager/ReactShadowNode;
    .locals 1
    .param p1, "tag"    # I

    .line 69
    iget-object v0, p0, Lcom/facebook/react/uimanager/ShadowNodeRegistry;->mThreadAsserter:Lcom/facebook/react/common/SingleThreadAsserter;

    invoke-virtual {v0}, Lcom/facebook/react/common/SingleThreadAsserter;->assertNow()V

    .line 70
    iget-object v0, p0, Lcom/facebook/react/uimanager/ShadowNodeRegistry;->mTagsToCSSNodes:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/uimanager/ReactShadowNode;

    return-object v0
.end method

.method public getRootNodeCount()I
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/facebook/react/uimanager/ShadowNodeRegistry;->mThreadAsserter:Lcom/facebook/react/common/SingleThreadAsserter;

    invoke-virtual {v0}, Lcom/facebook/react/common/SingleThreadAsserter;->assertNow()V

    .line 80
    iget-object v0, p0, Lcom/facebook/react/uimanager/ShadowNodeRegistry;->mRootTags:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    return v0
.end method

.method public getRootTag(I)I
    .locals 1
    .param p1, "index"    # I

    .line 84
    iget-object v0, p0, Lcom/facebook/react/uimanager/ShadowNodeRegistry;->mThreadAsserter:Lcom/facebook/react/common/SingleThreadAsserter;

    invoke-virtual {v0}, Lcom/facebook/react/common/SingleThreadAsserter;->assertNow()V

    .line 85
    iget-object v0, p0, Lcom/facebook/react/uimanager/ShadowNodeRegistry;->mRootTags:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    return v0
.end method

.method public isRootNode(I)Z
    .locals 1
    .param p1, "tag"    # I

    .line 74
    iget-object v0, p0, Lcom/facebook/react/uimanager/ShadowNodeRegistry;->mThreadAsserter:Lcom/facebook/react/common/SingleThreadAsserter;

    invoke-virtual {v0}, Lcom/facebook/react/common/SingleThreadAsserter;->assertNow()V

    .line 75
    iget-object v0, p0, Lcom/facebook/react/uimanager/ShadowNodeRegistry;->mRootTags:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    return v0
.end method

.method public removeNode(I)V
    .locals 3
    .param p1, "tag"    # I

    .line 60
    iget-object v0, p0, Lcom/facebook/react/uimanager/ShadowNodeRegistry;->mThreadAsserter:Lcom/facebook/react/common/SingleThreadAsserter;

    invoke-virtual {v0}, Lcom/facebook/react/common/SingleThreadAsserter;->assertNow()V

    .line 61
    iget-object v0, p0, Lcom/facebook/react/uimanager/ShadowNodeRegistry;->mRootTags:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/facebook/react/uimanager/ShadowNodeRegistry;->mTagsToCSSNodes:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 66
    return-void

    .line 62
    :cond_0
    new-instance v0, Lcom/facebook/react/uimanager/IllegalViewOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to remove root node "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " without using removeRootNode!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/react/uimanager/IllegalViewOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeRootNode(I)V
    .locals 3
    .param p1, "tag"    # I

    .line 39
    iget-object v0, p0, Lcom/facebook/react/uimanager/ShadowNodeRegistry;->mThreadAsserter:Lcom/facebook/react/common/SingleThreadAsserter;

    invoke-virtual {v0}, Lcom/facebook/react/common/SingleThreadAsserter;->assertNow()V

    .line 40
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 43
    return-void

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/uimanager/ShadowNodeRegistry;->mRootTags:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    iget-object v0, p0, Lcom/facebook/react/uimanager/ShadowNodeRegistry;->mTagsToCSSNodes:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 51
    iget-object v0, p0, Lcom/facebook/react/uimanager/ShadowNodeRegistry;->mRootTags:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 52
    return-void

    .line 46
    :cond_1
    new-instance v0, Lcom/facebook/react/uimanager/IllegalViewOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "View with tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is not registered as a root view"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/react/uimanager/IllegalViewOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

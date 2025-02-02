.class public Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;
.super Ljava/lang/Object;
.source "LayoutAnimationController.java"


# annotations
.annotation build Ljavax/annotation/concurrent/NotThreadSafe;
.end annotation


# static fields
.field private static final ENABLED:Z = true


# instance fields
.field private final mLayoutCreateAnimation:Lcom/facebook/react/uimanager/layoutanimation/AbstractLayoutAnimation;

.field private final mLayoutDeleteAnimation:Lcom/facebook/react/uimanager/layoutanimation/AbstractLayoutAnimation;

.field private final mLayoutHandlers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/facebook/react/uimanager/layoutanimation/LayoutHandlingAnimation;",
            ">;"
        }
    .end annotation
.end field

.field private final mLayoutUpdateAnimation:Lcom/facebook/react/uimanager/layoutanimation/AbstractLayoutAnimation;

.field private mShouldAnimateLayout:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lcom/facebook/react/uimanager/layoutanimation/LayoutCreateAnimation;

    invoke-direct {v0}, Lcom/facebook/react/uimanager/layoutanimation/LayoutCreateAnimation;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;->mLayoutCreateAnimation:Lcom/facebook/react/uimanager/layoutanimation/AbstractLayoutAnimation;

    .line 32
    new-instance v0, Lcom/facebook/react/uimanager/layoutanimation/LayoutUpdateAnimation;

    invoke-direct {v0}, Lcom/facebook/react/uimanager/layoutanimation/LayoutUpdateAnimation;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;->mLayoutUpdateAnimation:Lcom/facebook/react/uimanager/layoutanimation/AbstractLayoutAnimation;

    .line 33
    new-instance v0, Lcom/facebook/react/uimanager/layoutanimation/LayoutDeleteAnimation;

    invoke-direct {v0}, Lcom/facebook/react/uimanager/layoutanimation/LayoutDeleteAnimation;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;->mLayoutDeleteAnimation:Lcom/facebook/react/uimanager/layoutanimation/AbstractLayoutAnimation;

    .line 34
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;->mLayoutHandlers:Landroid/util/SparseArray;

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;

    .line 27
    iget-object v0, p0, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;->mLayoutHandlers:Landroid/util/SparseArray;

    return-object v0
.end method

.method private disableUserInteractions(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 180
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 181
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 182
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    .line 183
    .local v0, "viewGroup":Landroid/view/ViewGroup;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 184
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;->disableUserInteractions(Landroid/view/View;)V

    .line 183
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 187
    .end local v0    # "viewGroup":Landroid/view/ViewGroup;
    .end local v1    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public applyLayoutUpdate(Landroid/view/View;IIII)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .line 94
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 96
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 97
    .local v0, "reactTag":I
    iget-object v1, p0, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;->mLayoutHandlers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/uimanager/layoutanimation/LayoutHandlingAnimation;

    .line 101
    .local v1, "existingAnimation":Lcom/facebook/react/uimanager/layoutanimation/LayoutHandlingAnimation;
    if-eqz v1, :cond_0

    .line 102
    invoke-interface {v1, p2, p3, p4, p5}, Lcom/facebook/react/uimanager/layoutanimation/LayoutHandlingAnimation;->onLayoutUpdate(IIII)V

    .line 103
    return-void

    .line 109
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;->mLayoutUpdateAnimation:Lcom/facebook/react/uimanager/layoutanimation/AbstractLayoutAnimation;

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;->mLayoutCreateAnimation:Lcom/facebook/react/uimanager/layoutanimation/AbstractLayoutAnimation;

    :goto_1
    move-object v3, v2

    .line 113
    .local v3, "layoutAnimation":Lcom/facebook/react/uimanager/layoutanimation/AbstractLayoutAnimation;
    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-virtual/range {v3 .. v8}, Lcom/facebook/react/uimanager/layoutanimation/AbstractLayoutAnimation;->createAnimation(Landroid/view/View;IIII)Landroid/view/animation/Animation;

    move-result-object v2

    .line 115
    .local v2, "animation":Landroid/view/animation/Animation;
    instance-of v4, v2, Lcom/facebook/react/uimanager/layoutanimation/LayoutHandlingAnimation;

    if-eqz v4, :cond_3

    .line 116
    new-instance v4, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController$1;

    invoke-direct {v4, p0, v0}, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController$1;-><init>(Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;I)V

    invoke-virtual {v2, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_2

    .line 131
    :cond_3
    add-int v4, p2, p4

    add-int v5, p3, p5

    invoke-virtual {p1, p2, p3, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 134
    :goto_2
    if-eqz v2, :cond_4

    .line 135
    invoke-virtual {p1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 137
    :cond_4
    return-void
.end method

.method public deleteView(Landroid/view/View;Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationListener;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "listener"    # Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationListener;

    .line 147
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 149
    iget-object v6, p0, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;->mLayoutDeleteAnimation:Lcom/facebook/react/uimanager/layoutanimation/AbstractLayoutAnimation;

    .line 151
    .local v6, "layoutAnimation":Lcom/facebook/react/uimanager/layoutanimation/AbstractLayoutAnimation;
    nop

    .line 152
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    .line 151
    move-object v0, v6

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/react/uimanager/layoutanimation/AbstractLayoutAnimation;->createAnimation(Landroid/view/View;IIII)Landroid/view/animation/Animation;

    move-result-object v0

    .line 154
    .local v0, "animation":Landroid/view/animation/Animation;
    if-eqz v0, :cond_0

    .line 155
    invoke-direct {p0, p1}, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;->disableUserInteractions(Landroid/view/View;)V

    .line 157
    new-instance v1, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController$2;

    invoke-direct {v1, p0, p2}, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController$2;-><init>(Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationListener;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 170
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 172
    :cond_0
    invoke-interface {p2}, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationListener;->onAnimationEnd()V

    .line 174
    :goto_0
    return-void
.end method

.method public initializeFromConfig(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 4
    .param p1, "config"    # Lcom/facebook/react/bridge/ReadableMap;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 42
    if-nez p1, :cond_0

    .line 43
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;->reset()V

    .line 44
    return-void

    .line 47
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;->mShouldAnimateLayout:Z

    .line 48
    const-string v1, "duration"

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 49
    .local v0, "globalDuration":I
    :cond_1
    sget-object v1, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationType;->CREATE:Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationType;

    invoke-static {v1}, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationType;->toString(Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationType;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 50
    iget-object v1, p0, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;->mLayoutCreateAnimation:Lcom/facebook/react/uimanager/layoutanimation/AbstractLayoutAnimation;

    sget-object v3, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationType;->CREATE:Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationType;

    .line 51
    invoke-static {v3}, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationType;->toString(Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationType;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v3

    .line 50
    invoke-virtual {v1, v3, v0}, Lcom/facebook/react/uimanager/layoutanimation/AbstractLayoutAnimation;->initializeFromConfig(Lcom/facebook/react/bridge/ReadableMap;I)V

    .line 52
    iput-boolean v2, p0, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;->mShouldAnimateLayout:Z

    .line 54
    :cond_2
    sget-object v1, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationType;->UPDATE:Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationType;

    invoke-static {v1}, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationType;->toString(Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationType;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 55
    iget-object v1, p0, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;->mLayoutUpdateAnimation:Lcom/facebook/react/uimanager/layoutanimation/AbstractLayoutAnimation;

    sget-object v3, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationType;->UPDATE:Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationType;

    .line 56
    invoke-static {v3}, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationType;->toString(Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationType;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v3

    .line 55
    invoke-virtual {v1, v3, v0}, Lcom/facebook/react/uimanager/layoutanimation/AbstractLayoutAnimation;->initializeFromConfig(Lcom/facebook/react/bridge/ReadableMap;I)V

    .line 57
    iput-boolean v2, p0, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;->mShouldAnimateLayout:Z

    .line 59
    :cond_3
    sget-object v1, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationType;->DELETE:Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationType;

    invoke-static {v1}, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationType;->toString(Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationType;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 60
    iget-object v1, p0, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;->mLayoutDeleteAnimation:Lcom/facebook/react/uimanager/layoutanimation/AbstractLayoutAnimation;

    sget-object v3, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationType;->DELETE:Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationType;

    .line 61
    invoke-static {v3}, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationType;->toString(Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationType;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v3

    .line 60
    invoke-virtual {v1, v3, v0}, Lcom/facebook/react/uimanager/layoutanimation/AbstractLayoutAnimation;->initializeFromConfig(Lcom/facebook/react/bridge/ReadableMap;I)V

    .line 62
    iput-boolean v2, p0, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;->mShouldAnimateLayout:Z

    .line 64
    :cond_4
    return-void
.end method

.method public reset()V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;->mLayoutCreateAnimation:Lcom/facebook/react/uimanager/layoutanimation/AbstractLayoutAnimation;

    invoke-virtual {v0}, Lcom/facebook/react/uimanager/layoutanimation/AbstractLayoutAnimation;->reset()V

    .line 68
    iget-object v0, p0, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;->mLayoutUpdateAnimation:Lcom/facebook/react/uimanager/layoutanimation/AbstractLayoutAnimation;

    invoke-virtual {v0}, Lcom/facebook/react/uimanager/layoutanimation/AbstractLayoutAnimation;->reset()V

    .line 69
    iget-object v0, p0, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;->mLayoutDeleteAnimation:Lcom/facebook/react/uimanager/layoutanimation/AbstractLayoutAnimation;

    invoke-virtual {v0}, Lcom/facebook/react/uimanager/layoutanimation/AbstractLayoutAnimation;->reset()V

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;->mShouldAnimateLayout:Z

    .line 71
    return-void
.end method

.method public shouldAnimateLayout(Landroid/view/View;)Z
    .locals 2
    .param p1, "viewToAnimate"    # Landroid/view/View;

    .line 78
    iget-boolean v0, p0, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;->mShouldAnimateLayout:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;->mLayoutHandlers:Landroid/util/SparseArray;

    .line 79
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 78
    :goto_0
    return v0
.end method

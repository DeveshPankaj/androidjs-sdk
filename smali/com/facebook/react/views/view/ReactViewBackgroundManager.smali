.class public Lcom/facebook/react/views/view/ReactViewBackgroundManager;
.super Ljava/lang/Object;
.source "ReactViewBackgroundManager.java"


# instance fields
.field private mReactBackgroundDrawable:Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/facebook/react/views/view/ReactViewBackgroundManager;->mView:Landroid/view/View;

    .line 23
    return-void
.end method

.method private getOrCreateReactViewBackground()Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;
    .locals 5

    .line 26
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundManager;->mReactBackgroundDrawable:Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;

    if-nez v0, :cond_1

    .line 27
    new-instance v0, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;

    iget-object v1, p0, Lcom/facebook/react/views/view/ReactViewBackgroundManager;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundManager;->mReactBackgroundDrawable:Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;

    .line 28
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundManager;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 29
    .local v0, "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/facebook/react/views/view/ReactViewBackgroundManager;->mView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/support/v4/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 32
    if-nez v0, :cond_0

    .line 33
    iget-object v1, p0, Lcom/facebook/react/views/view/ReactViewBackgroundManager;->mView:Landroid/view/View;

    iget-object v2, p0, Lcom/facebook/react/views/view/ReactViewBackgroundManager;->mReactBackgroundDrawable:Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;

    invoke-static {v1, v2}, Landroid/support/v4/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 35
    :cond_0
    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/facebook/react/views/view/ReactViewBackgroundManager;->mReactBackgroundDrawable:Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-direct {v1, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 37
    .local v1, "layerDrawable":Landroid/graphics/drawable/LayerDrawable;
    iget-object v2, p0, Lcom/facebook/react/views/view/ReactViewBackgroundManager;->mView:Landroid/view/View;

    invoke-static {v2, v1}, Landroid/support/v4/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 40
    .end local v0    # "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    .end local v1    # "layerDrawable":Landroid/graphics/drawable/LayerDrawable;
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundManager;->mReactBackgroundDrawable:Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;

    return-object v0
.end method


# virtual methods
.method public setBackgroundColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 44
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/facebook/react/views/view/ReactViewBackgroundManager;->mReactBackgroundDrawable:Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;

    if-nez v0, :cond_0

    goto :goto_0

    .line 47
    :cond_0
    invoke-direct {p0}, Lcom/facebook/react/views/view/ReactViewBackgroundManager;->getOrCreateReactViewBackground()Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->setColor(I)V

    .line 49
    :goto_0
    return-void
.end method

.method public setBorderColor(IFF)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "color"    # F
    .param p3, "alpha"    # F

    .line 56
    invoke-direct {p0}, Lcom/facebook/react/views/view/ReactViewBackgroundManager;->getOrCreateReactViewBackground()Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->setBorderColor(IFF)V

    .line 57
    return-void
.end method

.method public setBorderRadius(F)V
    .locals 1
    .param p1, "borderRadius"    # F

    .line 60
    invoke-direct {p0}, Lcom/facebook/react/views/view/ReactViewBackgroundManager;->getOrCreateReactViewBackground()Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->setRadius(F)V

    .line 61
    return-void
.end method

.method public setBorderRadius(FI)V
    .locals 1
    .param p1, "borderRadius"    # F
    .param p2, "position"    # I

    .line 64
    invoke-direct {p0}, Lcom/facebook/react/views/view/ReactViewBackgroundManager;->getOrCreateReactViewBackground()Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->setRadius(FI)V

    .line 65
    return-void
.end method

.method public setBorderStyle(Ljava/lang/String;)V
    .locals 1
    .param p1, "style"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 68
    invoke-direct {p0}, Lcom/facebook/react/views/view/ReactViewBackgroundManager;->getOrCreateReactViewBackground()Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->setBorderStyle(Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public setBorderWidth(IF)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "width"    # F

    .line 52
    invoke-direct {p0}, Lcom/facebook/react/views/view/ReactViewBackgroundManager;->getOrCreateReactViewBackground()Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/views/view/ReactViewBackgroundDrawable;->setBorderWidth(IF)V

    .line 53
    return-void
.end method

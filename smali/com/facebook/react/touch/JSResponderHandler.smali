.class public Lcom/facebook/react/touch/JSResponderHandler;
.super Ljava/lang/Object;
.source "JSResponderHandler.java"

# interfaces
.implements Lcom/facebook/react/touch/OnInterceptTouchEventListener;


# static fields
.field private static final JS_RESPONDER_UNSET:I = -0x1


# instance fields
.field private volatile mCurrentJSResponder:I

.field private mViewParentBlockingNativeResponder:Landroid/view/ViewParent;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/react/touch/JSResponderHandler;->mCurrentJSResponder:I

    return-void
.end method

.method private maybeUnblockNativeResponder()V
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/facebook/react/touch/JSResponderHandler;->mViewParentBlockingNativeResponder:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    .line 56
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/react/touch/JSResponderHandler;->mViewParentBlockingNativeResponder:Landroid/view/ViewParent;

    .line 59
    :cond_0
    return-void
.end method


# virtual methods
.method public clearJSResponder()V
    .locals 1

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/react/touch/JSResponderHandler;->mCurrentJSResponder:I

    .line 51
    invoke-direct {p0}, Lcom/facebook/react/touch/JSResponderHandler;->maybeUnblockNativeResponder()V

    .line 52
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/ViewGroup;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/ViewGroup;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 63
    iget v0, p0, Lcom/facebook/react/touch/JSResponderHandler;->mCurrentJSResponder:I

    .line 64
    .local v0, "currentJSResponder":I
    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    .line 71
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v2

    if-ne v2, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 73
    :cond_1
    return v1
.end method

.method public setJSResponder(ILandroid/view/ViewParent;)V
    .locals 1
    .param p1, "tag"    # I
    .param p2, "viewParentBlockingNativeResponder"    # Landroid/view/ViewParent;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 36
    iput p1, p0, Lcom/facebook/react/touch/JSResponderHandler;->mCurrentJSResponder:I

    .line 42
    invoke-direct {p0}, Lcom/facebook/react/touch/JSResponderHandler;->maybeUnblockNativeResponder()V

    .line 43
    if-eqz p2, :cond_0

    .line 44
    const/4 v0, 0x1

    invoke-interface {p2, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 45
    iput-object p2, p0, Lcom/facebook/react/touch/JSResponderHandler;->mViewParentBlockingNativeResponder:Landroid/view/ViewParent;

    .line 47
    :cond_0
    return-void
.end method

.class public Lcom/facebook/react/views/scroll/OnScrollDispatchHelper;
.super Ljava/lang/Object;
.source "OnScrollDispatchHelper.java"


# static fields
.field private static final MIN_EVENT_SEPARATION_MS:I = 0xa


# instance fields
.field private mLastScrollEventTimeMs:J

.field private mPrevX:I

.field private mPrevY:I

.field private mXFlingVelocity:F

.field private mYFlingVelocity:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/facebook/react/views/scroll/OnScrollDispatchHelper;->mPrevX:I

    .line 22
    iput v0, p0, Lcom/facebook/react/views/scroll/OnScrollDispatchHelper;->mPrevY:I

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/react/views/scroll/OnScrollDispatchHelper;->mXFlingVelocity:F

    .line 24
    iput v0, p0, Lcom/facebook/react/views/scroll/OnScrollDispatchHelper;->mYFlingVelocity:F

    .line 26
    const-wide/16 v0, -0xb

    iput-wide v0, p0, Lcom/facebook/react/views/scroll/OnScrollDispatchHelper;->mLastScrollEventTimeMs:J

    return-void
.end method


# virtual methods
.method public getXFlingVelocity()F
    .locals 1

    .line 52
    iget v0, p0, Lcom/facebook/react/views/scroll/OnScrollDispatchHelper;->mXFlingVelocity:F

    return v0
.end method

.method public getYFlingVelocity()F
    .locals 1

    .line 56
    iget v0, p0, Lcom/facebook/react/views/scroll/OnScrollDispatchHelper;->mYFlingVelocity:F

    return v0
.end method

.method public onScrollChanged(II)Z
    .locals 10
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 33
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 34
    .local v0, "eventTime":J
    iget-wide v2, p0, Lcom/facebook/react/views/scroll/OnScrollDispatchHelper;->mLastScrollEventTimeMs:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0xa

    cmp-long v6, v2, v4

    if-gtz v6, :cond_1

    iget v2, p0, Lcom/facebook/react/views/scroll/OnScrollDispatchHelper;->mPrevX:I

    if-ne v2, p1, :cond_1

    iget v2, p0, Lcom/facebook/react/views/scroll/OnScrollDispatchHelper;->mPrevY:I

    if-eq v2, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 39
    .local v2, "shouldDispatch":Z
    :goto_1
    iget-wide v3, p0, Lcom/facebook/react/views/scroll/OnScrollDispatchHelper;->mLastScrollEventTimeMs:J

    sub-long v5, v0, v3

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-eqz v9, :cond_2

    .line 40
    iget v5, p0, Lcom/facebook/react/views/scroll/OnScrollDispatchHelper;->mPrevX:I

    sub-int v5, p1, v5

    int-to-float v5, v5

    sub-long v6, v0, v3

    long-to-float v6, v6

    div-float/2addr v5, v6

    iput v5, p0, Lcom/facebook/react/views/scroll/OnScrollDispatchHelper;->mXFlingVelocity:F

    .line 41
    iget v5, p0, Lcom/facebook/react/views/scroll/OnScrollDispatchHelper;->mPrevY:I

    sub-int v5, p2, v5

    int-to-float v5, v5

    sub-long v3, v0, v3

    long-to-float v3, v3

    div-float/2addr v5, v3

    iput v5, p0, Lcom/facebook/react/views/scroll/OnScrollDispatchHelper;->mYFlingVelocity:F

    .line 44
    :cond_2
    iput-wide v0, p0, Lcom/facebook/react/views/scroll/OnScrollDispatchHelper;->mLastScrollEventTimeMs:J

    .line 45
    iput p1, p0, Lcom/facebook/react/views/scroll/OnScrollDispatchHelper;->mPrevX:I

    .line 46
    iput p2, p0, Lcom/facebook/react/views/scroll/OnScrollDispatchHelper;->mPrevY:I

    .line 48
    return v2
.end method

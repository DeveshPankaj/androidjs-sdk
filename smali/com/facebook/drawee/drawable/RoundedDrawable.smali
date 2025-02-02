.class public abstract Lcom/facebook/drawee/drawable/RoundedDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "RoundedDrawable.java"

# interfaces
.implements Lcom/facebook/drawee/drawable/Rounded;
.implements Lcom/facebook/drawee/drawable/TransformAwareDrawable;


# instance fields
.field final mBitmapBounds:Landroid/graphics/RectF;
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation
.end field

.field protected mBorderColor:I

.field protected final mBorderPath:Landroid/graphics/Path;

.field final mBorderRadii:[F
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation
.end field

.field protected mBorderWidth:F

.field final mBoundsTransform:Landroid/graphics/Matrix;
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation
.end field

.field private final mCornerRadii:[F

.field private final mDelegate:Landroid/graphics/drawable/Drawable;

.field final mDrawableBounds:Landroid/graphics/RectF;
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation
.end field

.field mInsideBorderBounds:Landroid/graphics/RectF;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation
.end field

.field mInsideBorderRadii:[F
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation
.end field

.field mInsideBorderTransform:Landroid/graphics/Matrix;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation
.end field

.field final mInverseParentTransform:Landroid/graphics/Matrix;
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation
.end field

.field protected mIsCircle:Z

.field private mIsPathDirty:Z

.field protected mIsShaderTransformDirty:Z

.field private mPadding:F

.field final mParentTransform:Landroid/graphics/Matrix;
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation
.end field

.field protected final mPath:Landroid/graphics/Path;

.field final mPrevBoundsTransform:Landroid/graphics/Matrix;
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation
.end field

.field mPrevInsideBorderTransform:Landroid/graphics/Matrix;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation
.end field

.field final mPrevParentTransform:Landroid/graphics/Matrix;
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation
.end field

.field final mPrevRootBounds:Landroid/graphics/RectF;
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation
.end field

.field protected mRadiiNonZero:Z

.field final mRootBounds:Landroid/graphics/RectF;
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation
.end field

.field private mScaleDownInsideBorders:Z

.field final mTransform:Landroid/graphics/Matrix;
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation
.end field

.field private mTransformCallback:Lcom/facebook/drawee/drawable/TransformCallback;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 5
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 36
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mIsCircle:Z

    .line 41
    iput-boolean v0, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mRadiiNonZero:Z

    .line 42
    const/4 v1, 0x0

    iput v1, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mBorderWidth:F

    .line 43
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mPath:Landroid/graphics/Path;

    .line 44
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mIsShaderTransformDirty:Z

    .line 45
    iput v0, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mBorderColor:I

    .line 46
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    iput-object v3, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mBorderPath:Landroid/graphics/Path;

    .line 48
    const/16 v3, 0x8

    new-array v4, v3, [F

    iput-object v4, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mCornerRadii:[F

    .line 49
    new-array v3, v3, [F

    iput-object v3, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mBorderRadii:[F

    .line 52
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mRootBounds:Landroid/graphics/RectF;

    .line 53
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mPrevRootBounds:Landroid/graphics/RectF;

    .line 54
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mBitmapBounds:Landroid/graphics/RectF;

    .line 55
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mDrawableBounds:Landroid/graphics/RectF;

    .line 58
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mBoundsTransform:Landroid/graphics/Matrix;

    .line 59
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mPrevBoundsTransform:Landroid/graphics/Matrix;

    .line 61
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mParentTransform:Landroid/graphics/Matrix;

    .line 62
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mPrevParentTransform:Landroid/graphics/Matrix;

    .line 63
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mInverseParentTransform:Landroid/graphics/Matrix;

    .line 68
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mTransform:Landroid/graphics/Matrix;

    .line 69
    iput v1, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mPadding:F

    .line 70
    iput-boolean v0, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mScaleDownInsideBorders:Z

    .line 72
    iput-boolean v2, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mIsPathDirty:Z

    .line 37
    iput-object p1, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mDelegate:Landroid/graphics/drawable/Drawable;

    .line 38
    return-void
.end method


# virtual methods
.method public clearColorFilter()V
    .locals 1

    .line 360
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mDelegate:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 361
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 376
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mDelegate:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 377
    return-void
.end method

.method public getAlpha()I
    .locals 1
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x13
    .end annotation

    .line 366
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mDelegate:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v0

    return v0
.end method

.method public getBorderColor()I
    .locals 1

    .line 155
    iget v0, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mBorderColor:I

    return v0
.end method

.method public getBorderWidth()F
    .locals 1

    .line 161
    iget v0, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mBorderWidth:F

    return v0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .line 355
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mDelegate:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mDelegate:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 326
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mDelegate:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .line 336
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mDelegate:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    return v0
.end method

.method public getPadding()F
    .locals 1

    .line 180
    iget v0, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mPadding:F

    return v0
.end method

.method public getRadii()[F
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mCornerRadii:[F

    return-object v0
.end method

.method public getScaleDownInsideBorders()Z
    .locals 1

    .line 200
    iget-boolean v0, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mScaleDownInsideBorders:Z

    return v0
.end method

.method public isCircle()Z
    .locals 1

    .line 91
    iget-boolean v0, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mIsCircle:Z

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 321
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mDelegate:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 322
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .line 371
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mDelegate:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 372
    return-void
.end method

.method public setBorder(IF)V
    .locals 1
    .param p1, "color"    # I
    .param p2, "width"    # F

    .line 144
    iget v0, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mBorderColor:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mBorderWidth:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_1

    .line 145
    :cond_0
    iput p1, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mBorderColor:I

    .line 146
    iput p2, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mBorderWidth:F

    .line 147
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mIsPathDirty:Z

    .line 148
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/RoundedDrawable;->invalidateSelf()V

    .line 150
    :cond_1
    return-void
.end method

.method public setCircle(Z)V
    .locals 1
    .param p1, "isCircle"    # Z

    .line 83
    iput-boolean p1, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mIsCircle:Z

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mIsPathDirty:Z

    .line 85
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/RoundedDrawable;->invalidateSelf()V

    .line 86
    return-void
.end method

.method public setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "color"    # I
    .param p2, "mode"    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 342
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mDelegate:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 343
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 348
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mDelegate:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 349
    return-void
.end method

.method public setPadding(F)V
    .locals 1
    .param p1, "padding"    # F

    .line 170
    iget v0, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mPadding:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 171
    iput p1, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mPadding:F

    .line 172
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mIsPathDirty:Z

    .line 173
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/RoundedDrawable;->invalidateSelf()V

    .line 175
    :cond_0
    return-void
.end method

.method public setRadii([F)V
    .locals 7
    .param p1, "radii"    # [F

    .line 116
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    .line 117
    iget-object v3, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mCornerRadii:[F

    invoke-static {v3, v0}, Ljava/util/Arrays;->fill([FF)V

    .line 118
    iput-boolean v2, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mRadiiNonZero:Z

    goto :goto_3

    .line 120
    :cond_0
    array-length v3, p1

    const/16 v4, 0x8

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    const-string v5, "radii should have exactly 8 values"

    invoke-static {v3, v5}, Lcom/facebook/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 121
    iget-object v3, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mCornerRadii:[F

    invoke-static {p1, v2, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 122
    iput-boolean v2, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mRadiiNonZero:Z

    .line 123
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v4, :cond_3

    .line 124
    iget-boolean v5, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mRadiiNonZero:Z

    aget v6, p1, v3

    cmpl-float v6, v6, v0

    if-lez v6, :cond_2

    const/4 v6, 0x1

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    :goto_2
    or-int/2addr v5, v6

    iput-boolean v5, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mRadiiNonZero:Z

    .line 123
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 127
    .end local v3    # "i":I
    :cond_3
    :goto_3
    iput-boolean v1, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mIsPathDirty:Z

    .line 128
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/RoundedDrawable;->invalidateSelf()V

    .line 129
    return-void
.end method

.method public setRadius(F)V
    .locals 4
    .param p1, "radius"    # F

    .line 101
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    cmpl-float v3, p1, v1

    if-ltz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-static {v3}, Lcom/facebook/common/internal/Preconditions;->checkState(Z)V

    .line 102
    iget-object v3, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mCornerRadii:[F

    invoke-static {v3, p1}, Ljava/util/Arrays;->fill([FF)V

    .line 103
    cmpl-float v1, p1, v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mRadiiNonZero:Z

    .line 104
    iput-boolean v2, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mIsPathDirty:Z

    .line 105
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/RoundedDrawable;->invalidateSelf()V

    .line 106
    return-void
.end method

.method public setScaleDownInsideBorders(Z)V
    .locals 1
    .param p1, "scaleDownInsideBorders"    # Z

    .line 190
    iget-boolean v0, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mScaleDownInsideBorders:Z

    if-eq v0, p1, :cond_0

    .line 191
    iput-boolean p1, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mScaleDownInsideBorders:Z

    .line 192
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mIsPathDirty:Z

    .line 193
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/RoundedDrawable;->invalidateSelf()V

    .line 195
    :cond_0
    return-void
.end method

.method public setTransformCallback(Lcom/facebook/drawee/drawable/TransformCallback;)V
    .locals 0
    .param p1, "transformCallback"    # Lcom/facebook/drawee/drawable/TransformCallback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 206
    iput-object p1, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mTransformCallback:Lcom/facebook/drawee/drawable/TransformCallback;

    .line 207
    return-void
.end method

.method shouldRound()Z
    .locals 2
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation

    .line 316
    iget-boolean v0, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mIsCircle:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mRadiiNonZero:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mBorderWidth:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected updatePath()V
    .locals 7

    .line 270
    iget-boolean v0, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mIsPathDirty:Z

    if-eqz v0, :cond_7

    .line 271
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mBorderPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 272
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mRootBounds:Landroid/graphics/RectF;

    iget v1, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mBorderWidth:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float v3, v1, v2

    div-float/2addr v1, v2

    invoke-virtual {v0, v3, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 273
    iget-boolean v0, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mIsCircle:Z

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mRootBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mRootBounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    div-float/2addr v0, v2

    .line 275
    .local v0, "radius":F
    iget-object v1, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mBorderPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mRootBounds:Landroid/graphics/RectF;

    .line 276
    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    iget-object v4, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mRootBounds:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 275
    invoke-virtual {v1, v3, v4, v0, v5}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 277
    .end local v0    # "radius":F
    goto :goto_1

    .line 278
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mBorderRadii:[F

    array-length v3, v1

    if-ge v0, v3, :cond_1

    .line 279
    iget-object v3, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mCornerRadii:[F

    aget v3, v3, v0

    iget v4, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mPadding:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mBorderWidth:F

    div-float/2addr v4, v2

    sub-float/2addr v3, v4

    aput v3, v1, v0

    .line 278
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 281
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mBorderPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mRootBounds:Landroid/graphics/RectF;

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v3, v1, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 283
    :goto_1
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mRootBounds:Landroid/graphics/RectF;

    iget v1, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mBorderWidth:F

    neg-float v3, v1

    div-float/2addr v3, v2

    neg-float v1, v1

    div-float/2addr v1, v2

    invoke-virtual {v0, v3, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 285
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 286
    iget v0, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mPadding:F

    iget-boolean v1, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mScaleDownInsideBorders:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mBorderWidth:F

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-float/2addr v0, v1

    .line 287
    .local v0, "totalPadding":F
    iget-object v1, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mRootBounds:Landroid/graphics/RectF;

    invoke-virtual {v1, v0, v0}, Landroid/graphics/RectF;->inset(FF)V

    .line 288
    iget-boolean v1, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mIsCircle:Z

    if-eqz v1, :cond_3

    .line 289
    iget-object v1, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mRootBounds:Landroid/graphics/RectF;

    .line 290
    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    iget-object v4, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mRootBounds:Landroid/graphics/RectF;

    .line 291
    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    iget-object v5, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mRootBounds:Landroid/graphics/RectF;

    .line 292
    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    iget-object v6, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mRootBounds:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    div-float/2addr v5, v2

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 289
    invoke-virtual {v1, v3, v4, v5, v2}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    goto :goto_4

    .line 294
    :cond_3
    iget-boolean v1, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mScaleDownInsideBorders:Z

    if-eqz v1, :cond_6

    .line 295
    iget-object v1, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mInsideBorderRadii:[F

    if-nez v1, :cond_4

    .line 296
    const/16 v1, 0x8

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mInsideBorderRadii:[F

    .line 298
    :cond_4
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    iget-object v2, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mBorderRadii:[F

    array-length v2, v2

    if-ge v1, v2, :cond_5

    .line 299
    iget-object v2, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mInsideBorderRadii:[F

    iget-object v3, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mCornerRadii:[F

    aget v3, v3, v1

    iget v4, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mBorderWidth:F

    sub-float/2addr v3, v4

    aput v3, v2, v1

    .line 298
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 301
    .end local v1    # "i":I
    :cond_5
    iget-object v1, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mRootBounds:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mInsideBorderRadii:[F

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    goto :goto_4

    .line 303
    :cond_6
    iget-object v1, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mRootBounds:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mCornerRadii:[F

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 305
    :goto_4
    iget-object v1, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mRootBounds:Landroid/graphics/RectF;

    neg-float v2, v0

    neg-float v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->inset(FF)V

    .line 306
    iget-object v1, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mPath:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    invoke-virtual {v1, v2}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 307
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mIsPathDirty:Z

    .line 309
    .end local v0    # "totalPadding":F
    :cond_7
    return-void
.end method

.method protected updateTransform()V
    .locals 4

    .line 210
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mTransformCallback:Lcom/facebook/drawee/drawable/TransformCallback;

    if-eqz v0, :cond_0

    .line 211
    iget-object v1, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mParentTransform:Landroid/graphics/Matrix;

    invoke-interface {v0, v1}, Lcom/facebook/drawee/drawable/TransformCallback;->getTransform(Landroid/graphics/Matrix;)V

    .line 212
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mTransformCallback:Lcom/facebook/drawee/drawable/TransformCallback;

    iget-object v1, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mRootBounds:Landroid/graphics/RectF;

    invoke-interface {v0, v1}, Lcom/facebook/drawee/drawable/TransformCallback;->getRootBounds(Landroid/graphics/RectF;)V

    goto :goto_0

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mParentTransform:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 215
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mRootBounds:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/RoundedDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 218
    :goto_0
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mBitmapBounds:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/RoundedDrawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/RoundedDrawable;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 219
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mDrawableBounds:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mDelegate:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 220
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mBoundsTransform:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mBitmapBounds:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mDrawableBounds:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 221
    iget-boolean v0, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mScaleDownInsideBorders:Z

    if-eqz v0, :cond_3

    .line 222
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mInsideBorderBounds:Landroid/graphics/RectF;

    if-nez v0, :cond_1

    .line 223
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mRootBounds:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v0, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mInsideBorderBounds:Landroid/graphics/RectF;

    goto :goto_1

    .line 225
    :cond_1
    iget-object v1, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mRootBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 227
    :goto_1
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mInsideBorderBounds:Landroid/graphics/RectF;

    iget v1, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mBorderWidth:F

    invoke-virtual {v0, v1, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 228
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mInsideBorderTransform:Landroid/graphics/Matrix;

    if-nez v0, :cond_2

    .line 229
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mInsideBorderTransform:Landroid/graphics/Matrix;

    .line 231
    :cond_2
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mInsideBorderTransform:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mRootBounds:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mInsideBorderBounds:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_2

    .line 233
    :cond_3
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mInsideBorderTransform:Landroid/graphics/Matrix;

    if-eqz v0, :cond_4

    .line 234
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 237
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mParentTransform:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mPrevParentTransform:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mBoundsTransform:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mPrevBoundsTransform:Landroid/graphics/Matrix;

    .line 238
    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mInsideBorderTransform:Landroid/graphics/Matrix;

    if-eqz v0, :cond_9

    iget-object v2, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mPrevInsideBorderTransform:Landroid/graphics/Matrix;

    .line 240
    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 241
    :cond_5
    iput-boolean v1, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mIsShaderTransformDirty:Z

    .line 243
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mParentTransform:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mInverseParentTransform:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 244
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mTransform:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mParentTransform:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 245
    iget-boolean v0, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mScaleDownInsideBorders:Z

    if-eqz v0, :cond_6

    .line 246
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mTransform:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mInsideBorderTransform:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 248
    :cond_6
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mTransform:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mBoundsTransform:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 250
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mPrevParentTransform:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mParentTransform:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 251
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mPrevBoundsTransform:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mBoundsTransform:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 252
    iget-boolean v0, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mScaleDownInsideBorders:Z

    if-eqz v0, :cond_8

    .line 253
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mPrevInsideBorderTransform:Landroid/graphics/Matrix;

    if-nez v0, :cond_7

    .line 254
    new-instance v0, Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mInsideBorderTransform:Landroid/graphics/Matrix;

    invoke-direct {v0, v2}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    iput-object v0, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mPrevInsideBorderTransform:Landroid/graphics/Matrix;

    goto :goto_3

    .line 256
    :cond_7
    iget-object v2, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mInsideBorderTransform:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    goto :goto_3

    .line 258
    :cond_8
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mPrevInsideBorderTransform:Landroid/graphics/Matrix;

    if-eqz v0, :cond_9

    .line 259
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 263
    :cond_9
    :goto_3
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mRootBounds:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mPrevRootBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 264
    iput-boolean v1, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mIsPathDirty:Z

    .line 265
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mPrevRootBounds:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/facebook/drawee/drawable/RoundedDrawable;->mRootBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 267
    :cond_a
    return-void
.end method

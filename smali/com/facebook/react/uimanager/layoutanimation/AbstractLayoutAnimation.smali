.class abstract Lcom/facebook/react/uimanager/layoutanimation/AbstractLayoutAnimation;
.super Ljava/lang/Object;
.source "AbstractLayoutAnimation.java"


# static fields
.field private static final INTERPOLATOR:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/facebook/react/uimanager/layoutanimation/InterpolatorType;",
            "Landroid/view/animation/BaseInterpolator;",
            ">;"
        }
    .end annotation
.end field

.field private static final SLOWDOWN_ANIMATION_MODE:Z = false


# instance fields
.field protected mAnimatedProperty:Lcom/facebook/react/uimanager/layoutanimation/AnimatedPropertyType;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mDelayMs:I

.field protected mDurationMs:I

.field private mInterpolator:Landroid/view/animation/Interpolator;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 40
    sget-object v0, Lcom/facebook/react/uimanager/layoutanimation/InterpolatorType;->LINEAR:Lcom/facebook/react/uimanager/layoutanimation/InterpolatorType;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sget-object v2, Lcom/facebook/react/uimanager/layoutanimation/InterpolatorType;->EASE_IN:Lcom/facebook/react/uimanager/layoutanimation/InterpolatorType;

    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sget-object v4, Lcom/facebook/react/uimanager/layoutanimation/InterpolatorType;->EASE_OUT:Lcom/facebook/react/uimanager/layoutanimation/InterpolatorType;

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sget-object v6, Lcom/facebook/react/uimanager/layoutanimation/InterpolatorType;->EASE_IN_EASE_OUT:Lcom/facebook/react/uimanager/layoutanimation/InterpolatorType;

    new-instance v7, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-static/range {v0 .. v7}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/facebook/react/uimanager/layoutanimation/AbstractLayoutAnimation;->INTERPOLATOR:Ljava/util/Map;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getInterpolator(Lcom/facebook/react/uimanager/layoutanimation/InterpolatorType;Lcom/facebook/react/bridge/ReadableMap;)Landroid/view/animation/Interpolator;
    .locals 4
    .param p0, "type"    # Lcom/facebook/react/uimanager/layoutanimation/InterpolatorType;
    .param p1, "params"    # Lcom/facebook/react/bridge/ReadableMap;

    .line 105
    sget-object v0, Lcom/facebook/react/uimanager/layoutanimation/InterpolatorType;->SPRING:Lcom/facebook/react/uimanager/layoutanimation/InterpolatorType;

    invoke-virtual {p0, v0}, Lcom/facebook/react/uimanager/layoutanimation/InterpolatorType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    new-instance v0, Lcom/facebook/react/uimanager/layoutanimation/SimpleSpringInterpolator;

    invoke-static {p1}, Lcom/facebook/react/uimanager/layoutanimation/SimpleSpringInterpolator;->getSpringDamping(Lcom/facebook/react/bridge/ReadableMap;)F

    move-result v1

    invoke-direct {v0, v1}, Lcom/facebook/react/uimanager/layoutanimation/SimpleSpringInterpolator;-><init>(F)V

    .local v0, "interpolator":Landroid/view/animation/Interpolator;
    goto :goto_0

    .line 108
    .end local v0    # "interpolator":Landroid/view/animation/Interpolator;
    :cond_0
    sget-object v0, Lcom/facebook/react/uimanager/layoutanimation/AbstractLayoutAnimation;->INTERPOLATOR:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/Interpolator;

    .line 110
    .restart local v0    # "interpolator":Landroid/view/animation/Interpolator;
    :goto_0
    if-eqz v0, :cond_1

    .line 113
    return-object v0

    .line 111
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing interpolator for type : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public final createAnimation(Landroid/view/View;IIII)Landroid/view/animation/Animation;
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 90
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/layoutanimation/AbstractLayoutAnimation;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    const/4 v0, 0x0

    return-object v0

    .line 93
    :cond_0
    invoke-virtual/range {p0 .. p5}, Lcom/facebook/react/uimanager/layoutanimation/AbstractLayoutAnimation;->createAnimationImpl(Landroid/view/View;IIII)Landroid/view/animation/Animation;

    move-result-object v0

    .line 94
    .local v0, "animation":Landroid/view/animation/Animation;
    if-eqz v0, :cond_1

    .line 95
    const/4 v1, 0x1

    .line 96
    .local v1, "slowdownFactor":I
    iget v2, p0, Lcom/facebook/react/uimanager/layoutanimation/AbstractLayoutAnimation;->mDurationMs:I

    mul-int v2, v2, v1

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 97
    iget v2, p0, Lcom/facebook/react/uimanager/layoutanimation/AbstractLayoutAnimation;->mDelayMs:I

    mul-int v2, v2, v1

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 98
    iget-object v2, p0, Lcom/facebook/react/uimanager/layoutanimation/AbstractLayoutAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 100
    .end local v1    # "slowdownFactor":I
    :cond_1
    return-object v0
.end method

.method abstract createAnimationImpl(Landroid/view/View;IIII)Landroid/view/animation/Animation;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public initializeFromConfig(Lcom/facebook/react/bridge/ReadableMap;I)V
    .locals 3
    .param p1, "data"    # Lcom/facebook/react/bridge/ReadableMap;
    .param p2, "globalDuration"    # I

    .line 60
    const-string v0, "property"

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/react/uimanager/layoutanimation/AnimatedPropertyType;->fromString(Ljava/lang/String;)Lcom/facebook/react/uimanager/layoutanimation/AnimatedPropertyType;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/facebook/react/uimanager/layoutanimation/AbstractLayoutAnimation;->mAnimatedProperty:Lcom/facebook/react/uimanager/layoutanimation/AnimatedPropertyType;

    .line 62
    const-string v0, "duration"

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    :cond_1
    move v0, p2

    :goto_1
    iput v0, p0, Lcom/facebook/react/uimanager/layoutanimation/AbstractLayoutAnimation;->mDurationMs:I

    .line 63
    const-string v0, "delay"

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    iput v0, p0, Lcom/facebook/react/uimanager/layoutanimation/AbstractLayoutAnimation;->mDelayMs:I

    .line 64
    const-string v0, "type"

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 67
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/react/uimanager/layoutanimation/InterpolatorType;->fromString(Ljava/lang/String;)Lcom/facebook/react/uimanager/layoutanimation/InterpolatorType;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/facebook/react/uimanager/layoutanimation/AbstractLayoutAnimation;->getInterpolator(Lcom/facebook/react/uimanager/layoutanimation/InterpolatorType;Lcom/facebook/react/bridge/ReadableMap;)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/react/uimanager/layoutanimation/AbstractLayoutAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 69
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/layoutanimation/AbstractLayoutAnimation;->isValid()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 72
    return-void

    .line 70
    :cond_3
    new-instance v0, Lcom/facebook/react/uimanager/IllegalViewOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid layout animation : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/react/uimanager/IllegalViewOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Missing interpolation type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method abstract isValid()Z
.end method

.method public reset()V
    .locals 2

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/react/uimanager/layoutanimation/AbstractLayoutAnimation;->mAnimatedProperty:Lcom/facebook/react/uimanager/layoutanimation/AnimatedPropertyType;

    .line 54
    const/4 v1, 0x0

    iput v1, p0, Lcom/facebook/react/uimanager/layoutanimation/AbstractLayoutAnimation;->mDurationMs:I

    .line 55
    iput v1, p0, Lcom/facebook/react/uimanager/layoutanimation/AbstractLayoutAnimation;->mDelayMs:I

    .line 56
    iput-object v0, p0, Lcom/facebook/react/uimanager/layoutanimation/AbstractLayoutAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 57
    return-void
.end method

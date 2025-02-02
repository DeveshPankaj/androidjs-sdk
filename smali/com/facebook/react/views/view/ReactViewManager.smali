.class public Lcom/facebook/react/views/view/ReactViewManager;
.super Lcom/facebook/react/uimanager/ViewGroupManager;
.source "ReactViewManager.java"


# annotations
.annotation runtime Lcom/facebook/react/module/annotations/ReactModule;
    name = "RCTView"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/uimanager/ViewGroupManager<",
        "Lcom/facebook/react/views/view/ReactViewGroup;",
        ">;"
    }
.end annotation


# static fields
.field private static final CMD_HOTSPOT_UPDATE:I = 0x1

.field private static final CMD_SET_PRESSED:I = 0x2

.field public static final REACT_CLASS:Ljava/lang/String; = "RCTView"
    .annotation build Lcom/facebook/react/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final SPACING_TYPES:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/react/views/view/ReactViewManager;->SPACING_TYPES:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x8
        0x0
        0x2
        0x1
        0x3
        0x4
        0x5
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/facebook/react/uimanager/ViewGroupManager;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic addView(Landroid/view/ViewGroup;Landroid/view/View;I)V
    .locals 0

    .line 36
    check-cast p1, Lcom/facebook/react/views/view/ReactViewGroup;

    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/react/views/view/ReactViewManager;->addView(Lcom/facebook/react/views/view/ReactViewGroup;Landroid/view/View;I)V

    return-void
.end method

.method public addView(Lcom/facebook/react/views/view/ReactViewGroup;Landroid/view/View;I)V
    .locals 1
    .param p1, "parent"    # Lcom/facebook/react/views/view/ReactViewGroup;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "index"    # I

    .line 265
    invoke-virtual {p1}, Lcom/facebook/react/views/view/ReactViewGroup;->getRemoveClippedSubviews()Z

    move-result v0

    .line 266
    .local v0, "removeClippedSubviews":Z
    if-eqz v0, :cond_0

    .line 267
    invoke-virtual {p1, p2, p3}, Lcom/facebook/react/views/view/ReactViewGroup;->addViewWithSubviewClippingEnabled(Landroid/view/View;I)V

    goto :goto_0

    .line 269
    :cond_0
    invoke-virtual {p1, p2, p3}, Lcom/facebook/react/views/view/ReactViewGroup;->addView(Landroid/view/View;I)V

    .line 271
    :goto_0
    return-void
.end method

.method public bridge synthetic createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Landroid/view/View;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lcom/facebook/react/views/view/ReactViewManager;->createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/facebook/react/views/view/ReactViewGroup;

    move-result-object p1

    return-object p1
.end method

.method public createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/facebook/react/views/view/ReactViewGroup;
    .locals 1
    .param p1, "context"    # Lcom/facebook/react/uimanager/ThemedReactContext;

    .line 229
    new-instance v0, Lcom/facebook/react/views/view/ReactViewGroup;

    invoke-direct {v0, p1}, Lcom/facebook/react/views/view/ReactViewGroup;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public bridge synthetic getChildAt(Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 0

    .line 36
    check-cast p1, Lcom/facebook/react/views/view/ReactViewGroup;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/react/views/view/ReactViewManager;->getChildAt(Lcom/facebook/react/views/view/ReactViewGroup;I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getChildAt(Lcom/facebook/react/views/view/ReactViewGroup;I)Landroid/view/View;
    .locals 2
    .param p1, "parent"    # Lcom/facebook/react/views/view/ReactViewGroup;
    .param p2, "index"    # I

    .line 285
    invoke-virtual {p1}, Lcom/facebook/react/views/view/ReactViewGroup;->getRemoveClippedSubviews()Z

    move-result v0

    .line 286
    .local v0, "removeClippedSubviews":Z
    if-eqz v0, :cond_0

    .line 287
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/view/ReactViewGroup;->getChildAtWithSubviewClippingEnabled(I)Landroid/view/View;

    move-result-object v1

    return-object v1

    .line 289
    :cond_0
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/view/ReactViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic getChildCount(Landroid/view/ViewGroup;)I
    .locals 0

    .line 36
    check-cast p1, Lcom/facebook/react/views/view/ReactViewGroup;

    invoke-virtual {p0, p1}, Lcom/facebook/react/views/view/ReactViewManager;->getChildCount(Lcom/facebook/react/views/view/ReactViewGroup;)I

    move-result p1

    return p1
.end method

.method public getChildCount(Lcom/facebook/react/views/view/ReactViewGroup;)I
    .locals 2
    .param p1, "parent"    # Lcom/facebook/react/views/view/ReactViewGroup;

    .line 275
    invoke-virtual {p1}, Lcom/facebook/react/views/view/ReactViewGroup;->getRemoveClippedSubviews()Z

    move-result v0

    .line 276
    .local v0, "removeClippedSubviews":Z
    if-eqz v0, :cond_0

    .line 277
    invoke-virtual {p1}, Lcom/facebook/react/views/view/ReactViewGroup;->getAllChildrenCount()I

    move-result v1

    return v1

    .line 279
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/react/views/view/ReactViewGroup;->getChildCount()I

    move-result v1

    return v1
.end method

.method public getCommandsMap()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 234
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "hotspotUpdate"

    const-string v3, "setPressed"

    invoke-static {v2, v0, v3, v1}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 224
    const-string v0, "RCTView"

    return-object v0
.end method

.method public bridge synthetic receiveCommand(Landroid/view/View;ILcom/facebook/react/bridge/ReadableArray;)V
    .locals 0
    .param p3    # Lcom/facebook/react/bridge/ReadableArray;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 36
    check-cast p1, Lcom/facebook/react/views/view/ReactViewGroup;

    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/react/views/view/ReactViewManager;->receiveCommand(Lcom/facebook/react/views/view/ReactViewGroup;ILcom/facebook/react/bridge/ReadableArray;)V

    return-void
.end method

.method public receiveCommand(Lcom/facebook/react/views/view/ReactViewGroup;ILcom/facebook/react/bridge/ReadableArray;)V
    .locals 4
    .param p1, "root"    # Lcom/facebook/react/views/view/ReactViewGroup;
    .param p2, "commandId"    # I
    .param p3, "args"    # Lcom/facebook/react/bridge/ReadableArray;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 239
    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p2, v2, :cond_2

    if-eq p2, v1, :cond_0

    goto :goto_0

    .line 253
    :cond_0
    if-eqz p3, :cond_1

    invoke-interface {p3}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 257
    invoke-interface {p3, v0}, Lcom/facebook/react/bridge/ReadableArray;->getBoolean(I)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/facebook/react/views/view/ReactViewGroup;->setPressed(Z)V

    goto :goto_0

    .line 254
    :cond_1
    new-instance v0, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    const-string v1, "Illegal number of arguments for \'setPressed\' command"

    invoke-direct {v0, v1}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 241
    :cond_2
    if-eqz p3, :cond_4

    invoke-interface {p3}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v3

    if-ne v3, v1, :cond_4

    .line 245
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v1, v3, :cond_3

    .line 246
    invoke-interface {p3, v0}, Lcom/facebook/react/bridge/ReadableArray;->getDouble(I)D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(D)F

    move-result v0

    .line 247
    .local v0, "x":F
    invoke-interface {p3, v2}, Lcom/facebook/react/bridge/ReadableArray;->getDouble(I)D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(D)F

    move-result v1

    .line 248
    .local v1, "y":F
    invoke-virtual {p1, v0, v1}, Lcom/facebook/react/views/view/ReactViewGroup;->drawableHotspotChanged(FF)V

    .line 261
    .end local v0    # "x":F
    .end local v1    # "y":F
    :cond_3
    :goto_0
    return-void

    .line 242
    :cond_4
    new-instance v0, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    const-string v1, "Illegal number of arguments for \'updateHotspot\' command"

    invoke-direct {v0, v1}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic removeAllViews(Landroid/view/ViewGroup;)V
    .locals 0

    .line 36
    check-cast p1, Lcom/facebook/react/views/view/ReactViewGroup;

    invoke-virtual {p0, p1}, Lcom/facebook/react/views/view/ReactViewManager;->removeAllViews(Lcom/facebook/react/views/view/ReactViewGroup;)V

    return-void
.end method

.method public removeAllViews(Lcom/facebook/react/views/view/ReactViewGroup;)V
    .locals 1
    .param p1, "parent"    # Lcom/facebook/react/views/view/ReactViewGroup;

    .line 309
    invoke-virtual {p1}, Lcom/facebook/react/views/view/ReactViewGroup;->getRemoveClippedSubviews()Z

    move-result v0

    .line 310
    .local v0, "removeClippedSubviews":Z
    if-eqz v0, :cond_0

    .line 311
    invoke-virtual {p1}, Lcom/facebook/react/views/view/ReactViewGroup;->removeAllViewsWithSubviewClippingEnabled()V

    goto :goto_0

    .line 313
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/react/views/view/ReactViewGroup;->removeAllViews()V

    .line 315
    :goto_0
    return-void
.end method

.method public bridge synthetic removeViewAt(Landroid/view/ViewGroup;I)V
    .locals 0

    .line 36
    check-cast p1, Lcom/facebook/react/views/view/ReactViewGroup;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/react/views/view/ReactViewManager;->removeViewAt(Lcom/facebook/react/views/view/ReactViewGroup;I)V

    return-void
.end method

.method public removeViewAt(Lcom/facebook/react/views/view/ReactViewGroup;I)V
    .locals 3
    .param p1, "parent"    # Lcom/facebook/react/views/view/ReactViewGroup;
    .param p2, "index"    # I

    .line 295
    invoke-virtual {p1}, Lcom/facebook/react/views/view/ReactViewGroup;->getRemoveClippedSubviews()Z

    move-result v0

    .line 296
    .local v0, "removeClippedSubviews":Z
    if-eqz v0, :cond_1

    .line 297
    invoke-virtual {p0, p1, p2}, Lcom/facebook/react/views/view/ReactViewManager;->getChildAt(Lcom/facebook/react/views/view/ReactViewGroup;I)Landroid/view/View;

    move-result-object v1

    .line 298
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 299
    invoke-virtual {p1, v1}, Lcom/facebook/react/views/view/ReactViewGroup;->removeView(Landroid/view/View;)V

    .line 301
    :cond_0
    invoke-virtual {p1, v1}, Lcom/facebook/react/views/view/ReactViewGroup;->removeViewWithSubviewClippingEnabled(Landroid/view/View;)V

    .line 302
    .end local v1    # "child":Landroid/view/View;
    goto :goto_0

    .line 303
    :cond_1
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/view/ReactViewGroup;->removeViewAt(I)V

    .line 305
    :goto_0
    return-void
.end method

.method public setAccessible(Lcom/facebook/react/views/view/ReactViewGroup;Z)V
    .locals 0
    .param p1, "view"    # Lcom/facebook/react/views/view/ReactViewGroup;
    .param p2, "accessible"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "accessible"
    .end annotation

    .line 56
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/view/ReactViewGroup;->setFocusable(Z)V

    .line 57
    return-void
.end method

.method public setBackfaceVisibility(Lcom/facebook/react/views/view/ReactViewGroup;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Lcom/facebook/react/views/view/ReactViewGroup;
    .param p2, "backfaceVisibility"    # Ljava/lang/String;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "backfaceVisibility"
    .end annotation

    .line 208
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/view/ReactViewGroup;->setBackfaceVisibility(Ljava/lang/String;)V

    .line 209
    return-void
.end method

.method public setBorderColor(Lcom/facebook/react/views/view/ReactViewGroup;ILjava/lang/Integer;)V
    .locals 3
    .param p1, "view"    # Lcom/facebook/react/views/view/ReactViewGroup;
    .param p2, "index"    # I
    .param p3, "color"    # Ljava/lang/Integer;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactPropGroup;
        customType = "Color"
        names = {
            "borderColor",
            "borderLeftColor",
            "borderRightColor",
            "borderTopColor",
            "borderBottomColor",
            "borderStartColor",
            "borderEndColor"
        }
    .end annotation

    .line 190
    const/high16 v0, 0x7fc00000    # Float.NaN

    if-nez p3, :cond_0

    const/high16 v1, 0x7fc00000    # Float.NaN

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const v2, 0xffffff

    and-int/2addr v1, v2

    int-to-float v1, v1

    .line 191
    .local v1, "rgbComponent":F
    :goto_0
    if-nez p3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    ushr-int/lit8 v0, v0, 0x18

    int-to-float v0, v0

    .line 192
    .local v0, "alphaComponent":F
    :goto_1
    sget-object v2, Lcom/facebook/react/views/view/ReactViewManager;->SPACING_TYPES:[I

    aget v2, v2, p2

    invoke-virtual {p1, v2, v1, v0}, Lcom/facebook/react/views/view/ReactViewGroup;->setBorderColor(IFF)V

    .line 193
    return-void
.end method

.method public setBorderRadius(Lcom/facebook/react/views/view/ReactViewGroup;IF)V
    .locals 1
    .param p1, "view"    # Lcom/facebook/react/views/view/ReactViewGroup;
    .param p2, "index"    # I
    .param p3, "borderRadius"    # F
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactPropGroup;
        defaultFloat = NaNf
        names = {
            "borderRadius",
            "borderTopLeftRadius",
            "borderTopRightRadius",
            "borderBottomRightRadius",
            "borderBottomLeftRadius",
            "borderTopStartRadius",
            "borderTopEndRadius",
            "borderBottomStartRadius",
            "borderBottomEndRadius"
        }
    .end annotation

    .line 82
    invoke-static {p3}, Lcom/facebook/yoga/YogaConstants;->isUndefined(F)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    cmpg-float v0, p3, v0

    if-gez v0, :cond_0

    .line 83
    const/high16 p3, 0x7fc00000    # Float.NaN

    .line 86
    :cond_0
    invoke-static {p3}, Lcom/facebook/yoga/YogaConstants;->isUndefined(F)Z

    move-result v0

    if-nez v0, :cond_1

    .line 87
    invoke-static {p3}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(F)F

    move-result p3

    .line 90
    :cond_1
    if-nez p2, :cond_2

    .line 91
    invoke-virtual {p1, p3}, Lcom/facebook/react/views/view/ReactViewGroup;->setBorderRadius(F)V

    goto :goto_0

    .line 93
    :cond_2
    add-int/lit8 v0, p2, -0x1

    invoke-virtual {p1, p3, v0}, Lcom/facebook/react/views/view/ReactViewGroup;->setBorderRadius(FI)V

    .line 95
    :goto_0
    return-void
.end method

.method public setBorderStyle(Lcom/facebook/react/views/view/ReactViewGroup;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Lcom/facebook/react/views/view/ReactViewGroup;
    .param p2, "borderStyle"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "borderStyle"
    .end annotation

    .line 99
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/view/ReactViewGroup;->setBorderStyle(Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method public setBorderWidth(Lcom/facebook/react/views/view/ReactViewGroup;IF)V
    .locals 1
    .param p1, "view"    # Lcom/facebook/react/views/view/ReactViewGroup;
    .param p2, "index"    # I
    .param p3, "width"    # F
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactPropGroup;
        defaultFloat = NaNf
        names = {
            "borderWidth",
            "borderLeftWidth",
            "borderRightWidth",
            "borderTopWidth",
            "borderBottomWidth",
            "borderStartWidth",
            "borderEndWidth"
        }
    .end annotation

    .line 166
    invoke-static {p3}, Lcom/facebook/yoga/YogaConstants;->isUndefined(F)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    cmpg-float v0, p3, v0

    if-gez v0, :cond_0

    .line 167
    const/high16 p3, 0x7fc00000    # Float.NaN

    .line 170
    :cond_0
    invoke-static {p3}, Lcom/facebook/yoga/YogaConstants;->isUndefined(F)Z

    move-result v0

    if-nez v0, :cond_1

    .line 171
    invoke-static {p3}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(F)F

    move-result p3

    .line 174
    :cond_1
    sget-object v0, Lcom/facebook/react/views/view/ReactViewManager;->SPACING_TYPES:[I

    aget v0, v0, p2

    invoke-virtual {p1, v0, p3}, Lcom/facebook/react/views/view/ReactViewGroup;->setBorderWidth(IF)V

    .line 175
    return-void
.end method

.method public setCollapsable(Lcom/facebook/react/views/view/ReactViewGroup;Z)V
    .locals 0
    .param p1, "view"    # Lcom/facebook/react/views/view/ReactViewGroup;
    .param p2, "collapsable"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "collapsable"
    .end annotation

    .line 199
    return-void
.end method

.method public setHitSlop(Lcom/facebook/react/views/view/ReactViewGroup;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 7
    .param p1, "view"    # Lcom/facebook/react/views/view/ReactViewGroup;
    .param p2, "hitSlop"    # Lcom/facebook/react/bridge/ReadableMap;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "hitSlop"
    .end annotation

    .line 104
    if-nez p2, :cond_0

    .line 105
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/facebook/react/views/view/ReactViewGroup;->setHitSlopRect(Landroid/graphics/Rect;)V

    goto :goto_3

    .line 107
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    .line 108
    const-string v1, "left"

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(D)F

    move-result v1

    float-to-int v1, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 109
    :goto_0
    const-string v2, "top"

    invoke-interface {p2, v2}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p2, v2}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(D)F

    move-result v2

    float-to-int v2, v2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 110
    :goto_1
    const-string v4, "right"

    invoke-interface {p2, v4}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {p2, v4}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(D)F

    move-result v4

    float-to-int v4, v4

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    .line 111
    :goto_2
    const-string v5, "bottom"

    invoke-interface {p2, v5}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {p2, v5}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(D)F

    move-result v3

    float-to-int v3, v3

    :cond_4
    invoke-direct {v0, v1, v2, v4, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 107
    invoke-virtual {p1, v0}, Lcom/facebook/react/views/view/ReactViewGroup;->setHitSlopRect(Landroid/graphics/Rect;)V

    .line 114
    :goto_3
    return-void
.end method

.method public setNativeBackground(Lcom/facebook/react/views/view/ReactViewGroup;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 1
    .param p1, "view"    # Lcom/facebook/react/views/view/ReactViewGroup;
    .param p2, "bg"    # Lcom/facebook/react/bridge/ReadableMap;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "nativeBackgroundAndroid"
    .end annotation

    .line 129
    if-nez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 130
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/react/views/view/ReactViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/facebook/react/views/view/ReactDrawableHelper;->createDrawableFromJSDescription(Landroid/content/Context;Lcom/facebook/react/bridge/ReadableMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 129
    :goto_0
    invoke-virtual {p1, v0}, Lcom/facebook/react/views/view/ReactViewGroup;->setTranslucentBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 131
    return-void
.end method

.method public setNativeForeground(Lcom/facebook/react/views/view/ReactViewGroup;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 1
    .param p1, "view"    # Lcom/facebook/react/views/view/ReactViewGroup;
    .param p2, "fg"    # Lcom/facebook/react/bridge/ReadableMap;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "nativeForegroundAndroid"
    .end annotation

    .line 136
    if-nez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 138
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/react/views/view/ReactViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/facebook/react/views/view/ReactDrawableHelper;->createDrawableFromJSDescription(Landroid/content/Context;Lcom/facebook/react/bridge/ReadableMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 136
    :goto_0
    invoke-virtual {p1, v0}, Lcom/facebook/react/views/view/ReactViewGroup;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 139
    return-void
.end method

.method public setNeedsOffscreenAlphaCompositing(Lcom/facebook/react/views/view/ReactViewGroup;Z)V
    .locals 0
    .param p1, "view"    # Lcom/facebook/react/views/view/ReactViewGroup;
    .param p2, "needsOffscreenAlphaCompositing"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "needsOffscreenAlphaCompositing"
    .end annotation

    .line 150
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/view/ReactViewGroup;->setNeedsOffscreenAlphaCompositing(Z)V

    .line 151
    return-void
.end method

.method public bridge synthetic setOpacity(Landroid/view/View;F)V
    .locals 0

    .line 36
    check-cast p1, Lcom/facebook/react/views/view/ReactViewGroup;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/react/views/view/ReactViewManager;->setOpacity(Lcom/facebook/react/views/view/ReactViewGroup;F)V

    return-void
.end method

.method public setOpacity(Lcom/facebook/react/views/view/ReactViewGroup;F)V
    .locals 0
    .param p1, "view"    # Lcom/facebook/react/views/view/ReactViewGroup;
    .param p2, "opacity"    # F

    .line 213
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/view/ReactViewGroup;->setOpacityIfPossible(F)V

    .line 214
    return-void
.end method

.method public setOverflow(Lcom/facebook/react/views/view/ReactViewGroup;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Lcom/facebook/react/views/view/ReactViewGroup;
    .param p2, "overflow"    # Ljava/lang/String;
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "overflow"
    .end annotation

    .line 203
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/view/ReactViewGroup;->setOverflow(Ljava/lang/String;)V

    .line 204
    return-void
.end method

.method public setPointerEvents(Lcom/facebook/react/views/view/ReactViewGroup;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Lcom/facebook/react/views/view/ReactViewGroup;
    .param p2, "pointerEventsStr"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "pointerEvents"
    .end annotation

    .line 118
    if-nez p2, :cond_0

    .line 119
    sget-object v0, Lcom/facebook/react/uimanager/PointerEvents;->AUTO:Lcom/facebook/react/uimanager/PointerEvents;

    invoke-virtual {p1, v0}, Lcom/facebook/react/views/view/ReactViewGroup;->setPointerEvents(Lcom/facebook/react/uimanager/PointerEvents;)V

    goto :goto_0

    .line 121
    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 122
    invoke-virtual {p2, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, "_"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/react/uimanager/PointerEvents;->valueOf(Ljava/lang/String;)Lcom/facebook/react/uimanager/PointerEvents;

    move-result-object v0

    .line 123
    .local v0, "pointerEvents":Lcom/facebook/react/uimanager/PointerEvents;
    invoke-virtual {p1, v0}, Lcom/facebook/react/views/view/ReactViewGroup;->setPointerEvents(Lcom/facebook/react/uimanager/PointerEvents;)V

    .line 125
    .end local v0    # "pointerEvents":Lcom/facebook/react/uimanager/PointerEvents;
    :goto_0
    return-void
.end method

.method public setRemoveClippedSubviews(Lcom/facebook/react/views/view/ReactViewGroup;Z)V
    .locals 0
    .param p1, "view"    # Lcom/facebook/react/views/view/ReactViewGroup;
    .param p2, "removeClippedSubviews"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "removeClippedSubviews"
    .end annotation

    .line 143
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/view/ReactViewGroup;->setRemoveClippedSubviews(Z)V

    .line 144
    return-void
.end method

.method public setTVPreferredFocus(Lcom/facebook/react/views/view/ReactViewGroup;Z)V
    .locals 1
    .param p1, "view"    # Lcom/facebook/react/views/view/ReactViewGroup;
    .param p2, "hasTVPreferredFocus"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "hasTVPreferredFocus"
    .end annotation

    .line 61
    if-eqz p2, :cond_0

    .line 62
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/facebook/react/views/view/ReactViewGroup;->setFocusable(Z)V

    .line 63
    invoke-virtual {p1, v0}, Lcom/facebook/react/views/view/ReactViewGroup;->setFocusableInTouchMode(Z)V

    .line 64
    invoke-virtual {p1}, Lcom/facebook/react/views/view/ReactViewGroup;->requestFocus()Z

    .line 66
    :cond_0
    return-void
.end method

.method public bridge synthetic setTransform(Landroid/view/View;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 0

    .line 36
    check-cast p1, Lcom/facebook/react/views/view/ReactViewGroup;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/react/views/view/ReactViewManager;->setTransform(Lcom/facebook/react/views/view/ReactViewGroup;Lcom/facebook/react/bridge/ReadableArray;)V

    return-void
.end method

.method public setTransform(Lcom/facebook/react/views/view/ReactViewGroup;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 0
    .param p1, "view"    # Lcom/facebook/react/views/view/ReactViewGroup;
    .param p2, "matrix"    # Lcom/facebook/react/bridge/ReadableArray;

    .line 218
    invoke-super {p0, p1, p2}, Lcom/facebook/react/uimanager/ViewGroupManager;->setTransform(Landroid/view/View;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 219
    invoke-virtual {p1}, Lcom/facebook/react/views/view/ReactViewGroup;->setBackfaceVisibilityDependantOpacity()V

    .line 220
    return-void
.end method

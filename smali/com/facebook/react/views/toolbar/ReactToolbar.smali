.class public Lcom/facebook/react/views/toolbar/ReactToolbar;
.super Landroid/support/v7/widget/Toolbar;
.source "ReactToolbar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/views/toolbar/ReactToolbar$IconImageInfo;,
        Lcom/facebook/react/views/toolbar/ReactToolbar$ActionIconControllerListener;,
        Lcom/facebook/react/views/toolbar/ReactToolbar$IconControllerListener;
    }
.end annotation


# static fields
.field private static final PROP_ACTION_ICON:Ljava/lang/String; = "icon"

.field private static final PROP_ACTION_SHOW:Ljava/lang/String; = "show"

.field private static final PROP_ACTION_SHOW_WITH_TEXT:Ljava/lang/String; = "showWithText"

.field private static final PROP_ACTION_TITLE:Ljava/lang/String; = "title"

.field private static final PROP_ICON_HEIGHT:Ljava/lang/String; = "height"

.field private static final PROP_ICON_URI:Ljava/lang/String; = "uri"

.field private static final PROP_ICON_WIDTH:Ljava/lang/String; = "width"


# instance fields
.field private final mActionsHolder:Lcom/facebook/drawee/view/MultiDraweeHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/drawee/view/MultiDraweeHolder<",
            "Lcom/facebook/drawee/generic/GenericDraweeHierarchy;",
            ">;"
        }
    .end annotation
.end field

.field private final mLayoutRunnable:Ljava/lang/Runnable;

.field private mLogoControllerListener:Lcom/facebook/react/views/toolbar/ReactToolbar$IconControllerListener;

.field private final mLogoHolder:Lcom/facebook/drawee/view/DraweeHolder;

.field private mNavIconControllerListener:Lcom/facebook/react/views/toolbar/ReactToolbar$IconControllerListener;

.field private final mNavIconHolder:Lcom/facebook/drawee/view/DraweeHolder;

.field private mOverflowIconControllerListener:Lcom/facebook/react/views/toolbar/ReactToolbar$IconControllerListener;

.field private final mOverflowIconHolder:Lcom/facebook/drawee/view/DraweeHolder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 135
    invoke-direct {p0, p1}, Landroid/support/v7/widget/Toolbar;-><init>(Landroid/content/Context;)V

    .line 52
    new-instance v0, Lcom/facebook/drawee/view/MultiDraweeHolder;

    invoke-direct {v0}, Lcom/facebook/drawee/view/MultiDraweeHolder;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/views/toolbar/ReactToolbar;->mActionsHolder:Lcom/facebook/drawee/view/MultiDraweeHolder;

    .line 164
    new-instance v0, Lcom/facebook/react/views/toolbar/ReactToolbar$4;

    invoke-direct {v0, p0}, Lcom/facebook/react/views/toolbar/ReactToolbar$4;-><init>(Lcom/facebook/react/views/toolbar/ReactToolbar;)V

    iput-object v0, p0, Lcom/facebook/react/views/toolbar/ReactToolbar;->mLayoutRunnable:Ljava/lang/Runnable;

    .line 137
    invoke-direct {p0}, Lcom/facebook/react/views/toolbar/ReactToolbar;->createDraweeHierarchy()Lcom/facebook/drawee/generic/GenericDraweeHierarchy;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/facebook/drawee/view/DraweeHolder;->create(Lcom/facebook/drawee/interfaces/DraweeHierarchy;Landroid/content/Context;)Lcom/facebook/drawee/view/DraweeHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/react/views/toolbar/ReactToolbar;->mLogoHolder:Lcom/facebook/drawee/view/DraweeHolder;

    .line 138
    invoke-direct {p0}, Lcom/facebook/react/views/toolbar/ReactToolbar;->createDraweeHierarchy()Lcom/facebook/drawee/generic/GenericDraweeHierarchy;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/facebook/drawee/view/DraweeHolder;->create(Lcom/facebook/drawee/interfaces/DraweeHierarchy;Landroid/content/Context;)Lcom/facebook/drawee/view/DraweeHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/react/views/toolbar/ReactToolbar;->mNavIconHolder:Lcom/facebook/drawee/view/DraweeHolder;

    .line 139
    invoke-direct {p0}, Lcom/facebook/react/views/toolbar/ReactToolbar;->createDraweeHierarchy()Lcom/facebook/drawee/generic/GenericDraweeHierarchy;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/facebook/drawee/view/DraweeHolder;->create(Lcom/facebook/drawee/interfaces/DraweeHierarchy;Landroid/content/Context;)Lcom/facebook/drawee/view/DraweeHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/react/views/toolbar/ReactToolbar;->mOverflowIconHolder:Lcom/facebook/drawee/view/DraweeHolder;

    .line 141
    new-instance v0, Lcom/facebook/react/views/toolbar/ReactToolbar$1;

    iget-object v1, p0, Lcom/facebook/react/views/toolbar/ReactToolbar;->mLogoHolder:Lcom/facebook/drawee/view/DraweeHolder;

    invoke-direct {v0, p0, v1}, Lcom/facebook/react/views/toolbar/ReactToolbar$1;-><init>(Lcom/facebook/react/views/toolbar/ReactToolbar;Lcom/facebook/drawee/view/DraweeHolder;)V

    iput-object v0, p0, Lcom/facebook/react/views/toolbar/ReactToolbar;->mLogoControllerListener:Lcom/facebook/react/views/toolbar/ReactToolbar$IconControllerListener;

    .line 148
    new-instance v0, Lcom/facebook/react/views/toolbar/ReactToolbar$2;

    iget-object v1, p0, Lcom/facebook/react/views/toolbar/ReactToolbar;->mNavIconHolder:Lcom/facebook/drawee/view/DraweeHolder;

    invoke-direct {v0, p0, v1}, Lcom/facebook/react/views/toolbar/ReactToolbar$2;-><init>(Lcom/facebook/react/views/toolbar/ReactToolbar;Lcom/facebook/drawee/view/DraweeHolder;)V

    iput-object v0, p0, Lcom/facebook/react/views/toolbar/ReactToolbar;->mNavIconControllerListener:Lcom/facebook/react/views/toolbar/ReactToolbar$IconControllerListener;

    .line 155
    new-instance v0, Lcom/facebook/react/views/toolbar/ReactToolbar$3;

    iget-object v1, p0, Lcom/facebook/react/views/toolbar/ReactToolbar;->mOverflowIconHolder:Lcom/facebook/drawee/view/DraweeHolder;

    invoke-direct {v0, p0, v1}, Lcom/facebook/react/views/toolbar/ReactToolbar$3;-><init>(Lcom/facebook/react/views/toolbar/ReactToolbar;Lcom/facebook/drawee/view/DraweeHolder;)V

    iput-object v0, p0, Lcom/facebook/react/views/toolbar/ReactToolbar;->mOverflowIconControllerListener:Lcom/facebook/react/views/toolbar/ReactToolbar$IconControllerListener;

    .line 162
    return-void
.end method

.method private attachDraweeHolders()V
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/facebook/react/views/toolbar/ReactToolbar;->mLogoHolder:Lcom/facebook/drawee/view/DraweeHolder;

    invoke-virtual {v0}, Lcom/facebook/drawee/view/DraweeHolder;->onAttach()V

    .line 216
    iget-object v0, p0, Lcom/facebook/react/views/toolbar/ReactToolbar;->mNavIconHolder:Lcom/facebook/drawee/view/DraweeHolder;

    invoke-virtual {v0}, Lcom/facebook/drawee/view/DraweeHolder;->onAttach()V

    .line 217
    iget-object v0, p0, Lcom/facebook/react/views/toolbar/ReactToolbar;->mOverflowIconHolder:Lcom/facebook/drawee/view/DraweeHolder;

    invoke-virtual {v0}, Lcom/facebook/drawee/view/DraweeHolder;->onAttach()V

    .line 218
    iget-object v0, p0, Lcom/facebook/react/views/toolbar/ReactToolbar;->mActionsHolder:Lcom/facebook/drawee/view/MultiDraweeHolder;

    invoke-virtual {v0}, Lcom/facebook/drawee/view/MultiDraweeHolder;->onAttach()V

    .line 219
    return-void
.end method

.method private createDraweeHierarchy()Lcom/facebook/drawee/generic/GenericDraweeHierarchy;
    .locals 2

    .line 300
    new-instance v0, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;

    invoke-virtual {p0}, Lcom/facebook/react/views/toolbar/ReactToolbar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;-><init>(Landroid/content/res/Resources;)V

    sget-object v1, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->FIT_CENTER:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    .line 301
    invoke-virtual {v0, v1}, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->setActualImageScaleType(Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;

    move-result-object v0

    .line 302
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->setFadeDuration(I)Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;

    move-result-object v0

    .line 303
    invoke-virtual {v0}, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->build()Lcom/facebook/drawee/generic/GenericDraweeHierarchy;

    move-result-object v0

    .line 300
    return-object v0
.end method

.method private detachDraweeHolders()V
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/facebook/react/views/toolbar/ReactToolbar;->mLogoHolder:Lcom/facebook/drawee/view/DraweeHolder;

    invoke-virtual {v0}, Lcom/facebook/drawee/view/DraweeHolder;->onDetach()V

    .line 209
    iget-object v0, p0, Lcom/facebook/react/views/toolbar/ReactToolbar;->mNavIconHolder:Lcom/facebook/drawee/view/DraweeHolder;

    invoke-virtual {v0}, Lcom/facebook/drawee/view/DraweeHolder;->onDetach()V

    .line 210
    iget-object v0, p0, Lcom/facebook/react/views/toolbar/ReactToolbar;->mOverflowIconHolder:Lcom/facebook/drawee/view/DraweeHolder;

    invoke-virtual {v0}, Lcom/facebook/drawee/view/DraweeHolder;->onDetach()V

    .line 211
    iget-object v0, p0, Lcom/facebook/react/views/toolbar/ReactToolbar;->mActionsHolder:Lcom/facebook/drawee/view/MultiDraweeHolder;

    invoke-virtual {v0}, Lcom/facebook/drawee/view/MultiDraweeHolder;->onDetach()V

    .line 212
    return-void
.end method

.method private getDrawableByName(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 314
    invoke-direct {p0, p1}, Lcom/facebook/react/views/toolbar/ReactToolbar;->getDrawableResourceByName(Ljava/lang/String;)I

    move-result v0

    .line 315
    .local v0, "drawableResId":I
    if-eqz v0, :cond_0

    .line 316
    invoke-virtual {p0}, Lcom/facebook/react/views/toolbar/ReactToolbar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/facebook/react/views/toolbar/ReactToolbar;->getDrawableResourceByName(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    .line 318
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private getDrawableResourceByName(Ljava/lang/String;)I
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 307
    invoke-virtual {p0}, Lcom/facebook/react/views/toolbar/ReactToolbar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 310
    invoke-virtual {p0}, Lcom/facebook/react/views/toolbar/ReactToolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 307
    const-string v2, "drawable"

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private getIconImageInfo(Lcom/facebook/react/bridge/ReadableMap;)Lcom/facebook/react/views/toolbar/ReactToolbar$IconImageInfo;
    .locals 3
    .param p1, "source"    # Lcom/facebook/react/bridge/ReadableMap;

    .line 323
    const-string v0, "width"

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "height"

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 324
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 325
    .local v0, "width":I
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(F)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 326
    .local v1, "height":I
    new-instance v2, Lcom/facebook/react/views/toolbar/ReactToolbar$IconImageInfo;

    invoke-direct {v2, v0, v1}, Lcom/facebook/react/views/toolbar/ReactToolbar$IconImageInfo;-><init>(II)V

    return-object v2

    .line 328
    .end local v0    # "width":I
    .end local v1    # "height":I
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private setIconSource(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/views/toolbar/ReactToolbar$IconControllerListener;Lcom/facebook/drawee/view/DraweeHolder;)V
    .locals 4
    .param p1, "source"    # Lcom/facebook/react/bridge/ReadableMap;
    .param p2, "controllerListener"    # Lcom/facebook/react/views/toolbar/ReactToolbar$IconControllerListener;
    .param p3, "holder"    # Lcom/facebook/drawee/view/DraweeHolder;

    .line 279
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "uri"

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 281
    .local v1, "uri":Ljava/lang/String;
    :goto_0
    if-nez v1, :cond_1

    .line 282
    invoke-virtual {p2, v0}, Lcom/facebook/react/views/toolbar/ReactToolbar$IconControllerListener;->setIconImageInfo(Lcom/facebook/react/views/toolbar/ReactToolbar$IconImageInfo;)V

    .line 283
    invoke-virtual {p2, v0}, Lcom/facebook/react/views/toolbar/ReactToolbar$IconControllerListener;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 284
    :cond_1
    const-string v0, "http://"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "https://"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "file://"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 294
    :cond_2
    invoke-direct {p0, v1}, Lcom/facebook/react/views/toolbar/ReactToolbar;->getDrawableByName(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/facebook/react/views/toolbar/ReactToolbar$IconControllerListener;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 285
    :cond_3
    :goto_1
    invoke-direct {p0, p1}, Lcom/facebook/react/views/toolbar/ReactToolbar;->getIconImageInfo(Lcom/facebook/react/bridge/ReadableMap;)Lcom/facebook/react/views/toolbar/ReactToolbar$IconImageInfo;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/facebook/react/views/toolbar/ReactToolbar$IconControllerListener;->setIconImageInfo(Lcom/facebook/react/views/toolbar/ReactToolbar$IconImageInfo;)V

    .line 286
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->newDraweeControllerBuilder()Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;

    move-result-object v0

    .line 287
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;->setUri(Landroid/net/Uri;)Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;

    move-result-object v0

    .line 288
    invoke-virtual {v0, p2}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;->setControllerListener(Lcom/facebook/drawee/controller/ControllerListener;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;

    .line 289
    invoke-virtual {p3}, Lcom/facebook/drawee/view/DraweeHolder;->getController()Lcom/facebook/drawee/interfaces/DraweeController;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;->setOldController(Lcom/facebook/drawee/interfaces/DraweeController;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;

    .line 290
    invoke-virtual {v0}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;->build()Lcom/facebook/drawee/controller/AbstractDraweeController;

    move-result-object v0

    .line 291
    .local v0, "controller":Lcom/facebook/drawee/interfaces/DraweeController;
    invoke-virtual {p3, v0}, Lcom/facebook/drawee/view/DraweeHolder;->setController(Lcom/facebook/drawee/interfaces/DraweeController;)V

    .line 292
    invoke-virtual {p3}, Lcom/facebook/drawee/view/DraweeHolder;->getTopLevelDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v3}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 293
    .end local v0    # "controller":Lcom/facebook/drawee/interfaces/DraweeController;
    nop

    .line 297
    :goto_2
    return-void
.end method

.method private setMenuItemIcon(Landroid/view/MenuItem;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;
    .param p2, "iconSource"    # Lcom/facebook/react/bridge/ReadableMap;

    .line 261
    nop

    .line 262
    invoke-direct {p0}, Lcom/facebook/react/views/toolbar/ReactToolbar;->createDraweeHierarchy()Lcom/facebook/drawee/generic/GenericDraweeHierarchy;

    move-result-object v0

    invoke-virtual {p0}, Lcom/facebook/react/views/toolbar/ReactToolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/drawee/view/DraweeHolder;->create(Lcom/facebook/drawee/interfaces/DraweeHierarchy;Landroid/content/Context;)Lcom/facebook/drawee/view/DraweeHolder;

    move-result-object v0

    .line 263
    .local v0, "holder":Lcom/facebook/drawee/view/DraweeHolder;, "Lcom/facebook/drawee/view/DraweeHolder<Lcom/facebook/drawee/generic/GenericDraweeHierarchy;>;"
    new-instance v1, Lcom/facebook/react/views/toolbar/ReactToolbar$ActionIconControllerListener;

    invoke-direct {v1, p0, p1, v0}, Lcom/facebook/react/views/toolbar/ReactToolbar$ActionIconControllerListener;-><init>(Lcom/facebook/react/views/toolbar/ReactToolbar;Landroid/view/MenuItem;Lcom/facebook/drawee/view/DraweeHolder;)V

    .line 264
    .local v1, "controllerListener":Lcom/facebook/react/views/toolbar/ReactToolbar$ActionIconControllerListener;
    invoke-direct {p0, p2}, Lcom/facebook/react/views/toolbar/ReactToolbar;->getIconImageInfo(Lcom/facebook/react/bridge/ReadableMap;)Lcom/facebook/react/views/toolbar/ReactToolbar$IconImageInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/react/views/toolbar/ReactToolbar$ActionIconControllerListener;->setIconImageInfo(Lcom/facebook/react/views/toolbar/ReactToolbar$IconImageInfo;)V

    .line 266
    invoke-direct {p0, p2, v1, v0}, Lcom/facebook/react/views/toolbar/ReactToolbar;->setIconSource(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/views/toolbar/ReactToolbar$IconControllerListener;Lcom/facebook/drawee/view/DraweeHolder;)V

    .line 268
    iget-object v2, p0, Lcom/facebook/react/views/toolbar/ReactToolbar;->mActionsHolder:Lcom/facebook/drawee/view/MultiDraweeHolder;

    invoke-virtual {v2, v0}, Lcom/facebook/drawee/view/MultiDraweeHolder;->add(Lcom/facebook/drawee/view/DraweeHolder;)V

    .line 270
    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 0

    .line 197
    invoke-super {p0}, Landroid/support/v7/widget/Toolbar;->onAttachedToWindow()V

    .line 198
    invoke-direct {p0}, Lcom/facebook/react/views/toolbar/ReactToolbar;->attachDraweeHolders()V

    .line 199
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .line 185
    invoke-super {p0}, Landroid/support/v7/widget/Toolbar;->onDetachedFromWindow()V

    .line 186
    invoke-direct {p0}, Lcom/facebook/react/views/toolbar/ReactToolbar;->detachDraweeHolders()V

    .line 187
    return-void
.end method

.method public onFinishTemporaryDetach()V
    .locals 0

    .line 203
    invoke-super {p0}, Landroid/support/v7/widget/Toolbar;->onFinishTemporaryDetach()V

    .line 204
    invoke-direct {p0}, Lcom/facebook/react/views/toolbar/ReactToolbar;->attachDraweeHolders()V

    .line 205
    return-void
.end method

.method public onStartTemporaryDetach()V
    .locals 0

    .line 191
    invoke-super {p0}, Landroid/support/v7/widget/Toolbar;->onStartTemporaryDetach()V

    .line 192
    invoke-direct {p0}, Lcom/facebook/react/views/toolbar/ReactToolbar;->detachDraweeHolders()V

    .line 193
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 176
    invoke-super {p0}, Landroid/support/v7/widget/Toolbar;->requestLayout()V

    .line 180
    iget-object v0, p0, Lcom/facebook/react/views/toolbar/ReactToolbar;->mLayoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/facebook/react/views/toolbar/ReactToolbar;->post(Ljava/lang/Runnable;)Z

    .line 181
    return-void
.end method

.method setActions(Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 7
    .param p1, "actions"    # Lcom/facebook/react/bridge/ReadableArray;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 234
    invoke-virtual {p0}, Lcom/facebook/react/views/toolbar/ReactToolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    .line 235
    .local v0, "menu":Landroid/view/Menu;
    invoke-interface {v0}, Landroid/view/Menu;->clear()V

    .line 236
    iget-object v1, p0, Lcom/facebook/react/views/toolbar/ReactToolbar;->mActionsHolder:Lcom/facebook/drawee/view/MultiDraweeHolder;

    invoke-virtual {v1}, Lcom/facebook/drawee/view/MultiDraweeHolder;->clear()V

    .line 237
    if-eqz p1, :cond_3

    .line 238
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 239
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableArray;->getMap(I)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v2

    .line 241
    .local v2, "action":Lcom/facebook/react/bridge/ReadableMap;
    const-string v3, "title"

    invoke-interface {v2, v3}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v0, v4, v4, v1, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v3

    .line 243
    .local v3, "item":Landroid/view/MenuItem;
    const-string v5, "icon"

    invoke-interface {v2, v5}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 244
    invoke-interface {v2, v5}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v5

    invoke-direct {p0, v3, v5}, Lcom/facebook/react/views/toolbar/ReactToolbar;->setMenuItemIcon(Landroid/view/MenuItem;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 247
    :cond_0
    const-string v5, "show"

    invoke-interface {v2, v5}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 248
    invoke-interface {v2, v5}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v4

    goto :goto_1

    :cond_1
    nop

    .line 250
    .local v4, "showAsAction":I
    :goto_1
    const-string v5, "showWithText"

    invoke-interface {v2, v5}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 251
    invoke-interface {v2, v5}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 252
    or-int/lit8 v4, v4, 0x4

    .line 254
    :cond_2
    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 238
    .end local v2    # "action":Lcom/facebook/react/bridge/ReadableMap;
    .end local v3    # "item":Landroid/view/MenuItem;
    .end local v4    # "showAsAction":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 257
    .end local v1    # "i":I
    :cond_3
    return-void
.end method

.method setLogoSource(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 2
    .param p1, "source"    # Lcom/facebook/react/bridge/ReadableMap;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 222
    iget-object v0, p0, Lcom/facebook/react/views/toolbar/ReactToolbar;->mLogoControllerListener:Lcom/facebook/react/views/toolbar/ReactToolbar$IconControllerListener;

    iget-object v1, p0, Lcom/facebook/react/views/toolbar/ReactToolbar;->mLogoHolder:Lcom/facebook/drawee/view/DraweeHolder;

    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/react/views/toolbar/ReactToolbar;->setIconSource(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/views/toolbar/ReactToolbar$IconControllerListener;Lcom/facebook/drawee/view/DraweeHolder;)V

    .line 223
    return-void
.end method

.method setNavIconSource(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 2
    .param p1, "source"    # Lcom/facebook/react/bridge/ReadableMap;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 226
    iget-object v0, p0, Lcom/facebook/react/views/toolbar/ReactToolbar;->mNavIconControllerListener:Lcom/facebook/react/views/toolbar/ReactToolbar$IconControllerListener;

    iget-object v1, p0, Lcom/facebook/react/views/toolbar/ReactToolbar;->mNavIconHolder:Lcom/facebook/drawee/view/DraweeHolder;

    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/react/views/toolbar/ReactToolbar;->setIconSource(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/views/toolbar/ReactToolbar$IconControllerListener;Lcom/facebook/drawee/view/DraweeHolder;)V

    .line 227
    return-void
.end method

.method setOverflowIconSource(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 2
    .param p1, "source"    # Lcom/facebook/react/bridge/ReadableMap;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 230
    iget-object v0, p0, Lcom/facebook/react/views/toolbar/ReactToolbar;->mOverflowIconControllerListener:Lcom/facebook/react/views/toolbar/ReactToolbar$IconControllerListener;

    iget-object v1, p0, Lcom/facebook/react/views/toolbar/ReactToolbar;->mOverflowIconHolder:Lcom/facebook/drawee/view/DraweeHolder;

    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/react/views/toolbar/ReactToolbar;->setIconSource(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/views/toolbar/ReactToolbar$IconControllerListener;Lcom/facebook/drawee/view/DraweeHolder;)V

    .line 231
    return-void
.end method

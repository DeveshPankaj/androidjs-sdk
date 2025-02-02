.class public Lcom/facebook/react/views/swiperefresh/SwipeRefreshLayoutManager;
.super Lcom/facebook/react/uimanager/ViewGroupManager;
.source "SwipeRefreshLayoutManager.java"


# annotations
.annotation runtime Lcom/facebook/react/module/annotations/ReactModule;
    name = "AndroidSwipeRefreshLayout"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/uimanager/ViewGroupManager<",
        "Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;",
        ">;"
    }
.end annotation


# static fields
.field public static final REACT_CLASS:Ljava/lang/String; = "AndroidSwipeRefreshLayout"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/facebook/react/uimanager/ViewGroupManager;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic addEventEmitters(Lcom/facebook/react/uimanager/ThemedReactContext;Landroid/view/View;)V
    .locals 0

    .line 31
    check-cast p2, Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/react/views/swiperefresh/SwipeRefreshLayoutManager;->addEventEmitters(Lcom/facebook/react/uimanager/ThemedReactContext;Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;)V

    return-void
.end method

.method protected addEventEmitters(Lcom/facebook/react/uimanager/ThemedReactContext;Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;)V
    .locals 1
    .param p1, "reactContext"    # Lcom/facebook/react/uimanager/ThemedReactContext;
    .param p2, "view"    # Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;

    .line 88
    new-instance v0, Lcom/facebook/react/views/swiperefresh/SwipeRefreshLayoutManager$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/react/views/swiperefresh/SwipeRefreshLayoutManager$1;-><init>(Lcom/facebook/react/views/swiperefresh/SwipeRefreshLayoutManager;Lcom/facebook/react/uimanager/ThemedReactContext;Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;)V

    invoke-virtual {p2, v0}, Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;->setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 96
    return-void
.end method

.method protected bridge synthetic createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Landroid/view/View;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lcom/facebook/react/views/swiperefresh/SwipeRefreshLayoutManager;->createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;

    move-result-object p1

    return-object p1
.end method

.method protected createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;
    .locals 1
    .param p1, "reactContext"    # Lcom/facebook/react/uimanager/ThemedReactContext;

    .line 38
    new-instance v0, Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;

    invoke-direct {v0, p1}, Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    return-object v0
.end method

.method public getExportedCustomDirectEventTypeConstants()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 108
    invoke-static {}, Lcom/facebook/react/common/MapBuilder;->builder()Lcom/facebook/react/common/MapBuilder$Builder;

    move-result-object v0

    .line 109
    const-string v1, "registrationName"

    const-string v2, "onRefresh"

    invoke-static {v1, v2}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "topRefresh"

    invoke-virtual {v0, v2, v1}, Lcom/facebook/react/common/MapBuilder$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/facebook/react/common/MapBuilder$Builder;

    move-result-object v0

    .line 110
    invoke-virtual {v0}, Lcom/facebook/react/common/MapBuilder$Builder;->build()Ljava/util/Map;

    move-result-object v0

    .line 108
    return-object v0
.end method

.method public getExportedViewConstants()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 101
    nop

    .line 103
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "DEFAULT"

    const-string v3, "LARGE"

    invoke-static {v2, v0, v3, v1}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 101
    const-string v1, "SIZE"

    invoke-static {v1, v0}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 43
    const-string v0, "AndroidSwipeRefreshLayout"

    return-object v0
.end method

.method public setColors(Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 3
    .param p1, "view"    # Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;
    .param p2, "colors"    # Lcom/facebook/react/bridge/ReadableArray;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        customType = "ColorArray"
        name = "colors"
    .end annotation

    .line 53
    if-eqz p2, :cond_1

    .line 54
    invoke-interface {p2}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 55
    .local v0, "colorValues":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p2}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 56
    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableArray;->getInt(I)I

    move-result v2

    aput v2, v0, v1

    .line 55
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 58
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p1, v0}, Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;->setColorSchemeColors([I)V

    .line 59
    .end local v0    # "colorValues":[I
    goto :goto_1

    .line 60
    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [I

    invoke-virtual {p1, v0}, Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;->setColorSchemeColors([I)V

    .line 62
    :goto_1
    return-void
.end method

.method public setEnabled(Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;Z)V
    .locals 0
    .param p1, "view"    # Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;
    .param p2, "enabled"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultBoolean = true
        name = "enabled"
    .end annotation

    .line 48
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;->setEnabled(Z)V

    .line 49
    return-void
.end method

.method public setProgressBackgroundColor(Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;I)V
    .locals 0
    .param p1, "view"    # Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;
    .param p2, "color"    # I
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        customType = "Color"
        defaultInt = 0x0
        name = "progressBackgroundColor"
    .end annotation

    .line 66
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;->setProgressBackgroundColorSchemeColor(I)V

    .line 67
    return-void
.end method

.method public setProgressViewOffset(Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;F)V
    .locals 0
    .param p1, "view"    # Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;
    .param p2, "offset"    # F
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultFloat = 0.0f
        name = "progressViewOffset"
    .end annotation

    .line 81
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;->setProgressViewOffset(F)V

    .line 82
    return-void
.end method

.method public setRefreshing(Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;Z)V
    .locals 0
    .param p1, "view"    # Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;
    .param p2, "refreshing"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "refreshing"
    .end annotation

    .line 76
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;->setRefreshing(Z)V

    .line 77
    return-void
.end method

.method public setSize(Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;I)V
    .locals 0
    .param p1, "view"    # Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;
    .param p2, "size"    # I
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultInt = 0x1
        name = "size"
    .end annotation

    .line 71
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;->setSize(I)V

    .line 72
    return-void
.end method

.class public Lcom/facebook/react/views/progressbar/ReactProgressBarViewManager;
.super Lcom/facebook/react/uimanager/BaseViewManager;
.source "ReactProgressBarViewManager.java"


# annotations
.annotation runtime Lcom/facebook/react/module/annotations/ReactModule;
    name = "AndroidProgressBar"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/uimanager/BaseViewManager<",
        "Lcom/facebook/react/views/progressbar/ProgressBarContainerView;",
        "Lcom/facebook/react/views/progressbar/ProgressBarShadowNode;",
        ">;"
    }
.end annotation


# static fields
.field static final DEFAULT_STYLE:Ljava/lang/String; = "Normal"

.field static final PROP_ANIMATING:Ljava/lang/String; = "animating"

.field static final PROP_INDETERMINATE:Ljava/lang/String; = "indeterminate"

.field static final PROP_PROGRESS:Ljava/lang/String; = "progress"

.field static final PROP_STYLE:Ljava/lang/String; = "styleAttr"

.field public static final REACT_CLASS:Ljava/lang/String; = "AndroidProgressBar"

.field private static sProgressBarCtorLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/facebook/react/views/progressbar/ReactProgressBarViewManager;->sProgressBarCtorLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/facebook/react/uimanager/BaseViewManager;-><init>()V

    return-void
.end method

.method public static createProgressBar(Landroid/content/Context;I)Landroid/widget/ProgressBar;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "style"    # I

    .line 49
    sget-object v0, Lcom/facebook/react/views/progressbar/ReactProgressBarViewManager;->sProgressBarCtorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 50
    :try_start_0
    new-instance v1, Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    monitor-exit v0

    return-object v1

    .line 51
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static getStyleFromString(Ljava/lang/String;)I
    .locals 3
    .param p0, "styleStr"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 110
    if-eqz p0, :cond_7

    .line 113
    const-string v0, "Horizontal"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    const v0, 0x1010078

    return v0

    .line 115
    :cond_0
    const-string v0, "Small"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    const v0, 0x1010079

    return v0

    .line 117
    :cond_1
    const-string v0, "Large"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 118
    const v0, 0x101007a

    return v0

    .line 119
    :cond_2
    const-string v0, "Inverse"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 120
    const v0, 0x1010287

    return v0

    .line 121
    :cond_3
    const-string v0, "SmallInverse"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 122
    const v0, 0x1010288

    return v0

    .line 123
    :cond_4
    const-string v0, "LargeInverse"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 124
    const v0, 0x1010289

    return v0

    .line 125
    :cond_5
    const-string v0, "Normal"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 126
    const v0, 0x1010077

    return v0

    .line 128
    :cond_6
    new-instance v0, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown ProgressBar style: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_7
    new-instance v0, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    const-string v1, "ProgressBar needs to have a style, null received"

    invoke-direct {v0, v1}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public bridge synthetic createShadowNodeInstance()Lcom/facebook/react/uimanager/ReactShadowNode;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lcom/facebook/react/views/progressbar/ReactProgressBarViewManager;->createShadowNodeInstance()Lcom/facebook/react/views/progressbar/ProgressBarShadowNode;

    move-result-object v0

    return-object v0
.end method

.method public createShadowNodeInstance()Lcom/facebook/react/views/progressbar/ProgressBarShadowNode;
    .locals 1

    .line 91
    new-instance v0, Lcom/facebook/react/views/progressbar/ProgressBarShadowNode;

    invoke-direct {v0}, Lcom/facebook/react/views/progressbar/ProgressBarShadowNode;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Landroid/view/View;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lcom/facebook/react/views/progressbar/ReactProgressBarViewManager;->createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/facebook/react/views/progressbar/ProgressBarContainerView;

    move-result-object p1

    return-object p1
.end method

.method protected createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/facebook/react/views/progressbar/ProgressBarContainerView;
    .locals 1
    .param p1, "context"    # Lcom/facebook/react/uimanager/ThemedReactContext;

    .line 61
    new-instance v0, Lcom/facebook/react/views/progressbar/ProgressBarContainerView;

    invoke-direct {v0, p1}, Lcom/facebook/react/views/progressbar/ProgressBarContainerView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 56
    const-string v0, "AndroidProgressBar"

    return-object v0
.end method

.method public getShadowNodeClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/facebook/react/views/progressbar/ProgressBarShadowNode;",
            ">;"
        }
    .end annotation

    .line 96
    const-class v0, Lcom/facebook/react/views/progressbar/ProgressBarShadowNode;

    return-object v0
.end method

.method protected bridge synthetic onAfterUpdateTransaction(Landroid/view/View;)V
    .locals 0

    .line 28
    check-cast p1, Lcom/facebook/react/views/progressbar/ProgressBarContainerView;

    invoke-virtual {p0, p1}, Lcom/facebook/react/views/progressbar/ReactProgressBarViewManager;->onAfterUpdateTransaction(Lcom/facebook/react/views/progressbar/ProgressBarContainerView;)V

    return-void
.end method

.method protected onAfterUpdateTransaction(Lcom/facebook/react/views/progressbar/ProgressBarContainerView;)V
    .locals 0
    .param p1, "view"    # Lcom/facebook/react/views/progressbar/ProgressBarContainerView;

    .line 106
    invoke-virtual {p1}, Lcom/facebook/react/views/progressbar/ProgressBarContainerView;->apply()V

    .line 107
    return-void
.end method

.method public setAnimating(Lcom/facebook/react/views/progressbar/ProgressBarContainerView;Z)V
    .locals 0
    .param p1, "view"    # Lcom/facebook/react/views/progressbar/ProgressBarContainerView;
    .param p2, "animating"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "animating"
    .end annotation

    .line 86
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/progressbar/ProgressBarContainerView;->setAnimating(Z)V

    .line 87
    return-void
.end method

.method public setColor(Lcom/facebook/react/views/progressbar/ProgressBarContainerView;Ljava/lang/Integer;)V
    .locals 0
    .param p1, "view"    # Lcom/facebook/react/views/progressbar/ProgressBarContainerView;
    .param p2, "color"    # Ljava/lang/Integer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        customType = "Color"
        name = "color"
    .end annotation

    .line 71
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/progressbar/ProgressBarContainerView;->setColor(Ljava/lang/Integer;)V

    .line 72
    return-void
.end method

.method public setIndeterminate(Lcom/facebook/react/views/progressbar/ProgressBarContainerView;Z)V
    .locals 0
    .param p1, "view"    # Lcom/facebook/react/views/progressbar/ProgressBarContainerView;
    .param p2, "indeterminate"    # Z
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "indeterminate"
    .end annotation

    .line 76
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/progressbar/ProgressBarContainerView;->setIndeterminate(Z)V

    .line 77
    return-void
.end method

.method public setProgress(Lcom/facebook/react/views/progressbar/ProgressBarContainerView;D)V
    .locals 0
    .param p1, "view"    # Lcom/facebook/react/views/progressbar/ProgressBarContainerView;
    .param p2, "progress"    # D
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "progress"
    .end annotation

    .line 81
    invoke-virtual {p1, p2, p3}, Lcom/facebook/react/views/progressbar/ProgressBarContainerView;->setProgress(D)V

    .line 82
    return-void
.end method

.method public setStyle(Lcom/facebook/react/views/progressbar/ProgressBarContainerView;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Lcom/facebook/react/views/progressbar/ProgressBarContainerView;
    .param p2, "styleName"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "styleAttr"
    .end annotation

    .line 66
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/progressbar/ProgressBarContainerView;->setStyle(Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public bridge synthetic updateExtraData(Landroid/view/View;Ljava/lang/Object;)V
    .locals 0

    .line 28
    check-cast p1, Lcom/facebook/react/views/progressbar/ProgressBarContainerView;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/react/views/progressbar/ReactProgressBarViewManager;->updateExtraData(Lcom/facebook/react/views/progressbar/ProgressBarContainerView;Ljava/lang/Object;)V

    return-void
.end method

.method public updateExtraData(Lcom/facebook/react/views/progressbar/ProgressBarContainerView;Ljava/lang/Object;)V
    .locals 0
    .param p1, "root"    # Lcom/facebook/react/views/progressbar/ProgressBarContainerView;
    .param p2, "extraData"    # Ljava/lang/Object;

    .line 102
    return-void
.end method

.class public Lcom/facebook/react/modules/i18nmanager/I18nManagerModule;
.super Lcom/facebook/react/bridge/ContextBaseJavaModule;
.source "I18nManagerModule.java"


# annotations
.annotation runtime Lcom/facebook/react/module/annotations/ReactModule;
    name = "I18nManager"
.end annotation


# static fields
.field public static final NAME:Ljava/lang/String; = "I18nManager"


# instance fields
.field private final sharedI18nUtilInstance:Lcom/facebook/react/modules/i18nmanager/I18nUtil;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 30
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ContextBaseJavaModule;-><init>(Landroid/content/Context;)V

    .line 27
    invoke-static {}, Lcom/facebook/react/modules/i18nmanager/I18nUtil;->getInstance()Lcom/facebook/react/modules/i18nmanager/I18nUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/react/modules/i18nmanager/I18nManagerModule;->sharedI18nUtilInstance:Lcom/facebook/react/modules/i18nmanager/I18nUtil;

    .line 31
    return-void
.end method


# virtual methods
.method public allowRTL(Z)V
    .locals 2
    .param p1, "value"    # Z
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/facebook/react/modules/i18nmanager/I18nManagerModule;->sharedI18nUtilInstance:Lcom/facebook/react/modules/i18nmanager/I18nUtil;

    invoke-virtual {p0}, Lcom/facebook/react/modules/i18nmanager/I18nManagerModule;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/facebook/react/modules/i18nmanager/I18nUtil;->allowRTL(Landroid/content/Context;Z)V

    .line 54
    return-void
.end method

.method public forceRTL(Z)V
    .locals 2
    .param p1, "value"    # Z
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/facebook/react/modules/i18nmanager/I18nManagerModule;->sharedI18nUtilInstance:Lcom/facebook/react/modules/i18nmanager/I18nUtil;

    invoke-virtual {p0}, Lcom/facebook/react/modules/i18nmanager/I18nManagerModule;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/facebook/react/modules/i18nmanager/I18nUtil;->forceRTL(Landroid/content/Context;Z)V

    .line 59
    return-void
.end method

.method public getConstants()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 40
    invoke-virtual {p0}, Lcom/facebook/react/modules/i18nmanager/I18nManagerModule;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 41
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 43
    .local v1, "locale":Ljava/util/Locale;
    invoke-static {}, Lcom/facebook/react/common/MapBuilder;->newHashMap()Ljava/util/HashMap;

    move-result-object v2

    .line 44
    .local v2, "constants":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v3, p0, Lcom/facebook/react/modules/i18nmanager/I18nManagerModule;->sharedI18nUtilInstance:Lcom/facebook/react/modules/i18nmanager/I18nUtil;

    invoke-virtual {v3, v0}, Lcom/facebook/react/modules/i18nmanager/I18nUtil;->isRTL(Landroid/content/Context;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "isRTL"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object v3, p0, Lcom/facebook/react/modules/i18nmanager/I18nManagerModule;->sharedI18nUtilInstance:Lcom/facebook/react/modules/i18nmanager/I18nUtil;

    .line 46
    invoke-virtual {v3, v0}, Lcom/facebook/react/modules/i18nmanager/I18nUtil;->doLeftAndRightSwapInRTL(Landroid/content/Context;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 45
    const-string v4, "doLeftAndRightSwapInRTL"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "localeIdentifier"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    return-object v2
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 35
    const-string v0, "I18nManager"

    return-object v0
.end method

.method public swapLeftAndRightInRTL(Z)V
    .locals 2
    .param p1, "value"    # Z
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/facebook/react/modules/i18nmanager/I18nManagerModule;->sharedI18nUtilInstance:Lcom/facebook/react/modules/i18nmanager/I18nUtil;

    invoke-virtual {p0}, Lcom/facebook/react/modules/i18nmanager/I18nManagerModule;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/facebook/react/modules/i18nmanager/I18nUtil;->swapLeftAndRightInRTL(Landroid/content/Context;Z)V

    .line 64
    return-void
.end method

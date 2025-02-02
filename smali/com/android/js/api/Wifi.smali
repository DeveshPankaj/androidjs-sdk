.class public Lcom/android/js/api/Wifi;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "Wifi.java"


# instance fields
.field private activity:Landroid/app/Activity;

.field private main_wifi:Landroid/net/wifi/WifiManager;

.field private reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "reactContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 29
    invoke-direct {p0, p2}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 30
    iput-object p1, p0, Lcom/android/js/api/Wifi;->activity:Landroid/app/Activity;

    .line 31
    iput-object p2, p0, Lcom/android/js/api/Wifi;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 32
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/js/api/Wifi;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/js/api/Wifi;->activity:Landroid/app/Activity;

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/android/js/api/Wifi;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/js/api/Wifi;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    :goto_0
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/js/api/Wifi;->main_wifi:Landroid/net/wifi/WifiManager;

    .line 34
    return-void
.end method


# virtual methods
.method public connectWifi(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 89
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connect Called "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 90
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 91
    .local v0, "conf":Landroid/net/wifi/WifiConfiguration;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string v4, "\"%s\""

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 92
    const-string v2, ""

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 93
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    goto :goto_0

    .line 95
    :cond_0
    new-array v2, v1, [Ljava/lang/Object;

    aput-object p2, v2, v3

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 96
    :goto_0
    iget-object v2, p0, Lcom/android/js/api/Wifi;->main_wifi:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v2

    .line 97
    .local v2, "netId":I
    iget-object v3, p0, Lcom/android/js/api/Wifi;->main_wifi:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 98
    iget-object v3, p0, Lcom/android/js/api/Wifi;->main_wifi:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v2, v1}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 99
    iget-object v1, p0, Lcom/android/js/api/Wifi;->main_wifi:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->reconnect()Z

    .line 100
    return-void
.end method

.method public disableWifi()V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/android/js/api/Wifi;->main_wifi:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/android/js/api/Wifi;->main_wifi:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 46
    :cond_0
    return-void
.end method

.method public disconnectWifi()V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/android/js/api/Wifi;->main_wifi:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 51
    return-void
.end method

.method public enableWifi()V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/android/js/api/Wifi;->main_wifi:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/android/js/api/Wifi;->main_wifi:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 40
    :cond_0
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 104
    const-string v0, "Wifi"

    return-object v0
.end method

.method public getWifiScanResults()Ljava/lang/String;
    .locals 7
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
        isBlockingSynchronousMethod = true
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/android/js/api/Wifi;->main_wifi:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    .line 67
    .local v0, "res":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 68
    .local v1, "final_res":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 69
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 70
    .local v3, "item":Lorg/json/JSONObject;
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/ScanResult;

    iget-object v4, v4, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    const-string v5, "SSID"

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 71
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/ScanResult;

    iget-object v4, v4, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    const-string v5, "BSSID"

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 72
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/ScanResult;

    iget-object v4, v4, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v5, "capabilities"

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 73
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/ScanResult;

    iget v4, v4, Landroid/net/wifi/ScanResult;->level:I

    const-string v5, "level"

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 74
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/ScanResult;

    iget v4, v4, Landroid/net/wifi/ScanResult;->frequency:I

    const-string v5, "frequency"

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 75
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/ScanResult;

    iget-wide v4, v4, Landroid/net/wifi/ScanResult;->timestamp:J

    const-string v6, "timestamp"

    invoke-virtual {v3, v6, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 82
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 68
    .end local v3    # "item":Lorg/json/JSONObject;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 84
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getWifiState()I
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
        isBlockingSynchronousMethod = true
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/android/js/api/Wifi;->main_wifi:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    return v0
.end method

.method public isWifiEnabled()Z
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
        isBlockingSynchronousMethod = true
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/android/js/api/Wifi;->main_wifi:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    return v0
.end method

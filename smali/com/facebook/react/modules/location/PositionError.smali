.class public Lcom/facebook/react/modules/location/PositionError;
.super Ljava/lang/Object;
.source "PositionError.java"


# static fields
.field public static PERMISSION_DENIED:I

.field public static POSITION_UNAVAILABLE:I

.field public static TIMEOUT:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const/4 v0, 0x1

    sput v0, Lcom/facebook/react/modules/location/PositionError;->PERMISSION_DENIED:I

    .line 27
    const/4 v0, 0x2

    sput v0, Lcom/facebook/react/modules/location/PositionError;->POSITION_UNAVAILABLE:I

    .line 33
    const/4 v0, 0x3

    sput v0, Lcom/facebook/react/modules/location/PositionError;->TIMEOUT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildError(ILjava/lang/String;)Lcom/facebook/react/bridge/WritableMap;
    .locals 3
    .param p0, "code"    # I
    .param p1, "message"    # Ljava/lang/String;

    .line 36
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 37
    .local v0, "error":Lcom/facebook/react/bridge/WritableMap;
    const-string v1, "code"

    invoke-interface {v0, v1, p0}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 39
    if-eqz p1, :cond_0

    .line 40
    const-string v1, "message"

    invoke-interface {v0, v1, p1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    :cond_0
    sget v1, Lcom/facebook/react/modules/location/PositionError;->PERMISSION_DENIED:I

    const-string v2, "PERMISSION_DENIED"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 47
    sget v1, Lcom/facebook/react/modules/location/PositionError;->POSITION_UNAVAILABLE:I

    const-string v2, "POSITION_UNAVAILABLE"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 48
    sget v1, Lcom/facebook/react/modules/location/PositionError;->TIMEOUT:I

    const-string v2, "TIMEOUT"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 49
    return-object v0
.end method

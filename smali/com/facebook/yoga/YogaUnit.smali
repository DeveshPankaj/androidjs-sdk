.class public final enum Lcom/facebook/yoga/YogaUnit;
.super Ljava/lang/Enum;
.source "YogaUnit.java"


# annotations
.annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/yoga/YogaUnit;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/yoga/YogaUnit;

.field public static final enum AUTO:Lcom/facebook/yoga/YogaUnit;

.field public static final enum PERCENT:Lcom/facebook/yoga/YogaUnit;

.field public static final enum POINT:Lcom/facebook/yoga/YogaUnit;

.field public static final enum UNDEFINED:Lcom/facebook/yoga/YogaUnit;


# instance fields
.field private final mIntValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 14
    new-instance v0, Lcom/facebook/yoga/YogaUnit;

    const/4 v1, 0x0

    const-string v2, "UNDEFINED"

    invoke-direct {v0, v2, v1, v1}, Lcom/facebook/yoga/YogaUnit;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/yoga/YogaUnit;->UNDEFINED:Lcom/facebook/yoga/YogaUnit;

    .line 15
    new-instance v0, Lcom/facebook/yoga/YogaUnit;

    const/4 v2, 0x1

    const-string v3, "POINT"

    invoke-direct {v0, v3, v2, v2}, Lcom/facebook/yoga/YogaUnit;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/yoga/YogaUnit;->POINT:Lcom/facebook/yoga/YogaUnit;

    .line 16
    new-instance v0, Lcom/facebook/yoga/YogaUnit;

    const/4 v3, 0x2

    const-string v4, "PERCENT"

    invoke-direct {v0, v4, v3, v3}, Lcom/facebook/yoga/YogaUnit;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/yoga/YogaUnit;->PERCENT:Lcom/facebook/yoga/YogaUnit;

    .line 17
    new-instance v0, Lcom/facebook/yoga/YogaUnit;

    const/4 v4, 0x3

    const-string v5, "AUTO"

    invoke-direct {v0, v5, v4, v4}, Lcom/facebook/yoga/YogaUnit;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/yoga/YogaUnit;->AUTO:Lcom/facebook/yoga/YogaUnit;

    .line 12
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/facebook/yoga/YogaUnit;

    sget-object v5, Lcom/facebook/yoga/YogaUnit;->UNDEFINED:Lcom/facebook/yoga/YogaUnit;

    aput-object v5, v0, v1

    sget-object v1, Lcom/facebook/yoga/YogaUnit;->POINT:Lcom/facebook/yoga/YogaUnit;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/yoga/YogaUnit;->PERCENT:Lcom/facebook/yoga/YogaUnit;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/yoga/YogaUnit;->AUTO:Lcom/facebook/yoga/YogaUnit;

    aput-object v1, v0, v4

    sput-object v0, Lcom/facebook/yoga/YogaUnit;->$VALUES:[Lcom/facebook/yoga/YogaUnit;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "intValue"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 22
    iput p3, p0, Lcom/facebook/yoga/YogaUnit;->mIntValue:I

    .line 23
    return-void
.end method

.method public static fromInt(I)Lcom/facebook/yoga/YogaUnit;
    .locals 3
    .param p0, "value"    # I

    .line 30
    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    .line 34
    sget-object v0, Lcom/facebook/yoga/YogaUnit;->AUTO:Lcom/facebook/yoga/YogaUnit;

    return-object v0

    .line 35
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown enum value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_1
    sget-object v0, Lcom/facebook/yoga/YogaUnit;->PERCENT:Lcom/facebook/yoga/YogaUnit;

    return-object v0

    .line 32
    :cond_2
    sget-object v0, Lcom/facebook/yoga/YogaUnit;->POINT:Lcom/facebook/yoga/YogaUnit;

    return-object v0

    .line 31
    :cond_3
    sget-object v0, Lcom/facebook/yoga/YogaUnit;->UNDEFINED:Lcom/facebook/yoga/YogaUnit;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/yoga/YogaUnit;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 12
    const-class v0, Lcom/facebook/yoga/YogaUnit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/yoga/YogaUnit;

    return-object v0
.end method

.method public static values()[Lcom/facebook/yoga/YogaUnit;
    .locals 1

    .line 12
    sget-object v0, Lcom/facebook/yoga/YogaUnit;->$VALUES:[Lcom/facebook/yoga/YogaUnit;

    invoke-virtual {v0}, [Lcom/facebook/yoga/YogaUnit;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/yoga/YogaUnit;

    return-object v0
.end method


# virtual methods
.method public intValue()I
    .locals 1

    .line 26
    iget v0, p0, Lcom/facebook/yoga/YogaUnit;->mIntValue:I

    return v0
.end method

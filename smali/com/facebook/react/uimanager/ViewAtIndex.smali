.class public Lcom/facebook/react/uimanager/ViewAtIndex;
.super Ljava/lang/Object;
.source "ViewAtIndex.java"


# static fields
.field public static COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/facebook/react/uimanager/ViewAtIndex;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mIndex:I

.field public final mTag:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Lcom/facebook/react/uimanager/ViewAtIndex$1;

    invoke-direct {v0}, Lcom/facebook/react/uimanager/ViewAtIndex$1;-><init>()V

    sput-object v0, Lcom/facebook/react/uimanager/ViewAtIndex;->COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "tag"    # I
    .param p2, "index"    # I

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput p1, p0, Lcom/facebook/react/uimanager/ViewAtIndex;->mTag:I

    .line 29
    iput p2, p0, Lcom/facebook/react/uimanager/ViewAtIndex;->mIndex:I

    .line 30
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 34
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 37
    :cond_0
    move-object v1, p1

    check-cast v1, Lcom/facebook/react/uimanager/ViewAtIndex;

    .line 38
    .local v1, "other":Lcom/facebook/react/uimanager/ViewAtIndex;
    iget v2, p0, Lcom/facebook/react/uimanager/ViewAtIndex;->mIndex:I

    iget v3, v1, Lcom/facebook/react/uimanager/ViewAtIndex;->mIndex:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/facebook/react/uimanager/ViewAtIndex;->mTag:I

    iget v3, v1, Lcom/facebook/react/uimanager/ViewAtIndex;->mTag:I

    if-ne v2, v3, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    .line 35
    .end local v1    # "other":Lcom/facebook/react/uimanager/ViewAtIndex;
    :cond_2
    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/facebook/react/uimanager/ViewAtIndex;->mTag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/facebook/react/uimanager/ViewAtIndex;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

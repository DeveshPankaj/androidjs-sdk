.class public Lcom/facebook/react/uimanager/Spacing;
.super Ljava/lang/Object;
.source "Spacing.java"


# static fields
.field public static final ALL:I = 0x8

.field public static final BOTTOM:I = 0x3

.field public static final END:I = 0x5

.field public static final HORIZONTAL:I = 0x6

.field public static final LEFT:I = 0x0

.field public static final RIGHT:I = 0x2

.field public static final START:I = 0x4

.field public static final TOP:I = 0x1

.field public static final VERTICAL:I = 0x7

.field private static final sFlagsMap:[I


# instance fields
.field private final mDefaultValue:F

.field private mHasAliasesSet:Z

.field private final mSpacing:[F

.field private mValueFlags:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/react/uimanager/Spacing;->sFlagsMap:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0x10
        0x20
        0x40
        0x80
        0x100
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/react/uimanager/Spacing;-><init>(F)V

    .line 78
    return-void
.end method

.method public constructor <init>(F)V
    .locals 1
    .param p1, "defaultValue"    # F

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/react/uimanager/Spacing;->mValueFlags:I

    .line 81
    iput p1, p0, Lcom/facebook/react/uimanager/Spacing;->mDefaultValue:F

    .line 82
    invoke-static {}, Lcom/facebook/react/uimanager/Spacing;->newFullSpacingArray()[F

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/react/uimanager/Spacing;->mSpacing:[F

    .line 83
    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/uimanager/Spacing;)V
    .locals 2
    .param p1, "original"    # Lcom/facebook/react/uimanager/Spacing;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/react/uimanager/Spacing;->mValueFlags:I

    .line 86
    iget v0, p1, Lcom/facebook/react/uimanager/Spacing;->mDefaultValue:F

    iput v0, p0, Lcom/facebook/react/uimanager/Spacing;->mDefaultValue:F

    .line 87
    iget-object v0, p1, Lcom/facebook/react/uimanager/Spacing;->mSpacing:[F

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/react/uimanager/Spacing;->mSpacing:[F

    .line 88
    iget v0, p1, Lcom/facebook/react/uimanager/Spacing;->mValueFlags:I

    iput v0, p0, Lcom/facebook/react/uimanager/Spacing;->mValueFlags:I

    .line 89
    iget-boolean v0, p1, Lcom/facebook/react/uimanager/Spacing;->mHasAliasesSet:Z

    iput-boolean v0, p0, Lcom/facebook/react/uimanager/Spacing;->mHasAliasesSet:Z

    .line 90
    return-void
.end method

.method private static newFullSpacingArray()[F
    .locals 1

    .line 186
    const/16 v0, 0x9

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 4
        0x7fc00000    # Float.NaN
        0x7fc00000    # Float.NaN
        0x7fc00000    # Float.NaN
        0x7fc00000    # Float.NaN
        0x7fc00000    # Float.NaN
        0x7fc00000    # Float.NaN
        0x7fc00000    # Float.NaN
        0x7fc00000    # Float.NaN
        0x7fc00000    # Float.NaN
    .end array-data
.end method


# virtual methods
.method public get(I)F
    .locals 5
    .param p1, "spacingType"    # I

    .line 128
    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/facebook/react/uimanager/Spacing;->mDefaultValue:F

    goto :goto_1

    :cond_1
    :goto_0
    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 132
    .local v0, "defaultValue":F
    :goto_1
    iget v1, p0, Lcom/facebook/react/uimanager/Spacing;->mValueFlags:I

    if-nez v1, :cond_2

    .line 133
    return v0

    .line 136
    :cond_2
    sget-object v2, Lcom/facebook/react/uimanager/Spacing;->sFlagsMap:[I

    aget v2, v2, p1

    and-int/2addr v1, v2

    if-eqz v1, :cond_3

    .line 137
    iget-object v1, p0, Lcom/facebook/react/uimanager/Spacing;->mSpacing:[F

    aget v1, v1, p1

    return v1

    .line 140
    :cond_3
    iget-boolean v1, p0, Lcom/facebook/react/uimanager/Spacing;->mHasAliasesSet:Z

    if-eqz v1, :cond_7

    .line 141
    const/4 v1, 0x1

    if-eq p1, v1, :cond_5

    const/4 v1, 0x3

    if-ne p1, v1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v1, 0x6

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v1, 0x7

    .line 142
    .local v1, "secondType":I
    :goto_3
    iget v2, p0, Lcom/facebook/react/uimanager/Spacing;->mValueFlags:I

    sget-object v3, Lcom/facebook/react/uimanager/Spacing;->sFlagsMap:[I

    aget v4, v3, v1

    and-int/2addr v4, v2

    if-eqz v4, :cond_6

    .line 143
    iget-object v2, p0, Lcom/facebook/react/uimanager/Spacing;->mSpacing:[F

    aget v2, v2, v1

    return v2

    .line 144
    :cond_6
    const/16 v4, 0x8

    aget v3, v3, v4

    and-int/2addr v2, v3

    if-eqz v2, :cond_7

    .line 145
    iget-object v2, p0, Lcom/facebook/react/uimanager/Spacing;->mSpacing:[F

    aget v2, v2, v4

    return v2

    .line 149
    .end local v1    # "secondType":I
    :cond_7
    return v0
.end method

.method public getRaw(I)F
    .locals 1
    .param p1, "spacingType"    # I

    .line 160
    iget-object v0, p0, Lcom/facebook/react/uimanager/Spacing;->mSpacing:[F

    aget v0, v0, p1

    return v0
.end method

.method getWithFallback(II)F
    .locals 2
    .param p1, "spacingType"    # I
    .param p2, "fallbackType"    # I

    .line 179
    iget v0, p0, Lcom/facebook/react/uimanager/Spacing;->mValueFlags:I

    sget-object v1, Lcom/facebook/react/uimanager/Spacing;->sFlagsMap:[I

    aget v1, v1, p1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/react/uimanager/Spacing;->mSpacing:[F

    aget v0, v0, p1

    goto :goto_0

    .line 182
    :cond_0
    invoke-virtual {p0, p2}, Lcom/facebook/react/uimanager/Spacing;->get(I)F

    move-result v0

    .line 179
    :goto_0
    return v0
.end method

.method public reset()V
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/facebook/react/uimanager/Spacing;->mSpacing:[F

    const/high16 v1, 0x7fc00000    # Float.NaN

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 169
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/react/uimanager/Spacing;->mHasAliasesSet:Z

    .line 170
    iput v0, p0, Lcom/facebook/react/uimanager/Spacing;->mValueFlags:I

    .line 171
    return-void
.end method

.method public set(IF)Z
    .locals 5
    .param p1, "spacingType"    # I
    .param p2, "value"    # F

    .line 102
    iget-object v0, p0, Lcom/facebook/react/uimanager/Spacing;->mSpacing:[F

    aget v0, v0, p1

    invoke-static {v0, p2}, Lcom/facebook/react/uimanager/FloatUtil;->floatsEqual(FF)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 103
    iget-object v0, p0, Lcom/facebook/react/uimanager/Spacing;->mSpacing:[F

    aput p2, v0, p1

    .line 105
    invoke-static {p2}, Lcom/facebook/yoga/YogaConstants;->isUndefined(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iget v0, p0, Lcom/facebook/react/uimanager/Spacing;->mValueFlags:I

    sget-object v2, Lcom/facebook/react/uimanager/Spacing;->sFlagsMap:[I

    aget v2, v2, p1

    xor-int/lit8 v2, v2, -0x1

    and-int/2addr v0, v2

    iput v0, p0, Lcom/facebook/react/uimanager/Spacing;->mValueFlags:I

    goto :goto_0

    .line 108
    :cond_0
    iget v0, p0, Lcom/facebook/react/uimanager/Spacing;->mValueFlags:I

    sget-object v2, Lcom/facebook/react/uimanager/Spacing;->sFlagsMap:[I

    aget v2, v2, p1

    or-int/2addr v0, v2

    iput v0, p0, Lcom/facebook/react/uimanager/Spacing;->mValueFlags:I

    .line 111
    :goto_0
    iget v0, p0, Lcom/facebook/react/uimanager/Spacing;->mValueFlags:I

    sget-object v2, Lcom/facebook/react/uimanager/Spacing;->sFlagsMap:[I

    const/16 v3, 0x8

    aget v3, v2, v3

    and-int/2addr v3, v0

    const/4 v4, 0x1

    if-nez v3, :cond_1

    const/4 v3, 0x7

    aget v3, v2, v3

    and-int/2addr v3, v0

    if-nez v3, :cond_1

    const/4 v3, 0x6

    aget v2, v2, v3

    and-int/2addr v0, v2

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    iput-boolean v1, p0, Lcom/facebook/react/uimanager/Spacing;->mHasAliasesSet:Z

    .line 116
    return v4

    .line 119
    :cond_3
    return v1
.end method

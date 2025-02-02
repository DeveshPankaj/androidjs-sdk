.class public Lcom/facebook/cache/disk/ScoreBasedEvictionComparatorSupplier;
.super Ljava/lang/Object;
.source "ScoreBasedEvictionComparatorSupplier.java"

# interfaces
.implements Lcom/facebook/cache/disk/EntryEvictionComparatorSupplier;


# instance fields
.field private final mAgeWeight:F

.field private final mSizeWeight:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0
    .param p1, "ageWeight"    # F
    .param p2, "sizeWeight"    # F

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p1, p0, Lcom/facebook/cache/disk/ScoreBasedEvictionComparatorSupplier;->mAgeWeight:F

    .line 22
    iput p2, p0, Lcom/facebook/cache/disk/ScoreBasedEvictionComparatorSupplier;->mSizeWeight:F

    .line 23
    return-void
.end method


# virtual methods
.method calculateScore(Lcom/facebook/cache/disk/DiskStorage$Entry;J)F
    .locals 7
    .param p1, "entry"    # Lcom/facebook/cache/disk/DiskStorage$Entry;
    .param p2, "now"    # J
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation

    .line 50
    invoke-interface {p1}, Lcom/facebook/cache/disk/DiskStorage$Entry;->getTimestamp()J

    move-result-wide v0

    sub-long v0, p2, v0

    .line 51
    .local v0, "ageMs":J
    invoke-interface {p1}, Lcom/facebook/cache/disk/DiskStorage$Entry;->getSize()J

    move-result-wide v2

    .line 52
    .local v2, "bytes":J
    iget v4, p0, Lcom/facebook/cache/disk/ScoreBasedEvictionComparatorSupplier;->mAgeWeight:F

    long-to-float v5, v0

    mul-float v4, v4, v5

    iget v5, p0, Lcom/facebook/cache/disk/ScoreBasedEvictionComparatorSupplier;->mSizeWeight:F

    long-to-float v6, v2

    mul-float v5, v5, v6

    add-float/2addr v4, v5

    return v4
.end method

.method public get()Lcom/facebook/cache/disk/EntryEvictionComparator;
    .locals 1

    .line 27
    new-instance v0, Lcom/facebook/cache/disk/ScoreBasedEvictionComparatorSupplier$1;

    invoke-direct {v0, p0}, Lcom/facebook/cache/disk/ScoreBasedEvictionComparatorSupplier$1;-><init>(Lcom/facebook/cache/disk/ScoreBasedEvictionComparatorSupplier;)V

    return-object v0
.end method

.class public abstract Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;
.super Lcom/facebook/datasource/AbstractDataSource;
.source "AbstractProducerToDataSourceAdapter.java"

# interfaces
.implements Lcom/facebook/imagepipeline/request/HasImageRequest;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/facebook/datasource/AbstractDataSource<",
        "TT;>;",
        "Lcom/facebook/imagepipeline/request/HasImageRequest;"
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# instance fields
.field private final mRequestListener:Lcom/facebook/imagepipeline/listener/RequestListener;

.field private final mSettableProducerContext:Lcom/facebook/imagepipeline/producers/SettableProducerContext;


# direct methods
.method protected constructor <init>(Lcom/facebook/imagepipeline/producers/Producer;Lcom/facebook/imagepipeline/producers/SettableProducerContext;Lcom/facebook/imagepipeline/listener/RequestListener;)V
    .locals 5
    .param p2, "settableProducerContext"    # Lcom/facebook/imagepipeline/producers/SettableProducerContext;
    .param p3, "requestListener"    # Lcom/facebook/imagepipeline/listener/RequestListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "TT;>;",
            "Lcom/facebook/imagepipeline/producers/SettableProducerContext;",
            "Lcom/facebook/imagepipeline/listener/RequestListener;",
            ")V"
        }
    .end annotation

    .line 37
    .local p0, "this":Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;, "Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter<TT;>;"
    .local p1, "producer":Lcom/facebook/imagepipeline/producers/Producer;, "Lcom/facebook/imagepipeline/producers/Producer<TT;>;"
    invoke-direct {p0}, Lcom/facebook/datasource/AbstractDataSource;-><init>()V

    .line 38
    iput-object p2, p0, Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;->mSettableProducerContext:Lcom/facebook/imagepipeline/producers/SettableProducerContext;

    .line 39
    iput-object p3, p0, Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;->mRequestListener:Lcom/facebook/imagepipeline/listener/RequestListener;

    .line 40
    iget-object v0, p0, Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;->mRequestListener:Lcom/facebook/imagepipeline/listener/RequestListener;

    .line 41
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/producers/SettableProducerContext;->getImageRequest()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;->mSettableProducerContext:Lcom/facebook/imagepipeline/producers/SettableProducerContext;

    .line 42
    invoke-virtual {v2}, Lcom/facebook/imagepipeline/producers/SettableProducerContext;->getCallerContext()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;->mSettableProducerContext:Lcom/facebook/imagepipeline/producers/SettableProducerContext;

    .line 43
    invoke-virtual {v3}, Lcom/facebook/imagepipeline/producers/SettableProducerContext;->getId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;->mSettableProducerContext:Lcom/facebook/imagepipeline/producers/SettableProducerContext;

    .line 44
    invoke-virtual {v4}, Lcom/facebook/imagepipeline/producers/SettableProducerContext;->isPrefetch()Z

    move-result v4

    .line 40
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/facebook/imagepipeline/listener/RequestListener;->onRequestStart(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 45
    invoke-direct {p0}, Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;->createConsumer()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Lcom/facebook/imagepipeline/producers/Producer;->produceResults(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)V

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "x0"    # Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;
    .param p1, "x1"    # Ljava/lang/Throwable;

    .line 28
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;->onFailureImpl(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$100(Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;)V
    .locals 0
    .param p0, "x0"    # Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;

    .line 28
    invoke-direct {p0}, Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;->onCancellationImpl()V

    return-void
.end method

.method static synthetic access$200(Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;F)Z
    .locals 1
    .param p0, "x0"    # Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;
    .param p1, "x1"    # F

    .line 28
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;->setProgress(F)Z

    move-result v0

    return v0
.end method

.method private createConsumer()Lcom/facebook/imagepipeline/producers/Consumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/imagepipeline/producers/Consumer<",
            "TT;>;"
        }
    .end annotation

    .line 49
    .local p0, "this":Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;, "Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter<TT;>;"
    new-instance v0, Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter$1;

    invoke-direct {v0, p0}, Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter$1;-><init>(Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;)V

    return-object v0
.end method

.method private declared-synchronized onCancellationImpl()V
    .locals 1

    .local p0, "this":Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;, "Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter<TT;>;"
    monitor-enter p0

    .line 95
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;->isClosed()Z

    move-result v0

    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->checkState(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    monitor-exit p0

    return-void

    .line 94
    .end local p0    # "this":Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;, "Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter<TT;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private onFailureImpl(Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .line 85
    .local p0, "this":Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;, "Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter<TT;>;"
    invoke-super {p0, p1}, Lcom/facebook/datasource/AbstractDataSource;->setFailure(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;->mRequestListener:Lcom/facebook/imagepipeline/listener/RequestListener;

    iget-object v1, p0, Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;->mSettableProducerContext:Lcom/facebook/imagepipeline/producers/SettableProducerContext;

    .line 87
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/producers/SettableProducerContext;->getImageRequest()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;->mSettableProducerContext:Lcom/facebook/imagepipeline/producers/SettableProducerContext;

    .line 88
    invoke-virtual {v2}, Lcom/facebook/imagepipeline/producers/SettableProducerContext;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;->mSettableProducerContext:Lcom/facebook/imagepipeline/producers/SettableProducerContext;

    .line 90
    invoke-virtual {v3}, Lcom/facebook/imagepipeline/producers/SettableProducerContext;->isPrefetch()Z

    move-result v3

    .line 86
    invoke-interface {v0, v1, v2, p1, v3}, Lcom/facebook/imagepipeline/listener/RequestListener;->onRequestFailure(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 92
    :cond_0
    return-void
.end method


# virtual methods
.method public close()Z
    .locals 2

    .line 105
    .local p0, "this":Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;, "Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter<TT;>;"
    invoke-super {p0}, Lcom/facebook/datasource/AbstractDataSource;->close()Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    const/4 v0, 0x0

    return v0

    .line 108
    :cond_0
    invoke-super {p0}, Lcom/facebook/datasource/AbstractDataSource;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;->mRequestListener:Lcom/facebook/imagepipeline/listener/RequestListener;

    iget-object v1, p0, Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;->mSettableProducerContext:Lcom/facebook/imagepipeline/producers/SettableProducerContext;

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/producers/SettableProducerContext;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/imagepipeline/listener/RequestListener;->onRequestCancellation(Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;->mSettableProducerContext:Lcom/facebook/imagepipeline/producers/SettableProducerContext;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/producers/SettableProducerContext;->cancel()V

    .line 112
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public getImageRequest()Lcom/facebook/imagepipeline/request/ImageRequest;
    .locals 1

    .line 100
    .local p0, "this":Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;, "Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter<TT;>;"
    iget-object v0, p0, Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;->mSettableProducerContext:Lcom/facebook/imagepipeline/producers/SettableProducerContext;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/producers/SettableProducerContext;->getImageRequest()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v0

    return-object v0
.end method

.method protected onNewResultImpl(Ljava/lang/Object;I)V
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .line 73
    .local p0, "this":Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;, "Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter<TT;>;"
    .local p1, "result":Ljava/lang/Object;, "TT;"
    invoke-static {p2}, Lcom/facebook/imagepipeline/producers/BaseConsumer;->isLast(I)Z

    move-result v0

    .line 74
    .local v0, "isLast":Z
    invoke-super {p0, p1, v0}, Lcom/facebook/datasource/AbstractDataSource;->setResult(Ljava/lang/Object;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    if-eqz v0, :cond_0

    .line 76
    iget-object v1, p0, Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;->mRequestListener:Lcom/facebook/imagepipeline/listener/RequestListener;

    iget-object v2, p0, Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;->mSettableProducerContext:Lcom/facebook/imagepipeline/producers/SettableProducerContext;

    .line 77
    invoke-virtual {v2}, Lcom/facebook/imagepipeline/producers/SettableProducerContext;->getImageRequest()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;->mSettableProducerContext:Lcom/facebook/imagepipeline/producers/SettableProducerContext;

    .line 78
    invoke-virtual {v3}, Lcom/facebook/imagepipeline/producers/SettableProducerContext;->getId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;->mSettableProducerContext:Lcom/facebook/imagepipeline/producers/SettableProducerContext;

    .line 79
    invoke-virtual {v4}, Lcom/facebook/imagepipeline/producers/SettableProducerContext;->isPrefetch()Z

    move-result v4

    .line 76
    invoke-interface {v1, v2, v3, v4}, Lcom/facebook/imagepipeline/listener/RequestListener;->onRequestSuccess(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/String;Z)V

    .line 82
    :cond_0
    return-void
.end method

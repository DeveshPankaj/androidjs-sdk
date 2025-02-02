.class Lcom/facebook/react/modules/storage/AsyncStorageModule$SerialExecutor;
.super Ljava/lang/Object;
.source "AsyncStorageModule.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/react/modules/storage/AsyncStorageModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SerialExecutor"
.end annotation


# instance fields
.field private final executor:Ljava/util/concurrent/Executor;

.field private mActive:Ljava/lang/Runnable;

.field private final mTasks:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/facebook/react/modules/storage/AsyncStorageModule;


# direct methods
.method constructor <init>(Lcom/facebook/react/modules/storage/AsyncStorageModule;Ljava/util/concurrent/Executor;)V
    .locals 0
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 56
    iput-object p1, p0, Lcom/facebook/react/modules/storage/AsyncStorageModule$SerialExecutor;->this$0:Lcom/facebook/react/modules/storage/AsyncStorageModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/facebook/react/modules/storage/AsyncStorageModule$SerialExecutor;->mTasks:Ljava/util/ArrayDeque;

    .line 57
    iput-object p2, p0, Lcom/facebook/react/modules/storage/AsyncStorageModule$SerialExecutor;->executor:Ljava/util/concurrent/Executor;

    .line 58
    return-void
.end method


# virtual methods
.method public declared-synchronized execute(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;

    monitor-enter p0

    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/facebook/react/modules/storage/AsyncStorageModule$SerialExecutor;->mTasks:Ljava/util/ArrayDeque;

    new-instance v1, Lcom/facebook/react/modules/storage/AsyncStorageModule$SerialExecutor$1;

    invoke-direct {v1, p0, p1}, Lcom/facebook/react/modules/storage/AsyncStorageModule$SerialExecutor$1;-><init>(Lcom/facebook/react/modules/storage/AsyncStorageModule$SerialExecutor;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 70
    iget-object v0, p0, Lcom/facebook/react/modules/storage/AsyncStorageModule$SerialExecutor;->mActive:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/facebook/react/modules/storage/AsyncStorageModule$SerialExecutor;->scheduleNext()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    .end local p0    # "this":Lcom/facebook/react/modules/storage/AsyncStorageModule$SerialExecutor;
    :cond_0
    monitor-exit p0

    return-void

    .line 60
    .end local p1    # "r":Ljava/lang/Runnable;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized scheduleNext()V
    .locals 2

    monitor-enter p0

    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/facebook/react/modules/storage/AsyncStorageModule$SerialExecutor;->mTasks:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/facebook/react/modules/storage/AsyncStorageModule$SerialExecutor;->mActive:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/facebook/react/modules/storage/AsyncStorageModule$SerialExecutor;->executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/facebook/react/modules/storage/AsyncStorageModule$SerialExecutor;->mActive:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    .end local p0    # "this":Lcom/facebook/react/modules/storage/AsyncStorageModule$SerialExecutor;
    :cond_0
    monitor-exit p0

    return-void

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

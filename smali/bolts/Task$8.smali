.class final Lbolts/Task$8;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbolts/Task;->whenAll(Ljava/util/Collection;)Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/Continuation<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$allFinished:Lbolts/TaskCompletionSource;

.field final synthetic val$causes:Ljava/util/ArrayList;

.field final synthetic val$count:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic val$errorLock:Ljava/lang/Object;

.field final synthetic val$isCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicInteger;Lbolts/TaskCompletionSource;)V
    .locals 0

    .line 538
    iput-object p1, p0, Lbolts/Task$8;->val$errorLock:Ljava/lang/Object;

    iput-object p2, p0, Lbolts/Task$8;->val$causes:Ljava/util/ArrayList;

    iput-object p3, p0, Lbolts/Task$8;->val$isCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p4, p0, Lbolts/Task$8;->val$count:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p5, p0, Lbolts/Task$8;->val$allFinished:Lbolts/TaskCompletionSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lbolts/Task;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 538
    invoke-virtual {p0, p1}, Lbolts/Task$8;->then(Lbolts/Task;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public then(Lbolts/Task;)Ljava/lang/Void;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .line 541
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Object;>;"
    invoke-virtual {p1}, Lbolts/Task;->isFaulted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 542
    iget-object v0, p0, Lbolts/Task$8;->val$errorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 543
    :try_start_0
    iget-object v1, p0, Lbolts/Task$8;->val$causes:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lbolts/Task;->getError()Ljava/lang/Exception;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 544
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 547
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lbolts/Task;->isCancelled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 548
    iget-object v0, p0, Lbolts/Task$8;->val$isCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 551
    :cond_1
    iget-object v0, p0, Lbolts/Task$8;->val$count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_5

    .line 552
    iget-object v0, p0, Lbolts/Task$8;->val$causes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_3

    .line 553
    iget-object v0, p0, Lbolts/Task$8;->val$causes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x0

    if-ne v0, v1, :cond_2

    .line 554
    iget-object v0, p0, Lbolts/Task$8;->val$allFinished:Lbolts/TaskCompletionSource;

    iget-object v1, p0, Lbolts/Task$8;->val$causes:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Exception;

    invoke-virtual {v0, v1}, Lbolts/TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    goto :goto_1

    .line 556
    :cond_2
    new-instance v0, Lbolts/AggregateException;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lbolts/Task$8;->val$causes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    const-string v3, "There were %d exceptions."

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lbolts/Task$8;->val$causes:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v3}, Lbolts/AggregateException;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 559
    .local v0, "error":Ljava/lang/Exception;
    iget-object v1, p0, Lbolts/Task$8;->val$allFinished:Lbolts/TaskCompletionSource;

    invoke-virtual {v1, v0}, Lbolts/TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    .line 560
    .end local v0    # "error":Ljava/lang/Exception;
    goto :goto_1

    .line 561
    :cond_3
    iget-object v0, p0, Lbolts/Task$8;->val$isCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 562
    iget-object v0, p0, Lbolts/Task$8;->val$allFinished:Lbolts/TaskCompletionSource;

    invoke-virtual {v0}, Lbolts/TaskCompletionSource;->setCancelled()V

    goto :goto_1

    .line 564
    :cond_4
    iget-object v0, p0, Lbolts/Task$8;->val$allFinished:Lbolts/TaskCompletionSource;

    invoke-virtual {v0, v2}, Lbolts/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    .line 567
    :cond_5
    :goto_1
    return-object v2
.end method

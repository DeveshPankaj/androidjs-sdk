.class final Lcom/facebook/jni/DestructorThread$1;
.super Ljava/lang/Thread;
.source "DestructorThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/jni/DestructorThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;

    .line 58
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 63
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/facebook/jni/DestructorThread;->access$000()Ljava/lang/ref/ReferenceQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->remove()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lcom/facebook/jni/DestructorThread$Destructor;

    .line 64
    .local v0, "current":Lcom/facebook/jni/DestructorThread$Destructor;
    invoke-virtual {v0}, Lcom/facebook/jni/DestructorThread$Destructor;->destruct()V

    .line 68
    invoke-static {v0}, Lcom/facebook/jni/DestructorThread$Destructor;->access$300(Lcom/facebook/jni/DestructorThread$Destructor;)Lcom/facebook/jni/DestructorThread$Destructor;

    move-result-object v1

    if-nez v1, :cond_0

    .line 69
    invoke-static {}, Lcom/facebook/jni/DestructorThread;->access$100()Lcom/facebook/jni/DestructorThread$DestructorStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/jni/DestructorThread$DestructorStack;->transferAllToList()V

    .line 72
    :cond_0
    invoke-static {v0}, Lcom/facebook/jni/DestructorThread$DestructorList;->access$400(Lcom/facebook/jni/DestructorThread$Destructor;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "current":Lcom/facebook/jni/DestructorThread$Destructor;
    goto :goto_1

    .line 73
    :catch_0
    move-exception v0

    .line 75
    :goto_1
    goto :goto_0
.end method
